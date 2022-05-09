; ModuleID = '/llk/IR_all_yes/fs/f2fs/namei.c_pt.bc'
source_filename = "../fs/f2fs/namei.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.71 }
%struct.atomic_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.anon.3 = type { i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.5 }
%union.anon.5 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.15, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.f2fs_sb_info = type { ptr, ptr, ptr, %struct.rw_semaphore, i32, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, [3 x ptr], %struct.rw_semaphore, ptr, ptr, i32, %struct.spinlock, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.wait_queue_head, [6 x i32], [6 x i32], %struct.ckpt_req_control, [5 x %struct.inode_management], %struct.spinlock, %struct.list_head, i32, i32, i32, [4 x %struct.list_head], [4 x %struct.spinlock], %struct.mutex, %struct.xarray, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rw_semaphore, [14 x %struct.atomic_t], %struct.percpu_counter, [2 x %struct.atomic_t], %struct.percpu_counter, %struct.f2fs_mount_info, %struct.rw_semaphore, ptr, %struct.atgc_management, i32, i32, [2 x i32], %struct.spinlock, i8, i32, i32, [2 x i64], i64, i64, %struct.rw_semaphore, i32, i32, ptr, [4 x %struct.atomic_t], [2 x i32], [2 x i32], %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, [4 x i32], %struct.spinlock, i32, i32, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.list_head, %struct.mutex, i32, i32, ptr, i32, %struct.spinlock, i8, i64, i64, ptr, i32, ptr, ptr, i32, i32, [6 x i32], i32, i32, i32, ptr, i32, i64, i64, i32, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, [22 x i64], [22 x i64], i8, i32, i32, %struct.spinlock, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ckpt_req_control = type { ptr, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.llist_head, %struct.spinlock, i32, i32 }
%struct.llist_head = type { ptr }
%struct.inode_management = type { %struct.xarray, %struct.spinlock, %struct.list_head, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.f2fs_mount_info = type { i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32, %struct.f2fs_fault_info, [3 x ptr], i32, i32, i32, i32, i32, i32, i32, %struct.fscrypt_dummy_policy, i32, i32, i8, i8, i8, i8, i8, i8, i32, [16 x [8 x i8]], [16 x [8 x i8]] }
%struct.f2fs_fault_info = type { %struct.atomic_t, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.atgc_management = type { i8, %struct.rb_root_cached, %struct.list_head, i32, i32, i32, i32, i64 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.atomic64_t = type { i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.f2fs_super_block = type <{ i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], [512 x i16], i32, [64 x [8 x i8]], i32, [256 x i8], [256 x i8], i32, i8, [16 x i8], [8 x %struct.f2fs_device], [3 x i32], i8, i16, i16, [306 x i8], i32 }>
%struct.f2fs_device = type { [64 x i8], i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.80, %struct.list_head, %struct.list_head, %union.anon.81 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.78 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { %struct.spinlock, i32 }
%union.anon.80 = type { %struct.list_head }
%union.anon.81 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.75 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.76 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.77 = type { ptr }
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
%struct.page = type { i32, %union.anon.18, %union.anon.64, %struct.atomic_t, i32 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.f2fs_filename = type { ptr, %struct.fscrypt_str, i32, %struct.fscrypt_str, %struct.fscrypt_str }
%struct.fscrypt_str = type { ptr, i32 }
%struct.f2fs_dir_entry = type <{ i32, i32, i16, i8 }>
%struct.f2fs_inode_info = type { %struct.inode, i32, i8, i8, i32, [2 x i32], i32, i16, [2 x i32], %struct.rw_semaphore, %struct.atomic_t, i32, i32, ptr, ptr, i32, i64, %struct.spinlock, [3 x ptr], i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, [2 x %struct.rw_semaphore], %struct.rw_semaphore, i32, %struct.kprojid_t, i32, %struct.timespec64, [4 x %struct.timespec64], %struct.atomic_t, i8, i8, i8, i16, i32 }
%struct.kprojid_t = type { i32 }
%struct.f2fs_checkpoint = type { i64, i64, i64, i32, i32, i32, [8 x i32], [8 x i16], [8 x i32], [8 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, [16 x i8], [0 x i8] }
%struct.delayed_call = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.f2fs_sm_info = type { ptr, ptr, ptr, ptr, %struct.rw_semaphore, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.free_segmap_info = type { i32, i32, i32, %struct.spinlock, ptr, ptr }
%struct.curseg_info = type { %struct.mutex, ptr, %struct.rw_semaphore, ptr, i8, i16, i32, i16, i32, i32, i32, i8 }
%struct.sit_info = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, %struct.rw_semaphore, ptr, ptr, i64, i64, i64, i64, i64, i64, [5 x i32] }
%struct.seg_entry = type { i32, ptr, ptr, ptr, ptr, i64 }

@dotdot_name = external dso_local constant %struct.qstr, align 8
@f2fs_encrypted_symlink_inode_operations = dso_local constant %struct.inode_operations { ptr null, ptr @f2fs_encrypted_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @f2fs_setattr, ptr @f2fs_encrypted_symlink_getattr, ptr @f2fs_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@f2fs_dir_inode_operations = dso_local constant %struct.inode_operations { ptr @f2fs_lookup, ptr null, ptr null, ptr @f2fs_get_acl, ptr null, ptr @f2fs_create, ptr @f2fs_link, ptr @f2fs_unlink, ptr @f2fs_symlink, ptr @f2fs_mkdir, ptr @f2fs_rmdir, ptr @f2fs_mknod, ptr @f2fs_rename2, ptr @f2fs_setattr, ptr @f2fs_getattr, ptr @f2fs_listxattr, ptr @f2fs_fiemap, ptr null, ptr null, ptr @f2fs_tmpfile, ptr @f2fs_set_acl, ptr @f2fs_fileattr_set, ptr @f2fs_fileattr_get, [36 x i8] undef }, align 128
@f2fs_symlink_inode_operations = dso_local constant %struct.inode_operations { ptr null, ptr @f2fs_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @f2fs_setattr, ptr @f2fs_getattr, ptr @f2fs_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@f2fs_special_inode_operations = dso_local constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr @f2fs_get_acl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @f2fs_setattr, ptr @f2fs_getattr, ptr @f2fs_listxattr, ptr null, ptr null, ptr null, ptr null, ptr @f2fs_set_acl, ptr null, ptr null, [36 x i8] undef }, align 128
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014Inconsistent encryption contexts: %lu/%lu\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_f2fs_lookup_start = external dso_local global %struct.tracepoint, align 4
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/f2fs.h\00", [36 x i8] zeroinitializer }, align 32
@trace_f2fs_lookup_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@__const.__recover_dot_dentries.dot = private unnamed_addr constant { { %struct.anon.3 }, ptr, [4 x i8] } { { %struct.anon.3 } { %struct.anon.3 { i32 1, i32 0 } }, ptr @.str.6, [4 x i8] c"\FF\FF\FF\FF" }, align 8
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@__const.__recover_dot_dentries.dotdot = private unnamed_addr constant { { %struct.anon.3 }, ptr, [4 x i8] } { { %struct.anon.3 } { %struct.anon.3 { i32 2, i32 0 } }, ptr @.str.7, [4 x i8] c"\FF\FF\FF\FF" }, align 8
@.str.8 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016skip recovering inline_dots inode (ino:%lu, pino:%u) in readonly mountpoint\00", [50 x i8] zeroinitializer }, align 32
@__tracepoint_f2fs_lookup_end = external dso_local global %struct.tracepoint, align 4
@trace_f2fs_lookup_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@f2fs_file_inode_operations = external dso_local constant %struct.inode_operations, align 128
@f2fs_file_operations = external dso_local constant %struct.file_operations, align 4
@f2fs_dblock_aops = external dso_local constant %struct.address_space_operations, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__tracepoint_f2fs_new_inode = external dso_local global %struct.tracepoint, align 4
@trace_f2fs_new_inode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_f2fs_unlink_enter = external dso_local global %struct.tracepoint, align 4
@trace_f2fs_unlink_enter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_f2fs_unlink_exit = external dso_local global %struct.tracepoint, align 4
@trace_f2fs_unlink_exit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@f2fs_dir_operations = external dso_local constant %struct.file_operations, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 40960]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@___asan_gen_.13 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 717, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 558, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant [31 x i8] c"../include/trace/events/f2fs.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 812, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 108, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 451, i32 20 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 452, i32 23 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [19 x i8] c"../fs/f2fs/namei.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 458, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_update_extension_list(ptr nocapture noundef readonly %sbi, ptr nocapture noundef readonly %name, i1 noundef zeroext %hot, i1 noundef zeroext %set) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [64 x [8 x i8]], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_super = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %0 = ptrtoint ptr %raw_super to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw_super, align 8
  %extension_list = getelementptr inbounds %struct.f2fs_super_block, ptr %1, i32 0, i32 30
  %extension_count = getelementptr inbounds %struct.f2fs_super_block, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %extension_count to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %extension_count, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %hot_ext_count = getelementptr inbounds %struct.f2fs_super_block, ptr %1, i32 0, i32 39
  %5 = ptrtoint ptr %hot_ext_count to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hot_ext_count, align 1
  %conv = zext i8 %6 to i32
  %add = add i32 %4, %conv
  br i1 %set, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add)
  %cmp = icmp eq i32 %add, 64
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool7.not = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool13.not = icmp eq i8 %6, 0
  %or.cond133 = select i1 %hot, i1 %tobool13.not, i1 %tobool7.not
  br i1 %or.cond133, label %if.else.cleanup_crit_edge, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.else.if.end16_crit_edge, %if.then.if.end16_crit_edge
  %. = select i1 %hot, i32 %4, i32 0
  %add. = select i1 %hot, i32 %add, i32 %4
  call void @__sanitizer_cov_trace_cmp4(i32 %., i32 %add.)
  %cmp21135 = icmp slt i32 %., %add.
  br i1 %cmp21135, label %if.end16.for.body_crit_edge, label %if.end16.for.end_crit_edge

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end16.for.body_crit_edge
  %i.0136 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %., %if.end16.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x i8], ptr %extension_list, i32 %i.0136
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef %arrayidx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool24.not = icmp eq i32 %call, 0
  br i1 %tobool24.not, label %if.end26, label %for.inc

if.end26:                                         ; preds = %for.body
  br i1 %set, label %if.end26.cleanup_crit_edge, label %if.end29

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29:                                         ; preds = %if.end26
  %add32 = add nsw i32 %i.0136, 1
  %arrayidx33 = getelementptr [8 x i8], ptr %extension_list, i32 %add32
  %7 = xor i32 %i.0136, -1
  %sub35 = add i32 %add, %7
  %mul = shl i32 %sub35, 3
  %8 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx33, i32 %mul)
  %sub36 = add i32 %add, -1
  %arrayidx37 = getelementptr [8 x i8], ptr %extension_list, i32 %sub36
  %9 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %arrayidx37, align 1
  br i1 %hot, label %if.then40, label %if.else45

if.then40:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %sub41 = add i8 %6, -1
  %10 = ptrtoint ptr %raw_super to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %raw_super, align 8
  %hot_ext_count44 = getelementptr inbounds %struct.f2fs_super_block, ptr %11, i32 0, i32 39
  %12 = ptrtoint ptr %hot_ext_count44 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %sub41, ptr %hot_ext_count44, align 1
  br label %cleanup

if.else45:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %sub46 = add i32 %4, -1
  %13 = tail call i32 @llvm.bswap.i32(i32 %sub46)
  %14 = ptrtoint ptr %raw_super to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %raw_super, align 8
  %extension_count48 = getelementptr inbounds %struct.f2fs_super_block, ptr %15, i32 0, i32 29
  %16 = ptrtoint ptr %extension_count48 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %13, ptr %extension_count48, align 1
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.0136, 1
  %exitcond.not = icmp eq i32 %inc, %add.
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end16.for.end_crit_edge
  br i1 %set, label %if.end52, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end52:                                         ; preds = %for.end
  br i1 %hot, label %if.then54, label %if.else62

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx55 = getelementptr [8 x i8], ptr %extension_list, i32 %add.
  %call57 = tail call i32 @strlen(ptr noundef %name) #14
  %17 = call ptr @memcpy(ptr %arrayidx55, ptr %name, i32 %call57)
  %add58 = add i8 %6, 1
  %18 = ptrtoint ptr %raw_super to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %raw_super, align 8
  %hot_ext_count61 = getelementptr inbounds %struct.f2fs_super_block, ptr %19, i32 0, i32 39
  %20 = ptrtoint ptr %hot_ext_count61 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %add58, ptr %hot_ext_count61, align 1
  br label %cleanup

if.else62:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %buf)
  %arrayidx64 = getelementptr [8 x i8], ptr %extension_list, i32 %4
  %mul65 = shl nuw nsw i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %6)
  %21 = icmp ugt i8 %6, 63
  %22 = sub nsw i32 512, %mul65
  %23 = select i1 %21, i32 0, i32 %22
  %24 = getelementptr i8, ptr %buf, i32 %mul65
  %25 = call ptr @memset(ptr %24, i32 255, i32 %23)
  %26 = call ptr @memcpy(ptr %buf, ptr %arrayidx64, i32 %mul65)
  %27 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 0, ptr %arrayidx64, align 1
  %call70 = tail call i32 @strlen(ptr noundef %name) #14
  %28 = call ptr @memcpy(ptr %arrayidx64, ptr %name, i32 %call70)
  %add71 = add i32 %4, 1
  %arrayidx72 = getelementptr [8 x i8], ptr %extension_list, i32 %add71
  %29 = call ptr @memcpy(ptr %arrayidx72, ptr %buf, i32 %mul65)
  %30 = tail call i32 @llvm.bswap.i32(i32 %add71)
  %31 = ptrtoint ptr %raw_super to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %raw_super, align 8
  %extension_count77 = getelementptr inbounds %struct.f2fs_super_block, ptr %32, i32 0, i32 29
  %33 = ptrtoint ptr %extension_count77 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %30, ptr %extension_count77, align 1
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buf)
  br label %cleanup

cleanup:                                          ; preds = %if.else62, %if.then54, %for.end.cleanup_crit_edge, %if.else45, %if.then40, %if.end26.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.end26.cleanup_crit_edge ], [ 0, %if.else45 ], [ 0, %if.then40 ], [ -22, %for.end.cleanup_crit_edge ], [ 0, %if.else62 ], [ 0, %if.then54 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @f2fs_get_parent(ptr nocapture noundef readonly %child) local_unnamed_addr #4 align 64 {
entry:
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #11
  %0 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !50
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 5
  %1 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode.i, align 8
  %call1 = call i32 @f2fs_inode_by_name(ptr noundef %2, ptr noundef nonnull @dotdot_name, ptr noundef nonnull %page) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %page, align 4
  %cmp.i = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i, ptr %4, ptr inttoptr (i32 -2 to ptr)
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %d_sb = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 9
  %5 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_sb, align 4
  %call7 = call ptr @f2fs_iget(ptr noundef %6, i32 noundef %call1) #11
  %call8 = call ptr @d_obtain_alias(ptr noundef %call7) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then
  %retval.0 = phi ptr [ %call8, %if.end6 ], [ %spec.select, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #11
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_inode_by_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_iget(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @f2fs_encrypted_get_link(ptr noundef readnone %dentry, ptr noundef %inode, ptr noundef %done) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dentry, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call ptr @read_cache_page(ptr noundef %1, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @page_address(ptr noundef %call.i) #11
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize, align 16
  %call7 = tail call ptr @fscrypt_get_symlink(ptr noundef %inode, ptr noundef %call6, i32 noundef %5, ptr noundef %done) #11
  %6 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !51

if.then.i.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %8, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %9, %if.end.i.i ]
  %10 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %11 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i.i.i = icmp eq i32 %12, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !52

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !53
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_encrypted_get_link, %if.then.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !57

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %10, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %10) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -10 to ptr), %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call7, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %call7, %if.then.i4.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_setattr(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_encrypted_symlink_getattr(ptr noundef %mnt_userns, ptr noundef %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @f2fs_getattr(ptr noundef %mnt_userns, ptr noundef %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) #11
  %call1 = tail call i32 @fscrypt_symlink_getattr(ptr noundef %path, ptr noundef %stat) #11
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_listxattr(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @f2fs_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #4 align 64 {
entry:
  %page = alloca ptr, align 4
  %fname = alloca %struct.f2fs_filename, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #11
  %0 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !50
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i.i, align 16
  %root_ino_num = getelementptr inbounds %struct.f2fs_sb_info, ptr %4, i32 0, i32 47
  %5 = ptrtoint ptr %root_ino_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %root_ino_num, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fname) #11
  %7 = call ptr @memset(ptr %fname, i32 255, i32 32)
  tail call fastcc void @trace_f2fs_lookup_start(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags)
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %8 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %9)
  %cmp = icmp ugt i32 %9, 255
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %call1 = call i32 @f2fs_prepare_lookup(ptr noundef %dir, ptr noundef %dentry, ptr noundef nonnull %fname) #11
  call void @generic_set_encrypted_ci_d_ops(ptr noundef %dentry) #11
  %10 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1, label %if.end.out_crit_edge [
    i32 -2, label %if.end.land.lhs.true58_crit_edge
    i32 0, label %if.end6
  ]

if.end.land.lhs.true58_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true58

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end6:                                          ; preds = %if.end
  %call7 = call ptr @__f2fs_find_entry(ptr noundef %dir, ptr noundef nonnull %fname, ptr noundef nonnull %page) #11
  call void @f2fs_free_filename(ptr noundef nonnull %fname) #11
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %page, align 4
  %cmp.i = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.then9.land.lhs.true58_crit_edge

if.then9.land.lhs.true58_crit_edge:               ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true58

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %12 to i32
  br label %out

if.end14:                                         ; preds = %if.end6
  %ino15 = getelementptr inbounds %struct.f2fs_dir_entry, ptr %call7, i32 0, i32 1
  %14 = ptrtoint ptr %ino15 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %ino15, align 1
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %page, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end14.f2fs_put_page.exit_crit_edge, label %if.end13.i

if.end14.f2fs_put_page.exit_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %f2fs_put_page.exit

if.end13.i:                                       ; preds = %if.end14
  %19 = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %and.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !51

if.then.i.i.i:                                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = add i32 %21, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %18 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %22, %if.end.i.i.i ]
  %23 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #11
  %24 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.i.i.i.i = icmp eq i32 %25, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !52

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %23, ptr noundef nonnull @.str) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !53
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !54
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %26 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #11, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %26, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_lookup, %if.then.i.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !57

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %23, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.f2fs_put_page.exit_crit_edge

folio_put_testzero.exit.i.i.i.f2fs_put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %f2fs_put_page.exit

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__put_page(ptr noundef %23) #11
  br label %f2fs_put_page.exit

f2fs_put_page.exit:                               ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.f2fs_put_page.exit_crit_edge, %if.end14.f2fs_put_page.exit_crit_edge
  %27 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb.i, align 4
  %call16 = call ptr @f2fs_iget(ptr noundef %28, i32 noundef %16) #11
  %cmp.i122 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122, label %if.then18, label %if.end20

if.then18:                                        ; preds = %f2fs_put_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %call16 to i32
  br label %out

if.end20:                                         ; preds = %f2fs_put_page.exit
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %30 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %6)
  %cmp21 = icmp eq i32 %31, %6
  br i1 %cmp21, label %land.lhs.true, label %if.end20.if.end29_crit_edge

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end20
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 8
  %32 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags.i.i, align 4
  %34 = and i32 %33, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool23.not = icmp eq i32 %34, 0
  br i1 %tobool23.not, label %land.lhs.true.if.end29_crit_edge, label %if.then24

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then24:                                        ; preds = %land.lhs.true
  %call25 = call fastcc i32 @__recover_dot_dentries(ptr noundef %dir, i32 noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then24.if.end29_crit_edge, label %if.then24.out_iput_crit_edge

if.then24.out_iput_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_iput

if.then24.if.end29_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.end29:                                         ; preds = %if.then24.if.end29_crit_edge, %land.lhs.true.if.end29_crit_edge, %if.end20.if.end29_crit_edge
  %flags.i.i123 = getelementptr inbounds %struct.f2fs_inode_info, ptr %call16, i32 0, i32 8
  %35 = ptrtoint ptr %flags.i.i123 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %flags.i.i123, align 4
  %37 = and i32 %36, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool31.not = icmp eq i32 %37, 0
  br i1 %tobool31.not, label %if.end29.if.end38_crit_edge, label %if.then32

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then32:                                        ; preds = %if.end29
  %38 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i_ino, align 8
  %call34 = call fastcc i32 @__recover_dot_dentries(ptr noundef %call16, i32 noundef %39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then32.if.end38_crit_edge, label %if.then32.out_iput_crit_edge

if.then32.out_iput_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_iput

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.end38:                                         ; preds = %if.then32.if.end38_crit_edge, %if.end29.if.end38_crit_edge
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %40 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i_flags, align 4
  %and = and i32 %41, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %if.end38.out_splice_crit_edge, label %land.lhs.true40

if.end38.out_splice_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_splice

land.lhs.true40:                                  ; preds = %if.end38
  %42 = ptrtoint ptr %call16 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %call16, align 8
  %44 = and i16 %43, -4096
  %45 = zext i16 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %44, label %land.lhs.true40.out_splice_crit_edge [
    i16 16384, label %land.lhs.true40.land.lhs.true49_crit_edge
    i16 -24576, label %land.lhs.true40.land.lhs.true49_crit_edge137
  ]

land.lhs.true40.land.lhs.true49_crit_edge137:     ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true49

land.lhs.true40.land.lhs.true49_crit_edge:        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true49

land.lhs.true40.out_splice_crit_edge:             ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_splice

land.lhs.true49:                                  ; preds = %land.lhs.true40.land.lhs.true49_crit_edge, %land.lhs.true40.land.lhs.true49_crit_edge137
  %call50 = call i32 @fscrypt_has_permitted_context(ptr noundef %dir, ptr noundef %call16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then52, label %land.lhs.true49.out_splice_crit_edge

land.lhs.true49.out_splice_crit_edge:             ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_splice

if.then52:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #13
  %i_sb.i126 = getelementptr inbounds %struct.inode, ptr %call16, i32 0, i32 8
  %46 = ptrtoint ptr %i_sb.i126 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_sb.i126, align 4
  %s_fs_info.i.i127 = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 33
  %48 = ptrtoint ptr %s_fs_info.i.i127 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_fs_info.i.i127, align 16
  %50 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %i_ino, align 8
  %i_ino55 = getelementptr inbounds %struct.inode, ptr %call16, i32 0, i32 11
  %52 = ptrtoint ptr %i_ino55 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %i_ino55, align 8
  call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %49, ptr noundef nonnull @.str.1, i32 noundef %51, i32 noundef %53) #11
  br label %out_iput

out_splice:                                       ; preds = %land.lhs.true49.out_splice_crit_edge, %land.lhs.true40.out_splice_crit_edge, %if.end38.out_splice_crit_edge
  %tobool57.not = icmp eq ptr %call16, null
  br i1 %tobool57.not, label %out_splice.land.lhs.true58_crit_edge, label %out_splice.if.end63_crit_edge

out_splice.if.end63_crit_edge:                    ; preds = %out_splice
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

out_splice.land.lhs.true58_crit_edge:             ; preds = %out_splice
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true58

land.lhs.true58:                                  ; preds = %out_splice.land.lhs.true58_crit_edge, %if.then9.land.lhs.true58_crit_edge, %if.end.land.lhs.true58_crit_edge
  %err.2136 = phi i32 [ 0, %out_splice.land.lhs.true58_crit_edge ], [ %call1, %if.end.land.lhs.true58_crit_edge ], [ -2, %if.then9.land.lhs.true58_crit_edge ]
  %ino.0135 = phi i32 [ %16, %out_splice.land.lhs.true58_crit_edge ], [ -1, %if.end.land.lhs.true58_crit_edge ], [ -1, %if.then9.land.lhs.true58_crit_edge ]
  %i_flags59 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %54 = ptrtoint ptr %i_flags59 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %i_flags59, align 4
  %and60 = and i32 %55, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %land.lhs.true58.if.end63_crit_edge, label %if.then62

land.lhs.true58.if.end63_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then62:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @trace_f2fs_lookup_end(ptr noundef %dir, ptr noundef %dentry, i32 noundef %ino.0135, i32 noundef %err.2136)
  br label %cleanup

if.end63:                                         ; preds = %land.lhs.true58.if.end63_crit_edge, %out_splice.if.end63_crit_edge
  %ino.0134 = phi i32 [ %ino.0135, %land.lhs.true58.if.end63_crit_edge ], [ %16, %out_splice.if.end63_crit_edge ]
  %inode.0132 = phi ptr [ null, %land.lhs.true58.if.end63_crit_edge ], [ %call16, %out_splice.if.end63_crit_edge ]
  %call64 = call ptr @d_splice_alias(ptr noundef %inode.0132, ptr noundef %dentry) #11
  %cmp.i.i = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  %56 = ptrtoint ptr %call64 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %56, i32 0
  %tobool66.not = icmp eq ptr %call64, null
  %spec.select = select i1 %tobool66.not, i32 -2, i32 %spec.select.i
  call fastcc void @trace_f2fs_lookup_end(ptr noundef %dir, ptr noundef %dentry, i32 noundef %ino.0134, i32 noundef %spec.select)
  br label %cleanup

out_iput:                                         ; preds = %if.then52, %if.then32.out_iput_crit_edge, %if.then24.out_iput_crit_edge
  %err.3 = phi i32 [ %call25, %if.then24.out_iput_crit_edge ], [ %call34, %if.then32.out_iput_crit_edge ], [ -1, %if.then52 ]
  call void @iput(ptr noundef %call16) #11
  br label %out

out:                                              ; preds = %out_iput, %if.then18, %if.then11, %if.end.out_crit_edge, %entry.out_crit_edge
  %ino.1 = phi i32 [ %16, %if.then18 ], [ %16, %out_iput ], [ -1, %if.then11 ], [ -1, %entry.out_crit_edge ], [ -1, %if.end.out_crit_edge ]
  %err.4 = phi i32 [ %29, %if.then18 ], [ %err.3, %out_iput ], [ %13, %if.then11 ], [ -36, %entry.out_crit_edge ], [ %call1, %if.end.out_crit_edge ]
  call fastcc void @trace_f2fs_lookup_end(ptr noundef %dir, ptr noundef %dentry, i32 noundef %ino.1, i32 noundef %err.4)
  %57 = inttoptr i32 %err.4 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end63, %if.then62
  %retval.0 = phi ptr [ %57, %out ], [ %call64, %if.end63 ], [ null, %if.then62 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fname) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #11
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_get_acl(ptr noundef, i32 noundef, i1 noundef zeroext) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %ckpt.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %ckpt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ckpt.i.i.i, align 4
  %ckpt_flags1.i.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %ckpt_flags1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %ckpt_flags1.i.i.i, align 1
  %8 = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.i.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.i.i.not, label %if.end, label %entry.cleanup_crit_edge, !prof !51

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_flag.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %s_flag.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %s_flag.i.i, align 4
  %11 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %if.end.if.end5_crit_edge, label %f2fs_is_checkpoint_ready.exit, !prof !51

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

f2fs_is_checkpoint_ready.exit:                    ; preds = %if.end
  %call3.i = tail call fastcc zeroext i1 @has_not_enough_free_secs(ptr noundef %3) #11
  br i1 %call3.i, label %f2fs_is_checkpoint_ready.exit.cleanup_crit_edge, label %f2fs_is_checkpoint_ready.exit.if.end5_crit_edge

f2fs_is_checkpoint_ready.exit.if.end5_crit_edge:  ; preds = %f2fs_is_checkpoint_ready.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

f2fs_is_checkpoint_ready.exit.cleanup_crit_edge:  ; preds = %f2fs_is_checkpoint_ready.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %f2fs_is_checkpoint_ready.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %call6 = tail call i32 @f2fs_dquot_initialize(ptr noundef %dir) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = tail call fastcc ptr @f2fs_new_inode(ptr noundef %dir, i16 noundef zeroext %mode)
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %mount_opt = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 73
  %13 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mount_opt, align 8
  %and = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.then16, label %if.end14.if.end17_crit_edge

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then16:                                        ; preds = %if.end14
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 8
  %raw_super.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %raw_super.i, align 8
  %extension_list.i = getelementptr inbounds %struct.f2fs_super_block, ptr %18, i32 0, i32 30
  %sb_lock.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 3
  tail call void @down_read(ptr noundef %sb_lock.i) #11
  %19 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %raw_super.i, align 8
  %extension_count.i = getelementptr inbounds %struct.f2fs_super_block, ptr %20, i32 0, i32 29
  %21 = ptrtoint ptr %extension_count.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %extension_count.i, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #11
  %hot_ext_count.i = getelementptr inbounds %struct.f2fs_super_block, ptr %20, i32 0, i32 39
  %24 = ptrtoint ptr %hot_ext_count.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %hot_ext_count.i, align 1
  %conv.i = zext i8 %25 to i32
  %add.i = add i32 %23, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp45.i = icmp sgt i32 %add.i, 0
  br i1 %cmp45.i, label %for.body.lr.ph.i, label %if.then16.for.end.i_crit_edge

if.then16.for.end.i_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then16
  %call.i.i = tail call i32 @strlen(ptr noundef %16) #15
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.046.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x i8], ptr %extension_list.i, i32 %i.046.i
  %call1.i.i = tail call i32 @strlen(ptr noundef %arrayidx.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i.i)
  %cmp.i.i = icmp eq i32 %call1.i.i, 1
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %for.body.i.if.end.i.i_crit_edge

for.body.i.if.end.i.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %27)
  %cmp2.i.i = icmp eq i8 %27, 42
  br i1 %cmp2.i.i, label %land.lhs.true.i.i.for.end.i_crit_edge, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i.for.end.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %for.body.i.if.end.i.i_crit_edge
  %add.i.i = add i32 %call1.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %add.i.i)
  %cmp4.i.i = icmp ult i32 %call.i.i, %add.i.i
  br i1 %cmp4.i.i, label %if.end.i.i.for.inc.i_crit_edge, label %if.end7.i.i

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %sub20.i.i = sub i32 %call.i.i, %call1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub20.i.i)
  %cmp2156.i.i = icmp ugt i32 %sub20.i.i, 1
  br i1 %cmp2156.i.i, label %if.end7.i.i.for.body.i.i_crit_edge, label %if.end7.i.i.for.inc.i_crit_edge

if.end7.i.i.for.inc.i_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end7.i.i.for.body.i.i_crit_edge:               ; preds = %if.end7.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end7.i.i.for.body.i.i_crit_edge
  %i.057.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 1, %if.end7.i.i.for.body.i.i_crit_edge ]
  %arrayidx23.i.i = getelementptr i8, ptr %16, i32 %i.057.i.i
  %28 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx23.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %29)
  %cmp25.not.i.i = icmp eq i8 %29, 46
  br i1 %cmp25.not.i.i, label %if.end28.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end28.i.i:                                     ; preds = %for.body.i.i
  %add.ptr30.i.i = getelementptr i8, ptr %arrayidx23.i.i, i32 1
  %call31.i.i = tail call i32 @strncasecmp(ptr noundef %add.ptr30.i.i, ptr noundef %arrayidx.i, i32 noundef %call1.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %tobool32.not.i.i = icmp eq i32 %call31.i.i, 0
  br i1 %tobool32.not.i.i, label %if.end28.i.i.for.end.i_crit_edge, label %if.end28.i.i.for.inc.i.i_crit_edge

if.end28.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end28.i.i.for.end.i_crit_edge:                 ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.i.i:                                      ; preds = %if.end28.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.057.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %sub20.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.inc.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.for.inc.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.i.i.for.inc.i_crit_edge, %if.end7.i.i.for.inc.i_crit_edge, %if.end.i.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.046.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add.i
  br i1 %exitcond.not.i, label %for.end.thread.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.thread.i:                                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @up_read(ptr noundef %sb_lock.i) #11
  br label %if.end17

for.end.i:                                        ; preds = %if.end28.i.i.for.end.i_crit_edge, %land.lhs.true.i.i.for.end.i_crit_edge, %if.then16.for.end.i_crit_edge
  %i.044.i = phi i32 [ 0, %if.then16.for.end.i_crit_edge ], [ %i.046.i, %if.end28.i.i.for.end.i_crit_edge ], [ %i.046.i, %land.lhs.true.i.i.for.end.i_crit_edge ]
  tail call void @up_read(ptr noundef %sb_lock.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %i.044.i, i32 %add.i)
  %cmp7.i = icmp eq i32 %i.044.i, %add.i
  br i1 %cmp7.i, label %for.end.i.if.end17_crit_edge, label %if.end10.i

for.end.i.if.end17_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end10.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.044.i, i32 %23)
  %cmp11.i = icmp slt i32 %i.044.i, %23
  %i_advise.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call10, i32 0, i32 2
  %30 = ptrtoint ptr %i_advise.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %i_advise.i.i.i, align 4
  br i1 %cmp11.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.end10.i
  %32 = and i8 %31, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i.i, label %if.end.i30.i, label %if.then13.i.if.end17_crit_edge

if.then13.i.if.end17_crit_edge:                   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end.i30.i:                                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv2.i.i = or i8 %31, 1
  %33 = ptrtoint ptr %i_advise.i.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv2.i.i, ptr %i_advise.i.i.i, align 4
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef %call10, i1 noundef zeroext true) #11
  br label %if.end17

if.else.i:                                        ; preds = %if.end10.i
  %34 = and i8 %31, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i34.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i34.i, label %if.end.i36.i, label %if.else.i.if.end17_crit_edge

if.else.i.if.end17_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end.i36.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv2.i35.i = or i8 %31, 32
  %35 = ptrtoint ptr %i_advise.i.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv2.i35.i, ptr %i_advise.i.i.i, align 4
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef %call10, i1 noundef zeroext true) #11
  br label %if.end17

if.end17:                                         ; preds = %if.end.i36.i, %if.else.i.if.end17_crit_edge, %if.end.i30.i, %if.then13.i.if.end17_crit_edge, %for.end.i.if.end17_crit_edge, %for.end.thread.i, %if.end14.if.end17_crit_edge
  %name19 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %name19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name19, align 8
  %raw_super.i63 = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 2
  %38 = ptrtoint ptr %raw_super.i63 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %raw_super.i63, align 8
  %extension_list.i64 = getelementptr inbounds %struct.f2fs_super_block, ptr %39, i32 0, i32 30
  %noextensions.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 73, i32 27
  %extensions.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 73, i32 26
  %compress_ext_cnt.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 73, i32 23
  %40 = ptrtoint ptr %compress_ext_cnt.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %compress_ext_cnt.i, align 8
  %nocompress_ext_cnt.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 73, i32 24
  %42 = ptrtoint ptr %nocompress_ext_cnt.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %nocompress_ext_cnt.i, align 1
  %feature.i.i = getelementptr inbounds %struct.f2fs_super_block, ptr %39, i32 0, i32 34
  %44 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %feature.i.i, align 1
  %46 = and i32 %45, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i, label %if.end17.set_compress_inode.exit_crit_edge, label %lor.lhs.false.i

if.end17.set_compress_inode.exit_crit_edge:       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_compress_inode.exit

lor.lhs.false.i:                                  ; preds = %if.end17
  %i_flags.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call10, i32 0, i32 1
  %47 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i_flags.i, align 8
  %and.i = and i32 %48, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false8.i, label %lor.lhs.false.i.set_compress_inode.exit_crit_edge

lor.lhs.false.i.set_compress_inode.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_compress_inode.exit

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %i_flags.i.i = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 4
  %49 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %i_flags.i.i, align 4
  %and.i90.i = and i32 %50, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i90.i)
  %tobool.not.i.i65 = icmp eq i32 %and.i90.i, 0
  br i1 %tobool.not.i.i65, label %lor.lhs.false.i.i, label %lor.lhs.false8.i.set_compress_inode.exit_crit_edge

lor.lhs.false8.i.set_compress_inode.exit_crit_edge: ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_compress_inode.exit

lor.lhs.false.i.i:                                ; preds = %lor.lhs.false8.i
  %flags.i.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call10, i32 0, i32 8
  %51 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %53 = and i32 %52, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.i.not.i.i = icmp eq i32 %53, 0
  br i1 %tobool.i.not.i.i, label %lor.lhs.false1.i.i, label %lor.lhs.false.i.i.set_compress_inode.exit_crit_edge

lor.lhs.false.i.i.set_compress_inode.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_compress_inode.exit

lor.lhs.false1.i.i:                               ; preds = %lor.lhs.false.i.i
  %54 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %56 = and i32 %55, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.i18.not.i.i = icmp eq i32 %56, 0
  br i1 %tobool.i18.not.i.i, label %lor.lhs.false3.i.i, label %lor.lhs.false1.i.i.set_compress_inode.exit_crit_edge

lor.lhs.false1.i.i.set_compress_inode.exit_crit_edge: ; preds = %lor.lhs.false1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_compress_inode.exit

lor.lhs.false3.i.i:                               ; preds = %lor.lhs.false1.i.i
  %57 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %59 = and i32 %58, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.i20.not.i.i = icmp eq i32 %59, 0
  br i1 %tobool.i20.not.i.i, label %f2fs_may_compress.exit.i, label %lor.lhs.false3.i.i.set_compress_inode.exit_crit_edge

lor.lhs.false3.i.i.set_compress_inode.exit_crit_edge: ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_compress_inode.exit

f2fs_may_compress.exit.i:                         ; preds = %lor.lhs.false3.i.i
  %60 = ptrtoint ptr %call10 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %call10, align 8
  %62 = and i16 %61, -4096
  %63 = zext i16 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %62, label %f2fs_may_compress.exit.i.set_compress_inode.exit_crit_edge [
    i16 -32768, label %f2fs_may_compress.exit.i.lor.lhs.false10.i_crit_edge
    i16 16384, label %f2fs_may_compress.exit.i.lor.lhs.false10.i_crit_edge111
  ]

f2fs_may_compress.exit.i.lor.lhs.false10.i_crit_edge111: ; preds = %f2fs_may_compress.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false10.i

f2fs_may_compress.exit.i.lor.lhs.false10.i_crit_edge: ; preds = %f2fs_may_compress.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false10.i

f2fs_may_compress.exit.i.set_compress_inode.exit_crit_edge: ; preds = %f2fs_may_compress.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_compress_inode.exit

lor.lhs.false10.i:                                ; preds = %f2fs_may_compress.exit.i.lor.lhs.false10.i_crit_edge, %f2fs_may_compress.exit.i.lor.lhs.false10.i_crit_edge111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool11.not.i = icmp eq i8 %41, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool12.not.i = icmp eq i8 %43, 0
  %or.cond.i = select i1 %tobool11.not.i, i1 %tobool12.not.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false10.i.set_compress_inode.exit_crit_edge, label %if.end.i71

lor.lhs.false10.i.set_compress_inode.exit_crit_edge: ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_compress_inode.exit

if.end.i71:                                       ; preds = %lor.lhs.false10.i
  %sb_lock.i66 = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 3
  tail call void @down_read(ptr noundef %sb_lock.i66) #11
  %64 = ptrtoint ptr %raw_super.i63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %raw_super.i63, align 8
  %extension_count.i67 = getelementptr inbounds %struct.f2fs_super_block, ptr %65, i32 0, i32 29
  %66 = ptrtoint ptr %extension_count.i67 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %extension_count.i67, align 1
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #11
  %hot_ext_count.i68 = getelementptr inbounds %struct.f2fs_super_block, ptr %65, i32 0, i32 39
  %69 = ptrtoint ptr %hot_ext_count.i68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %hot_ext_count.i68, align 1
  %conv.i69 = zext i8 %70 to i32
  %add.i70 = add i32 %68, %conv.i69
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %add.i70)
  %cmp152.i = icmp slt i32 %68, %add.i70
  br i1 %cmp152.i, label %for.body.lr.ph.i73, label %if.end.i71.for.end.i85_crit_edge

if.end.i71.for.end.i85_crit_edge:                 ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i85

for.body.lr.ph.i73:                               ; preds = %if.end.i71
  %call.i.i72 = tail call i32 @strlen(ptr noundef %37) #15
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 %call.i.i72
  br label %for.body.i76

for.body.i76:                                     ; preds = %for.inc.i84.for.body.i76_crit_edge, %for.body.lr.ph.i73
  %i.0153.i = phi i32 [ %68, %for.body.lr.ph.i73 ], [ %inc.i82, %for.inc.i84.for.body.i76_crit_edge ]
  %arrayidx.i74 = getelementptr [8 x i8], ptr %extension_list.i64, i32 %i.0153.i
  %call1.i.i75 = tail call i32 @strlen(ptr noundef %arrayidx.i74) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i.i75)
  %cmp.i91.i = icmp eq i32 %call1.i.i75, 1
  br i1 %cmp.i91.i, label %land.lhs.true.i.i78, label %for.body.i76.if.end.i92.i_crit_edge

for.body.i76.if.end.i92.i_crit_edge:              ; preds = %for.body.i76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i92.i

land.lhs.true.i.i78:                              ; preds = %for.body.i76
  %71 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i74, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %72)
  %cmp2.i.i77 = icmp eq i8 %72, 42
  br i1 %cmp2.i.i77, label %land.lhs.true.i.i78.if.then19.i_crit_edge, label %land.lhs.true.i.i78.if.end.i92.i_crit_edge

land.lhs.true.i.i78.if.end.i92.i_crit_edge:       ; preds = %land.lhs.true.i.i78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i92.i

land.lhs.true.i.i78.if.then19.i_crit_edge:        ; preds = %land.lhs.true.i.i78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19.i

if.end.i92.i:                                     ; preds = %land.lhs.true.i.i78.if.end.i92.i_crit_edge, %for.body.i76.if.end.i92.i_crit_edge
  %add.i.i79 = add i32 %call1.i.i75, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i72, i32 %add.i.i79)
  %cmp4.i.i80 = icmp ult i32 %call.i.i72, %add.i.i79
  br i1 %cmp4.i.i80, label %if.end.i92.i.for.inc.i84_crit_edge, label %if.end7.i.i81

if.end.i92.i.for.inc.i84_crit_edge:               ; preds = %if.end.i92.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i84

if.end7.i.i81:                                    ; preds = %if.end.i92.i
  %73 = xor i32 %call1.i.i75, -1
  %sub10.i.i = add i32 %call.i.i72, %73
  %arrayidx.i.i = getelementptr i8, ptr %37, i32 %sub10.i.i
  %74 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %75)
  %cmp12.not.i.i = icmp eq i8 %75, 46
  br i1 %cmp12.not.i.i, label %is_extension_exist.exit.i, label %if.end7.i.i81.for.inc.i84_crit_edge

if.end7.i.i81.for.inc.i84_crit_edge:              ; preds = %if.end7.i.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i84

is_extension_exist.exit.i:                        ; preds = %if.end7.i.i81
  %idx.neg.i.i = sub i32 0, %call1.i.i75
  %add.ptr16.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %idx.neg.i.i
  %call17.i.i = tail call i32 @strncasecmp(ptr noundef %add.ptr16.i.i, ptr noundef %arrayidx.i74, i32 noundef %call1.i.i75) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.not.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.not.i, label %is_extension_exist.exit.i.if.then19.i_crit_edge, label %is_extension_exist.exit.i.for.inc.i84_crit_edge

is_extension_exist.exit.i.for.inc.i84_crit_edge:  ; preds = %is_extension_exist.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i84

is_extension_exist.exit.i.if.then19.i_crit_edge:  ; preds = %is_extension_exist.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19.i

if.then19.i:                                      ; preds = %is_extension_exist.exit.i.if.then19.i_crit_edge, %land.lhs.true.i.i78.if.then19.i_crit_edge
  tail call void @up_read(ptr noundef %sb_lock.i66) #11
  br label %set_compress_inode.exit

for.inc.i84:                                      ; preds = %is_extension_exist.exit.i.for.inc.i84_crit_edge, %if.end7.i.i81.for.inc.i84_crit_edge, %if.end.i92.i.for.inc.i84_crit_edge
  %inc.i82 = add i32 %i.0153.i, 1
  %exitcond.not.i83 = icmp eq i32 %inc.i82, %add.i70
  br i1 %exitcond.not.i83, label %for.inc.i84.for.end.i85_crit_edge, label %for.inc.i84.for.body.i76_crit_edge

for.inc.i84.for.body.i76_crit_edge:               ; preds = %for.inc.i84
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i76

for.inc.i84.for.end.i85_crit_edge:                ; preds = %for.inc.i84
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i85

for.end.i85:                                      ; preds = %for.inc.i84.for.end.i85_crit_edge, %if.end.i71.for.end.i85_crit_edge
  tail call void @up_read(ptr noundef %sb_lock.i66) #11
  %conv24.i = zext i8 %43 to i32
  br i1 %tobool12.not.i, label %for.end.i85.for.end37.i_crit_edge, label %for.body27.lr.ph.i

for.end.i85.for.end37.i_crit_edge:                ; preds = %for.end.i85
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end37.i

for.body27.lr.ph.i:                               ; preds = %for.end.i85
  %call.i94.i = tail call i32 @strlen(ptr noundef %37) #15
  %add.ptr.i106.i = getelementptr i8, ptr %37, i32 %call.i94.i
  br label %for.body27.i

for.body27.i:                                     ; preds = %for.inc35.i.for.body27.i_crit_edge, %for.body27.lr.ph.i
  %i.1155.i = phi i32 [ 0, %for.body27.lr.ph.i ], [ %inc36.i, %for.inc35.i.for.body27.i_crit_edge ]
  %arrayidx28.i = getelementptr [8 x i8], ptr %noextensions.i, i32 %i.1155.i
  %call1.i95.i = tail call i32 @strlen(ptr noundef %arrayidx28.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i95.i)
  %cmp.i96.i = icmp eq i32 %call1.i95.i, 1
  br i1 %cmp.i96.i, label %land.lhs.true.i98.i, label %for.body27.i.if.end.i101.i_crit_edge

for.body27.i.if.end.i101.i_crit_edge:             ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i101.i

land.lhs.true.i98.i:                              ; preds = %for.body27.i
  %76 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx28.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %77)
  %cmp2.i97.i = icmp eq i8 %77, 42
  br i1 %cmp2.i97.i, label %land.lhs.true.i98.i.if.then32.i_crit_edge, label %land.lhs.true.i98.i.if.end.i101.i_crit_edge

land.lhs.true.i98.i.if.end.i101.i_crit_edge:      ; preds = %land.lhs.true.i98.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i101.i

land.lhs.true.i98.i.if.then32.i_crit_edge:        ; preds = %land.lhs.true.i98.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32.i

if.end.i101.i:                                    ; preds = %land.lhs.true.i98.i.if.end.i101.i_crit_edge, %for.body27.i.if.end.i101.i_crit_edge
  %add.i99.i = add i32 %call1.i95.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i94.i, i32 %add.i99.i)
  %cmp4.i100.i = icmp ult i32 %call.i94.i, %add.i99.i
  br i1 %cmp4.i100.i, label %if.end.i101.i.for.inc35.i_crit_edge, label %if.end7.i102.i

if.end.i101.i.for.inc35.i_crit_edge:              ; preds = %if.end.i101.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc35.i

if.end7.i102.i:                                   ; preds = %if.end.i101.i
  %78 = xor i32 %call1.i95.i, -1
  %sub10.i103.i = add i32 %call.i94.i, %78
  %arrayidx.i104.i = getelementptr i8, ptr %37, i32 %sub10.i103.i
  %79 = ptrtoint ptr %arrayidx.i104.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.i104.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %80)
  %cmp12.not.i105.i = icmp eq i8 %80, 46
  br i1 %cmp12.not.i105.i, label %is_extension_exist.exit114.i, label %if.end7.i102.i.for.inc35.i_crit_edge

if.end7.i102.i.for.inc35.i_crit_edge:             ; preds = %if.end7.i102.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc35.i

is_extension_exist.exit114.i:                     ; preds = %if.end7.i102.i
  %idx.neg.i107.i = sub i32 0, %call1.i95.i
  %add.ptr16.i108.i = getelementptr i8, ptr %add.ptr.i106.i, i32 %idx.neg.i107.i
  %call17.i109.i = tail call i32 @strncasecmp(ptr noundef %add.ptr16.i108.i, ptr noundef %arrayidx28.i, i32 noundef %call1.i95.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i109.i)
  %tobool18.not.i110.not.i = icmp eq i32 %call17.i109.i, 0
  br i1 %tobool18.not.i110.not.i, label %is_extension_exist.exit114.i.if.then32.i_crit_edge, label %is_extension_exist.exit114.i.for.inc35.i_crit_edge

is_extension_exist.exit114.i.for.inc35.i_crit_edge: ; preds = %is_extension_exist.exit114.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc35.i

is_extension_exist.exit114.i.if.then32.i_crit_edge: ; preds = %is_extension_exist.exit114.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32.i

if.then32.i:                                      ; preds = %is_extension_exist.exit114.i.if.then32.i_crit_edge, %land.lhs.true.i98.i.if.then32.i_crit_edge
  tail call fastcc void @f2fs_disable_compressed_file(ptr noundef %call10) #11
  br label %set_compress_inode.exit

for.inc35.i:                                      ; preds = %is_extension_exist.exit114.i.for.inc35.i_crit_edge, %if.end7.i102.i.for.inc35.i_crit_edge, %if.end.i101.i.for.inc35.i_crit_edge
  %inc36.i = add nuw nsw i32 %i.1155.i, 1
  %exitcond158.not.i = icmp eq i32 %inc36.i, %conv24.i
  br i1 %exitcond158.not.i, label %for.inc35.i.for.end37.i_crit_edge, label %for.inc35.i.for.body27.i_crit_edge

for.inc35.i.for.body27.i_crit_edge:               ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body27.i

for.inc35.i.for.end37.i_crit_edge:                ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end37.i

for.end37.i:                                      ; preds = %for.inc35.i.for.end37.i_crit_edge, %for.end.i85.for.end37.i_crit_edge
  %81 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %flags.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %82)
  %tobool39.not.i = icmp sgt i32 %82, -1
  br i1 %tobool39.not.i, label %for.cond42.preheader.i, label %for.end37.i.set_compress_inode.exit_crit_edge

for.end37.i.set_compress_inode.exit_crit_edge:    ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_compress_inode.exit

for.cond42.preheader.i:                           ; preds = %for.end37.i
  %conv43.i = zext i8 %41 to i32
  br i1 %tobool11.not.i, label %for.cond42.preheader.i.set_compress_inode.exit_crit_edge, label %for.body46.lr.ph.i

for.cond42.preheader.i.set_compress_inode.exit_crit_edge: ; preds = %for.cond42.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_compress_inode.exit

for.body46.lr.ph.i:                               ; preds = %for.cond42.preheader.i
  %call.i115.i = tail call i32 @strlen(ptr noundef %37) #15
  %add.ptr.i127.i = getelementptr i8, ptr %37, i32 %call.i115.i
  br label %for.body46.i

for.body46.i:                                     ; preds = %for.inc53.i.for.body46.i_crit_edge, %for.body46.lr.ph.i
  %i.2157.i = phi i32 [ 0, %for.body46.lr.ph.i ], [ %inc54.i, %for.inc53.i.for.body46.i_crit_edge ]
  %arrayidx47.i = getelementptr [8 x i8], ptr %extensions.i, i32 %i.2157.i
  %call1.i116.i = tail call i32 @strlen(ptr noundef %arrayidx47.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i116.i)
  %cmp.i117.i = icmp eq i32 %call1.i116.i, 1
  br i1 %cmp.i117.i, label %land.lhs.true.i119.i, label %for.body46.i.if.end.i122.i_crit_edge

for.body46.i.if.end.i122.i_crit_edge:             ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i122.i

land.lhs.true.i119.i:                             ; preds = %for.body46.i
  %83 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx47.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %84)
  %cmp2.i118.i = icmp eq i8 %84, 42
  br i1 %cmp2.i118.i, label %land.lhs.true.i119.i.if.end52.i_crit_edge, label %land.lhs.true.i119.i.if.end.i122.i_crit_edge

land.lhs.true.i119.i.if.end.i122.i_crit_edge:     ; preds = %land.lhs.true.i119.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i122.i

land.lhs.true.i119.i.if.end52.i_crit_edge:        ; preds = %land.lhs.true.i119.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52.i

if.end.i122.i:                                    ; preds = %land.lhs.true.i119.i.if.end.i122.i_crit_edge, %for.body46.i.if.end.i122.i_crit_edge
  %add.i120.i = add i32 %call1.i116.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i115.i, i32 %add.i120.i)
  %cmp4.i121.i = icmp ult i32 %call.i115.i, %add.i120.i
  br i1 %cmp4.i121.i, label %if.end.i122.i.for.inc53.i_crit_edge, label %if.end7.i123.i

if.end.i122.i.for.inc53.i_crit_edge:              ; preds = %if.end.i122.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc53.i

if.end7.i123.i:                                   ; preds = %if.end.i122.i
  %85 = xor i32 %call1.i116.i, -1
  %sub10.i124.i = add i32 %call.i115.i, %85
  %arrayidx.i125.i = getelementptr i8, ptr %37, i32 %sub10.i124.i
  %86 = ptrtoint ptr %arrayidx.i125.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.i125.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %87)
  %cmp12.not.i126.i = icmp eq i8 %87, 46
  br i1 %cmp12.not.i126.i, label %is_extension_exist.exit135.i, label %if.end7.i123.i.for.inc53.i_crit_edge

if.end7.i123.i.for.inc53.i_crit_edge:             ; preds = %if.end7.i123.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc53.i

is_extension_exist.exit135.i:                     ; preds = %if.end7.i123.i
  %idx.neg.i128.i = sub i32 0, %call1.i116.i
  %add.ptr16.i129.i = getelementptr i8, ptr %add.ptr.i127.i, i32 %idx.neg.i128.i
  %call17.i130.i = tail call i32 @strncasecmp(ptr noundef %add.ptr16.i129.i, ptr noundef %arrayidx47.i, i32 noundef %call1.i116.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i130.i)
  %tobool18.not.i131.not.i = icmp eq i32 %call17.i130.i, 0
  br i1 %tobool18.not.i131.not.i, label %is_extension_exist.exit135.i.if.end52.i_crit_edge, label %is_extension_exist.exit135.i.for.inc53.i_crit_edge

is_extension_exist.exit135.i.for.inc53.i_crit_edge: ; preds = %is_extension_exist.exit135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc53.i

is_extension_exist.exit135.i.if.end52.i_crit_edge: ; preds = %is_extension_exist.exit135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52.i

if.end52.i:                                       ; preds = %is_extension_exist.exit135.i.if.end52.i_crit_edge, %land.lhs.true.i119.i.if.end52.i_crit_edge
  tail call fastcc void @set_compress_context(ptr noundef %call10) #11
  br label %set_compress_inode.exit

for.inc53.i:                                      ; preds = %is_extension_exist.exit135.i.for.inc53.i_crit_edge, %if.end7.i123.i.for.inc53.i_crit_edge, %if.end.i122.i.for.inc53.i_crit_edge
  %inc54.i = add nuw nsw i32 %i.2157.i, 1
  %exitcond159.not.i = icmp eq i32 %inc54.i, %conv43.i
  br i1 %exitcond159.not.i, label %for.inc53.i.set_compress_inode.exit_crit_edge, label %for.inc53.i.for.body46.i_crit_edge

for.inc53.i.for.body46.i_crit_edge:               ; preds = %for.inc53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body46.i

for.inc53.i.set_compress_inode.exit_crit_edge:    ; preds = %for.inc53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_compress_inode.exit

set_compress_inode.exit:                          ; preds = %for.inc53.i.set_compress_inode.exit_crit_edge, %if.end52.i, %for.cond42.preheader.i.set_compress_inode.exit_crit_edge, %for.end37.i.set_compress_inode.exit_crit_edge, %if.then32.i, %if.then19.i, %lor.lhs.false10.i.set_compress_inode.exit_crit_edge, %f2fs_may_compress.exit.i.set_compress_inode.exit_crit_edge, %lor.lhs.false3.i.i.set_compress_inode.exit_crit_edge, %lor.lhs.false1.i.i.set_compress_inode.exit_crit_edge, %lor.lhs.false.i.i.set_compress_inode.exit_crit_edge, %lor.lhs.false8.i.set_compress_inode.exit_crit_edge, %lor.lhs.false.i.set_compress_inode.exit_crit_edge, %if.end17.set_compress_inode.exit_crit_edge
  %i_op = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 7
  %88 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @f2fs_file_inode_operations, ptr %i_op, align 8
  %89 = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 44
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @f2fs_file_operations, ptr %89, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 9
  %91 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %92, i32 0, i32 9
  %93 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @f2fs_dblock_aops, ptr %a_ops, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 11
  %94 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %i_ino, align 8
  %cp_rwsem.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 20
  tail call void @down_read(ptr noundef %cp_rwsem.i) #11
  %96 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dentry, align 8
  %and.i.i = and i32 %97, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i86 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i86, label %f2fs_add_link.exit, label %set_compress_inode.exit.out_crit_edge

set_compress_inode.exit.out_crit_edge:            ; preds = %set_compress_inode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

f2fs_add_link.exit:                               ; preds = %set_compress_inode.exit
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %98 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %d_parent.i, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %99, i32 0, i32 5
  %100 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %d_inode.i.i, align 8
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %102 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %i_ino, align 8
  %104 = ptrtoint ptr %call10 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %call10, align 8
  %call2.i = tail call i32 @f2fs_do_add_link(ptr noundef %101, ptr noundef %d_name.i, ptr noundef %call10, i32 noundef %103, i16 noundef zeroext %105) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool21.not = icmp eq i32 %call2.i, 0
  br i1 %tobool21.not, label %if.end23, label %f2fs_add_link.exit.out_crit_edge

f2fs_add_link.exit.out_crit_edge:                 ; preds = %f2fs_add_link.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end23:                                         ; preds = %f2fs_add_link.exit
  tail call void @up_read(ptr noundef %cp_rwsem.i) #11
  tail call void @f2fs_alloc_nid_done(ptr noundef %3, i32 noundef %95) #11
  tail call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call10) #11
  %106 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %i_sb.i, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %107, i32 0, i32 10
  %108 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %s_flags, align 4
  %and24 = and i32 %109, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %lor.lhs.false, label %if.end23.if.then28_crit_edge

if.end23.if.then28_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then28

lor.lhs.false:                                    ; preds = %if.end23
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %110 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %i_flags, align 4
  %and26 = and i32 %111, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %lor.lhs.false.if.end30_crit_edge, label %lor.lhs.false.if.then28_crit_edge

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then28

lor.lhs.false.if.end30_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then28:                                        ; preds = %lor.lhs.false.if.then28_crit_edge, %if.end23.if.then28_crit_edge
  %112 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %3, align 8
  %call29 = tail call i32 @f2fs_sync_fs(ptr noundef %113, i32 noundef 1) #11
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %lor.lhs.false.if.end30_crit_edge
  tail call void @f2fs_balance_fs(ptr noundef %3, i1 noundef zeroext true) #11
  br label %cleanup

out:                                              ; preds = %f2fs_add_link.exit.out_crit_edge, %set_compress_inode.exit.out_crit_edge
  %retval.0.i8893 = phi i32 [ %call2.i, %f2fs_add_link.exit.out_crit_edge ], [ -126, %set_compress_inode.exit.out_crit_edge ]
  tail call void @f2fs_handle_failed_inode(ptr noundef %call10) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end30, %if.then12, %if.end5.cleanup_crit_edge, %f2fs_is_checkpoint_ready.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then12 ], [ %retval.0.i8893, %out ], [ 0, %if.end30 ], [ -5, %entry.cleanup_crit_edge ], [ -28, %f2fs_is_checkpoint_ready.exit.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_link(ptr nocapture noundef readonly %old_dentry, ptr noundef %dir, ptr noundef %dentry) #4 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %ckpt.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %ckpt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ckpt.i.i.i, align 4
  %ckpt_flags1.i.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %ckpt_flags1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %ckpt_flags1.i.i.i, align 1
  %10 = and i32 %9, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.i.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.i.i.not, label %if.end, label %entry.cleanup_crit_edge, !prof !51

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_flag.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 5
  %11 = ptrtoint ptr %s_flag.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %s_flag.i.i, align 4
  %13 = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i, label %if.end.if.end6_crit_edge, label %f2fs_is_checkpoint_ready.exit, !prof !51

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

f2fs_is_checkpoint_ready.exit:                    ; preds = %if.end
  %call3.i = tail call fastcc zeroext i1 @has_not_enough_free_secs(ptr noundef %5) #11
  br i1 %call3.i, label %f2fs_is_checkpoint_ready.exit.cleanup_crit_edge, label %f2fs_is_checkpoint_ready.exit.if.end6_crit_edge

f2fs_is_checkpoint_ready.exit.if.end6_crit_edge:  ; preds = %f2fs_is_checkpoint_ready.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

f2fs_is_checkpoint_ready.exit.cleanup_crit_edge:  ; preds = %f2fs_is_checkpoint_ready.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %f2fs_is_checkpoint_ready.exit.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %14 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %15, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end6.if.end10_crit_edge, label %fscrypt_prepare_link.exit

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

fscrypt_prepare_link.exit:                        ; preds = %if.end6
  %16 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode.i, align 8
  %call1.i = tail call i32 @__fscrypt_prepare_link(ptr noundef %17, ptr noundef %dir, ptr noundef %dentry) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool8.not = icmp eq i32 %call1.i, 0
  br i1 %tobool8.not, label %fscrypt_prepare_link.exit.if.end10_crit_edge, label %fscrypt_prepare_link.exit.cleanup_crit_edge

fscrypt_prepare_link.exit.cleanup_crit_edge:      ; preds = %fscrypt_prepare_link.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

fscrypt_prepare_link.exit.if.end10_crit_edge:     ; preds = %fscrypt_prepare_link.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end10:                                         ; preds = %fscrypt_prepare_link.exit.if.end10_crit_edge, %if.end6.if.end10_crit_edge
  %flags.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 8
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i, align 4
  %20 = and i32 %19, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool12.not = icmp eq i32 %20, 0
  br i1 %tobool12.not, label %if.end10.if.end19_crit_edge, label %land.lhs.true

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end10
  %i_projid = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 30
  %21 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_inode.i, align 8
  %i_projid15 = getelementptr inbounds %struct.f2fs_inode_info, ptr %22, i32 0, i32 30
  %23 = ptrtoint ptr %i_projid to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack = load i32, ptr %i_projid, align 8
  %24 = ptrtoint ptr %i_projid15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack64 = load i32, ptr %i_projid15, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack64)
  %cmp.i = icmp eq i32 %.unpack, %.unpack64
  br i1 %cmp.i, label %land.lhs.true.if.end19_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %if.end10.if.end19_crit_edge
  %call20 = tail call i32 @f2fs_dquot_initialize(ptr noundef %dir) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  tail call void @f2fs_balance_fs(ptr noundef %5, i1 noundef zeroext true) #11
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %1) #11
  %25 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #11
  call void @ihold(ptr noundef %1) #11
  %flags.i66 = getelementptr inbounds %struct.f2fs_inode_info, ptr %1, i32 0, i32 8
  call void @_set_bit(i32 noundef 4, ptr noundef %flags.i66) #11
  %cp_rwsem.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 20
  call void @down_read(ptr noundef %cp_rwsem.i) #11
  %26 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dentry, align 8
  %and.i.i = and i32 %27, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i67 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i67, label %f2fs_add_link.exit, label %if.end23.out_crit_edge

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

f2fs_add_link.exit:                               ; preds = %if.end23
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %28 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d_parent.i, align 8
  %d_inode.i.i68 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %d_inode.i.i68 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_inode.i.i68, align 8
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %32 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_ino.i, align 8
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %1, align 8
  %call2.i = call i32 @f2fs_do_add_link(ptr noundef %31, ptr noundef %d_name.i, ptr noundef %1, i32 noundef %33, i16 noundef zeroext %35) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool25.not = icmp eq i32 %call2.i, 0
  br i1 %tobool25.not, label %if.end27, label %f2fs_add_link.exit.out_crit_edge

f2fs_add_link.exit.out_crit_edge:                 ; preds = %f2fs_add_link.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end27:                                         ; preds = %f2fs_add_link.exit
  call void @up_read(ptr noundef %cp_rwsem.i) #11
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %1) #11
  %36 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb.i, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %s_flags, align 4
  %and = and i32 %39, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %lor.lhs.false, label %if.end27.if.then31_crit_edge

if.end27.if.then31_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

lor.lhs.false:                                    ; preds = %if.end27
  %40 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i_flags.i, align 4
  %and29 = and i32 %41, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then31_crit_edge

lor.lhs.false.if.then31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then31:                                        ; preds = %lor.lhs.false.if.then31_crit_edge, %if.end27.if.then31_crit_edge
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %5, align 8
  %call32 = call i32 @f2fs_sync_fs(ptr noundef %43, i32 noundef 1) #11
  br label %cleanup

out:                                              ; preds = %f2fs_add_link.exit.out_crit_edge, %if.end23.out_crit_edge
  %retval.0.i7079 = phi i32 [ %call2.i, %f2fs_add_link.exit.out_crit_edge ], [ -126, %if.end23.out_crit_edge ]
  call void @_clear_bit(i32 noundef 4, ptr noundef %flags.i66) #11
  call void @iput(ptr noundef %1) #11
  call void @up_read(ptr noundef %cp_rwsem.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then31, %lor.lhs.false.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %fscrypt_prepare_link.exit.cleanup_crit_edge, %f2fs_is_checkpoint_ready.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i7079, %out ], [ -5, %entry.cleanup_crit_edge ], [ -28, %f2fs_is_checkpoint_ready.exit.cleanup_crit_edge ], [ %call1.i, %fscrypt_prepare_link.exit.cleanup_crit_edge ], [ -18, %land.lhs.true.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ 0, %if.then31 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_unlink(ptr noundef %dir, ptr noundef %dentry) #4 align 64 {
entry:
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #11
  %6 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !50
  tail call fastcc void @trace_f2fs_unlink_enter(ptr noundef %dir, ptr noundef %dentry)
  %ckpt.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 15
  %7 = ptrtoint ptr %ckpt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ckpt.i.i.i, align 4
  %ckpt_flags1.i.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %ckpt_flags1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %ckpt_flags1.i.i.i, align 1
  %11 = and i32 %10, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.i.i.not = icmp eq i32 %11, 0
  br i1 %tobool.i.i.i.not, label %if.end, label %entry.fail_crit_edge, !prof !51

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @f2fs_dquot_initialize(ptr noundef %dir) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @f2fs_dquot_initialize(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.fail_crit_edge

if.end7.fail_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end11:                                         ; preds = %if.end7
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call12 = call ptr @f2fs_find_entry(ptr noundef %dir, ptr noundef %d_name, ptr noundef nonnull %page) #11
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then14, label %if.end19

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %page, align 4
  %cmp.i = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  %14 = ptrtoint ptr %13 to i32
  %spec.select = select i1 %cmp.i, i32 %14, i32 0
  br label %fail

if.end19:                                         ; preds = %if.end11
  call void @f2fs_balance_fs(ptr noundef %3, i1 noundef zeroext true) #11
  %cp_rwsem.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 20
  call void @down_read(ptr noundef %cp_rwsem.i) #11
  %call20 = call i32 @f2fs_acquire_orphan_inode(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end19
  call void @up_read(ptr noundef %cp_rwsem.i) #11
  %15 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %page, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.then22.fail_crit_edge, label %if.end13.i

if.then22.fail_crit_edge:                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end13.i:                                       ; preds = %if.then22
  %17 = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !51

if.then.i.i.i:                                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = add i32 %19, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %16 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %20, %if.end.i.i.i ]
  %21 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #11
  %22 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.i.i.i.i = icmp eq i32 %23, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !52

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %21, ptr noundef nonnull @.str) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !53
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !54
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %24 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #11, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %24, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_unlink, %if.then.i.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !57

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %21, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.fail_crit_edge

folio_put_testzero.exit.i.i.i.fail_crit_edge:     ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__put_page(ptr noundef %21) #11
  br label %fail

if.end23:                                         ; preds = %if.end19
  %25 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %page, align 4
  call void @f2fs_delete_entry(ptr noundef nonnull %call12, ptr noundef %26, ptr noundef %dir, ptr noundef %5) #11
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %27 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i_flags, align 4
  %and = and i32 %28, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.end23.if.end26_crit_edge, label %if.then25

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  call void @d_invalidate(ptr noundef %dentry) #11
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23.if.end26_crit_edge
  call void @up_read(ptr noundef %cp_rwsem.i) #11
  %29 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb.i, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_flags, align 4
  %and27 = and i32 %32, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %lor.lhs.false, label %if.end26.if.then32_crit_edge

if.end26.if.then32_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

lor.lhs.false:                                    ; preds = %if.end26
  %33 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i_flags, align 4
  %and30 = and i32 %34, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %lor.lhs.false.fail_crit_edge, label %lor.lhs.false.if.then32_crit_edge

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

lor.lhs.false.fail_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %if.end26.if.then32_crit_edge
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 8
  %call33 = call i32 @f2fs_sync_fs(ptr noundef %36, i32 noundef 1) #11
  br label %fail

fail:                                             ; preds = %if.then32, %lor.lhs.false.fail_crit_edge, %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.fail_crit_edge, %if.then22.fail_crit_edge, %if.then14, %if.end7.fail_crit_edge, %if.end.fail_crit_edge, %entry.fail_crit_edge
  %err.0 = phi i32 [ %call4, %if.end.fail_crit_edge ], [ %call8, %if.end7.fail_crit_edge ], [ 0, %if.then32 ], [ 0, %lor.lhs.false.fail_crit_edge ], [ -5, %entry.fail_crit_edge ], [ %call20, %if.then22.fail_crit_edge ], [ %call20, %folio_put_testzero.exit.i.i.i.fail_crit_edge ], [ %call20, %if.then.i4.i.i ], [ %spec.select, %if.then14 ]
  call fastcc void @trace_f2fs_unlink_exit(ptr noundef %5, i32 noundef %err.0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #11
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_symlink(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, ptr noundef %symname) #4 align 64 {
entry:
  %disk_link = alloca %struct.fscrypt_str, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %call1 = tail call i32 @strlen(ptr noundef %symname) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %disk_link) #11
  %4 = ptrtoint ptr %disk_link to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %disk_link, align 4, !annotation !50
  %5 = getelementptr inbounds %struct.fscrypt_str, ptr %disk_link, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !50
  %ckpt.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 15
  %7 = ptrtoint ptr %ckpt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ckpt.i.i.i, align 4
  %ckpt_flags1.i.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %ckpt_flags1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %ckpt_flags1.i.i.i, align 1
  %11 = and i32 %10, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.i.i.not = icmp eq i32 %11, 0
  br i1 %tobool.i.i.i.not, label %if.end, label %entry.cleanup_crit_edge, !prof !51

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_flag.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %s_flag.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %s_flag.i.i, align 4
  %14 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i, label %if.end.if.end6_crit_edge, label %f2fs_is_checkpoint_ready.exit, !prof !51

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

f2fs_is_checkpoint_ready.exit:                    ; preds = %if.end
  %call3.i = tail call fastcc zeroext i1 @has_not_enough_free_secs(ptr noundef %3) #11
  br i1 %call3.i, label %f2fs_is_checkpoint_ready.exit.cleanup_crit_edge, label %f2fs_is_checkpoint_ready.exit.if.end6_crit_edge

f2fs_is_checkpoint_ready.exit.if.end6_crit_edge:  ; preds = %f2fs_is_checkpoint_ready.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

f2fs_is_checkpoint_ready.exit.cleanup_crit_edge:  ; preds = %f2fs_is_checkpoint_ready.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %f2fs_is_checkpoint_ready.exit.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %15 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_blocksize, align 16
  %call7 = call i32 @fscrypt_prepare_symlink(ptr noundef %dir, ptr noundef %symname, i32 noundef %call1, i32 noundef %18, ptr noundef nonnull %disk_link) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = call i32 @f2fs_dquot_initialize(ptr noundef %dir) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %call15 = call fastcc ptr @f2fs_new_inode(ptr noundef %dir, i16 noundef zeroext -24065)
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %i_flags = getelementptr inbounds %struct.inode, ptr %call15, i32 0, i32 4
  %20 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_flags, align 4
  %and = and i32 %21, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool20.not, ptr @f2fs_symlink_inode_operations, ptr @f2fs_encrypted_symlink_inode_operations
  %22 = getelementptr inbounds %struct.inode, ptr %call15, i32 0, i32 7
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %spec.select, ptr %22, align 8
  call void @inode_nohighmem(ptr noundef %call15) #11
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call15, i32 0, i32 9
  %24 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @f2fs_dblock_aops, ptr %a_ops, align 4
  %cp_rwsem.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 20
  call void @down_read(ptr noundef %cp_rwsem.i) #11
  %27 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dentry, align 8
  %and.i.i = and i32 %28, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i99 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i99, label %f2fs_add_link.exit, label %if.end19.out_f2fs_handle_failed_inode_crit_edge

if.end19.out_f2fs_handle_failed_inode_crit_edge:  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_f2fs_handle_failed_inode

f2fs_add_link.exit:                               ; preds = %if.end19
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %29 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %d_parent.i, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %d_inode.i.i, align 8
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call15, i32 0, i32 11
  %33 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i_ino.i, align 8
  %35 = ptrtoint ptr %call15 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %call15, align 8
  %call2.i = call i32 @f2fs_do_add_link(ptr noundef %32, ptr noundef %d_name.i, ptr noundef %call15, i32 noundef %34, i16 noundef zeroext %36) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool25.not = icmp eq i32 %call2.i, 0
  br i1 %tobool25.not, label %if.end27, label %f2fs_add_link.exit.out_f2fs_handle_failed_inode_crit_edge

f2fs_add_link.exit.out_f2fs_handle_failed_inode_crit_edge: ; preds = %f2fs_add_link.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_f2fs_handle_failed_inode

if.end27:                                         ; preds = %f2fs_add_link.exit
  call void @up_read(ptr noundef %cp_rwsem.i) #11
  %37 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_ino.i, align 8
  call void @f2fs_alloc_nid_done(ptr noundef %3, i32 noundef %38) #11
  %39 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_flags, align 4
  %and.i = and i32 %40, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end27.err_out_crit_edge, label %fscrypt_encrypt_symlink.exit

if.end27.err_out_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

fscrypt_encrypt_symlink.exit:                     ; preds = %if.end27
  %call.i = call i32 @__fscrypt_encrypt_symlink(ptr noundef %call15, ptr noundef %symname, i32 noundef %call1, ptr noundef nonnull %disk_link) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool29.not = icmp eq i32 %call.i, 0
  br i1 %tobool29.not, label %fscrypt_encrypt_symlink.exit.err_out_crit_edge, label %err_out.thread

fscrypt_encrypt_symlink.exit.err_out_crit_edge:   ; preds = %fscrypt_encrypt_symlink.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

err_out.thread:                                   ; preds = %fscrypt_encrypt_symlink.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call15) #11
  br label %if.else48

err_out:                                          ; preds = %fscrypt_encrypt_symlink.exit.err_out_crit_edge, %if.end27.err_out_crit_edge
  %41 = ptrtoint ptr %disk_link to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %disk_link, align 4
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %5, align 4
  %call33 = call i32 @page_symlink(ptr noundef %call15, ptr noundef %42, i32 noundef %44) #11
  call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then35, label %err_out.if.else48_crit_edge

err_out.if.else48_crit_edge:                      ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else48

if.then35:                                        ; preds = %err_out
  %45 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_mapping, align 8
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %5, align 4
  %sub = add i32 %48, -1
  %conv = zext i32 %sub to i64
  %call38 = call i32 @filemap_write_and_wait_range(ptr noundef %46, i64 noundef 0, i64 noundef %conv) #11
  %49 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_sb.i, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 10
  %51 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_flags, align 4
  %and40 = and i32 %52, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %lor.lhs.false, label %if.then35.if.then45_crit_edge

if.then35.if.then45_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45

lor.lhs.false:                                    ; preds = %if.then35
  %i_flags42 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %53 = ptrtoint ptr %i_flags42 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %i_flags42, align 4
  %and43 = and i32 %54, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %lor.lhs.false.if.end50_crit_edge, label %lor.lhs.false.if.then45_crit_edge

lor.lhs.false.if.then45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45

lor.lhs.false.if.end50_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then45:                                        ; preds = %lor.lhs.false.if.then45_crit_edge, %if.then35.if.then45_crit_edge
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %3, align 8
  %call46 = call i32 @f2fs_sync_fs(ptr noundef %56, i32 noundef 1) #11
  br label %if.end50

if.else48:                                        ; preds = %err_out.if.else48_crit_edge, %err_out.thread
  %err.0113 = phi i32 [ %call.i, %err_out.thread ], [ %call33, %err_out.if.else48_crit_edge ]
  %call49 = call i32 @f2fs_unlink(ptr noundef %dir, ptr noundef %dentry)
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.then45, %lor.lhs.false.if.end50_crit_edge
  %err.0112 = phi i32 [ 0, %lor.lhs.false.if.end50_crit_edge ], [ 0, %if.then45 ], [ %err.0113, %if.else48 ]
  call void @f2fs_balance_fs(ptr noundef %3, i1 noundef zeroext true) #11
  br label %out_free_encrypted_link

out_f2fs_handle_failed_inode:                     ; preds = %f2fs_add_link.exit.out_f2fs_handle_failed_inode_crit_edge, %if.end19.out_f2fs_handle_failed_inode_crit_edge
  %retval.0.i101107 = phi i32 [ %call2.i, %f2fs_add_link.exit.out_f2fs_handle_failed_inode_crit_edge ], [ -126, %if.end19.out_f2fs_handle_failed_inode_crit_edge ]
  call void @f2fs_handle_failed_inode(ptr noundef %call15) #11
  br label %out_free_encrypted_link

out_free_encrypted_link:                          ; preds = %out_f2fs_handle_failed_inode, %if.end50
  %err.1 = phi i32 [ %retval.0.i101107, %out_f2fs_handle_failed_inode ], [ %err.0112, %if.end50 ]
  %57 = ptrtoint ptr %disk_link to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %disk_link, align 4
  %cmp.not = icmp eq ptr %58, %symname
  br i1 %cmp.not, label %out_free_encrypted_link.cleanup_crit_edge, label %if.then53

out_free_encrypted_link.cleanup_crit_edge:        ; preds = %out_free_encrypted_link
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then53:                                        ; preds = %out_free_encrypted_link
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef %58) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %out_free_encrypted_link.cleanup_crit_edge, %if.then17, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %f2fs_is_checkpoint_ready.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %if.then17 ], [ -5, %entry.cleanup_crit_edge ], [ -28, %f2fs_is_checkpoint_ready.exit.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %err.1, %if.then53 ], [ %err.1, %out_free_encrypted_link.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %disk_link) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %ckpt.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %ckpt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ckpt.i.i.i, align 4
  %ckpt_flags1.i.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %ckpt_flags1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %ckpt_flags1.i.i.i, align 1
  %8 = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.i.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.i.i.not, label %if.end, label %entry.cleanup_crit_edge, !prof !51

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @f2fs_dquot_initialize(ptr noundef %dir) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = or i16 %mode, 16384
  %call8 = tail call fastcc ptr @f2fs_new_inode(ptr noundef %dir, i16 noundef zeroext %9)
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %i_op = getelementptr inbounds %struct.inode, ptr %call8, i32 0, i32 7
  %11 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @f2fs_dir_inode_operations, ptr %i_op, align 8
  %12 = getelementptr inbounds %struct.inode, ptr %call8, i32 0, i32 44
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @f2fs_dir_operations, ptr %12, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call8, i32 0, i32 9
  %14 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @f2fs_dblock_aops, ptr %a_ops, align 4
  %17 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3136, ptr %gfp_mask.i, align 4
  %flags.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call8, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags.i) #11
  %cp_rwsem.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 20
  tail call void @down_read(ptr noundef %cp_rwsem.i) #11
  %19 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dentry, align 8
  %and.i.i = and i32 %20, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %f2fs_add_link.exit, label %if.end12.out_fail_crit_edge

if.end12.out_fail_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_fail

f2fs_add_link.exit:                               ; preds = %if.end12
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %21 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_parent.i, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_inode.i.i, align 8
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call8, i32 0, i32 11
  %25 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_ino.i, align 8
  %27 = ptrtoint ptr %call8 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %call8, align 8
  %call2.i = tail call i32 @f2fs_do_add_link(ptr noundef %24, ptr noundef %d_name.i, ptr noundef %call8, i32 noundef %26, i16 noundef zeroext %28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool15.not = icmp eq i32 %call2.i, 0
  br i1 %tobool15.not, label %if.end17, label %f2fs_add_link.exit.out_fail_crit_edge

f2fs_add_link.exit.out_fail_crit_edge:            ; preds = %f2fs_add_link.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_fail

if.end17:                                         ; preds = %f2fs_add_link.exit
  tail call void @up_read(ptr noundef %cp_rwsem.i) #11
  %29 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i_ino.i, align 8
  tail call void @f2fs_alloc_nid_done(ptr noundef %3, i32 noundef %30) #11
  tail call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call8) #11
  %31 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb.i, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_flags, align 4
  %and = and i32 %34, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %if.end17.if.then21_crit_edge

if.end17.if.then21_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21

lor.lhs.false:                                    ; preds = %if.end17
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %35 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i_flags, align 4
  %and19 = and i32 %36, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %lor.lhs.false.if.end23_crit_edge, label %lor.lhs.false.if.then21_crit_edge

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %if.end17.if.then21_crit_edge
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 8
  %call22 = tail call i32 @f2fs_sync_fs(ptr noundef %38, i32 noundef 1) #11
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %lor.lhs.false.if.end23_crit_edge
  tail call void @f2fs_balance_fs(ptr noundef %3, i1 noundef zeroext true) #11
  br label %cleanup

out_fail:                                         ; preds = %f2fs_add_link.exit.out_fail_crit_edge, %if.end12.out_fail_crit_edge
  %retval.0.i54 = phi i32 [ %call2.i, %f2fs_add_link.exit.out_fail_crit_edge ], [ -126, %if.end12.out_fail_crit_edge ]
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags.i) #11
  tail call void @f2fs_handle_failed_inode(ptr noundef %call8) #11
  br label %cleanup

cleanup:                                          ; preds = %out_fail, %if.end23, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then10 ], [ %retval.0.i54, %out_fail ], [ 0, %if.end23 ], [ -5, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_rmdir(ptr noundef %dir, ptr noundef %dentry) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call zeroext i1 @f2fs_empty_dir(ptr noundef %1) #11
  br i1 %call1, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 @f2fs_unlink(ptr noundef %dir, ptr noundef %dentry)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ -39, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_mknod(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %rdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %ckpt.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %ckpt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ckpt.i.i.i, align 4
  %ckpt_flags1.i.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %ckpt_flags1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %ckpt_flags1.i.i.i, align 1
  %8 = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.i.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.i.i.not, label %if.end, label %entry.cleanup_crit_edge, !prof !51

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_flag.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %s_flag.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %s_flag.i.i, align 4
  %11 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %if.end.if.end5_crit_edge, label %f2fs_is_checkpoint_ready.exit, !prof !51

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

f2fs_is_checkpoint_ready.exit:                    ; preds = %if.end
  %call3.i = tail call fastcc zeroext i1 @has_not_enough_free_secs(ptr noundef %3) #11
  br i1 %call3.i, label %f2fs_is_checkpoint_ready.exit.cleanup_crit_edge, label %f2fs_is_checkpoint_ready.exit.if.end5_crit_edge

f2fs_is_checkpoint_ready.exit.if.end5_crit_edge:  ; preds = %f2fs_is_checkpoint_ready.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

f2fs_is_checkpoint_ready.exit.cleanup_crit_edge:  ; preds = %f2fs_is_checkpoint_ready.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %f2fs_is_checkpoint_ready.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %call6 = tail call i32 @f2fs_dquot_initialize(ptr noundef %dir) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = tail call fastcc ptr @f2fs_new_inode(ptr noundef %dir, i16 noundef zeroext %mode)
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %13 = ptrtoint ptr %call10 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %call10, align 8
  tail call void @init_special_inode(ptr noundef %call10, i16 noundef zeroext %14, i32 noundef %rdev) #11
  %i_op = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 7
  %15 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @f2fs_special_inode_operations, ptr %i_op, align 8
  %cp_rwsem.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 20
  tail call void @down_read(ptr noundef %cp_rwsem.i) #11
  %16 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dentry, align 8
  %and.i.i = and i32 %17, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i49 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i49, label %f2fs_add_link.exit, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

f2fs_add_link.exit:                               ; preds = %if.end14
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %18 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_parent.i, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_inode.i.i, align 8
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 11
  %22 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_ino.i, align 8
  %24 = ptrtoint ptr %call10 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %call10, align 8
  %call2.i = tail call i32 @f2fs_do_add_link(ptr noundef %21, ptr noundef %d_name.i, ptr noundef %call10, i32 noundef %23, i16 noundef zeroext %25) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool16.not = icmp eq i32 %call2.i, 0
  br i1 %tobool16.not, label %if.end18, label %f2fs_add_link.exit.out_crit_edge

f2fs_add_link.exit.out_crit_edge:                 ; preds = %f2fs_add_link.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end18:                                         ; preds = %f2fs_add_link.exit
  tail call void @up_read(ptr noundef %cp_rwsem.i) #11
  %26 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_ino.i, align 8
  tail call void @f2fs_alloc_nid_done(ptr noundef %3, i32 noundef %27) #11
  tail call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call10) #11
  %28 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb.i, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_flags, align 4
  %and = and i32 %31, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %lor.lhs.false, label %if.end18.if.then22_crit_edge

if.end18.if.then22_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22

lor.lhs.false:                                    ; preds = %if.end18
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %32 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_flags, align 4
  %and20 = and i32 %33, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %lor.lhs.false.if.end24_crit_edge, label %lor.lhs.false.if.then22_crit_edge

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %if.end18.if.then22_crit_edge
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 8
  %call23 = tail call i32 @f2fs_sync_fs(ptr noundef %35, i32 noundef 1) #11
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %lor.lhs.false.if.end24_crit_edge
  tail call void @f2fs_balance_fs(ptr noundef %3, i1 noundef zeroext true) #11
  br label %cleanup

out:                                              ; preds = %f2fs_add_link.exit.out_crit_edge, %if.end14.out_crit_edge
  %retval.0.i5156 = phi i32 [ %call2.i, %f2fs_add_link.exit.out_crit_edge ], [ -126, %if.end14.out_crit_edge ]
  tail call void @f2fs_handle_failed_inode(ptr noundef %call10) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end24, %if.then12, %if.end5.cleanup_crit_edge, %f2fs_is_checkpoint_ready.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then12 ], [ %retval.0.i5156, %out ], [ 0, %if.end24 ], [ -5, %entry.cleanup_crit_edge ], [ -28, %f2fs_is_checkpoint_ready.exit.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_rename2(ptr nocapture noundef readnone %mnt_userns, ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %flags) #4 align 64 {
entry:
  %whiteout.i = alloca ptr, align 4
  %old_dir_page.i25 = alloca ptr, align 4
  %old_page.i26 = alloca ptr, align 4
  %new_page.i27 = alloca ptr, align 4
  %tmp.i28 = alloca %struct.timespec64, align 8
  %tmp116.i = alloca %struct.timespec64, align 8
  %old_dir_page.i = alloca ptr, align 4
  %new_dir_page.i = alloca ptr, align 4
  %old_page.i = alloca ptr, align 4
  %new_page.i = alloca ptr, align 4
  %tmp.i = alloca %struct.timespec64, align 8
  %tmp135.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 8
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.fscrypt_prepare_rename.exit_crit_edge

if.end.fscrypt_prepare_rename.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %fscrypt_prepare_rename.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %i_flags1.i = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags1.i, align 4
  %and2.i = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.end3_crit_edge, label %lor.lhs.false.i.fscrypt_prepare_rename.exit_crit_edge

lor.lhs.false.i.fscrypt_prepare_rename.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fscrypt_prepare_rename.exit

lor.lhs.false.i.if.end3_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

fscrypt_prepare_rename.exit:                      ; preds = %lor.lhs.false.i.fscrypt_prepare_rename.exit_crit_edge, %if.end.fscrypt_prepare_rename.exit_crit_edge
  %call.i = tail call i32 @__fscrypt_prepare_rename(ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %fscrypt_prepare_rename.exit.if.end3_crit_edge, label %fscrypt_prepare_rename.exit.cleanup_crit_edge

fscrypt_prepare_rename.exit.cleanup_crit_edge:    ; preds = %fscrypt_prepare_rename.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

fscrypt_prepare_rename.exit.if.end3_crit_edge:    ; preds = %fscrypt_prepare_rename.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.end3:                                          ; preds = %fscrypt_prepare_rename.exit.if.end3_crit_edge, %lor.lhs.false.i.if.end3_crit_edge
  %and4 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %i_sb.i.i29 = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i.i29 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i.i29, align 4
  %s_fs_info.i.i.i30 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i.i30, align 16
  %d_inode.i.i31 = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i.i31 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i.i31, align 8
  %d_inode.i271.i = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i271.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i271.i, align 8
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_dir_page.i) #11
  %12 = ptrtoint ptr %old_dir_page.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %old_dir_page.i, align 4, !annotation !50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_dir_page.i) #11
  %13 = ptrtoint ptr %new_dir_page.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_dir_page.i, align 4, !annotation !50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_page.i) #11
  %14 = ptrtoint ptr %old_page.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %old_page.i, align 4, !annotation !50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_page.i) #11
  %15 = ptrtoint ptr %new_page.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_page.i, align 4, !annotation !50
  %ckpt.i.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %7, i32 0, i32 15
  %16 = ptrtoint ptr %ckpt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ckpt.i.i.i.i, align 4
  %ckpt_flags1.i.i.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %ckpt_flags1.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %ckpt_flags1.i.i.i.i, align 1
  %20 = and i32 %19, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.i.i.not.i = icmp eq i32 %20, 0
  br i1 %tobool.i.i.i.not.i, label %if.end.i, label %if.then6.f2fs_cross_rename.exit_crit_edge, !prof !51

if.then6.f2fs_cross_rename.exit_crit_edge:        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %f2fs_cross_rename.exit

if.end.i:                                         ; preds = %if.then6
  %s_flag.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %7, i32 0, i32 5
  %21 = ptrtoint ptr %s_flag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %s_flag.i.i.i, align 4
  %23 = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.if.end7.i_crit_edge, label %f2fs_is_checkpoint_ready.exit.i, !prof !51

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

f2fs_is_checkpoint_ready.exit.i:                  ; preds = %if.end.i
  %call3.i.i = tail call fastcc zeroext i1 @has_not_enough_free_secs(ptr noundef %7) #11
  br i1 %call3.i.i, label %f2fs_is_checkpoint_ready.exit.i.f2fs_cross_rename.exit_crit_edge, label %f2fs_is_checkpoint_ready.exit.i.if.end7.i_crit_edge

f2fs_is_checkpoint_ready.exit.i.if.end7.i_crit_edge: ; preds = %f2fs_is_checkpoint_ready.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

f2fs_is_checkpoint_ready.exit.i.f2fs_cross_rename.exit_crit_edge: ; preds = %f2fs_is_checkpoint_ready.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %f2fs_cross_rename.exit

if.end7.i:                                        ; preds = %f2fs_is_checkpoint_ready.exit.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %new_dir, i32 0, i32 8
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags.i.i, align 4
  %26 = and i32 %25, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool9.not.i = icmp eq i32 %26, 0
  br i1 %tobool9.not.i, label %if.end7.i.lor.lhs.false.i22_crit_edge, label %land.lhs.true.i

if.end7.i.lor.lhs.false.i22_crit_edge:            ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i22

land.lhs.true.i:                                  ; preds = %if.end7.i
  %i_projid.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %new_dir, i32 0, i32 30
  %27 = ptrtoint ptr %d_inode.i.i31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d_inode.i.i31, align 8
  %i_projid12.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %28, i32 0, i32 30
  %29 = ptrtoint ptr %i_projid.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack272.i = load i32, ptr %i_projid.i, align 8
  %30 = ptrtoint ptr %i_projid12.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.unpack273.i = load i32, ptr %i_projid12.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack272.i, i32 %.unpack273.i)
  %cmp.i.i = icmp eq i32 %.unpack272.i, %.unpack273.i
  br i1 %cmp.i.i, label %land.lhs.true.i.lor.lhs.false.i22_crit_edge, label %land.lhs.true.i.f2fs_cross_rename.exit_crit_edge

land.lhs.true.i.f2fs_cross_rename.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %f2fs_cross_rename.exit

land.lhs.true.i.lor.lhs.false.i22_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i22

lor.lhs.false.i22:                                ; preds = %land.lhs.true.i.lor.lhs.false.i22_crit_edge, %if.end7.i.lor.lhs.false.i22_crit_edge
  %31 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags.i.i, align 4
  %33 = and i32 %32, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool16.not.i = icmp eq i32 %33, 0
  br i1 %tobool16.not.i, label %lor.lhs.false.i22.if.end27.i_crit_edge, label %land.lhs.true17.i

lor.lhs.false.i22.if.end27.i_crit_edge:           ; preds = %lor.lhs.false.i22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

land.lhs.true17.i:                                ; preds = %lor.lhs.false.i22
  %i_projid19.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %old_dir, i32 0, i32 30
  %34 = ptrtoint ptr %d_inode.i271.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d_inode.i271.i, align 8
  %i_projid22.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %35, i32 0, i32 30
  %36 = ptrtoint ptr %i_projid19.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.unpack.i = load i32, ptr %i_projid19.i, align 8
  %37 = ptrtoint ptr %i_projid22.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.unpack271.i = load i32, ptr %i_projid22.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %.unpack271.i)
  %cmp.i279.i = icmp eq i32 %.unpack.i, %.unpack271.i
  br i1 %cmp.i279.i, label %land.lhs.true17.i.if.end27.i_crit_edge, label %land.lhs.true17.i.f2fs_cross_rename.exit_crit_edge

land.lhs.true17.i.f2fs_cross_rename.exit_crit_edge: ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %f2fs_cross_rename.exit

land.lhs.true17.i.if.end27.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

if.end27.i:                                       ; preds = %land.lhs.true17.i.if.end27.i_crit_edge, %lor.lhs.false.i22.if.end27.i_crit_edge
  %call28.i = tail call i32 @f2fs_dquot_initialize(ptr noundef %old_dir) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %if.end27.i.f2fs_cross_rename.exit_crit_edge

if.end27.i.f2fs_cross_rename.exit_crit_edge:      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %f2fs_cross_rename.exit

if.end31.i:                                       ; preds = %if.end27.i
  %call32.i = tail call i32 @f2fs_dquot_initialize(ptr noundef %new_dir) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %if.end31.i.f2fs_cross_rename.exit_crit_edge

if.end31.i.f2fs_cross_rename.exit_crit_edge:      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %f2fs_cross_rename.exit

if.end35.i:                                       ; preds = %if.end31.i
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 4
  %call36.i = call ptr @f2fs_find_entry(ptr noundef %old_dir, ptr noundef %d_name.i, ptr noundef nonnull %old_page.i) #11
  %tobool37.not.i = icmp eq ptr %call36.i, null
  br i1 %tobool37.not.i, label %if.then38.i, label %if.end43.i

if.then38.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %old_page.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %old_page.i, align 4
  %cmp.i280.i = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  %40 = ptrtoint ptr %39 to i32
  %spec.select.i = select i1 %cmp.i280.i, i32 %40, i32 -2
  br label %f2fs_cross_rename.exit

if.end43.i:                                       ; preds = %if.end35.i
  %d_name44.i = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4
  %call45.i = call ptr @f2fs_find_entry(ptr noundef %new_dir, ptr noundef %d_name44.i, ptr noundef nonnull %new_page.i) #11
  %tobool46.not.i = icmp eq ptr %call45.i, null
  br i1 %tobool46.not.i, label %if.then47.i, label %if.end52.i

if.then47.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %new_page.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %new_page.i, align 4
  %cmp.i281.i = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  %43 = ptrtoint ptr %42 to i32
  %spec.select308.i = select i1 %cmp.i281.i, i32 %43, i32 -2
  br label %out_old.i

if.end52.i:                                       ; preds = %if.end43.i
  %cmp.not.i = icmp eq ptr %old_dir, %new_dir
  br i1 %cmp.not.i, label %if.end52.i.if.end103.i_crit_edge, label %if.then53.i

if.end52.i.if.end103.i_crit_edge:                 ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103.i

if.then53.i:                                      ; preds = %if.end52.i
  %44 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %9, align 8
  %46 = and i16 %45, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %46)
  %cmp54.i = icmp eq i16 %46, 16384
  br i1 %cmp54.i, label %if.then56.i, label %if.then53.i.if.end65.i_crit_edge

if.then53.i.if.end65.i_crit_edge:                 ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65.i

if.then56.i:                                      ; preds = %if.then53.i
  %call57.i = call ptr @f2fs_parent_dir(ptr noundef %9, ptr noundef nonnull %old_dir_page.i) #11
  %tobool58.not.i = icmp eq ptr %call57.i, null
  br i1 %tobool58.not.i, label %if.then59.i, label %if.then56.i.if.end65.i_crit_edge

if.then56.i.if.end65.i_crit_edge:                 ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65.i

if.then59.i:                                      ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %old_dir_page.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %old_dir_page.i, align 4
  %cmp.i282.i = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  %49 = ptrtoint ptr %48 to i32
  %spec.select309.i = select i1 %cmp.i282.i, i32 %49, i32 -2
  br label %out_new.i

if.end65.i:                                       ; preds = %if.then56.i.if.end65.i_crit_edge, %if.then53.i.if.end65.i_crit_edge
  %old_dir_entry.0.i = phi ptr [ %call57.i, %if.then56.i.if.end65.i_crit_edge ], [ null, %if.then53.i.if.end65.i_crit_edge ]
  %50 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %11, align 8
  %52 = and i16 %51, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %52)
  %cmp69.i = icmp eq i16 %52, 16384
  br i1 %cmp69.i, label %if.then71.i, label %if.end65.i.if.end81.i_crit_edge

if.end65.i.if.end81.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81.i

if.then71.i:                                      ; preds = %if.end65.i
  %call72.i = call ptr @f2fs_parent_dir(ptr noundef %11, ptr noundef nonnull %new_dir_page.i) #11
  %tobool73.not.i = icmp eq ptr %call72.i, null
  br i1 %tobool73.not.i, label %if.then74.i, label %if.then71.i.if.end81.i_crit_edge

if.then71.i.if.end81.i_crit_edge:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81.i

if.then74.i:                                      ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %new_dir_page.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %new_dir_page.i, align 4
  %cmp.i283.i = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  %55 = ptrtoint ptr %54 to i32
  %spec.select310.i = select i1 %cmp.i283.i, i32 %55, i32 -2
  br label %out_old_dir.i

if.end81.i:                                       ; preds = %if.then71.i.if.end81.i_crit_edge, %if.end65.i.if.end81.i_crit_edge
  %new_dir_entry.0.i = phi ptr [ %call72.i, %if.then71.i.if.end81.i_crit_edge ], [ null, %if.end65.i.if.end81.i_crit_edge ]
  %tobool82.not.i = icmp eq ptr %old_dir_entry.0.i, null
  %tobool84.not.i = icmp eq ptr %new_dir_entry.0.i, null
  %or.cond.i = select i1 %tobool82.not.i, i1 true, i1 %tobool84.not.i
  %or.cond.not.i = xor i1 %or.cond.i, true
  %cmp86.not.i = icmp eq ptr %old_dir_entry.0.i, %new_dir_entry.0.i
  %or.cond274.i = select i1 %or.cond.not.i, i1 true, i1 %cmp86.not.i
  br i1 %or.cond274.i, label %if.end81.i.if.end103.i_crit_edge, label %if.then88.i

if.end81.i.if.end103.i_crit_edge:                 ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103.i

if.then88.i:                                      ; preds = %if.end81.i
  br i1 %tobool82.not.i, label %land.lhs.true92.i, label %land.lhs.true98.critedge.i

land.lhs.true92.i:                                ; preds = %if.then88.i
  %56 = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 12
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp93.i = icmp eq i32 %58, -1
  br i1 %cmp93.i, label %land.lhs.true92.i.out_new_dir.i_crit_edge, label %land.lhs.true92.i.if.end103.i_crit_edge

land.lhs.true92.i.if.end103.i_crit_edge:          ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103.i

land.lhs.true92.i.out_new_dir.i_crit_edge:        ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_new_dir.i

land.lhs.true98.critedge.i:                       ; preds = %if.then88.i
  %59 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 12
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %61)
  %cmp99.i = icmp eq i32 %61, -1
  br i1 %cmp99.i, label %land.lhs.true98.critedge.i.out_new_dir.i_crit_edge, label %land.lhs.true98.critedge.i.if.end103.i_crit_edge

land.lhs.true98.critedge.i.if.end103.i_crit_edge: ; preds = %land.lhs.true98.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103.i

land.lhs.true98.critedge.i.out_new_dir.i_crit_edge: ; preds = %land.lhs.true98.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_new_dir.i

if.end103.i:                                      ; preds = %land.lhs.true98.critedge.i.if.end103.i_crit_edge, %land.lhs.true92.i.if.end103.i_crit_edge, %if.end81.i.if.end103.i_crit_edge, %if.end52.i.if.end103.i_crit_edge
  %tobool84.not306.i = phi i1 [ %tobool84.not.i, %land.lhs.true98.critedge.i.if.end103.i_crit_edge ], [ %tobool84.not.i, %if.end81.i.if.end103.i_crit_edge ], [ %tobool84.not.i, %land.lhs.true92.i.if.end103.i_crit_edge ], [ true, %if.end52.i.if.end103.i_crit_edge ]
  %tobool82.not305.i = phi i1 [ false, %land.lhs.true98.critedge.i.if.end103.i_crit_edge ], [ %tobool82.not.i, %if.end81.i.if.end103.i_crit_edge ], [ true, %land.lhs.true92.i.if.end103.i_crit_edge ], [ true, %if.end52.i.if.end103.i_crit_edge ]
  %new_dir_entry.0304.i = phi ptr [ %new_dir_entry.0.i, %land.lhs.true98.critedge.i.if.end103.i_crit_edge ], [ %new_dir_entry.0.i, %if.end81.i.if.end103.i_crit_edge ], [ %new_dir_entry.0.i, %land.lhs.true92.i.if.end103.i_crit_edge ], [ null, %if.end52.i.if.end103.i_crit_edge ]
  %old_dir_entry.1303.i = phi ptr [ %old_dir_entry.0.i, %land.lhs.true98.critedge.i.if.end103.i_crit_edge ], [ %old_dir_entry.0.i, %if.end81.i.if.end103.i_crit_edge ], [ null, %land.lhs.true92.i.if.end103.i_crit_edge ], [ null, %if.end52.i.if.end103.i_crit_edge ]
  %tobool116.not.i = phi i1 [ false, %land.lhs.true98.critedge.i.if.end103.i_crit_edge ], [ true, %if.end81.i.if.end103.i_crit_edge ], [ false, %land.lhs.true92.i.if.end103.i_crit_edge ], [ true, %if.end52.i.if.end103.i_crit_edge ]
  %cmp120.i = phi i1 [ false, %land.lhs.true98.critedge.i.if.end103.i_crit_edge ], [ false, %if.end81.i.if.end103.i_crit_edge ], [ true, %land.lhs.true92.i.if.end103.i_crit_edge ], [ false, %if.end52.i.if.end103.i_crit_edge ]
  %cmp140.i = phi i1 [ true, %land.lhs.true98.critedge.i.if.end103.i_crit_edge ], [ false, %if.end81.i.if.end103.i_crit_edge ], [ false, %land.lhs.true92.i.if.end103.i_crit_edge ], [ false, %if.end52.i.if.end103.i_crit_edge ]
  call void @f2fs_balance_fs(ptr noundef %7, i1 noundef zeroext true) #11
  %cp_rwsem.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %7, i32 0, i32 20
  call void @down_read(ptr noundef %cp_rwsem.i.i) #11
  br i1 %tobool82.not305.i, label %if.end103.i.if.end106.i_crit_edge, label %if.then105.i

if.end103.i.if.end106.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106.i

if.then105.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %old_dir_page.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %old_dir_page.i, align 4
  call void @f2fs_set_link(ptr noundef %9, ptr noundef nonnull %old_dir_entry.1303.i, ptr noundef %63, ptr noundef %new_dir) #11
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.then105.i, %if.end103.i.if.end106.i_crit_edge
  br i1 %tobool84.not306.i, label %if.end106.i.if.end109.i_crit_edge, label %if.then108.i

if.end106.i.if.end109.i_crit_edge:                ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109.i

if.then108.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %new_dir_page.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %new_dir_page.i, align 4
  call void @f2fs_set_link(ptr noundef %11, ptr noundef nonnull %new_dir_entry.0304.i, ptr noundef %65, ptr noundef %old_dir) #11
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.then108.i, %if.end106.i.if.end109.i_crit_edge
  %66 = ptrtoint ptr %old_page.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %old_page.i, align 4
  call void @f2fs_set_link(ptr noundef %old_dir, ptr noundef nonnull %call36.i, ptr noundef %67, ptr noundef %11) #11
  %i_sem.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %9, i32 0, i32 9
  call void @down_write(ptr noundef %i_sem.i) #11
  br i1 %tobool82.not305.i, label %if.then112.i, label %if.else.i

if.then112.i:                                     ; preds = %if.end109.i
  %i_advise.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %9, i32 0, i32 2
  %68 = ptrtoint ptr %i_advise.i.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %i_advise.i.i.i, align 4
  %70 = and i8 %69, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i.i = icmp eq i8 %70, 0
  br i1 %tobool.not.i.i, label %if.end.i284.i, label %if.then112.i.if.end113.i_crit_edge

if.then112.i.if.end113.i_crit_edge:               ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113.i

if.end.i284.i:                                    ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv2.i.i = or i8 %69, 2
  %71 = ptrtoint ptr %i_advise.i.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv2.i.i, ptr %i_advise.i.i.i, align 4
  br label %if.end113.sink.split.i

if.else.i:                                        ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #13
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 11
  %72 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %i_ino.i, align 8
  %i_pino.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %9, i32 0, i32 6
  %74 = ptrtoint ptr %i_pino.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %i_pino.i.i, align 4
  br label %if.end113.sink.split.i

if.end113.sink.split.i:                           ; preds = %if.else.i, %if.end.i284.i
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %9, i1 noundef zeroext true) #11
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.end113.sink.split.i, %if.then112.i.if.end113.i_crit_edge
  call void @up_write(ptr noundef %i_sem.i) #11
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %old_dir) #11
  %75 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #11
  br i1 %tobool116.not.i, label %if.end113.i.if.end124.i_crit_edge, label %if.then117.i

if.end113.i.if.end124.i_crit_edge:                ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end124.i

if.then117.i:                                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #13
  %i_sem119.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %old_dir, i32 0, i32 9
  call void @down_write(ptr noundef %i_sem119.i) #11
  call fastcc void @f2fs_i_links_write(ptr noundef %old_dir, i1 noundef zeroext %cmp120.i) #11
  call void @up_write(ptr noundef %i_sem119.i) #11
  br label %if.end124.i

if.end124.i:                                      ; preds = %if.then117.i, %if.end113.i.if.end124.i_crit_edge
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %old_dir, i1 noundef zeroext false) #11
  %76 = ptrtoint ptr %new_page.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %new_page.i, align 4
  call void @f2fs_set_link(ptr noundef %new_dir, ptr noundef nonnull %call45.i, ptr noundef %77, ptr noundef %9) #11
  %i_sem126.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %11, i32 0, i32 9
  call void @down_write(ptr noundef %i_sem126.i) #11
  br i1 %tobool84.not306.i, label %if.then128.i, label %if.else129.i

if.then128.i:                                     ; preds = %if.end124.i
  %i_advise.i.i285.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %11, i32 0, i32 2
  %78 = ptrtoint ptr %i_advise.i.i285.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %i_advise.i.i285.i, align 4
  %80 = and i8 %79, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i288.i = icmp eq i8 %80, 0
  br i1 %tobool.not.i288.i, label %if.end.i290.i, label %if.then128.i.if.end131.i_crit_edge

if.then128.i.if.end131.i_crit_edge:               ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131.i

if.end.i290.i:                                    ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv2.i289.i = or i8 %79, 2
  %81 = ptrtoint ptr %i_advise.i.i285.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv2.i289.i, ptr %i_advise.i.i285.i, align 4
  br label %if.end131.sink.split.i

if.else129.i:                                     ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #13
  %i_ino130.i = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 11
  %82 = ptrtoint ptr %i_ino130.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %i_ino130.i, align 8
  %i_pino.i292.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %11, i32 0, i32 6
  %84 = ptrtoint ptr %i_pino.i292.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %i_pino.i292.i, align 4
  br label %if.end131.sink.split.i

if.end131.sink.split.i:                           ; preds = %if.else129.i, %if.end.i290.i
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %11, i1 noundef zeroext true) #11
  br label %if.end131.i

if.end131.i:                                      ; preds = %if.end131.sink.split.i, %if.then128.i.if.end131.i_crit_edge
  call void @up_write(ptr noundef %i_sem126.i) #11
  %i_ctime134.i = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp135.i) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp135.i, ptr noundef %new_dir) #11
  %85 = call ptr @memcpy(ptr %i_ctime134.i, ptr %tmp135.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp135.i) #11
  br i1 %tobool116.not.i, label %if.end131.i.if.end144.i_crit_edge, label %if.then137.i

if.end131.i.if.end144.i_crit_edge:                ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end144.i

if.then137.i:                                     ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #13
  %i_sem139.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %new_dir, i32 0, i32 9
  call void @down_write(ptr noundef %i_sem139.i) #11
  call fastcc void @f2fs_i_links_write(ptr noundef %new_dir, i1 noundef zeroext %cmp140.i) #11
  call void @up_write(ptr noundef %i_sem139.i) #11
  br label %if.end144.i

if.end144.i:                                      ; preds = %if.then137.i, %if.end131.i.if.end144.i_crit_edge
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %new_dir, i1 noundef zeroext false) #11
  %fsync_mode.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %7, i32 0, i32 73, i32 12
  %86 = ptrtoint ptr %fsync_mode.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %fsync_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp145.i = icmp eq i32 %87, 1
  br i1 %cmp145.i, label %if.then147.i, label %if.end144.i.if.end150.i_crit_edge

if.end144.i.if.end150.i_crit_edge:                ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end150.i

if.then147.i:                                     ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #13
  %i_ino148.i = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 11
  %88 = ptrtoint ptr %i_ino148.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %i_ino148.i, align 8
  call void @f2fs_add_ino_entry(ptr noundef %7, i32 noundef %89, i32 noundef 3) #11
  %i_ino149.i = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 11
  %90 = ptrtoint ptr %i_ino149.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %i_ino149.i, align 8
  call void @f2fs_add_ino_entry(ptr noundef %7, i32 noundef %91, i32 noundef 3) #11
  br label %if.end150.i

if.end150.i:                                      ; preds = %if.then147.i, %if.end144.i.if.end150.i_crit_edge
  call void @up_read(ptr noundef %cp_rwsem.i.i) #11
  %92 = ptrtoint ptr %i_sb.i.i29 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i_sb.i.i29, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %93, i32 0, i32 10
  %94 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %s_flags.i, align 4
  %and151.i = and i32 %95, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151.i)
  %tobool152.not.i = icmp eq i32 %and151.i, 0
  br i1 %tobool152.not.i, label %lor.lhs.false153.i, label %if.end150.i.if.then165.i_crit_edge

if.end150.i.if.then165.i_crit_edge:               ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then165.i

lor.lhs.false153.i:                               ; preds = %if.end150.i
  %96 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %i_flags.i, align 4
  %and154.i = and i32 %97, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154.i)
  %tobool155.not.i = icmp eq i32 %and154.i, 0
  br i1 %tobool155.not.i, label %lor.lhs.false156.i, label %lor.lhs.false153.i.if.then165.i_crit_edge

lor.lhs.false153.i.if.then165.i_crit_edge:        ; preds = %lor.lhs.false153.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then165.i

lor.lhs.false156.i:                               ; preds = %lor.lhs.false153.i
  %i_sb157.i = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 8
  %98 = ptrtoint ptr %i_sb157.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %i_sb157.i, align 4
  %s_flags158.i = getelementptr inbounds %struct.super_block, ptr %99, i32 0, i32 10
  %100 = ptrtoint ptr %s_flags158.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %s_flags158.i, align 4
  %and159.i = and i32 %101, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159.i)
  %tobool160.not.i = icmp eq i32 %and159.i, 0
  br i1 %tobool160.not.i, label %lor.lhs.false161.i, label %lor.lhs.false156.i.if.then165.i_crit_edge

lor.lhs.false156.i.if.then165.i_crit_edge:        ; preds = %lor.lhs.false156.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then165.i

lor.lhs.false161.i:                               ; preds = %lor.lhs.false156.i
  %i_flags162.i = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 4
  %102 = ptrtoint ptr %i_flags162.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %i_flags162.i, align 4
  %and163.i = and i32 %103, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163.i)
  %tobool164.not.i = icmp eq i32 %and163.i, 0
  br i1 %tobool164.not.i, label %lor.lhs.false161.i.if.end167.i_crit_edge, label %lor.lhs.false161.i.if.then165.i_crit_edge

lor.lhs.false161.i.if.then165.i_crit_edge:        ; preds = %lor.lhs.false161.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then165.i

lor.lhs.false161.i.if.end167.i_crit_edge:         ; preds = %lor.lhs.false161.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end167.i

if.then165.i:                                     ; preds = %lor.lhs.false161.i.if.then165.i_crit_edge, %lor.lhs.false156.i.if.then165.i_crit_edge, %lor.lhs.false153.i.if.then165.i_crit_edge, %if.end150.i.if.then165.i_crit_edge
  %104 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %7, align 8
  %call166.i = call i32 @f2fs_sync_fs(ptr noundef %105, i32 noundef 1) #11
  br label %if.end167.i

if.end167.i:                                      ; preds = %if.then165.i, %lor.lhs.false161.i.if.end167.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %106 = load volatile i32, ptr @jiffies, align 128
  %arrayidx.i.i = getelementptr %struct.f2fs_sb_info, ptr %7, i32 0, i32 24, i32 1
  %107 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %arrayidx.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.f2fs_sb_info, ptr %7, i32 0, i32 24, i32 2
  %108 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %106, ptr %arrayidx2.i.i, align 8
  %arrayidx4.i.i = getelementptr %struct.f2fs_sb_info, ptr %7, i32 0, i32 24, i32 3
  %109 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %106, ptr %arrayidx4.i.i, align 4
  br label %f2fs_cross_rename.exit

out_new_dir.i:                                    ; preds = %land.lhs.true98.critedge.i.out_new_dir.i_crit_edge, %land.lhs.true92.i.out_new_dir.i_crit_edge
  br i1 %tobool84.not.i, label %out_new_dir.i.out_old_dir.i_crit_edge, label %if.then169.i

out_new_dir.i.out_old_dir.i_crit_edge:            ; preds = %out_new_dir.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_old_dir.i

if.then169.i:                                     ; preds = %out_new_dir.i
  call void @__sanitizer_cov_trace_pc() #13
  %110 = ptrtoint ptr %new_dir_page.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %new_dir_page.i, align 4
  call fastcc void @f2fs_put_page(ptr noundef %111) #11
  br label %out_old_dir.i

out_old_dir.i:                                    ; preds = %if.then169.i, %out_new_dir.i.out_old_dir.i_crit_edge, %if.then74.i
  %err.0.i = phi i32 [ -31, %if.then169.i ], [ -31, %out_new_dir.i.out_old_dir.i_crit_edge ], [ %spec.select310.i, %if.then74.i ]
  %tobool171.not.i = icmp eq ptr %old_dir_entry.0.i, null
  br i1 %tobool171.not.i, label %out_old_dir.i.out_new.i_crit_edge, label %if.then172.i

out_old_dir.i.out_new.i_crit_edge:                ; preds = %out_old_dir.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_new.i

if.then172.i:                                     ; preds = %out_old_dir.i
  call void @__sanitizer_cov_trace_pc() #13
  %112 = ptrtoint ptr %old_dir_page.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %old_dir_page.i, align 4
  call fastcc void @f2fs_put_page(ptr noundef %113) #11
  br label %out_new.i

out_new.i:                                        ; preds = %if.then172.i, %out_old_dir.i.out_new.i_crit_edge, %if.then59.i
  %err.1.i = phi i32 [ %err.0.i, %if.then172.i ], [ %err.0.i, %out_old_dir.i.out_new.i_crit_edge ], [ %spec.select309.i, %if.then59.i ]
  %114 = ptrtoint ptr %new_page.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %new_page.i, align 4
  call fastcc void @f2fs_put_page(ptr noundef %115) #11
  br label %out_old.i

out_old.i:                                        ; preds = %out_new.i, %if.then47.i
  %err.2.i = phi i32 [ %err.1.i, %out_new.i ], [ %spec.select308.i, %if.then47.i ]
  %116 = ptrtoint ptr %old_page.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %old_page.i, align 4
  call fastcc void @f2fs_put_page(ptr noundef %117) #11
  br label %f2fs_cross_rename.exit

f2fs_cross_rename.exit:                           ; preds = %out_old.i, %if.end167.i, %if.then38.i, %if.end31.i.f2fs_cross_rename.exit_crit_edge, %if.end27.i.f2fs_cross_rename.exit_crit_edge, %land.lhs.true17.i.f2fs_cross_rename.exit_crit_edge, %land.lhs.true.i.f2fs_cross_rename.exit_crit_edge, %f2fs_is_checkpoint_ready.exit.i.f2fs_cross_rename.exit_crit_edge, %if.then6.f2fs_cross_rename.exit_crit_edge
  %retval.0.i24 = phi i32 [ 0, %if.end167.i ], [ -5, %if.then6.f2fs_cross_rename.exit_crit_edge ], [ -28, %f2fs_is_checkpoint_ready.exit.i.f2fs_cross_rename.exit_crit_edge ], [ -18, %land.lhs.true17.i.f2fs_cross_rename.exit_crit_edge ], [ -18, %land.lhs.true.i.f2fs_cross_rename.exit_crit_edge ], [ %call28.i, %if.end27.i.f2fs_cross_rename.exit_crit_edge ], [ %call32.i, %if.end31.i.f2fs_cross_rename.exit_crit_edge ], [ %err.2.i, %out_old.i ], [ %spec.select.i, %if.then38.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_page.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_page.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_dir_page.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_dir_page.i) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %whiteout.i) #11
  %118 = ptrtoint ptr %whiteout.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %whiteout.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_dir_page.i25) #11
  %119 = ptrtoint ptr %old_dir_page.i25 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %old_dir_page.i25, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_page.i26) #11
  %120 = ptrtoint ptr %old_page.i26 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr inttoptr (i32 -1 to ptr), ptr %old_page.i26, align 4, !annotation !50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_page.i27) #11
  %121 = ptrtoint ptr %new_page.i27 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %new_page.i27, align 4
  %ckpt.i.i.i.i32 = getelementptr inbounds %struct.f2fs_sb_info, ptr %7, i32 0, i32 15
  %122 = ptrtoint ptr %ckpt.i.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ckpt.i.i.i.i32, align 4
  %ckpt_flags1.i.i.i.i33 = getelementptr inbounds %struct.f2fs_checkpoint, ptr %123, i32 0, i32 10
  %124 = ptrtoint ptr %ckpt_flags1.i.i.i.i33 to i32
  call void @__asan_loadN_noabort(i32 %124, i32 4)
  %125 = load i32, ptr %ckpt_flags1.i.i.i.i33, align 1
  %126 = and i32 %125, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool.i.i.i.not.i34 = icmp eq i32 %126, 0
  br i1 %tobool.i.i.i.not.i34, label %if.end.i37, label %if.end8.f2fs_rename.exit_crit_edge, !prof !51

if.end8.f2fs_rename.exit_crit_edge:               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %f2fs_rename.exit

if.end.i37:                                       ; preds = %if.end8
  %s_flag.i.i.i35 = getelementptr inbounds %struct.f2fs_sb_info, ptr %7, i32 0, i32 5
  %127 = ptrtoint ptr %s_flag.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %s_flag.i.i.i35, align 4
  %129 = and i32 %128, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool.i.not.i.i36 = icmp eq i32 %129, 0
  br i1 %tobool.i.not.i.i36, label %if.end.i37.if.end7.i42_crit_edge, label %f2fs_is_checkpoint_ready.exit.i39, !prof !51

if.end.i37.if.end7.i42_crit_edge:                 ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i42

f2fs_is_checkpoint_ready.exit.i39:                ; preds = %if.end.i37
  %call3.i.i38 = tail call fastcc zeroext i1 @has_not_enough_free_secs(ptr noundef %7) #11
  br i1 %call3.i.i38, label %f2fs_is_checkpoint_ready.exit.i39.f2fs_rename.exit_crit_edge, label %f2fs_is_checkpoint_ready.exit.i39.if.end7.i42_crit_edge

f2fs_is_checkpoint_ready.exit.i39.if.end7.i42_crit_edge: ; preds = %f2fs_is_checkpoint_ready.exit.i39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i42

f2fs_is_checkpoint_ready.exit.i39.f2fs_rename.exit_crit_edge: ; preds = %f2fs_is_checkpoint_ready.exit.i39
  call void @__sanitizer_cov_trace_pc() #13
  br label %f2fs_rename.exit

if.end7.i42:                                      ; preds = %f2fs_is_checkpoint_ready.exit.i39.if.end7.i42_crit_edge, %if.end.i37.if.end7.i42_crit_edge
  %flags.i.i40 = getelementptr inbounds %struct.f2fs_inode_info, ptr %new_dir, i32 0, i32 8
  %130 = ptrtoint ptr %flags.i.i40 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %flags.i.i40, align 4
  %132 = and i32 %131, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool9.not.i41 = icmp eq i32 %132, 0
  br i1 %tobool9.not.i41, label %if.end7.i42.if.end16.i_crit_edge, label %land.lhs.true.i47

if.end7.i42.if.end16.i_crit_edge:                 ; preds = %if.end7.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

land.lhs.true.i47:                                ; preds = %if.end7.i42
  %i_projid.i43 = getelementptr inbounds %struct.f2fs_inode_info, ptr %new_dir, i32 0, i32 30
  %133 = ptrtoint ptr %d_inode.i.i31 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %d_inode.i.i31, align 8
  %i_projid12.i44 = getelementptr inbounds %struct.f2fs_inode_info, ptr %134, i32 0, i32 30
  %135 = ptrtoint ptr %i_projid.i43 to i32
  call void @__asan_load4_noabort(i32 %135)
  %.unpack.i45 = load i32, ptr %i_projid.i43, align 8
  %136 = ptrtoint ptr %i_projid12.i44 to i32
  call void @__asan_load4_noabort(i32 %136)
  %.unpack270.i = load i32, ptr %i_projid12.i44, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i45, i32 %.unpack270.i)
  %cmp.i.i46 = icmp eq i32 %.unpack.i45, %.unpack270.i
  br i1 %cmp.i.i46, label %land.lhs.true.i47.if.end16.i_crit_edge, label %land.lhs.true.i47.f2fs_rename.exit_crit_edge

land.lhs.true.i47.f2fs_rename.exit_crit_edge:     ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #13
  br label %f2fs_rename.exit

land.lhs.true.i47.if.end16.i_crit_edge:           ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.end16.i:                                       ; preds = %land.lhs.true.i47.if.end16.i_crit_edge, %if.end7.i42.if.end16.i_crit_edge
  %cmp.i = icmp eq ptr %old_dir, %new_dir
  %tobool18.not.i = icmp eq ptr %11, null
  %or.cond.i48 = select i1 %cmp.i, i1 %tobool18.not.i, i1 false
  br i1 %or.cond.i48, label %if.then19.i, label %if.end16.i.if.end24.i_crit_edge

if.end16.i.if.end24.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.then19.i:                                      ; preds = %if.end16.i
  %call20.i = tail call i32 @f2fs_try_convert_inline_dir(ptr noundef %old_dir, ptr noundef %new_dentry) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.then19.i.if.end24.i_crit_edge, label %if.then19.i.f2fs_rename.exit_crit_edge

if.then19.i.f2fs_rename.exit_crit_edge:           ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %f2fs_rename.exit

if.then19.i.if.end24.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then19.i.if.end24.i_crit_edge, %if.end16.i.if.end24.i_crit_edge
  %and.i49 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49)
  %tobool25.not.i = icmp eq i32 %and.i49, 0
  br i1 %tobool25.not.i, label %if.end24.i.if.end31.i52_crit_edge, label %if.then26.i

if.end24.i.if.end31.i52_crit_edge:                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i52

if.then26.i:                                      ; preds = %if.end24.i
  %137 = ptrtoint ptr %i_sb.i.i29 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %i_sb.i.i29, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %138, i32 0, i32 33
  %139 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %ckpt.i.i.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %140, i32 0, i32 15
  %141 = ptrtoint ptr %ckpt.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ckpt.i.i.i.i.i, align 4
  %ckpt_flags1.i.i.i.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %142, i32 0, i32 10
  %143 = ptrtoint ptr %ckpt_flags1.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %143, i32 4)
  %144 = load i32, ptr %ckpt_flags1.i.i.i.i.i, align 1
  %145 = and i32 %144, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool.i.i.i.not.i.i = icmp eq i32 %145, 0
  br i1 %tobool.i.i.i.not.i.i, label %f2fs_create_whiteout.exit.i, label %if.then26.i.f2fs_rename.exit_crit_edge, !prof !51

if.then26.i.f2fs_rename.exit_crit_edge:           ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %f2fs_rename.exit

f2fs_create_whiteout.exit.i:                      ; preds = %if.then26.i
  %call3.i272.i = call fastcc i32 @__f2fs_tmpfile(ptr noundef %old_dir, ptr noundef null, i16 noundef zeroext 8192, ptr noundef nonnull %whiteout.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i272.i)
  %tobool28.not.i = icmp eq i32 %call3.i272.i, 0
  br i1 %tobool28.not.i, label %f2fs_create_whiteout.exit.i.if.end31.i52_crit_edge, label %f2fs_create_whiteout.exit.i.f2fs_rename.exit_crit_edge

f2fs_create_whiteout.exit.i.f2fs_rename.exit_crit_edge: ; preds = %f2fs_create_whiteout.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %f2fs_rename.exit

f2fs_create_whiteout.exit.i.if.end31.i52_crit_edge: ; preds = %f2fs_create_whiteout.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i52

if.end31.i52:                                     ; preds = %f2fs_create_whiteout.exit.i.if.end31.i52_crit_edge, %if.end24.i.if.end31.i52_crit_edge
  %call32.i50 = call i32 @f2fs_dquot_initialize(ptr noundef %old_dir) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i50)
  %tobool33.not.i51 = icmp eq i32 %call32.i50, 0
  br i1 %tobool33.not.i51, label %if.end35.i55, label %if.end31.i52.out.i_crit_edge

if.end31.i52.out.i_crit_edge:                     ; preds = %if.end31.i52
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end35.i55:                                     ; preds = %if.end31.i52
  %call36.i53 = call i32 @f2fs_dquot_initialize(ptr noundef %new_dir) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i53)
  %tobool37.not.i54 = icmp eq i32 %call36.i53, 0
  br i1 %tobool37.not.i54, label %if.end39.i, label %if.end35.i55.out.i_crit_edge

if.end35.i55.out.i_crit_edge:                     ; preds = %if.end35.i55
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end39.i:                                       ; preds = %if.end35.i55
  br i1 %tobool18.not.i, label %if.end39.i.if.end46.i_crit_edge, label %if.then41.i

if.end39.i.if.end46.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

if.then41.i:                                      ; preds = %if.end39.i
  %call42.i = call i32 @f2fs_dquot_initialize(ptr noundef nonnull %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.then41.i.if.end46.i_crit_edge, label %if.then41.i.out.i_crit_edge

if.then41.i.out.i_crit_edge:                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then41.i.if.end46.i_crit_edge:                 ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then41.i.if.end46.i_crit_edge, %if.end39.i.if.end46.i_crit_edge
  %d_name.i56 = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 4
  %call47.i = call ptr @f2fs_find_entry(ptr noundef %old_dir, ptr noundef %d_name.i56, ptr noundef nonnull %old_page.i26) #11
  %tobool48.not.i = icmp eq ptr %call47.i, null
  br i1 %tobool48.not.i, label %if.then49.i, label %if.end54.i

if.then49.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  %146 = ptrtoint ptr %old_page.i26 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %old_page.i26, align 4
  %cmp.i275.i = icmp ugt ptr %147, inttoptr (i32 -4096 to ptr)
  %148 = ptrtoint ptr %147 to i32
  %spec.select.i57 = select i1 %cmp.i275.i, i32 %148, i32 -2
  br label %out.i

if.end54.i:                                       ; preds = %if.end46.i
  %149 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %9, align 8
  %151 = and i16 %150, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %151)
  %cmp56.i = icmp eq i16 %151, 16384
  br i1 %cmp56.i, label %if.then58.i, label %if.end67.thread.i

if.then58.i:                                      ; preds = %if.end54.i
  %call59.i = call ptr @f2fs_parent_dir(ptr noundef %9, ptr noundef nonnull %old_dir_page.i25) #11
  %tobool60.not.i = icmp eq ptr %call59.i, null
  br i1 %tobool60.not.i, label %if.then61.i, label %if.end67.i

if.then61.i:                                      ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #13
  %152 = ptrtoint ptr %old_dir_page.i25 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %old_dir_page.i25, align 4
  %cmp.i276.i = icmp ugt ptr %153, inttoptr (i32 -4096 to ptr)
  %154 = ptrtoint ptr %153 to i32
  %spec.select322.i = select i1 %cmp.i276.i, i32 %154, i32 -2
  br label %out_old.i78

if.end67.i:                                       ; preds = %if.then58.i
  br i1 %tobool18.not.i, label %if.end67.i.if.else97.i_crit_edge, label %land.lhs.true71.i

if.end67.i.if.else97.i_crit_edge:                 ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else97.i

if.end67.thread.i:                                ; preds = %if.end54.i
  br i1 %tobool18.not.i, label %if.end67.thread.i.if.else97.i_crit_edge, label %if.end67.thread.i.if.end74.i_crit_edge

if.end67.thread.i.if.end74.i_crit_edge:           ; preds = %if.end67.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74.i

if.end67.thread.i.if.else97.i_crit_edge:          ; preds = %if.end67.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else97.i

land.lhs.true71.i:                                ; preds = %if.end67.i
  %call72.i58 = call zeroext i1 @f2fs_empty_dir(ptr noundef nonnull %11) #11
  br i1 %call72.i58, label %land.lhs.true71.i.if.end74.i_crit_edge, label %land.lhs.true71.i.if.then167.i_crit_edge

land.lhs.true71.i.if.then167.i_crit_edge:         ; preds = %land.lhs.true71.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then167.i

land.lhs.true71.i.if.end74.i_crit_edge:           ; preds = %land.lhs.true71.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74.i

if.end74.i:                                       ; preds = %land.lhs.true71.i.if.end74.i_crit_edge, %if.end67.thread.i.if.end74.i_crit_edge
  %old_dir_entry.0292300.i = phi ptr [ %call59.i, %land.lhs.true71.i.if.end74.i_crit_edge ], [ null, %if.end67.thread.i.if.end74.i_crit_edge ]
  %d_name75.i = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4
  %call76.i = call ptr @f2fs_find_entry(ptr noundef %new_dir, ptr noundef %d_name75.i, ptr noundef nonnull %new_page.i27) #11
  %tobool77.not.i = icmp eq ptr %call76.i, null
  br i1 %tobool77.not.i, label %if.then78.i, label %if.end83.i

if.then78.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #13
  %155 = ptrtoint ptr %new_page.i27 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %new_page.i27, align 4
  %cmp.i277.i = icmp ugt ptr %156, inttoptr (i32 -4096 to ptr)
  %157 = ptrtoint ptr %156 to i32
  %spec.select323.i = select i1 %cmp.i277.i, i32 %157, i32 -2
  br label %out_dir.i

if.end83.i:                                       ; preds = %if.end74.i
  call void @f2fs_balance_fs(ptr noundef %7, i1 noundef zeroext true) #11
  %cp_rwsem.i.i59 = getelementptr inbounds %struct.f2fs_sb_info, ptr %7, i32 0, i32 20
  call void @down_read(ptr noundef %cp_rwsem.i.i59) #11
  %call84.i = call i32 @f2fs_acquire_orphan_inode(ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.i)
  %tobool85.not.i = icmp eq i32 %call84.i, 0
  br i1 %tobool85.not.i, label %if.end87.i, label %if.end83.i.put_out_dir.i_crit_edge

if.end83.i.put_out_dir.i_crit_edge:               ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_out_dir.i

if.end87.i:                                       ; preds = %if.end83.i
  %158 = ptrtoint ptr %new_page.i27 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %new_page.i27, align 4
  call void @f2fs_set_link(ptr noundef %new_dir, ptr noundef nonnull %call76.i, ptr noundef %159, ptr noundef %9) #11
  %160 = ptrtoint ptr %new_page.i27 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %new_page.i27, align 4
  %i_ctime.i60 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i28) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i28, ptr noundef nonnull %11) #11
  %161 = call ptr @memcpy(ptr %i_ctime.i60, ptr %tmp.i28, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i28) #11
  %i_sem.i61 = getelementptr inbounds %struct.f2fs_inode_info, ptr %11, i32 0, i32 9
  call void @down_write(ptr noundef %i_sem.i61) #11
  br i1 %cmp56.i, label %if.then90.i, label %if.end87.i.if.end91.i_crit_edge

if.end87.i.if.end91.i_crit_edge:                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91.i

if.then90.i:                                      ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @drop_nlink(ptr noundef nonnull %11) #11
  call void @f2fs_mark_inode_dirty_sync(ptr noundef nonnull %11, i1 noundef zeroext true) #11
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.then90.i, %if.end87.i.if.end91.i_crit_edge
  call void @drop_nlink(ptr noundef nonnull %11) #11
  call void @f2fs_mark_inode_dirty_sync(ptr noundef nonnull %11, i1 noundef zeroext true) #11
  call void @up_write(ptr noundef %i_sem.i61) #11
  %162 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 12
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool94.not.i = icmp eq i32 %164, 0
  br i1 %tobool94.not.i, label %if.then95.i, label %if.else.i62

if.then95.i:                                      ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @f2fs_add_orphan_inode(ptr noundef nonnull %11) #11
  br label %if.end105.i

if.else.i62:                                      ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @f2fs_release_orphan_inode(ptr noundef %7) #11
  br label %if.end105.i

if.else97.i:                                      ; preds = %if.end67.thread.i.if.else97.i_crit_edge, %if.end67.i.if.else97.i_crit_edge
  %old_dir_entry.0296.i = phi ptr [ null, %if.end67.thread.i.if.else97.i_crit_edge ], [ %call59.i, %if.end67.i.if.else97.i_crit_edge ]
  call void @f2fs_balance_fs(ptr noundef %7, i1 noundef zeroext true) #11
  %cp_rwsem.i280.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %7, i32 0, i32 20
  call void @down_read(ptr noundef %cp_rwsem.i280.i) #11
  %call98.i = call fastcc i32 @f2fs_add_link(ptr noundef %new_dentry, ptr noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i)
  %tobool99.not.i = icmp eq i32 %call98.i, 0
  br i1 %tobool99.not.i, label %if.end101.i, label %if.then100.i

if.then100.i:                                     ; preds = %if.else97.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @up_read(ptr noundef %cp_rwsem.i280.i) #11
  br label %out_dir.i

if.end101.i:                                      ; preds = %if.else97.i
  %tobool102.not.i = icmp eq ptr %old_dir_entry.0296.i, null
  br i1 %tobool102.not.i, label %if.end105.thread.i, label %if.end105.thread311.i

if.end105.thread.i:                               ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #13
  %i_sem107303.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %9, i32 0, i32 9
  call void @down_write(ptr noundef %i_sem107303.i) #11
  br label %if.then110.i

if.end105.thread311.i:                            ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @inc_nlink(ptr noundef %new_dir) #11
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %new_dir, i1 noundef zeroext true) #11
  %i_sem107313.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %9, i32 0, i32 9
  call void @down_write(ptr noundef %i_sem107313.i) #11
  br label %lor.lhs.false.i63

if.end105.i:                                      ; preds = %if.else.i62, %if.then95.i
  %i_sem107.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %9, i32 0, i32 9
  call void @down_write(ptr noundef %i_sem107.i) #11
  %tobool108.not.i = icmp eq ptr %old_dir_entry.0292300.i, null
  br i1 %tobool108.not.i, label %if.end105.i.if.then110.i_crit_edge, label %if.end105.i.lor.lhs.false.i63_crit_edge

if.end105.i.lor.lhs.false.i63_crit_edge:          ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i63

if.end105.i.if.then110.i_crit_edge:               ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then110.i

lor.lhs.false.i63:                                ; preds = %if.end105.i.lor.lhs.false.i63_crit_edge, %if.end105.thread311.i
  %i_sem107316.i = phi ptr [ %i_sem107313.i, %if.end105.thread311.i ], [ %i_sem107.i, %if.end105.i.lor.lhs.false.i63_crit_edge ]
  %old_dir_entry.0295315.i = phi ptr [ %old_dir_entry.0296.i, %if.end105.thread311.i ], [ %old_dir_entry.0292300.i, %if.end105.i.lor.lhs.false.i63_crit_edge ]
  %165 = ptrtoint ptr %whiteout.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %whiteout.i, align 4
  %tobool109.not.i = icmp eq ptr %166, null
  br i1 %tobool109.not.i, label %if.else111.i, label %lor.lhs.false.i63.if.then110.i_crit_edge

lor.lhs.false.i63.if.then110.i_crit_edge:         ; preds = %lor.lhs.false.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then110.i

if.then110.i:                                     ; preds = %lor.lhs.false.i63.if.then110.i_crit_edge, %if.end105.i.if.then110.i_crit_edge, %if.end105.thread.i
  %tobool108.not310.i = phi i1 [ true, %if.end105.thread.i ], [ false, %lor.lhs.false.i63.if.then110.i_crit_edge ], [ true, %if.end105.i.if.then110.i_crit_edge ]
  %i_sem107308.i = phi ptr [ %i_sem107303.i, %if.end105.thread.i ], [ %i_sem107316.i, %lor.lhs.false.i63.if.then110.i_crit_edge ], [ %i_sem107.i, %if.end105.i.if.then110.i_crit_edge ]
  %old_dir_entry.0295306.i = phi ptr [ null, %if.end105.thread.i ], [ %old_dir_entry.0295315.i, %lor.lhs.false.i63.if.then110.i_crit_edge ], [ null, %if.end105.i.if.then110.i_crit_edge ]
  %i_advise.i.i.i64 = getelementptr inbounds %struct.f2fs_inode_info, ptr %9, i32 0, i32 2
  %167 = ptrtoint ptr %i_advise.i.i.i64 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %i_advise.i.i.i64, align 4
  %169 = and i8 %168, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool.not.i.i65 = icmp eq i8 %169, 0
  br i1 %tobool.not.i.i65, label %if.end.i283.i, label %if.then110.i.if.end112.i_crit_edge

if.then110.i.if.end112.i_crit_edge:               ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112.i

if.end.i283.i:                                    ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv2.i.i66 = or i8 %168, 2
  %170 = ptrtoint ptr %i_advise.i.i.i64 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %conv2.i.i66, ptr %i_advise.i.i.i64, align 4
  br label %if.end112.sink.split.i

if.else111.i:                                     ; preds = %lor.lhs.false.i63
  call void @__sanitizer_cov_trace_pc() #13
  %i_ino.i67 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 11
  %171 = ptrtoint ptr %i_ino.i67 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %i_ino.i67, align 8
  %i_pino.i.i68 = getelementptr inbounds %struct.f2fs_inode_info, ptr %9, i32 0, i32 6
  %173 = ptrtoint ptr %i_pino.i.i68 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %i_pino.i.i68, align 4
  br label %if.end112.sink.split.i

if.end112.sink.split.i:                           ; preds = %if.else111.i, %if.end.i283.i
  %tobool108.not309.ph.i = phi i1 [ %tobool108.not310.i, %if.end.i283.i ], [ false, %if.else111.i ]
  %i_sem107307.ph.i = phi ptr [ %i_sem107308.i, %if.end.i283.i ], [ %i_sem107316.i, %if.else111.i ]
  %old_dir_entry.0295305.ph.i = phi ptr [ %old_dir_entry.0295306.i, %if.end.i283.i ], [ %old_dir_entry.0295315.i, %if.else111.i ]
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %9, i1 noundef zeroext true) #11
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.end112.sink.split.i, %if.then110.i.if.end112.i_crit_edge
  %tobool108.not309.i = phi i1 [ %tobool108.not310.i, %if.then110.i.if.end112.i_crit_edge ], [ %tobool108.not309.ph.i, %if.end112.sink.split.i ]
  %i_sem107307.i = phi ptr [ %i_sem107308.i, %if.then110.i.if.end112.i_crit_edge ], [ %i_sem107307.ph.i, %if.end112.sink.split.i ]
  %old_dir_entry.0295305.i = phi ptr [ %old_dir_entry.0295306.i, %if.then110.i.if.end112.i_crit_edge ], [ %old_dir_entry.0295305.ph.i, %if.end112.sink.split.i ]
  call void @up_write(ptr noundef %i_sem107307.i) #11
  %i_ctime115.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp116.i) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp116.i, ptr noundef %9) #11
  %174 = call ptr @memcpy(ptr %i_ctime115.i, ptr %tmp116.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp116.i) #11
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %9, i1 noundef zeroext false) #11
  %175 = ptrtoint ptr %old_page.i26 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %old_page.i26, align 4
  call void @f2fs_delete_entry(ptr noundef nonnull %call47.i, ptr noundef %176, ptr noundef %old_dir, ptr noundef null) #11
  %177 = ptrtoint ptr %old_page.i26 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr null, ptr %old_page.i26, align 4
  %178 = ptrtoint ptr %whiteout.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %whiteout.i, align 4
  %tobool117.not.i = icmp eq ptr %179, null
  br i1 %tobool117.not.i, label %if.end112.i.if.end125.i_crit_edge, label %if.then118.i

if.end112.i.if.end125.i_crit_edge:                ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end125.i

if.then118.i:                                     ; preds = %if.end112.i
  %flags.i284.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %179, i32 0, i32 8
  call void @_set_bit(i32 noundef 4, ptr noundef %flags.i284.i) #11
  %180 = ptrtoint ptr %whiteout.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %whiteout.i, align 4
  %call119.i = call fastcc i32 @f2fs_add_link(ptr noundef %old_dentry, ptr noundef %181) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119.i)
  %tobool120.not.i = icmp eq i32 %call119.i, 0
  br i1 %tobool120.not.i, label %if.end122.i, label %if.then118.i.put_out_dir.i_crit_edge

if.then118.i.put_out_dir.i_crit_edge:             ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_out_dir.i

if.end122.i:                                      ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #13
  %182 = ptrtoint ptr %whiteout.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %whiteout.i, align 4
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %183, i32 0, i32 18
  call void @_raw_spin_lock(ptr noundef %i_lock.i) #11
  %184 = ptrtoint ptr %whiteout.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %whiteout.i, align 4
  %i_state.i = getelementptr inbounds %struct.inode, ptr %185, i32 0, i32 24
  %186 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %i_state.i, align 8
  %and123.i = and i32 %187, -1025
  store i32 %and123.i, ptr %i_state.i, align 8
  %i_lock124.i = getelementptr inbounds %struct.inode, ptr %185, i32 0, i32 18
  call void @_raw_spin_unlock(ptr noundef %i_lock124.i) #11
  %188 = ptrtoint ptr %whiteout.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %whiteout.i, align 4
  call void @iput(ptr noundef %189) #11
  br label %if.end125.i

if.end125.i:                                      ; preds = %if.end122.i, %if.end112.i.if.end125.i_crit_edge
  br i1 %tobool108.not309.i, label %if.end125.i.if.end135.i_crit_edge, label %if.then127.i

if.end125.i.if.end135.i_crit_edge:                ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end135.i

if.then127.i:                                     ; preds = %if.end125.i
  br i1 %cmp.i, label %if.then127.i.if.else133.i_crit_edge, label %land.lhs.true130.i

if.then127.i.if.else133.i_crit_edge:              ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else133.i

land.lhs.true130.i:                               ; preds = %if.then127.i
  %190 = ptrtoint ptr %whiteout.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %whiteout.i, align 4
  %tobool131.not.i = icmp eq ptr %191, null
  br i1 %tobool131.not.i, label %if.then132.i, label %land.lhs.true130.i.if.else133.i_crit_edge

land.lhs.true130.i.if.else133.i_crit_edge:        ; preds = %land.lhs.true130.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else133.i

if.then132.i:                                     ; preds = %land.lhs.true130.i
  call void @__sanitizer_cov_trace_pc() #13
  %192 = ptrtoint ptr %old_dir_page.i25 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %old_dir_page.i25, align 4
  call void @f2fs_set_link(ptr noundef %9, ptr noundef nonnull %old_dir_entry.0295305.i, ptr noundef %193, ptr noundef %new_dir) #11
  br label %if.end134.i

if.else133.i:                                     ; preds = %land.lhs.true130.i.if.else133.i_crit_edge, %if.then127.i.if.else133.i_crit_edge
  %194 = ptrtoint ptr %old_dir_page.i25 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %old_dir_page.i25, align 4
  call fastcc void @f2fs_put_page(ptr noundef %195) #11
  br label %if.end134.i

if.end134.i:                                      ; preds = %if.else133.i, %if.then132.i
  call void @drop_nlink(ptr noundef %old_dir) #11
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %old_dir, i1 noundef zeroext true) #11
  br label %if.end135.i

if.end135.i:                                      ; preds = %if.end134.i, %if.end125.i.if.end135.i_crit_edge
  %fsync_mode.i69 = getelementptr inbounds %struct.f2fs_sb_info, ptr %7, i32 0, i32 73, i32 12
  %196 = ptrtoint ptr %fsync_mode.i69 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %fsync_mode.i69, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %197)
  %cmp136.i = icmp eq i32 %197, 1
  br i1 %cmp136.i, label %if.then138.i, label %if.end135.i.if.end148.i_crit_edge

if.end135.i.if.end148.i_crit_edge:                ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148.i

if.then138.i:                                     ; preds = %if.end135.i
  %i_ino139.i = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 11
  %198 = ptrtoint ptr %i_ino139.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %i_ino139.i, align 8
  call void @f2fs_add_ino_entry(ptr noundef %7, i32 noundef %199, i32 noundef 3) #11
  %200 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %9, align 8
  %202 = and i16 %201, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %202)
  %cmp143.i = icmp eq i16 %202, 16384
  br i1 %cmp143.i, label %if.then145.i, label %if.then138.i.if.end148.i_crit_edge

if.then138.i.if.end148.i_crit_edge:               ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148.i

if.then145.i:                                     ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #13
  %i_ino146.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 11
  %203 = ptrtoint ptr %i_ino146.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %i_ino146.i, align 8
  call void @f2fs_add_ino_entry(ptr noundef %7, i32 noundef %204, i32 noundef 3) #11
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.then145.i, %if.then138.i.if.end148.i_crit_edge, %if.end135.i.if.end148.i_crit_edge
  %cp_rwsem.i286.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %7, i32 0, i32 20
  call void @up_read(ptr noundef %cp_rwsem.i286.i) #11
  %205 = ptrtoint ptr %i_sb.i.i29 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %i_sb.i.i29, align 4
  %s_flags.i70 = getelementptr inbounds %struct.super_block, ptr %206, i32 0, i32 10
  %207 = ptrtoint ptr %s_flags.i70 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %s_flags.i70, align 4
  %and149.i = and i32 %208, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149.i)
  %tobool150.not.i = icmp eq i32 %and149.i, 0
  br i1 %tobool150.not.i, label %lor.lhs.false151.i, label %if.end148.i.if.then163.i_crit_edge

if.end148.i.if.then163.i_crit_edge:               ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then163.i

lor.lhs.false151.i:                               ; preds = %if.end148.i
  %209 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %i_flags.i, align 4
  %and152.i = and i32 %210, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152.i)
  %tobool153.not.i = icmp eq i32 %and152.i, 0
  br i1 %tobool153.not.i, label %lor.lhs.false154.i, label %lor.lhs.false151.i.if.then163.i_crit_edge

lor.lhs.false151.i.if.then163.i_crit_edge:        ; preds = %lor.lhs.false151.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then163.i

lor.lhs.false154.i:                               ; preds = %lor.lhs.false151.i
  %i_sb155.i = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 8
  %211 = ptrtoint ptr %i_sb155.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %i_sb155.i, align 4
  %s_flags156.i = getelementptr inbounds %struct.super_block, ptr %212, i32 0, i32 10
  %213 = ptrtoint ptr %s_flags156.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %s_flags156.i, align 4
  %and157.i = and i32 %214, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157.i)
  %tobool158.not.i = icmp eq i32 %and157.i, 0
  br i1 %tobool158.not.i, label %lor.lhs.false159.i, label %lor.lhs.false154.i.if.then163.i_crit_edge

lor.lhs.false154.i.if.then163.i_crit_edge:        ; preds = %lor.lhs.false154.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then163.i

lor.lhs.false159.i:                               ; preds = %lor.lhs.false154.i
  %i_flags160.i = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 4
  %215 = ptrtoint ptr %i_flags160.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %i_flags160.i, align 4
  %and161.i = and i32 %216, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161.i)
  %tobool162.not.i = icmp eq i32 %and161.i, 0
  br i1 %tobool162.not.i, label %lor.lhs.false159.i.if.end165.i_crit_edge, label %lor.lhs.false159.i.if.then163.i_crit_edge

lor.lhs.false159.i.if.then163.i_crit_edge:        ; preds = %lor.lhs.false159.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then163.i

lor.lhs.false159.i.if.end165.i_crit_edge:         ; preds = %lor.lhs.false159.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end165.i

if.then163.i:                                     ; preds = %lor.lhs.false159.i.if.then163.i_crit_edge, %lor.lhs.false154.i.if.then163.i_crit_edge, %lor.lhs.false151.i.if.then163.i_crit_edge, %if.end148.i.if.then163.i_crit_edge
  %217 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %7, align 8
  %call164.i = call i32 @f2fs_sync_fs(ptr noundef %218, i32 noundef 1) #11
  br label %if.end165.i

if.end165.i:                                      ; preds = %if.then163.i, %lor.lhs.false159.i.if.end165.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %219 = load volatile i32, ptr @jiffies, align 128
  %arrayidx.i.i72 = getelementptr %struct.f2fs_sb_info, ptr %7, i32 0, i32 24, i32 1
  %220 = ptrtoint ptr %arrayidx.i.i72 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %219, ptr %arrayidx.i.i72, align 4
  %arrayidx2.i.i73 = getelementptr %struct.f2fs_sb_info, ptr %7, i32 0, i32 24, i32 2
  %221 = ptrtoint ptr %arrayidx2.i.i73 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %219, ptr %arrayidx2.i.i73, align 8
  %arrayidx4.i.i74 = getelementptr %struct.f2fs_sb_info, ptr %7, i32 0, i32 24, i32 3
  %222 = ptrtoint ptr %arrayidx4.i.i74 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %219, ptr %arrayidx4.i.i74, align 4
  br label %f2fs_rename.exit

put_out_dir.i:                                    ; preds = %if.then118.i.put_out_dir.i_crit_edge, %if.end83.i.put_out_dir.i_crit_edge
  %old_dir_entry.0294.i = phi ptr [ %old_dir_entry.0292300.i, %if.end83.i.put_out_dir.i_crit_edge ], [ %old_dir_entry.0295305.i, %if.then118.i.put_out_dir.i_crit_edge ]
  %err.0.i75 = phi i32 [ %call84.i, %if.end83.i.put_out_dir.i_crit_edge ], [ %call119.i, %if.then118.i.put_out_dir.i_crit_edge ]
  %cp_rwsem.i287.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %7, i32 0, i32 20
  call void @up_read(ptr noundef %cp_rwsem.i287.i) #11
  %223 = ptrtoint ptr %new_page.i27 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %new_page.i27, align 4
  call fastcc void @f2fs_put_page(ptr noundef %224) #11
  br label %out_dir.i

out_dir.i:                                        ; preds = %put_out_dir.i, %if.then100.i, %if.then78.i
  %old_dir_entry.0293.i = phi ptr [ %old_dir_entry.0294.i, %put_out_dir.i ], [ %old_dir_entry.0296.i, %if.then100.i ], [ %old_dir_entry.0292300.i, %if.then78.i ]
  %err.1.i76 = phi i32 [ %err.0.i75, %put_out_dir.i ], [ %call98.i, %if.then100.i ], [ %spec.select323.i, %if.then78.i ]
  %tobool166.not.i = icmp eq ptr %old_dir_entry.0293.i, null
  br i1 %tobool166.not.i, label %out_dir.i.out_old.i78_crit_edge, label %out_dir.i.if.then167.i_crit_edge

out_dir.i.if.then167.i_crit_edge:                 ; preds = %out_dir.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then167.i

out_dir.i.out_old.i78_crit_edge:                  ; preds = %out_dir.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_old.i78

if.then167.i:                                     ; preds = %out_dir.i.if.then167.i_crit_edge, %land.lhs.true71.i.if.then167.i_crit_edge
  %err.1321.i = phi i32 [ %err.1.i76, %out_dir.i.if.then167.i_crit_edge ], [ -39, %land.lhs.true71.i.if.then167.i_crit_edge ]
  %225 = ptrtoint ptr %old_dir_page.i25 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %old_dir_page.i25, align 4
  call fastcc void @f2fs_put_page(ptr noundef %226) #11
  br label %out_old.i78

out_old.i78:                                      ; preds = %if.then167.i, %out_dir.i.out_old.i78_crit_edge, %if.then61.i
  %err.2.i77 = phi i32 [ %err.1321.i, %if.then167.i ], [ %err.1.i76, %out_dir.i.out_old.i78_crit_edge ], [ %spec.select322.i, %if.then61.i ]
  %227 = ptrtoint ptr %old_page.i26 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %old_page.i26, align 4
  call fastcc void @f2fs_put_page(ptr noundef %228) #11
  br label %out.i

out.i:                                            ; preds = %out_old.i78, %if.then49.i, %if.then41.i.out.i_crit_edge, %if.end35.i55.out.i_crit_edge, %if.end31.i52.out.i_crit_edge
  %err.3.i = phi i32 [ %call32.i50, %if.end31.i52.out.i_crit_edge ], [ %call36.i53, %if.end35.i55.out.i_crit_edge ], [ %call42.i, %if.then41.i.out.i_crit_edge ], [ %err.2.i77, %out_old.i78 ], [ %spec.select.i57, %if.then49.i ]
  %229 = ptrtoint ptr %whiteout.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %whiteout.i, align 4
  %tobool169.not.i = icmp eq ptr %230, null
  br i1 %tobool169.not.i, label %out.i.f2fs_rename.exit_crit_edge, label %if.then170.i

out.i.f2fs_rename.exit_crit_edge:                 ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %f2fs_rename.exit

if.then170.i:                                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @iput(ptr noundef nonnull %230) #11
  br label %f2fs_rename.exit

f2fs_rename.exit:                                 ; preds = %if.then170.i, %out.i.f2fs_rename.exit_crit_edge, %if.end165.i, %f2fs_create_whiteout.exit.i.f2fs_rename.exit_crit_edge, %if.then26.i.f2fs_rename.exit_crit_edge, %if.then19.i.f2fs_rename.exit_crit_edge, %land.lhs.true.i47.f2fs_rename.exit_crit_edge, %f2fs_is_checkpoint_ready.exit.i39.f2fs_rename.exit_crit_edge, %if.end8.f2fs_rename.exit_crit_edge
  %retval.0.i79 = phi i32 [ 0, %if.end165.i ], [ -5, %if.end8.f2fs_rename.exit_crit_edge ], [ -28, %f2fs_is_checkpoint_ready.exit.i39.f2fs_rename.exit_crit_edge ], [ -18, %land.lhs.true.i47.f2fs_rename.exit_crit_edge ], [ %call20.i, %if.then19.i.f2fs_rename.exit_crit_edge ], [ %call3.i272.i, %f2fs_create_whiteout.exit.i.f2fs_rename.exit_crit_edge ], [ %err.3.i, %if.then170.i ], [ %err.3.i, %out.i.f2fs_rename.exit_crit_edge ], [ -5, %if.then26.i.f2fs_rename.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_page.i27) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_page.i26) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_dir_page.i25) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %whiteout.i) #11
  br label %cleanup

cleanup:                                          ; preds = %f2fs_rename.exit, %f2fs_cross_rename.exit, %fscrypt_prepare_rename.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i24, %f2fs_cross_rename.exit ], [ %retval.0.i79, %f2fs_rename.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %fscrypt_prepare_rename.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_fiemap(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_tmpfile(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %ckpt.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %ckpt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ckpt.i.i.i, align 4
  %ckpt_flags1.i.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %ckpt_flags1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %ckpt_flags1.i.i.i, align 1
  %8 = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.i.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.i.i.not, label %if.end, label %entry.cleanup_crit_edge, !prof !51

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_flag.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %s_flag.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %s_flag.i.i, align 4
  %11 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %if.end.if.end5_crit_edge, label %f2fs_is_checkpoint_ready.exit, !prof !51

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

f2fs_is_checkpoint_ready.exit:                    ; preds = %if.end
  %call3.i = tail call fastcc zeroext i1 @has_not_enough_free_secs(ptr noundef %3) #11
  br i1 %call3.i, label %f2fs_is_checkpoint_ready.exit.cleanup_crit_edge, label %f2fs_is_checkpoint_ready.exit.if.end5_crit_edge

f2fs_is_checkpoint_ready.exit.if.end5_crit_edge:  ; preds = %f2fs_is_checkpoint_ready.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

f2fs_is_checkpoint_ready.exit.cleanup_crit_edge:  ; preds = %f2fs_is_checkpoint_ready.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %f2fs_is_checkpoint_ready.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %call6 = tail call fastcc i32 @__f2fs_tmpfile(ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %f2fs_is_checkpoint_ready.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -5, %entry.cleanup_crit_edge ], [ -28, %f2fs_is_checkpoint_ready.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_set_acl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_fileattr_set(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_fileattr_get(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @f2fs_get_link(ptr noundef %dentry, ptr noundef %inode, ptr noundef %done) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @page_get_link(ptr noundef %dentry, ptr noundef %inode, ptr noundef %done) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %done, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.do_delayed_call.exit_crit_edge, label %if.then.i

if.then.do_delayed_call.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_delayed_call.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %arg.i = getelementptr inbounds %struct.delayed_call, ptr %done, i32 0, i32 1
  %4 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arg.i, align 4
  tail call void %3(ptr noundef %5) #11
  br label %do_delayed_call.exit

do_delayed_call.exit:                             ; preds = %if.then.i, %if.then.do_delayed_call.exit_crit_edge
  %6 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %done, align 4
  br label %if.end

if.end:                                           ; preds = %do_delayed_call.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %link.0 = phi ptr [ %call, %entry.if.end_crit_edge ], [ %call, %land.lhs.true.if.end_crit_edge ], [ inttoptr (i32 -2 to ptr), %do_delayed_call.exit ]
  ret ptr %link.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fscrypt_get_symlink(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_symlink_getattr(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_lookup_start(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_lookup_start, i32 0, i32 1), ptr blockaddress(@trace_f2fs_lookup_start, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !57

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !40) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !51

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !40) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !58
  %call42 = tail call i32 @__traceiter_f2fs_lookup_start(ptr noundef null, ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !59
  %13 = tail call i32 @llvm.read_register.i32(metadata !40) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !40) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !51

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !40) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_lookup_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_lookup_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_f2fs_lookup_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_f2fs_lookup_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 836, ptr noundef nonnull @.str.3) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !61
  %31 = tail call i32 @llvm.read_register.i32(metadata !40) #11
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_prepare_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_set_encrypted_ci_d_ops(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__f2fs_find_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_free_filename(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f2fs_put_page(ptr noundef %page) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %tobool.not = icmp eq ptr %page, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end13

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end13:                                         ; preds = %entry
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !51

if.then.i.i:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %5 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !52

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !53
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_put_page, %if.then.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !57

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.return_crit_edge

folio_put_testzero.exit.i.i.return_crit_edge:     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %4) #11
  br label %return

return:                                           ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__recover_dot_dentries(ptr noundef %dir, i32 noundef %pino) unnamed_addr #4 align 64 {
entry:
  %dot = alloca %struct.qstr, align 8
  %dotdot = alloca %struct.qstr, align 8
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dot) #11
  %4 = call ptr @memcpy(ptr %dot, ptr @__const.__recover_dot_dentries.dot, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dotdot) #11
  %5 = call ptr @memcpy(ptr %dotdot, ptr @__const.__recover_dot_dentries.dotdot, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #11
  %6 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !50
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 8
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_flags.i.i, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %11 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef %12, i32 noundef %pino) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @f2fs_dquot_initialize(ptr noundef %dir) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @f2fs_balance_fs(ptr noundef %3, i1 noundef zeroext true) #11
  %cp_rwsem.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 20
  tail call void @down_read(ptr noundef %cp_rwsem.i) #11
  %call5 = call ptr @f2fs_find_entry(ptr noundef %dir, ptr noundef nonnull %dot, ptr noundef nonnull %page) #11
  %tobool6.not = icmp eq ptr %call5, null
  %13 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %page, align 4
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then7.if.end18_crit_edge, label %if.end13.i

if.then7.if.end18_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.end13.i:                                       ; preds = %if.then7
  %15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !51

if.then.i.i.i:                                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = add i32 %17, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %14 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %18, %if.end.i.i.i ]
  %19 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #11
  %20 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i.i.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !52

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !53
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !54
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %22 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #11, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@__recover_dot_dentries, %if.then.i.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !57

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %19, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.if.end18_crit_edge

folio_put_testzero.exit.i.i.i.if.end18_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__put_page(ptr noundef %19) #11
  br label %if.end18

if.else:                                          ; preds = %if.end4
  %cmp.i = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %14 to i32
  br label %out

if.else11:                                        ; preds = %if.else
  %i_ino12 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %24 = ptrtoint ptr %i_ino12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_ino12, align 8
  %call13 = call i32 @f2fs_do_add_link(ptr noundef %dir, ptr noundef nonnull %dot, ptr noundef null, i32 noundef %25, i16 noundef zeroext 16384) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.else11.if.end18_crit_edge, label %if.else11.if.end32_crit_edge

if.else11.if.end32_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.else11.if.end18_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.end18:                                         ; preds = %if.else11.if.end18_crit_edge, %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.if.end18_crit_edge, %if.then7.if.end18_crit_edge
  %call19 = call ptr @f2fs_find_entry(ptr noundef %dir, ptr noundef nonnull %dotdot, ptr noundef nonnull %page) #11
  %tobool20.not = icmp eq ptr %call19, null
  %26 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %page, align 4
  br i1 %tobool20.not, label %if.else22, label %if.then21

if.then21:                                        ; preds = %if.end18
  %tobool.not.i56 = icmp eq ptr %27, null
  br i1 %tobool.not.i56, label %if.then21.if.then31_crit_edge, label %if.end13.i59

if.then21.if.then31_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

if.end13.i59:                                     ; preds = %if.then21
  %28 = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  %and.i.i.i57 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i57)
  %tobool.not.i.i.i58 = icmp eq i32 %and.i.i.i57, 0
  br i1 %tobool.not.i.i.i58, label %if.end.i.i.i62, label %if.then.i.i.i61, !prof !51

if.then.i.i.i61:                                  ; preds = %if.end13.i59
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i60 = add i32 %30, -1
  br label %_compound_head.exit.i.i67

if.end.i.i.i62:                                   ; preds = %if.end13.i59
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %27 to i32
  br label %_compound_head.exit.i.i67

_compound_head.exit.i.i67:                        ; preds = %if.end.i.i.i62, %if.then.i.i.i61
  %retval.0.i.i.i63 = phi i32 [ %sub.i.i.i60, %if.then.i.i.i61 ], [ %31, %if.end.i.i.i62 ]
  %32 = inttoptr i32 %retval.0.i.i.i63 to ptr
  %_refcount.i.i.i.i.i.i64 = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i65 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i64, i32 noundef 4) #11
  %33 = ptrtoint ptr %_refcount.i.i.i.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %_refcount.i.i.i.i.i.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i.i.i.i66 = icmp eq i32 %34, 0
  br i1 %cmp.i.i.i.i.i66, label %if.then.i.i.i.i.i68, label %do.end5.i.i.i.i.i72, !prof !52

if.then.i.i.i.i.i68:                              ; preds = %_compound_head.exit.i.i67
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %32, ptr noundef nonnull @.str) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !53
  unreachable

do.end5.i.i.i.i.i72:                              ; preds = %_compound_head.exit.i.i67
  %call.i.i.i10.i.i.i.i.i69 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i64, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !54
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i64, i32 1, i32 3, i32 1) #11
  %35 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i64, ptr %_refcount.i.i.i.i.i.i64, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i64) #11, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i.i.i.i70 = extractvalue { i32, i32 } %35, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i70)
  %cmp.i.i.i.i.i.i.i.i71 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i70, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@__recover_dot_dentries, %if.then.i.i.i.i.i.i74)) #11
          to label %folio_put_testzero.exit.i.i.i75 [label %if.then.i.i.i.i.i.i74], !srcloc !57

if.then.i.i.i.i.i.i74:                            ; preds = %do.end5.i.i.i.i.i72
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i.i73 = zext i1 %cmp.i.i.i.i.i.i.i.i71 to i32
  call void @__page_ref_mod_and_test(ptr noundef %32, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i73) #11
  br label %folio_put_testzero.exit.i.i.i75

folio_put_testzero.exit.i.i.i75:                  ; preds = %if.then.i.i.i.i.i.i74, %do.end5.i.i.i.i.i72
  br i1 %cmp.i.i.i.i.i.i.i.i71, label %if.then.i4.i.i76, label %folio_put_testzero.exit.i.i.i75.if.then31_crit_edge

folio_put_testzero.exit.i.i.i75.if.then31_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

if.then.i4.i.i76:                                 ; preds = %folio_put_testzero.exit.i.i.i75
  call void @__sanitizer_cov_trace_pc() #13
  call void @__put_page(ptr noundef %32) #11
  br label %if.then31

if.else22:                                        ; preds = %if.end18
  %cmp.i78 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i78, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %27 to i32
  br label %out

if.else26:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #13
  %call27 = call i32 @f2fs_do_add_link(ptr noundef %dir, ptr noundef nonnull %dotdot, ptr noundef null, i32 noundef %pino, i16 noundef zeroext 16384) #11
  br label %out

out:                                              ; preds = %if.else26, %if.then24, %if.then9
  %err.1 = phi i32 [ %36, %if.then24 ], [ %call27, %if.else26 ], [ %23, %if.then9 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool30.not = icmp eq i32 %err.1, 0
  br i1 %tobool30.not, label %out.if.then31_crit_edge, label %out.if.end32_crit_edge

out.if.end32_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

out.if.then31_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

if.then31:                                        ; preds = %out.if.then31_crit_edge, %if.then.i4.i.i76, %folio_put_testzero.exit.i.i.i75.if.then31_crit_edge, %if.then21.if.then31_crit_edge
  %flags.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 8
  call void @_clear_bit(i32 noundef 21, ptr noundef %flags.i) #11
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %dir, i1 noundef zeroext true) #11
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %out.if.end32_crit_edge, %if.else11.if.end32_crit_edge
  %err.182 = phi i32 [ 0, %if.then31 ], [ %err.1, %out.if.end32_crit_edge ], [ %call13, %if.else11.if.end32_crit_edge ]
  call void @up_read(ptr noundef %cp_rwsem.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %err.182, %if.end32 ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dotdot) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dot) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_has_permitted_context(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_lookup_end(ptr noundef %dir, ptr noundef %dentry, i32 noundef %ino, i32 noundef %err) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_lookup_end, i32 0, i32 1), ptr blockaddress(@trace_f2fs_lookup_end, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !57

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !40) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !51

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !40) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !62
  %call42 = tail call i32 @__traceiter_f2fs_lookup_end(ptr noundef null, ptr noundef %dir, ptr noundef %dentry, i32 noundef %ino, i32 noundef %err) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !63
  %13 = tail call i32 @llvm.read_register.i32(metadata !40) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !40) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !51

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !40) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_lookup_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_lookup_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_f2fs_lookup_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_f2fs_lookup_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 866, ptr noundef nonnull @.str.3) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !61
  %31 = tail call i32 @llvm.read_register.i32(metadata !40) #11
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_lookup_start(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_dquot_initialize(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_balance_fs(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_find_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_do_add_link(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_mark_inode_dirty_sync(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_lookup_end(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @f2fs_new_inode(ptr noundef %dir, i16 noundef zeroext %mode) unnamed_addr #4 align 64 {
entry:
  %ino = alloca i32, align 4
  %encrypt = alloca i8, align 1
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ino) #11
  %4 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ino, align 4, !annotation !50
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %encrypt) #11
  %5 = ptrtoint ptr %encrypt to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %encrypt, align 1
  %call1 = tail call ptr @new_inode(ptr noundef %1) #11
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cp_rwsem.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 20
  tail call void @down_read(ptr noundef %cp_rwsem.i) #11
  %call3 = call zeroext i1 @f2fs_alloc_nid(ptr noundef %3, ptr noundef nonnull %ino) #11
  call void @up_read(ptr noundef %cp_rwsem.i) #11
  br i1 %call3, label %if.end5, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end5:                                          ; preds = %if.end
  call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call1, ptr noundef %dir, i16 noundef zeroext %mode) #11
  %6 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ino, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %i_ino, align 8
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 22
  %9 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %i_blocks, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 15
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef nonnull %call1) #11
  %10 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #11
  %11 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %12 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %i_crtime = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 32
  %13 = call ptr @memcpy(ptr %i_crtime, ptr %i_ctime, i32 16)
  %call8 = call i32 @prandom_u32() #11
  %i_generation = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 49
  %14 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call8, ptr %i_generation, align 8
  %15 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %call1, align 8
  %17 = and i16 %16, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %17)
  %cmp = icmp eq i16 %17, 16384
  br i1 %cmp, label %if.then10, label %if.end5.if.end12_crit_edge

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %i_current_depth = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 4
  %18 = ptrtoint ptr %i_current_depth to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %i_current_depth, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end5.if.end12_crit_edge
  %call13 = call i32 @insert_inode_locked(ptr noundef nonnull %call1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.fail_crit_edge

if.end12.fail_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end16:                                         ; preds = %if.end12
  %raw_super.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %raw_super.i, align 8
  %feature.i = getelementptr inbounds %struct.f2fs_super_block, ptr %20, i32 0, i32 34
  %21 = ptrtoint ptr %feature.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %feature.i, align 1
  %23 = and i32 %22, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool18.not = icmp eq i32 %23, 0
  br i1 %tobool18.not, label %if.end16.if.else_crit_edge, label %land.lhs.true

if.end16.if.else_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.end16
  %i_flags = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 1
  %24 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_flags, align 8
  %and20 = and i32 %25, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %land.lhs.true.if.else_crit_edge, label %if.then22

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %i_projid = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 30
  %i_projid25 = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 30
  %26 = ptrtoint ptr %i_projid25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_projid25, align 8
  %28 = ptrtoint ptr %i_projid to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %i_projid, align 8
  br label %if.end30

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end16.if.else_crit_edge
  %i_projid27 = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 30
  %call29 = call i32 @make_kprojid(ptr noundef nonnull @init_user_ns, i32 noundef 0) #11
  %29 = ptrtoint ptr %i_projid27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call29, ptr %i_projid27, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then22
  %call31 = call i32 @fscrypt_prepare_new_inode(ptr noundef %dir, ptr noundef nonnull %call1, ptr noundef nonnull %encrypt) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.fail_drop_crit_edge

if.end30.fail_drop_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_drop

if.end34:                                         ; preds = %if.end30
  %call35 = call i32 @f2fs_dquot_initialize(ptr noundef nonnull %call1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.fail_drop_crit_edge

if.end34.fail_drop_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_drop

if.end38:                                         ; preds = %if.end34
  %flags.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 8
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #11
  %30 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %encrypt, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool39.not = icmp eq i8 %31, 0
  br i1 %tobool39.not, label %if.end38.if.end41_crit_edge, label %if.then40

if.end38.if.end41_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @f2fs_set_encrypted_inode(ptr noundef nonnull %call1)
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end38.if.end41_crit_edge
  %32 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %raw_super.i, align 8
  %feature.i256 = getelementptr inbounds %struct.f2fs_super_block, ptr %33, i32 0, i32 34
  %34 = ptrtoint ptr %feature.i256 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %feature.i256, align 1
  %36 = and i32 %35, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool43.not = icmp eq i32 %36, 0
  br i1 %tobool43.not, label %if.end41.if.end46_crit_edge, label %if.then44

if.end41.if.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 26, ptr noundef %flags.i) #11
  %i_extra_isize = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 29
  %37 = ptrtoint ptr %i_extra_isize to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 36, ptr %i_extra_isize, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end41.if.end46_crit_edge
  %mount_opt = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 73
  %38 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mount_opt, align 8
  %and47 = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end50_crit_edge, label %if.then49

if.end46.if.end50_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 9, ptr noundef %flags.i) #11
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end46.if.end50_crit_edge
  %40 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mount_opt, align 8
  %and53 = and i32 %41, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end50.if.end59_crit_edge, label %land.lhs.true55

if.end50.if.end59_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

land.lhs.true55:                                  ; preds = %if.end50
  %call56 = call zeroext i1 @f2fs_may_inline_data(ptr noundef nonnull %call1) #11
  br i1 %call56, label %if.then58, label %land.lhs.true55.if.end59_crit_edge

land.lhs.true55.if.end59_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then58:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 10, ptr noundef %flags.i) #11
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %land.lhs.true55.if.end59_crit_edge, %if.end50.if.end59_crit_edge
  %call60 = call zeroext i1 @f2fs_may_inline_dentry(ptr noundef nonnull %call1) #11
  br i1 %call60, label %if.then61, label %if.end59.if.end62_crit_edge

if.end59.if.end62_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 11, ptr noundef %flags.i) #11
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end59.if.end62_crit_edge
  %42 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %raw_super.i, align 8
  %feature.i264 = getelementptr inbounds %struct.f2fs_super_block, ptr %43, i32 0, i32 34
  %44 = ptrtoint ptr %feature.i264 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %feature.i264, align 1
  %46 = and i32 %45, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool64.not = icmp eq i32 %46, 0
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flags.i, align 4
  br i1 %tobool64.not, label %if.else84, label %do.body

do.body:                                          ; preds = %if.end62
  %49 = and i32 %48, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool67.not = icmp eq i32 %49, 0
  br i1 %tobool67.not, label %do.body72, label %do.end78, !prof !52

do.body72:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 100, 0\0A.popsection", ""() #11, !srcloc !65
  unreachable

do.end78:                                         ; preds = %do.body
  %50 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %flags.i, align 4
  %52 = and i32 %51, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool80.not = icmp eq i32 %52, 0
  br i1 %tobool80.not, label %do.end78.if.end91_crit_edge, label %if.then81

do.end78.if.end91_crit_edge:                      ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.then81:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #13
  %inline_xattr_size = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 73, i32 6
  %53 = ptrtoint ptr %inline_xattr_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %inline_xattr_size, align 8
  br label %if.end91

if.else84:                                        ; preds = %if.end62
  %55 = and i32 %48, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool86.not = icmp eq i32 %55, 0
  br i1 %tobool86.not, label %lor.lhs.false, label %if.else84.if.then89_crit_edge

if.else84.if.then89_crit_edge:                    ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then89

lor.lhs.false:                                    ; preds = %if.else84
  %56 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %flags.i, align 4
  %58 = and i32 %57, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool88.not = icmp eq i32 %58, 0
  br i1 %tobool88.not, label %lor.lhs.false.if.end91_crit_edge, label %lor.lhs.false.if.then89_crit_edge

lor.lhs.false.if.then89_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then89

lor.lhs.false.if.end91_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.then89:                                        ; preds = %lor.lhs.false.if.then89_crit_edge, %if.else84.if.then89_crit_edge
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %lor.lhs.false.if.end91_crit_edge, %if.then81, %do.end78.if.end91_crit_edge
  %xattr_size.0 = phi i32 [ %54, %if.then81 ], [ 0, %do.end78.if.end91_crit_edge ], [ 50, %if.then89 ], [ 0, %lor.lhs.false.if.end91_crit_edge ]
  %i_inline_xattr_size = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 31
  %59 = ptrtoint ptr %i_inline_xattr_size to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %xattr_size.0, ptr %i_inline_xattr_size, align 4
  call void @f2fs_init_extent_tree(ptr noundef nonnull %call1, ptr noundef null) #11
  %60 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %flags.i, align 4
  %62 = and i32 %61, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool95.not = icmp eq i32 %62, 0
  br i1 %tobool95.not, label %if.end91.do.body101_crit_edge, label %if.then96

if.end91.do.body101_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body101

if.then96:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  %i_sb.i279 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 8
  %63 = ptrtoint ptr %i_sb.i279 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i_sb.i279, align 4
  %s_fs_info.i.i280 = getelementptr inbounds %struct.super_block, ptr %64, i32 0, i32 33
  %65 = ptrtoint ptr %s_fs_info.i.i280 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_fs_info.i.i280, align 16
  %inline_xattr = getelementptr inbounds %struct.f2fs_sb_info, ptr %66, i32 0, i32 99
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %inline_xattr, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %inline_xattr, i32 1, i32 3, i32 1) #11
  %67 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inline_xattr, ptr %inline_xattr, i32 1, ptr elementtype(i32) %inline_xattr) #11, !srcloc !66
  br label %do.body101

do.body101:                                       ; preds = %if.then96, %if.end91.do.body101_crit_edge
  %68 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %flags.i, align 4
  %70 = and i32 %69, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool103.not = icmp eq i32 %70, 0
  br i1 %tobool103.not, label %do.body101.do.body109_crit_edge, label %if.then104

do.body101.do.body109_crit_edge:                  ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body109

if.then104:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #13
  %i_sb.i284 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 8
  %71 = ptrtoint ptr %i_sb.i284 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i_sb.i284, align 4
  %s_fs_info.i.i285 = getelementptr inbounds %struct.super_block, ptr %72, i32 0, i32 33
  %73 = ptrtoint ptr %s_fs_info.i.i285 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %s_fs_info.i.i285, align 16
  %inline_inode = getelementptr inbounds %struct.f2fs_sb_info, ptr %74, i32 0, i32 100
  %call.i.i251 = call zeroext i1 @__kasan_check_write(ptr noundef %inline_inode, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %inline_inode, i32 1, i32 3, i32 1) #11
  %75 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inline_inode, ptr %inline_inode, i32 1, ptr elementtype(i32) %inline_inode) #11, !srcloc !66
  br label %do.body109

do.body109:                                       ; preds = %if.then104, %do.body101.do.body109_crit_edge
  %76 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %flags.i, align 4
  %78 = and i32 %77, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool111.not = icmp eq i32 %78, 0
  br i1 %tobool111.not, label %do.body109.do.end116_crit_edge, label %if.then112

do.body109.do.end116_crit_edge:                   ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end116

if.then112:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #13
  %i_sb.i289 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 8
  %79 = ptrtoint ptr %i_sb.i289 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %i_sb.i289, align 4
  %s_fs_info.i.i290 = getelementptr inbounds %struct.super_block, ptr %80, i32 0, i32 33
  %81 = ptrtoint ptr %s_fs_info.i.i290 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %s_fs_info.i.i290, align 16
  %inline_dir = getelementptr inbounds %struct.f2fs_sb_info, ptr %82, i32 0, i32 101
  %call.i.i252 = call zeroext i1 @__kasan_check_write(ptr noundef %inline_dir, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %inline_dir, i32 1, i32 3, i32 1) #11
  %83 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inline_dir, ptr %inline_dir, i32 1, ptr elementtype(i32) %inline_dir) #11, !srcloc !66
  br label %do.end116

do.end116:                                        ; preds = %if.then112, %do.body109.do.end116_crit_edge
  %i_flags118 = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 1
  %84 = ptrtoint ptr %i_flags118 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %i_flags118, align 8
  %and119 = and i32 %85, 1610679500
  %86 = and i16 %mode, -4096
  %87 = zext i16 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %86, label %if.else8.i [
    i16 16384, label %do.end116.f2fs_mask_flags.exit_crit_edge
    i16 -32768, label %if.then6.i
  ]

do.end116.f2fs_mask_flags.exit_crit_edge:         ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #13
  br label %f2fs_mask_flags.exit

if.then6.i:                                       ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #13
  %and7.i = and i32 %85, 1228
  br label %f2fs_mask_flags.exit

if.else8.i:                                       ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #13
  %and9.i = and i32 %85, 192
  br label %f2fs_mask_flags.exit

f2fs_mask_flags.exit:                             ; preds = %if.else8.i, %if.then6.i, %do.end116.f2fs_mask_flags.exit_crit_edge
  %retval.0.i = phi i32 [ %and7.i, %if.then6.i ], [ %and9.i, %if.else8.i ], [ %and119, %do.end116.f2fs_mask_flags.exit_crit_edge ]
  %i_flags122 = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 1
  %88 = ptrtoint ptr %i_flags122 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %retval.0.i, ptr %i_flags122, align 8
  %89 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %call1, align 8
  %91 = and i16 %90, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %91)
  %cmp126 = icmp eq i16 %91, 16384
  br i1 %cmp126, label %if.then128, label %f2fs_mask_flags.exit.if.end131_crit_edge

f2fs_mask_flags.exit.if.end131_crit_edge:         ; preds = %f2fs_mask_flags.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131

if.then128:                                       ; preds = %f2fs_mask_flags.exit
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %retval.0.i, 4096
  %92 = ptrtoint ptr %i_flags122 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %or, ptr %i_flags122, align 8
  br label %if.end131

if.end131:                                        ; preds = %if.then128, %f2fs_mask_flags.exit.if.end131_crit_edge
  %93 = ptrtoint ptr %i_flags122 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %i_flags122, align 8
  %and134 = and i32 %94, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.end131.if.end137_crit_edge, label %if.then136

if.end131.if.end137_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end137

if.then136:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 27, ptr noundef %flags.i) #11
  br label %if.end137

if.end137:                                        ; preds = %if.then136, %if.end131.if.end137_crit_edge
  %95 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %raw_super.i, align 8
  %feature.i293 = getelementptr inbounds %struct.f2fs_super_block, ptr %96, i32 0, i32 34
  %97 = ptrtoint ptr %feature.i293 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %feature.i293, align 1
  %99 = and i32 %98, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool139.not = icmp eq i32 %99, 0
  br i1 %tobool139.not, label %if.end137.if.end150_crit_edge, label %if.then140

if.end137.if.end150_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end150

if.then140:                                       ; preds = %if.end137
  %100 = ptrtoint ptr %i_flags118 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %i_flags118, align 8
  %and143 = and i32 %101, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.then140.if.end150_crit_edge, label %land.lhs.true145

if.then140.if.end150_crit_edge:                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end150

land.lhs.true145:                                 ; preds = %if.then140
  %call146 = call fastcc zeroext i1 @f2fs_may_compress(ptr noundef nonnull %call1)
  br i1 %call146, label %if.then148, label %land.lhs.true145.if.end150_crit_edge

land.lhs.true145.if.end150_crit_edge:             ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end150

if.then148:                                       ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @set_compress_context(ptr noundef nonnull %call1)
  br label %if.end150

if.end150:                                        ; preds = %if.then148, %land.lhs.true145.if.end150_crit_edge, %if.then140.if.end150_crit_edge, %if.end137.if.end150_crit_edge
  call void @f2fs_set_inode_flags(ptr noundef nonnull %call1) #11
  call fastcc void @trace_f2fs_new_inode(ptr noundef nonnull %call1, i32 noundef 0)
  br label %cleanup

fail:                                             ; preds = %if.end12.fail_crit_edge, %if.end.fail_crit_edge
  %err.0 = phi i32 [ -22, %if.end12.fail_crit_edge ], [ -28, %if.end.fail_crit_edge ]
  call fastcc void @trace_f2fs_new_inode(ptr noundef nonnull %call1, i32 noundef %err.0)
  call void @make_bad_inode(ptr noundef nonnull %call1) #11
  br i1 %call3, label %if.then152, label %fail.if.end153_crit_edge

fail.if.end153_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end153

if.then152:                                       ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #13
  %flags.i296 = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 8
  call void @_set_bit(i32 noundef 7, ptr noundef %flags.i296) #11
  br label %if.end153

if.end153:                                        ; preds = %if.then152, %fail.if.end153_crit_edge
  call void @iput(ptr noundef nonnull %call1) #11
  %102 = inttoptr i32 %err.0 to ptr
  br label %cleanup

fail_drop:                                        ; preds = %if.end34.fail_drop_crit_edge, %if.end30.fail_drop_crit_edge
  %err.1 = phi i32 [ %call31, %if.end30.fail_drop_crit_edge ], [ %call35, %if.end34.fail_drop_crit_edge ]
  call fastcc void @trace_f2fs_new_inode(ptr noundef nonnull %call1, i32 noundef %err.1)
  call void @dquot_drop(ptr noundef nonnull %call1) #11
  %i_flags155 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 4
  %103 = ptrtoint ptr %i_flags155 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %i_flags155, align 4
  %or156 = or i32 %104, 32
  store i32 %or156, ptr %i_flags155, align 4
  %flags.i297 = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 8
  call void @_set_bit(i32 noundef 7, ptr noundef %flags.i297) #11
  call void @clear_nlink(ptr noundef nonnull %call1) #11
  call void @unlock_new_inode(ptr noundef nonnull %call1) #11
  call void @iput(ptr noundef nonnull %call1) #11
  %105 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %fail_drop, %if.end153, %if.end150, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %102, %if.end153 ], [ %105, %fail_drop ], [ %call1, %if.end150 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %encrypt) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ino) #11
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @f2fs_add_link(ptr noundef %dentry, ptr noundef %inode) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dentry, align 8
  %and.i = and i32 %1, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %2 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  %8 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %inode, align 8
  %call2 = tail call i32 @f2fs_do_add_link(ptr noundef %5, ptr noundef %d_name, ptr noundef %inode, i32 noundef %7, i16 noundef zeroext %9) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -126, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_alloc_nid_done(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate_new(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_sync_fs(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_handle_failed_inode(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @has_not_enough_free_secs(ptr noundef %sbi) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %segs_per_sec.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 52
  %0 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %segs_per_sec.i, align 8
  %blocks_per_seg.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 51
  %2 = ptrtoint ptr %blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blocks_per_seg.i, align 4
  %mul.i = mul i32 %3, %1
  %arrayidx.i.i = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 69, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i, i32 noundef 4) #11
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i.i, align 4
  %conv.i.i = sext i32 %5 to i64
  %conv.i = zext i32 %mul.i to i64
  %add.i = add nsw i64 %conv.i, -1
  %sub.i = add nsw i64 %add.i, %conv.i.i
  %log_blocks_per_seg.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 50
  %6 = ptrtoint ptr %log_blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %log_blocks_per_seg.i, align 8
  %sh_prom.i = zext i32 %7 to i64
  %shr.i = ashr i64 %sub.i, %sh_prom.i
  %conv1.i = trunc i64 %shr.i to i32
  %8 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %segs_per_sec.i, align 8
  %div.i = udiv i32 %conv1.i, %9
  %10 = ptrtoint ptr %blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %blocks_per_seg.i, align 4
  %mul.i3 = mul i32 %11, %9
  %arrayidx.i.i4 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 69, i32 0
  %call.i.i.i.i5 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i4, i32 noundef 4) #11
  %12 = ptrtoint ptr %arrayidx.i.i4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i4, align 4
  %conv.i.i6 = sext i32 %13 to i64
  %conv.i7 = zext i32 %mul.i3 to i64
  %add.i8 = add nsw i64 %conv.i7, -1
  %sub.i9 = add nsw i64 %add.i8, %conv.i.i6
  %14 = ptrtoint ptr %log_blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %log_blocks_per_seg.i, align 8
  %sh_prom.i11 = zext i32 %15 to i64
  %shr.i12 = ashr i64 %sub.i9, %sh_prom.i11
  %conv1.i13 = trunc i64 %shr.i12 to i32
  %16 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %segs_per_sec.i, align 8
  %div.i14 = udiv i32 %conv1.i13, %17
  %18 = ptrtoint ptr %blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blocks_per_seg.i, align 4
  %mul.i17 = mul i32 %19, %17
  %arrayidx.i.i18 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 69, i32 6
  %call.i.i.i.i19 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i18, i32 noundef 4) #11
  %20 = ptrtoint ptr %arrayidx.i.i18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx.i.i18, align 4
  %conv.i.i20 = sext i32 %21 to i64
  %conv.i21 = zext i32 %mul.i17 to i64
  %add.i22 = add nsw i64 %conv.i21, -1
  %sub.i23 = add nsw i64 %add.i22, %conv.i.i20
  %22 = ptrtoint ptr %log_blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %log_blocks_per_seg.i, align 8
  %sh_prom.i25 = zext i32 %23 to i64
  %shr.i26 = ashr i64 %sub.i23, %sh_prom.i25
  %conv1.i27 = trunc i64 %shr.i26 to i32
  %24 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %segs_per_sec.i, align 8
  %div.i28 = udiv i32 %conv1.i27, %25
  %s_flag.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 5
  %26 = ptrtoint ptr %s_flag.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %s_flag.i, align 4
  %28 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not = icmp eq i32 %28, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge, !prof !51

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %sm_info.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %29 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sm_info.i.i.i, align 8
  %free_info.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %free_info.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %free_info.i.i, align 4
  %free_sections.i = getelementptr inbounds %struct.free_segmap_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %free_sections.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %free_sections.i, align 4
  %reserved_segments.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %30, i32 0, i32 10
  %35 = ptrtoint ptr %reserved_segments.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reserved_segments.i.i, align 4
  %additional_reserved_segments.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %30, i32 0, i32 11
  %37 = ptrtoint ptr %additional_reserved_segments.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %additional_reserved_segments.i.i, align 4
  %add.i.i = add i32 %38, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i.i)
  %cmp.i = icmp eq i32 %add.i.i, -1
  br i1 %cmp.i, label %if.end.reserved_sections.exit_crit_edge, label %cond.false.i

if.end.reserved_sections.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %reserved_sections.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %div.i31 = udiv i32 %add.i.i, %25
  br label %reserved_sections.exit

reserved_sections.exit:                           ; preds = %cond.false.i, %if.end.reserved_sections.exit_crit_edge
  %cond.i = phi i32 [ %div.i31, %cond.false.i ], [ -1, %if.end.reserved_sections.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %cond.i)
  %cmp = icmp eq i32 %34, %cond.i
  br i1 %cmp, label %land.lhs.true, label %reserved_sections.exit.if.end10_crit_edge

reserved_sections.exit.if.end10_crit_edge:        ; preds = %reserved_sections.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

land.lhs.true:                                    ; preds = %reserved_sections.exit
  %call.i.i.i.i33 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i, i32 noundef 4) #11
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %arrayidx.i.i, align 4
  %call.i.i.i42.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i4, i32 noundef 4) #11
  %41 = ptrtoint ptr %arrayidx.i.i4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %arrayidx.i.i4, align 4
  %add.i34 = add i32 %42, %40
  %call.i.i.i45.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i4, i32 noundef 4) #11
  %43 = ptrtoint ptr %arrayidx.i.i4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %arrayidx.i.i4, align 4
  %45 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sm_info.i.i.i, align 8
  %curseg_array.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %curseg_array.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %curseg_array.i.i, align 4
  %segno6.i = getelementptr %struct.curseg_info, ptr %48, i32 3, i32 6
  %49 = ptrtoint ptr %segno6.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %segno6.i, align 4
  %call7.i = tail call i32 @f2fs_usable_blks_in_seg(ptr noundef %sbi, i32 noundef %50) #11
  %51 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sm_info.i.i.i, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %sentries.i.i = getelementptr inbounds %struct.sit_info, ptr %54, i32 0, i32 14
  %55 = ptrtoint ptr %sentries.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sentries.i.i, align 4
  %arrayidx.i47.i = getelementptr %struct.seg_entry, ptr %56, i32 %50
  %57 = ptrtoint ptr %arrayidx.i47.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %bf.load.i = load i32, ptr %arrayidx.i47.i, align 8
  %bf.lshr.i = lshr i32 %bf.load.i, 6
  %bf.clear.i = and i32 %bf.lshr.i, 1023
  %sub.i36 = sub i32 %call7.i, %bf.clear.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i36, i32 %add.i34)
  %cmp9.i = icmp ult i32 %sub.i36, %add.i34
  br i1 %cmp9.i, label %land.lhs.true.if.end10_crit_edge, label %for.cond.i

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

for.cond.i:                                       ; preds = %land.lhs.true
  %curseg_array.i.1.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %52, i32 0, i32 3
  %58 = ptrtoint ptr %curseg_array.i.1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %curseg_array.i.1.i, align 4
  %segno6.1.i = getelementptr %struct.curseg_info, ptr %59, i32 4, i32 6
  %60 = ptrtoint ptr %segno6.1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %segno6.1.i, align 4
  %call7.1.i = tail call i32 @f2fs_usable_blks_in_seg(ptr noundef %sbi, i32 noundef %61) #11
  %62 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sm_info.i.i.i, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %sentries.i.1.i = getelementptr inbounds %struct.sit_info, ptr %65, i32 0, i32 14
  %66 = ptrtoint ptr %sentries.i.1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sentries.i.1.i, align 4
  %arrayidx.i47.1.i = getelementptr %struct.seg_entry, ptr %67, i32 %61
  %68 = ptrtoint ptr %arrayidx.i47.1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %bf.load.1.i = load i32, ptr %arrayidx.i47.1.i, align 8
  %bf.lshr.1.i = lshr i32 %bf.load.1.i, 6
  %bf.clear.1.i = and i32 %bf.lshr.1.i, 1023
  %sub.1.i = sub i32 %call7.1.i, %bf.clear.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1.i, i32 %add.i34)
  %cmp9.1.i = icmp ult i32 %sub.1.i, %add.i34
  br i1 %cmp9.1.i, label %for.cond.i.if.end10_crit_edge, label %for.cond.1.i

for.cond.i.if.end10_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

for.cond.1.i:                                     ; preds = %for.cond.i
  %curseg_array.i.2.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %63, i32 0, i32 3
  %69 = ptrtoint ptr %curseg_array.i.2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %curseg_array.i.2.i, align 4
  %segno6.2.i = getelementptr %struct.curseg_info, ptr %70, i32 5, i32 6
  %71 = ptrtoint ptr %segno6.2.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %segno6.2.i, align 4
  %call7.2.i = tail call i32 @f2fs_usable_blks_in_seg(ptr noundef %sbi, i32 noundef %72) #11
  %73 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sm_info.i.i.i, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %sentries.i.2.i = getelementptr inbounds %struct.sit_info, ptr %76, i32 0, i32 14
  %77 = ptrtoint ptr %sentries.i.2.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sentries.i.2.i, align 4
  %arrayidx.i47.2.i = getelementptr %struct.seg_entry, ptr %78, i32 %72
  %79 = ptrtoint ptr %arrayidx.i47.2.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %bf.load.2.i = load i32, ptr %arrayidx.i47.2.i, align 8
  %bf.lshr.2.i = lshr i32 %bf.load.2.i, 6
  %bf.clear.2.i = and i32 %bf.lshr.2.i, 1023
  %sub.2.i = sub i32 %call7.2.i, %bf.clear.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.2.i, i32 %add.i34)
  %cmp9.2.i = icmp ult i32 %sub.2.i, %add.i34
  br i1 %cmp9.2.i, label %for.cond.1.i.if.end10_crit_edge, label %has_curseg_enough_space.exit

for.cond.1.i.if.end10_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

has_curseg_enough_space.exit:                     ; preds = %for.cond.1.i
  %curseg_array.i49.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %74, i32 0, i32 3
  %80 = ptrtoint ptr %curseg_array.i49.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %curseg_array.i49.i, align 4
  %segno12.i = getelementptr inbounds %struct.curseg_info, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %segno12.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %segno12.i, align 4
  %call13.i = tail call i32 @f2fs_usable_blks_in_seg(ptr noundef %sbi, i32 noundef %83) #11
  %84 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sm_info.i.i.i, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %sentries.i51.i = getelementptr inbounds %struct.sit_info, ptr %87, i32 0, i32 14
  %88 = ptrtoint ptr %sentries.i51.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sentries.i51.i, align 4
  %arrayidx.i52.i = getelementptr %struct.seg_entry, ptr %89, i32 %83
  %90 = ptrtoint ptr %arrayidx.i52.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %bf.load15.i = load i32, ptr %arrayidx.i52.i, align 8
  %bf.lshr16.i = lshr i32 %bf.load15.i, 6
  %bf.clear17.i = and i32 %bf.lshr16.i, 1023
  %sub18.i = sub i32 %call13.i, %bf.clear17.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub18.i, i32 %44)
  %cmp19.i.not = icmp ult i32 %sub18.i, %44
  br i1 %cmp19.i.not, label %has_curseg_enough_space.exit.if.end10_crit_edge, label %has_curseg_enough_space.exit.cleanup_crit_edge

has_curseg_enough_space.exit.cleanup_crit_edge:   ; preds = %has_curseg_enough_space.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

has_curseg_enough_space.exit.if.end10_crit_edge:  ; preds = %has_curseg_enough_space.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end10:                                         ; preds = %has_curseg_enough_space.exit.if.end10_crit_edge, %for.cond.1.i.if.end10_crit_edge, %for.cond.i.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %reserved_sections.exit.if.end10_crit_edge
  %91 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %sm_info.i.i.i, align 8
  %free_info.i.i38 = getelementptr inbounds %struct.f2fs_sm_info, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %free_info.i.i38 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %free_info.i.i38, align 4
  %free_sections.i39 = getelementptr inbounds %struct.free_segmap_info, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %free_sections.i39 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %free_sections.i39, align 4
  %mul = shl i32 %div.i14, 1
  %add13 = add i32 %mul, %div.i
  %add14 = add i32 %add13, %div.i28
  %reserved_segments.i.i41 = getelementptr inbounds %struct.f2fs_sm_info, ptr %92, i32 0, i32 10
  %97 = ptrtoint ptr %reserved_segments.i.i41 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %reserved_segments.i.i41, align 4
  %additional_reserved_segments.i.i42 = getelementptr inbounds %struct.f2fs_sm_info, ptr %92, i32 0, i32 11
  %99 = ptrtoint ptr %additional_reserved_segments.i.i42 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %additional_reserved_segments.i.i42, align 4
  %add.i.i43 = add i32 %100, %98
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i.i43)
  %cmp.i44 = icmp eq i32 %add.i.i43, -1
  br i1 %cmp.i44, label %if.end10.reserved_sections.exit49_crit_edge, label %cond.false.i47

if.end10.reserved_sections.exit49_crit_edge:      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %reserved_sections.exit49

cond.false.i47:                                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %101 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %segs_per_sec.i, align 8
  %div.i46 = udiv i32 %add.i.i43, %102
  br label %reserved_sections.exit49

reserved_sections.exit49:                         ; preds = %cond.false.i47, %if.end10.reserved_sections.exit49_crit_edge
  %cond.i48 = phi i32 [ %div.i46, %cond.false.i47 ], [ -1, %if.end10.reserved_sections.exit49_crit_edge ]
  %add16 = add i32 %add14, %cond.i48
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %add16)
  %cmp18 = icmp ule i32 %96, %add16
  br label %cleanup

cleanup:                                          ; preds = %reserved_sections.exit49, %has_curseg_enough_space.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp18, %reserved_sections.exit49 ], [ false, %entry.cleanup_crit_edge ], [ false, %has_curseg_enough_space.exit.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_usable_blks_in_seg(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @f2fs_alloc_nid(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @insert_inode_locked(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kprojid(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_prepare_new_inode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f2fs_set_encrypted_inode(ptr noundef %inode) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %i_advise.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 2
  %0 = ptrtoint ptr %i_advise.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_advise.i.i, align 4
  %2 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.set_file.exit_crit_edge

entry.set_file.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_file.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv2.i = or i8 %1, 4
  %3 = ptrtoint ptr %i_advise.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv2.i, ptr %i_advise.i.i, align 4
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext true) #11
  br label %set_file.exit

set_file.exit:                                    ; preds = %if.end.i, %entry.set_file.exit_crit_edge
  tail call void @f2fs_set_inode_flags(ptr noundef %inode) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @f2fs_may_inline_data(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @f2fs_may_inline_dentry(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_init_extent_tree(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @f2fs_may_compress(ptr noundef %inode) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i.i, align 4
  %4 = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %lor.lhs.false1, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i.i, align 4
  %7 = and i32 %6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i18.not = icmp eq i32 %7, 0
  br i1 %tobool.i18.not, label %lor.lhs.false3, label %lor.lhs.false1.return_crit_edge

lor.lhs.false1.return_crit_edge:                  ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false3:                                   ; preds = %lor.lhs.false1
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i.i, align 4
  %10 = and i32 %9, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i20.not = icmp eq i32 %10, 0
  br i1 %tobool.i20.not, label %if.end, label %lor.lhs.false3.return_crit_edge

lor.lhs.false3.return_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %inode, align 8
  %13 = and i16 %12, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %13)
  %cmp = icmp eq i16 %13, -32768
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %13)
  %cmp10 = icmp eq i16 %13, 16384
  %spec.select = or i1 %cmp, %cmp10
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false3.return_crit_edge, %lor.lhs.false1.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %spec.select, %if.end ], [ false, %lor.lhs.false3.return_crit_edge ], [ false, %lor.lhs.false1.return_crit_edge ], [ false, %lor.lhs.false.return_crit_edge ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_compress_context(ptr noundef %inode) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %compress_algorithm = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 73, i32 19
  %4 = ptrtoint ptr %compress_algorithm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %compress_algorithm, align 4
  %i_compress_algorithm = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 35
  %6 = ptrtoint ptr %i_compress_algorithm to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %i_compress_algorithm, align 4
  %compress_log_size = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 73, i32 20
  %7 = ptrtoint ptr %compress_log_size to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %compress_log_size, align 1
  %i_log_cluster_size = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 36
  %9 = ptrtoint ptr %i_log_cluster_size to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %i_log_cluster_size, align 1
  %compress_chksum = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 73, i32 22
  %10 = ptrtoint ptr %compress_chksum to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %compress_chksum, align 1, !range !64
  %12 = zext i8 %11 to i16
  %i_compress_flag = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 38
  %13 = ptrtoint ptr %i_compress_flag to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %i_compress_flag, align 8
  %conv8 = zext i8 %8 to i32
  %shl = shl nuw i32 1, %conv8
  %i_cluster_size = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 39
  %14 = ptrtoint ptr %i_cluster_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shl, ptr %i_cluster_size, align 4
  %.off = add i8 %5, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %compress_level = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 73, i32 21
  %15 = ptrtoint ptr %compress_level to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %compress_level, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool21.not = icmp eq i8 %16, 0
  br i1 %tobool21.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %conv20 = zext i8 %16 to i16
  %shl25 = shl nuw i16 %conv20, 8
  %or = or i16 %shl25, %12
  %17 = ptrtoint ptr %i_compress_flag to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %or, ptr %i_compress_flag, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %i_flags = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 1
  %18 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_flags, align 8
  %or31 = or i32 %19, 4
  store i32 %or31, ptr %i_flags, align 8
  %flags.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 31, ptr noundef %flags.i) #11
  %20 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %inode, align 8
  %22 = and i16 %21, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %22)
  %cmp.i = icmp eq i16 %22, -32768
  br i1 %cmp.i, label %f2fs_compressed_file.exit, label %if.end.do.body37_crit_edge

if.end.do.body37_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body37

f2fs_compressed_file.exit:                        ; preds = %if.end
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %tobool33.not = icmp sgt i32 %24, -1
  br i1 %tobool33.not, label %f2fs_compressed_file.exit.do.body37_crit_edge, label %if.then34

f2fs_compressed_file.exit.do.body37_crit_edge:    ; preds = %f2fs_compressed_file.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body37

if.then34:                                        ; preds = %f2fs_compressed_file.exit
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i61 = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 33
  %27 = ptrtoint ptr %s_fs_info.i.i61 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i.i61, align 16
  %compr_inode = getelementptr inbounds %struct.f2fs_sb_info, ptr %28, i32 0, i32 102
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %compr_inode, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %compr_inode, i32 1, i32 3, i32 1) #11
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %compr_inode, ptr %compr_inode, i32 1, ptr elementtype(i32) %compr_inode) #11, !srcloc !66
  br label %do.body37

do.body37:                                        ; preds = %if.then34, %f2fs_compressed_file.exit.do.body37_crit_edge, %if.end.do.body37_crit_edge
  %30 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i63 = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 33
  %32 = ptrtoint ptr %s_fs_info.i.i63 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_fs_info.i.i63, align 16
  %compr_new_inode = getelementptr inbounds %struct.f2fs_sb_info, ptr %33, i32 0, i32 143
  %34 = ptrtoint ptr %compr_new_inode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %compr_new_inode, align 8
  %inc = add i32 %35, 1
  store i32 %inc, ptr %compr_new_inode, align 8
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext true) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_set_inode_flags(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_new_inode(ptr noundef %inode, i32 noundef %ret) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_new_inode, i32 0, i32 1), ptr blockaddress(@trace_f2fs_new_inode, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !57

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !40) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !51

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !40) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !67
  %call42 = tail call i32 @__traceiter_f2fs_new_inode(ptr noundef null, ptr noundef %inode, i32 noundef %ret) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !68
  %13 = tail call i32 @llvm.read_register.i32(metadata !40) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !40) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !51

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !40) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_new_inode, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_new_inode, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_f2fs_new_inode.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_f2fs_new_inode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 320, ptr noundef nonnull @.str.3) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !61
  %31 = tail call i32 @llvm.read_register.i32(metadata !40) #11
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dquot_drop(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_new_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f2fs_disable_compressed_file(ptr noundef %inode) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %2)
  %cmp.i = icmp eq i16 %2, -32768
  br i1 %cmp.i, label %f2fs_compressed_file.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

f2fs_compressed_file.exit:                        ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool.not = icmp sgt i32 %4, -1
  br i1 %tobool.not, label %f2fs_compressed_file.exit.cleanup_crit_edge, label %land.lhs.true

f2fs_compressed_file.exit.cleanup_crit_edge:      ; preds = %f2fs_compressed_file.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %f2fs_compressed_file.exit
  %i_xattr_nid.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 15
  %5 = ptrtoint ptr %i_xattr_nid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_xattr_nid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp ne i32 %6, 0
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %7 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_blocks.i, align 8
  %shr.i = lshr i64 %8, 3
  %conv.i = zext i1 %tobool.not.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i, i64 %conv.i)
  %cmp.i1.not = icmp ugt i64 %shr.i, %conv.i
  br i1 %cmp.i1.not, label %land.lhs.true.cleanup_crit_edge, label %f2fs_compressed_file.exit6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

f2fs_compressed_file.exit6:                       ; preds = %land.lhs.true
  %i_flags = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 1
  %9 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_flags, align 8
  %and7 = and i32 %10, -5
  store i32 %and7, ptr %i_flags, align 8
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool9.not = icmp sgt i32 %12, -1
  br i1 %tobool9.not, label %f2fs_compressed_file.exit6.do.end_crit_edge, label %if.then10

f2fs_compressed_file.exit6.do.end_crit_edge:      ; preds = %f2fs_compressed_file.exit6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then10:                                        ; preds = %f2fs_compressed_file.exit6
  call void @__sanitizer_cov_trace_pc() #13
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %13 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i.i, align 16
  %compr_inode = getelementptr inbounds %struct.f2fs_sb_info, ptr %16, i32 0, i32 102
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %compr_inode, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %compr_inode, i32 1, i32 3, i32 1) #11
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %compr_inode, ptr %compr_inode, i32 1, ptr elementtype(i32) %compr_inode) #11, !srcloc !69
  br label %do.end

do.end:                                           ; preds = %if.then10, %f2fs_compressed_file.exit6.do.end_crit_edge
  tail call void @_clear_bit(i32 noundef 31, ptr noundef %flags.i.i) #11
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext true) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %land.lhs.true.cleanup_crit_edge, %f2fs_compressed_file.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fscrypt_prepare_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_unlink_enter(ptr noundef %dir, ptr noundef %dentry) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_unlink_enter, i32 0, i32 1), ptr blockaddress(@trace_f2fs_unlink_enter, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !57

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !40) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !51

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !40) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !70
  %call42 = tail call i32 @__traceiter_f2fs_unlink_enter(ptr noundef null, ptr noundef %dir, ptr noundef %dentry) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !71
  %13 = tail call i32 @llvm.read_register.i32(metadata !40) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !40) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !51

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !40) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_unlink_enter, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_unlink_enter, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_f2fs_unlink_enter.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_f2fs_unlink_enter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 350, ptr noundef nonnull @.str.3) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !61
  %31 = tail call i32 @llvm.read_register.i32(metadata !40) #11
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_acquire_orphan_inode(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_delete_entry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_invalidate(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_unlink_exit(ptr noundef %inode, i32 noundef %ret) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_unlink_exit, i32 0, i32 1), ptr blockaddress(@trace_f2fs_unlink_exit, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !57

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !40) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !51

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !40) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !72
  %call42 = tail call i32 @__traceiter_f2fs_unlink_exit(ptr noundef null, ptr noundef %inode, i32 noundef %ret) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !73
  %13 = tail call i32 @llvm.read_register.i32(metadata !40) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !40) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !51

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !40) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_unlink_exit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_unlink_exit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_f2fs_unlink_exit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_f2fs_unlink_exit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 357, ptr noundef nonnull @.str.3) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !61
  %31 = tail call i32 @llvm.read_register.i32(metadata !40) #11
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_unlink_enter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_unlink_exit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_prepare_symlink(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @page_symlink(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fscrypt_encrypt_symlink(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @f2fs_empty_dir(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fscrypt_prepare_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_parent_dir(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_set_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f2fs_i_links_write(ptr noundef %inode, i1 noundef zeroext %inc) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br i1 %inc, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @inc_nlink(ptr noundef %inode) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @drop_nlink(ptr noundef %inode) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext true) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_add_ino_entry(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_try_convert_inline_dir(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_add_orphan_inode(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_release_orphan_inode(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__f2fs_tmpfile(ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, ptr noundef writeonly %whiteout) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %call1 = tail call i32 @f2fs_dquot_initialize(ptr noundef %dir) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc ptr @f2fs_new_inode(ptr noundef %dir, i16 noundef zeroext %mode)
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %tobool7.not = icmp eq ptr %whiteout, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %call2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %call2, align 8
  tail call void @init_special_inode(ptr noundef %call2, i16 noundef zeroext %6, i32 noundef 0) #11
  %i_op = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 7
  %7 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @f2fs_special_inode_operations, ptr %i_op, align 8
  br label %if.end10

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %i_op9 = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 7
  %8 = ptrtoint ptr %i_op9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @f2fs_file_inode_operations, ptr %i_op9, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 44
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @f2fs_file_operations, ptr %9, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 9
  %11 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @f2fs_dblock_aops, ptr %a_ops, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  %cp_rwsem.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 20
  tail call void @down_read(ptr noundef %cp_rwsem.i) #11
  %call11 = tail call i32 @f2fs_acquire_orphan_inode(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @f2fs_do_tmpfile(ptr noundef %call2, ptr noundef %dir) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %release_out

if.end18:                                         ; preds = %if.end14
  tail call void @f2fs_add_orphan_inode(ptr noundef %call2) #11
  %i_ino = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 11
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ino, align 8
  tail call void @f2fs_alloc_nid_done(ptr noundef %3, i32 noundef %15) #11
  br i1 %tobool7.not, label %if.else22, label %if.then20

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @drop_nlink(ptr noundef %call2) #11
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef %call2, i1 noundef zeroext true) #11
  %i_lock = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #11
  %i_state = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 24
  %16 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_state, align 8
  %or = or i32 %17, 1024
  store i32 %or, ptr %i_state, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #11
  %18 = ptrtoint ptr %whiteout to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call2, ptr %whiteout, align 4
  br label %if.end23

if.else22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @d_tmpfile(ptr noundef %dentry, ptr noundef %call2) #11
  br label %if.end23

if.end23:                                         ; preds = %if.else22, %if.then20
  tail call void @up_read(ptr noundef %cp_rwsem.i) #11
  tail call void @unlock_new_inode(ptr noundef %call2) #11
  tail call void @f2fs_balance_fs(ptr noundef %3, i1 noundef zeroext true) #11
  br label %cleanup

release_out:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @f2fs_release_orphan_inode(ptr noundef %3) #11
  br label %out

out:                                              ; preds = %release_out, %if.end10.out_crit_edge
  %err.0 = phi i32 [ %call11, %if.end10.out_crit_edge ], [ %call15, %release_out ]
  tail call void @f2fs_handle_failed_inode(ptr noundef %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end23, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then4 ], [ %err.0, %out ], [ 0, %if.end23 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_do_tmpfile(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_tmpfile(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_get_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !19, !20, !22, !24, !26, !28, !30, !31, !33, !34, !36, !37, !39}
!llvm.named.register.sp = !{!40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @f2fs_encrypted_symlink_inode_operations, !1, !"f2fs_encrypted_symlink_inode_operations", i1 false, i1 false}
!1 = !{!"../fs/f2fs/namei.c", i32 1336, i32 31}
!2 = !{ptr @f2fs_dir_inode_operations, !3, !"f2fs_dir_inode_operations", i1 false, i1 false}
!3 = !{!"../fs/f2fs/namei.c", i32 1343, i32 31}
!4 = !{ptr @f2fs_symlink_inode_operations, !5, !"f2fs_symlink_inode_operations", i1 false, i1 false}
!5 = !{!"../fs/f2fs/namei.c", i32 1364, i32 31}
!6 = !{ptr @f2fs_special_inode_operations, !7, !"f2fs_special_inode_operations", i1 false, i1 false}
!7 = !{!"../fs/f2fs/namei.c", i32 1371, i32 31}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/mm.h", i32 717, i32 2}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/f2fs/namei.c", i32 558, i32 3}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/trace/events/f2fs.h", i32 812, i32 1}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!16 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/f2fs/namei.c", i32 451, i32 20}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/f2fs/namei.c", i32 452, i32 23}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/f2fs/namei.c", i32 458, i32 3}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/trace/events/f2fs.h", i32 838, i32 1}
!30 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../include/trace/events/f2fs.h", i32 315, i32 1}
!33 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/trace/events/f2fs.h", i32 322, i32 1}
!36 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../include/trace/events/f2fs.h", i32 352, i32 1}
!39 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!40 = !{!"sp"}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"auto-init"}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i64 2153200288, i64 2153200771, i64 2153200325, i64 2153200381, i64 2153200415, i64 2153200439, i64 2153200480, i64 2153200501, i64 2153200529, i64 2153200563}
!54 = !{i64 2148771487}
!55 = !{i64 2148686196, i64 2148686228, i64 2148686257, i64 2148686291, i64 2148686322, i64 2148686345}
!56 = !{i64 2148771716}
!57 = !{i64 2148507609, i64 2148507614, i64 2148507627, i64 2148507671, i64 2148507705, i64 2148507726}
!58 = !{i64 2156055227}
!59 = !{i64 2156055460}
!60 = !{i64 2149504016}
!61 = !{i64 2149505052}
!62 = !{i64 2156072285}
!63 = !{i64 2156072520}
!64 = !{i8 0, i8 2}
!65 = !{i64 2156921456, i64 2156921936, i64 2156921493, i64 2156921549, i64 2156921583, i64 2156921607, i64 2156921648, i64 2156921669, i64 2156921697, i64 2156921731}
!66 = !{i64 2148683011, i64 2148683037, i64 2148683066, i64 2148683100, i64 2148683131, i64 2148683154}
!67 = !{i64 2155681661}
!68 = !{i64 2155681872}
!69 = !{i64 2148685476, i64 2148685502, i64 2148685531, i64 2148685565, i64 2148685596, i64 2148685619}
!70 = !{i64 2155698107}
!71 = !{i64 2155698326}
!72 = !{i64 2155714532}
!73 = !{i64 2155714747}
