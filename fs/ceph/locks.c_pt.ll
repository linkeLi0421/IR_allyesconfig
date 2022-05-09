; ModuleID = '/llk/IR_all_yes/fs/ceph/locks.c_pt.bc'
source_filename = "../fs/ceph/locks.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.file_lock_operations = type { ptr, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.104 }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.anon.104 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.101, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.102, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.103, ptr, %struct.address_space, %struct.list_head, %union.anon.106, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.101 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.102 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.103 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.106 = type { ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ceph_fs_client = type { ptr, %struct.list_head, ptr, ptr, i32, i8, i8, i32, i64, ptr, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ceph_file_info = type { i16, i16, %struct.spinlock, %struct.list_head, i32, %struct.atomic_t }
%struct.ceph_mds_request = type { i64, %struct.rb_node, ptr, %struct.kref, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ceph_vino, %struct.ceph_vino, ptr, ptr, i32, %struct.mutex, %union.ceph_mds_request_args, i32, ptr, i32, %struct.timespec64, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.ceph_mds_reply_info_parsed, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, i32, i64, %struct.list_head, %struct.completion, %struct.completion, ptr, ptr, %struct.list_head, i64, i64, i32, %struct.ceph_cap_reservation }
%struct.rb_node = type { i32, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ceph_vino = type { i64, i64 }
%union.ceph_mds_request_args = type { %struct.anon.140, [16 x i8] }
%struct.anon.140 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ceph_mds_reply_info_parsed = type { ptr, %struct.ceph_mds_reply_info_in, %struct.ceph_mds_reply_info_in, ptr, ptr, i32, ptr, %union.anon.145, ptr, i32 }
%struct.ceph_mds_reply_info_in = type { ptr, %struct.ceph_dir_layout, i32, ptr, i32, ptr, i64, i32, ptr, i32, ptr, i64, i64, i32, %struct.ceph_timespec, %struct.ceph_timespec, i64, i64 }
%struct.ceph_dir_layout = type { i8, i8, i16, i32 }
%struct.ceph_timespec = type { i32, i32 }
%union.anon.145 = type { %struct.anon.147, [8 x i8] }
%struct.anon.147 = type { i8, i64 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ceph_cap_reservation = type { i32, i32 }
%struct.anon.143 = type <{ i8, i8, i64, i64, i64, i64, i8 }>
%struct.ceph_filelock = type <{ i64, i64, i64, i64, i64, i8 }>
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.ceph_mds_client = type { ptr, %struct.mutex, ptr, %struct.completion, %struct.wait_queue_head, %struct.list_head, i32, ptr, %struct.atomic_t, i32, i32, %struct.atomic64_t, %struct.rb_root, %struct.mutex, i64, %struct.rw_semaphore, %struct.rb_root, %struct.list_head, i32, %struct.spinlock, i64, i64, %struct.rb_root, %struct.delayed_work, i32, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, i64, %struct.list_head, %struct.list_head, i32, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.ceph_client_metric, %struct.spinlock, %struct.rb_root, %struct.list_head, %struct.rw_semaphore, %struct.rb_root, [65 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ceph_client_metric = type { %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, [4 x %struct.ceph_metric], %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, ptr, %struct.delayed_work }
%struct.ceph_metric = type { %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }

@lock_secret = internal global { i64, [24 x i8] } zeroinitializer, align 32
@ceph_lock.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ceph\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ceph_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ceph/locks.c\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%.*s %12.12s:%-4d : ceph_lock, fl_owner: %p\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ceph: %.*s %12.12s:%-4d : ceph_lock, fl_owner: %p\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@ceph_lock.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%.*s %12.12s:%-4d : mds locked, locking locally\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ceph: %.*s %12.12s:%-4d : mds locked, locking locally\0A\00", [41 x i8] zeroinitializer }, align 32
@ceph_lock.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%.*s %12.12s:%-4d : got %d on posix_lock_file, undid lock\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"ceph: %.*s %12.12s:%-4d : got %d on posix_lock_file, undid lock\0A\00", [63 x i8] zeroinitializer }, align 32
@ceph_flock.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ceph_flock\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%.*s %12.12s:%-4d : ceph_flock, fl_file: %p\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ceph: %.*s %12.12s:%-4d : ceph_flock, fl_file: %p\0A\00", [45 x i8] zeroinitializer }, align 32
@ceph_flock.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.13, i8 0, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%.*s %12.12s:%-4d : got %d on locks_lock_file_wait, undid lock\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"ceph: %.*s %12.12s:%-4d : got %d on locks_lock_file_wait, undid lock\0A\00", [58 x i8] zeroinitializer }, align 32
@ceph_count_locks.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ceph_count_locks\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%.*s %12.12s:%-4d : counted %d flock locks and %d fcntl locks\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"ceph: %.*s %12.12s:%-4d : counted %d flock locks and %d fcntl locks\0A\00", [59 x i8] zeroinitializer }, align 32
@ceph_encode_locks_to_buffer.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ceph_encode_locks_to_buffer\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%.*s %12.12s:%-4d : encoding %d flock and %d fcntl locks\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"ceph: %.*s %12.12s:%-4d : encoding %d flock and %d fcntl locks\0A\00", [32 x i8] zeroinitializer }, align 32
@ceph_fl_lock_ops = internal constant { %struct.file_lock_operations, [24 x i8] } { %struct.file_lock_operations { ptr @ceph_fl_copy_lock, ptr @ceph_fl_release_lock }, [24 x i8] zeroinitializer }, align 32
@ceph_lock_message.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ceph_lock_message\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [128 x i8], [32 x i8] } { [128 x i8] c"%.*s %12.12s:%-4d : ceph_lock_message: rule: %d, op: %d, owner: %llx, pid: %llu, start: %llu, length: %llu, wait: %d, type: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [134 x i8], [58 x i8] } { [134 x i8] c"ceph: %.*s %12.12s:%-4d : ceph_lock_message: rule: %d, op: %d, owner: %llx, pid: %llu, start: %llu, length: %llu, wait: %d, type: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ceph_lock_message.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.24, i8 0, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [128 x i8], [32 x i8] } { [128 x i8] c"%.*s %12.12s:%-4d : ceph_lock_message: rule: %d, op: %d, pid: %llu, start: %llu, length: %llu, wait: %d, type: %d, err code %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [134 x i8], [58 x i8] } { [134 x i8] c"ceph: %.*s %12.12s:%-4d : ceph_lock_message: rule: %d, op: %d, pid: %llu, start: %llu, length: %llu, wait: %d, type: %d, err code %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ceph_lock_wait_for_completion.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ceph_lock_wait_for_completion\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%.*s %12.12s:%-4d : ceph_lock_wait_for_completion: request %llu was interrupted\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"ceph: %.*s %12.12s:%-4d : ceph_lock_wait_for_completion: request %llu was interrupted\0A\00", [41 x i8] zeroinitializer }, align 32
@lock_to_ceph_filelock.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lock_to_ceph_filelock\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%.*s %12.12s:%-4d : Have unknown lock type %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ceph: %.*s %12.12s:%-4d : Have unknown lock type %d\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 7, i64 12, i64 14]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.34 = private unnamed_addr constant [12 x i8] c"lock_secret\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 12, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 247, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 282, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 290, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 312, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 349, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 376, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 427, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"ceph_fl_lock_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 55, i32 42 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 101, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 137, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 164, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [19 x i8] c"../fs/ceph/locks.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 404, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @lock_secret, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @ceph_fl_lock_ops, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_secret to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_fl_lock_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 134, i32 192, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 134, i32 192, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_flock_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @get_random_bytes(ptr noundef nonnull @lock_secret, i32 noundef 8) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_lock(ptr noundef %file, i32 noundef %cmd, ptr noundef %fl) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %fl_flags = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 6
  %2 = ptrtoint ptr %fl_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fl_flags, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_ceph_flags.i = getelementptr i8, ptr %1, i32 -868
  %4 = ptrtoint ptr %i_ceph_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %i_ceph_flags.i, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i, align 16
  %mount_state.i = getelementptr inbounds %struct.ceph_fs_client, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %mount_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %mount_state.i, align 4
  %and.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i = icmp sgt i32 %11, 3
  %spec.select.i = select i1 %tobool.not.i, i1 true, i1 %cmp.i
  br i1 %spec.select.i, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_lock.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_lock, %if.then9)) #6
          to label %do.end [label %if.then9], !srcloc !67

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %fl_owner = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 5
  %12 = ptrtoint ptr %fl_owner to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fl_owner, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_lock.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.4, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 247, ptr noundef %13) #6
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %14 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end19.fold.split [
    i32 5, label %do.end.if.end19_crit_edge
    i32 12, label %do.end.if.end19_crit_edge173
    i32 7, label %do.end.if.then17_crit_edge
    i32 14, label %do.end.if.then17_crit_edge174
  ]

do.end.if.then17_crit_edge174:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

do.end.if.then17_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

do.end.if.end19_crit_edge173:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then17:                                        ; preds = %do.end.if.then17_crit_edge, %do.end.if.then17_crit_edge174
  br label %if.end19

if.end19.fold.split:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end19:                                         ; preds = %if.end19.fold.split, %if.then17, %do.end.if.end19_crit_edge, %do.end.if.end19_crit_edge173
  %wait.0 = phi i8 [ 1, %if.then17 ], [ 0, %do.end.if.end19_crit_edge ], [ 0, %do.end.if.end19_crit_edge173 ], [ 0, %if.end19.fold.split ]
  %cmp51 = phi i1 [ true, %if.then17 ], [ false, %do.end.if.end19_crit_edge ], [ false, %do.end.if.end19_crit_edge173 ], [ true, %if.end19.fold.split ]
  %op.0 = phi i16 [ 4361, %if.then17 ], [ 272, %do.end.if.end19_crit_edge ], [ 272, %do.end.if.end19_crit_edge173 ], [ 4361, %if.end19.fold.split ]
  %i_ceph_lock = getelementptr i8, ptr %1, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #6
  %15 = ptrtoint ptr %i_ceph_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_ceph_flags.i, align 4
  %and20 = and i32 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #6
  br i1 %tobool21.not, label %if.end35, label %if.then26

if.then26:                                        ; preds = %if.end19
  br i1 %cmp51, label %land.lhs.true, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then26
  %fl_type = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %17 = ptrtoint ptr %fl_type to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fl_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp30 = icmp eq i8 %18, 2
  br i1 %cmp30, label %if.then32, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call33 = tail call i32 @posix_lock_file(ptr noundef %file, ptr noundef %fl, ptr noundef null) #6
  br label %cleanup

if.end35:                                         ; preds = %if.end19
  %fl_type36 = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %19 = ptrtoint ptr %fl_type36 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fl_type36, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %switch.selectcmp = icmp eq i8 %20, 1
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %switch.selectcmp157 = icmp eq i8 %20, 0
  %switch.select158 = select i1 %switch.selectcmp157, i32 1, i32 %switch.select
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp56 = icmp eq i8 %20, 2
  %or.cond = select i1 %cmp51, i1 %cmp56, i1 false
  br i1 %or.cond, label %if.then58, label %if.end35.if.end64_crit_edge

if.end35.if.end64_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then58:                                        ; preds = %if.end35
  %21 = ptrtoint ptr %fl_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fl_flags, align 8
  %or.i = or i32 %22, 16
  store i32 %or.i, ptr %fl_flags, align 8
  %23 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %f_inode.i, align 8
  %call1.i.i = tail call i32 @locks_lock_inode_wait(ptr noundef %24, ptr noundef %fl) #6
  %25 = ptrtoint ptr %fl_flags to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %22, ptr %fl_flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call1.i.i)
  %cmp.i165 = icmp eq i32 %call1.i.i, -2
  %and.i166 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i166)
  %tobool.not.i167 = icmp eq i32 %and.i166, 0
  %spec.select.i168 = select i1 %tobool.not.i167, i32 0, i32 -2
  br i1 %cmp.i165, label %if.then58.cleanup_crit_edge, label %if.then58.if.end64_crit_edge

if.then58.if.end64_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end64:                                         ; preds = %if.then58.if.end64_crit_edge, %if.end35.if.end64_crit_edge
  %call66 = tail call fastcc i32 @ceph_lock_message(i8 noundef zeroext 1, i16 noundef zeroext %op.0, ptr noundef %1, i32 noundef %switch.select158, i8 noundef zeroext %wait.0, ptr noundef %fl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  %26 = and i1 %cmp51, %tobool67.not
  br i1 %26, label %land.lhs.true72, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true72:                                  ; preds = %if.end64
  %27 = ptrtoint ptr %fl_type36 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %fl_type36, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp75.not = icmp eq i8 %28, 2
  br i1 %cmp75.not, label %land.lhs.true72.cleanup_crit_edge, label %do.body78

land.lhs.true72.cleanup_crit_edge:                ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body78:                                        ; preds = %land.lhs.true72
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_lock.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_lock, %if.then90)) #6
          to label %do.end94 [label %if.then90], !srcloc !67

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_lock.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.7, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 282) #6
  br label %do.end94

do.end94:                                         ; preds = %if.then90, %do.body78
  %call95 = tail call i32 @posix_lock_file(ptr noundef %file, ptr noundef %fl, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %do.end94.cleanup_crit_edge, label %if.then97

do.end94.cleanup_crit_edge:                       ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then97:                                        ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #8
  %call98 = tail call fastcc i32 @ceph_lock_message(i8 noundef zeroext 1, i16 noundef zeroext %op.0, ptr noundef %1, i32 noundef 4, i8 noundef zeroext 0, ptr noundef %fl)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_lock.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_lock, %if.then111)) #6
          to label %cleanup [label %if.then111], !srcloc !67

if.then111:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_lock.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.9, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 291, i32 noundef %call95) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then111, %if.then97, %do.end94.cleanup_crit_edge, %land.lhs.true72.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %if.then58.cleanup_crit_edge, %if.then32, %land.lhs.true.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -37, %entry.cleanup_crit_edge ], [ -116, %if.end.cleanup_crit_edge ], [ -5, %if.then32 ], [ -5, %land.lhs.true.cleanup_crit_edge ], [ -5, %if.then26.cleanup_crit_edge ], [ %spec.select.i168, %if.then58.cleanup_crit_edge ], [ %call66, %if.end64.cleanup_crit_edge ], [ %call95, %if.then111 ], [ 0, %do.end94.cleanup_crit_edge ], [ 0, %land.lhs.true72.cleanup_crit_edge ], [ %call95, %if.then97 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_lock_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ceph_lock_message(i8 noundef zeroext %lock_type, i16 noundef zeroext %operation, ptr noundef %inode, i32 noundef %cmd, i8 noundef zeroext %wait, ptr nocapture noundef %fl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %mdsc.i = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %mdsc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdsc.i, align 8
  %conv = zext i16 %operation to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4361, i16 %operation)
  %cond = icmp eq i16 %operation, 4361
  br i1 %cond, label %if.then, label %entry.if.then8_crit_edge

entry.if.then8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

if.then:                                          ; preds = %entry
  %fl_ops = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 17
  %6 = ptrtoint ptr %fl_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ceph_fl_lock_ops, ptr %fl_ops, align 4
  %fl_file.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 11
  %7 = ptrtoint ptr %fl_file.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fl_file.i, align 4
  %private_data.i = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data.i, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_inode.i.i, align 8
  %i_filelock_ref.i = getelementptr i8, ptr %12, i32 -184
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_filelock_ref.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %i_filelock_ref.i, i32 1, i32 3, i32 1) #6
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_filelock_ref.i, ptr %i_filelock_ref.i, i32 1, ptr elementtype(i32) %i_filelock_ref.i) #6, !srcloc !68
  %num_locks.i = getelementptr inbounds %struct.ceph_file_info, ptr %10, i32 0, i32 5
  %call.i.i4.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_locks.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %num_locks.i, i32 1, i32 3, i32 1) #6
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_locks.i, ptr %num_locks.i, i32 1, ptr elementtype(i32) %num_locks.i) #6, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %cmd)
  %cmp6 = icmp eq i32 %cmd, 4
  br i1 %cmp6, label %if.then.if.then8_crit_edge, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then.if.then8_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

if.then8:                                         ; preds = %if.then.if.then8_crit_edge, %entry.if.then8_crit_edge
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.then.if.end9_crit_edge
  %wait.addr.0 = phi i8 [ 0, %if.then8 ], [ %wait, %if.then.if.end9_crit_edge ]
  %call11 = tail call ptr @ceph_mdsc_create_request(ptr noundef %5, i32 noundef %conv, i32 noundef 2) #6
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %r_inode = getelementptr inbounds %struct.ceph_mds_request, ptr %call11, i32 0, i32 5
  %16 = ptrtoint ptr %r_inode to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %inode, ptr %r_inode, align 8
  tail call void @ihold(ptr noundef %inode) #6
  %r_num_caps = getelementptr inbounds %struct.ceph_mds_request, ptr %call11, i32 0, i32 40
  %17 = ptrtoint ptr %r_num_caps to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %r_num_caps, align 4
  %fl_end = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 13
  %18 = ptrtoint ptr %fl_end to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %fl_end, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %19)
  %cmp16 = icmp eq i64 %19, 9223372036854775807
  br i1 %cmp16, label %if.end15.if.end20_crit_edge, label %if.else

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %fl_start = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 12
  %20 = ptrtoint ptr %fl_start to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %fl_start, align 8
  %sub = add nsw i64 %19, 1
  %add = sub i64 %sub, %21
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.end15.if.end20_crit_edge
  %length.0 = phi i64 [ %add, %if.else ], [ 0, %if.end15.if.end20_crit_edge ]
  %fl_owner = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 5
  %22 = ptrtoint ptr %fl_owner to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fl_owner, align 4
  %24 = load i64, ptr @lock_secret, align 8
  %25 = ptrtoint ptr %23 to i32
  %conv.i = zext i32 %25 to i64
  %xor.i = xor i64 %24, %conv.i
  %or.i = or i64 %xor.i, -9223372036854775808
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_lock_message.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_lock_message, %if.then25)) #6
          to label %do.end [label %if.then25], !srcloc !67

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %conv27 = zext i8 %lock_type to i32
  %fl_pid = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 8
  %26 = ptrtoint ptr %fl_pid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fl_pid, align 8
  %conv29 = zext i32 %27 to i64
  %fl_start30 = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 12
  %28 = ptrtoint ptr %fl_start30 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %fl_start30, align 8
  %conv31 = zext i8 %wait.addr.0 to i32
  %fl_type = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %30 = ptrtoint ptr %fl_type to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %fl_type, align 4
  %conv32 = zext i8 %31 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_lock_message.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.23, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 104, i32 noundef %conv27, i32 noundef %conv, i64 noundef %or.i, i64 noundef %conv29, i64 noundef %29, i64 noundef %length.0, i32 noundef %conv31, i32 noundef %conv32) #6
  br label %do.end

do.end:                                           ; preds = %if.then25, %if.end20
  %r_args = getelementptr inbounds %struct.ceph_mds_request, ptr %call11, i32 0, i32 17
  %32 = ptrtoint ptr %r_args to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %lock_type, ptr %r_args, align 8
  %conv34 = trunc i32 %cmd to i8
  %type = getelementptr inbounds %struct.anon.143, ptr %r_args, i32 0, i32 1
  %33 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv34, ptr %type, align 1
  %34 = tail call i64 @llvm.bswap.i64(i64 %or.i)
  %owner37 = getelementptr inbounds %struct.anon.143, ptr %r_args, i32 0, i32 2
  %35 = ptrtoint ptr %owner37 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %34, ptr %owner37, align 2
  %fl_pid38 = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 8
  %36 = ptrtoint ptr %fl_pid38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fl_pid38, align 8
  %conv39 = zext i32 %37 to i64
  %38 = tail call i64 @llvm.bswap.i64(i64 %conv39)
  %pid = getelementptr inbounds %struct.anon.143, ptr %r_args, i32 0, i32 3
  %39 = ptrtoint ptr %pid to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 %38, ptr %pid, align 2
  %fl_start41 = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 12
  %40 = ptrtoint ptr %fl_start41 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %fl_start41, align 8
  %42 = tail call i64 @llvm.bswap.i64(i64 %41)
  %start = getelementptr inbounds %struct.anon.143, ptr %r_args, i32 0, i32 4
  %43 = ptrtoint ptr %start to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 %42, ptr %start, align 2
  %44 = tail call i64 @llvm.bswap.i64(i64 %length.0)
  %length44 = getelementptr inbounds %struct.anon.143, ptr %r_args, i32 0, i32 5
  %45 = ptrtoint ptr %length44 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %44, ptr %length44, align 2
  %wait46 = getelementptr inbounds %struct.ceph_mds_request, ptr %call11, i32 0, i32 17, i32 1, i32 2
  %46 = ptrtoint ptr %wait46 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %wait.addr.0, ptr %wait46, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %wait.addr.0)
  %tobool47.not = icmp eq i8 %wait.addr.0, 0
  br i1 %tobool47.not, label %do.end.if.end49_crit_edge, label %if.then48

do.end.if.end49_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then48:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %r_wait_for_completion = getelementptr inbounds %struct.ceph_mds_request, ptr %call11, i32 0, i32 60
  %47 = ptrtoint ptr %r_wait_for_completion to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @ceph_lock_wait_for_completion, ptr %r_wait_for_completion, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %do.end.if.end49_crit_edge
  %call50 = tail call i32 @ceph_mdsc_do_request(ptr noundef %5, ptr noundef %inode, ptr noundef %call11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %operation)
  %cmp53 = icmp eq i16 %operation, 272
  %or.cond187 = and i1 %cmp53, %tobool51.not
  br i1 %or.cond187, label %if.then55, label %if.end49.if.end95_crit_edge

if.end49.if.end95_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.then55:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %48 = getelementptr inbounds %struct.ceph_mds_request, ptr %call11, i32 0, i32 36, i32 7
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %pid56 = getelementptr inbounds %struct.ceph_filelock, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %pid56 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %pid56, align 1
  %53 = tail call i64 @llvm.bswap.i64(i64 %52)
  %54 = trunc i64 %53 to i32
  %conv58 = sub i32 0, %54
  %55 = ptrtoint ptr %fl_pid38 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv58, ptr %fl_pid38, align 8
  %56 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %48, align 8
  %type61 = getelementptr inbounds %struct.ceph_filelock, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %type61 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %type61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %59)
  %switch.selectcmp = icmp eq i8 %59, 2
  %switch.select = select i1 %switch.selectcmp, i8 1, i8 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %59)
  %switch.selectcmp193 = icmp eq i8 %59, 1
  %switch.select194 = select i1 %switch.selectcmp193, i8 0, i8 %switch.select
  %fl_type74 = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %60 = ptrtoint ptr %fl_type74 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %switch.select194, ptr %fl_type74, align 4
  %61 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %48, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 8)
  %64 = load i64, ptr %62, align 1
  %65 = tail call i64 @llvm.bswap.i64(i64 %64)
  %66 = ptrtoint ptr %fl_start41 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %fl_start41, align 8
  %67 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %48, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 8)
  %70 = load i64, ptr %68, align 1
  %71 = tail call i64 @llvm.bswap.i64(i64 %70)
  %length85 = getelementptr inbounds %struct.ceph_filelock, ptr %68, i32 0, i32 1
  %72 = ptrtoint ptr %length85 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 8)
  %73 = load i64, ptr %length85, align 1
  %74 = tail call i64 @llvm.bswap.i64(i64 %73)
  %add86 = add i64 %74, %71
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add86)
  %cmp87.not = icmp eq i64 %add86, 0
  %sub90 = add i64 %add86, -1
  %sub90.sink = select i1 %cmp87.not, i64 0, i64 %sub90
  %75 = ptrtoint ptr %fl_end to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %sub90.sink, ptr %fl_end, align 8
  br label %if.end95

if.end95:                                         ; preds = %if.then55, %if.end49.if.end95_crit_edge
  %length.1 = phi i64 [ %length.0, %if.end49.if.end95_crit_edge ], [ %add86, %if.then55 ]
  %r_kref.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call11, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %r_kref.i, i32 1, i32 3, i32 1) #6
  %76 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i, ptr %r_kref.i, i32 1, ptr elementtype(i32) %r_kref.i) #6, !srcloc !70
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %76, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !71

if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ceph_mdsc_put_request.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %r_kref.i, i32 noundef 3) #6
  br label %ceph_mdsc_put_request.exit

if.then.i.i:                                      ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @ceph_mdsc_release_request(ptr noundef %r_kref.i) #6
  br label %ceph_mdsc_put_request.exit

ceph_mdsc_put_request.exit:                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_lock_message.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_lock_message, %if.then108)) #6
          to label %cleanup [label %if.then108], !srcloc !67

if.then108:                                       ; preds = %ceph_mdsc_put_request.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv110 = zext i8 %lock_type to i32
  %77 = ptrtoint ptr %fl_pid38 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %fl_pid38, align 8
  %conv113 = zext i32 %78 to i64
  %79 = ptrtoint ptr %fl_start41 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %fl_start41, align 8
  %conv115 = zext i8 %wait.addr.0 to i32
  %fl_type116 = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %81 = ptrtoint ptr %fl_type116 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %fl_type116, align 4
  %conv117 = zext i8 %82 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_lock_message.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.25, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 140, i32 noundef %conv110, i32 noundef %conv, i64 noundef %conv113, i64 noundef %80, i64 noundef %length.1, i32 noundef %conv115, i32 noundef %conv117, i32 noundef %call50) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then108, %ceph_mdsc_put_request.exit, %if.then13
  %retval.0 = phi i32 [ %15, %if.then13 ], [ %call50, %if.then108 ], [ %call50, %ceph_mdsc_put_request.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_flock(ptr nocapture noundef readonly %file, i32 noundef %cmd, ptr noundef %fl) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %fl_flags = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 6
  %2 = ptrtoint ptr %fl_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fl_flags, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_ceph_flags.i = getelementptr i8, ptr %1, i32 -868
  %4 = ptrtoint ptr %i_ceph_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %i_ceph_flags.i, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i, align 16
  %mount_state.i = getelementptr inbounds %struct.ceph_fs_client, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %mount_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %mount_state.i, align 4
  %and.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i = icmp sgt i32 %11, 3
  %spec.select.i = select i1 %tobool.not.i, i1 true, i1 %cmp.i
  br i1 %spec.select.i, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_flock.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_flock, %if.then9)) #6
          to label %do.end [label %if.then9], !srcloc !67

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %fl_file = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 11
  %12 = ptrtoint ptr %fl_file to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fl_file, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_flock.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.12, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 312, ptr noundef %13) #6
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %i_ceph_lock = getelementptr i8, ptr %1, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #6
  %14 = ptrtoint ptr %i_ceph_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ceph_flags.i, align 4
  %and12 = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #6
  br i1 %tobool13.not, label %if.end23, label %if.then17

if.then17:                                        ; preds = %do.end
  %fl_type = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %16 = ptrtoint ptr %fl_type to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fl_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp18 = icmp eq i8 %17, 2
  br i1 %cmp18, label %if.then20, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %f_inode.i, align 8
  %call1.i = tail call i32 @locks_lock_inode_wait(ptr noundef %19, ptr noundef %fl) #6
  br label %cleanup

if.end23:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cmd)
  %switch.selectcmp.case1 = icmp eq i32 %cmd, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %cmd)
  %switch.selectcmp.case2 = icmp eq i32 %cmd, 14
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %20 = zext i1 %switch.selectcmp to i8
  %fl_type30 = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %21 = ptrtoint ptr %fl_type30 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fl_type30, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %switch.selectcmp116 = icmp eq i8 %22, 1
  %switch.select = select i1 %switch.selectcmp116, i32 2, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %switch.selectcmp117 = icmp eq i8 %22, 0
  %switch.select118 = select i1 %switch.selectcmp117, i32 1, i32 %switch.select
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp45 = icmp eq i8 %22, 2
  br i1 %cmp45, label %if.then47, label %if.end23.if.end53_crit_edge

if.end23.if.end53_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then47:                                        ; preds = %if.end23
  %23 = ptrtoint ptr %fl_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fl_flags, align 8
  %or.i = or i32 %24, 16
  store i32 %or.i, ptr %fl_flags, align 8
  %25 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %f_inode.i, align 8
  %call1.i.i = tail call i32 @locks_lock_inode_wait(ptr noundef %26, ptr noundef %fl) #6
  %27 = ptrtoint ptr %fl_flags to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %fl_flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call1.i.i)
  %cmp.i122 = icmp eq i32 %call1.i.i, -2
  %and.i123 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i123)
  %tobool.not.i124 = icmp eq i32 %and.i123, 0
  %spec.select.i125 = select i1 %tobool.not.i124, i32 0, i32 -2
  br i1 %cmp.i122, label %if.then47.cleanup_crit_edge, label %if.then47.if.end53_crit_edge

if.then47.if.end53_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end53:                                         ; preds = %if.then47.if.end53_crit_edge, %if.end23.if.end53_crit_edge
  %call55 = tail call fastcc i32 @ceph_lock_message(i8 noundef zeroext 2, i16 noundef zeroext 4361, ptr noundef %1, i32 noundef %switch.select118, i8 noundef zeroext %20, ptr noundef %fl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.lhs.true, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end53
  %28 = ptrtoint ptr %fl_type30 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %fl_type30, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cmp59.not = icmp eq i8 %29, 2
  br i1 %cmp59.not, label %land.lhs.true.cleanup_crit_edge, label %if.then61

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then61:                                        ; preds = %land.lhs.true
  %30 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %f_inode.i, align 8
  %call1.i128 = tail call i32 @locks_lock_inode_wait(ptr noundef %31, ptr noundef %fl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i128)
  %tobool63.not = icmp eq i32 %call1.i128, 0
  br i1 %tobool63.not, label %if.then61.cleanup_crit_edge, label %if.then64

if.then61.cleanup_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then64:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  %call65 = tail call fastcc i32 @ceph_lock_message(i8 noundef zeroext 2, i16 noundef zeroext 4361, ptr noundef %1, i32 noundef 4, i8 noundef zeroext 0, ptr noundef %fl)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_flock.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_flock, %if.then78)) #6
          to label %cleanup [label %if.then78], !srcloc !67

if.then78:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_flock.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.14, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 349, i32 noundef %call1.i128) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then78, %if.then64, %if.then61.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.then47.cleanup_crit_edge, %if.then20, %if.then17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -37, %entry.cleanup_crit_edge ], [ -116, %if.end.cleanup_crit_edge ], [ -5, %if.then20 ], [ -5, %if.then17.cleanup_crit_edge ], [ %spec.select.i125, %if.then47.cleanup_crit_edge ], [ %call55, %if.end53.cleanup_crit_edge ], [ %call1.i128, %if.then78 ], [ 0, %if.then61.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call1.i128, %if.then64 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_count_locks(ptr nocapture noundef readonly %inode, ptr nocapture noundef %fcntl_count, ptr nocapture noundef %flock_count) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fcntl_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %fcntl_count, align 4
  %1 = ptrtoint ptr %flock_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %flock_count, align 4
  %i_flctx = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 45
  %2 = ptrtoint ptr %i_flctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_flctx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull %3) #6
  %flc_posix = getelementptr inbounds %struct.file_lock_context, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %flc_posix to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn49 = load ptr, ptr %flc_posix, align 4
  %cmp.not50 = icmp eq ptr %.pn49, %flc_posix
  br i1 %cmp.not50, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn51 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn49, %if.then.for.body_crit_edge ]
  %5 = ptrtoint ptr %fcntl_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fcntl_count, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %fcntl_count, align 4
  %7 = ptrtoint ptr %.pn51 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn51, align 4
  %cmp.not = icmp eq ptr %.pn, %flc_posix
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  %flc_flock = getelementptr inbounds %struct.file_lock_context, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %flc_flock to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn4752 = load ptr, ptr %flc_flock, align 4
  %cmp14.not53 = icmp eq ptr %.pn4752, %flc_flock
  br i1 %cmp14.not53, label %for.end.for.end24_crit_edge, label %for.end.for.body16_crit_edge

for.end.for.body16_crit_edge:                     ; preds = %for.end
  br label %for.body16

for.end.for.end24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end24

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %for.end.for.body16_crit_edge
  %.pn4754 = phi ptr [ %.pn47, %for.body16.for.body16_crit_edge ], [ %.pn4752, %for.end.for.body16_crit_edge ]
  %9 = ptrtoint ptr %flock_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flock_count, align 4
  %inc17 = add i32 %10, 1
  store i32 %inc17, ptr %flock_count, align 4
  %11 = ptrtoint ptr %.pn4754 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn47 = load ptr, ptr %.pn4754, align 4
  %cmp14.not = icmp eq ptr %.pn47, %flc_flock
  br i1 %cmp14.not, label %for.body16.for.end24_crit_edge, label %for.body16.for.body16_crit_edge

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body16

for.body16.for.end24_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end24

for.end24:                                        ; preds = %for.body16.for.end24_crit_edge, %for.end.for.end24_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull %3) #6
  br label %do.body

do.body:                                          ; preds = %for.end24, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_count_locks.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_count_locks, %if.then31)) #6
          to label %do.end [label %if.then31], !srcloc !67

if.then31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %flock_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flock_count, align 4
  %14 = ptrtoint ptr %fcntl_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fcntl_count, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_count_locks.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.17, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 377, i32 noundef %13, i32 noundef %15) #6
  br label %do.end

do.end:                                           ; preds = %if.then31, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_encode_locks_to_buffer(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %flocks, i32 noundef %num_fcntl_locks, i32 noundef %num_flock_locks) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flctx = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 45
  %0 = ptrtoint ptr %i_flctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_flctx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_encode_locks_to_buffer.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_encode_locks_to_buffer, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !67

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_encode_locks_to_buffer.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.20, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 428, i32 noundef %num_flock_locks, i32 noundef %num_fcntl_locks) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %do.end
  tail call void @_raw_spin_lock(ptr noundef nonnull %1) #6
  %flc_posix = getelementptr inbounds %struct.file_lock_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flc_posix to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn115 = load ptr, ptr %flc_posix, align 4
  %cmp.not116 = icmp eq ptr %.pn115, %flc_posix
  br i1 %cmp.not116, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %switch.lookup.for.body_crit_edge, %if.end6.for.body_crit_edge
  %.pn120 = phi ptr [ %.pn, %switch.lookup.for.body_crit_edge ], [ %.pn115, %if.end6.for.body_crit_edge ]
  %seen_fcntl.0119 = phi i32 [ %inc, %switch.lookup.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %inc = add i32 %seen_fcntl.0119, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %num_fcntl_locks)
  %cmp11 = icmp sgt i32 %inc, %num_fcntl_locks
  br i1 %cmp11, label %for.body.fail_crit_edge, label %if.end13

for.body.fail_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end13:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.ceph_filelock, ptr %flocks, i32 %seen_fcntl.0119
  %fl_start.i = getelementptr i8, ptr %.pn120, i32 108
  %3 = ptrtoint ptr %fl_start.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %fl_start.i, align 8
  %5 = tail call i64 @llvm.bswap.i64(i64 %4) #6
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %arrayidx, align 1
  %fl_end.i = getelementptr i8, ptr %.pn120, i32 116
  %7 = ptrtoint ptr %fl_end.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %fl_end.i, align 8
  %9 = ptrtoint ptr %fl_start.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %fl_start.i, align 8
  %sub.i = add i64 %8, 1
  %add.i = sub i64 %sub.i, %10
  %11 = tail call i64 @llvm.bswap.i64(i64 %add.i) #6
  %length.i = getelementptr %struct.ceph_filelock, ptr %flocks, i32 %seen_fcntl.0119, i32 1
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %length.i, align 1
  %client.i = getelementptr %struct.ceph_filelock, ptr %flocks, i32 %seen_fcntl.0119, i32 2
  %13 = ptrtoint ptr %client.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 0, ptr %client.i, align 1
  %fl_pid.i = getelementptr i8, ptr %.pn120, i32 44
  %14 = ptrtoint ptr %fl_pid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fl_pid.i, align 8
  %conv.i = zext i32 %15 to i64
  %16 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #6
  %pid.i = getelementptr %struct.ceph_filelock, ptr %flocks, i32 %seen_fcntl.0119, i32 4
  %17 = ptrtoint ptr %pid.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %pid.i, align 1
  %fl_owner.i = getelementptr i8, ptr %.pn120, i32 32
  %18 = ptrtoint ptr %fl_owner.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fl_owner.i, align 4
  %20 = load i64, ptr @lock_secret, align 8
  %21 = ptrtoint ptr %19 to i32
  %conv.i.i = zext i32 %21 to i64
  %xor.i.i = xor i64 %20, %conv.i.i
  %or.i.i = or i64 %xor.i.i, -9223372036854775808
  %22 = tail call i64 @llvm.bswap.i64(i64 %or.i.i) #6
  %owner.i = getelementptr %struct.ceph_filelock, ptr %flocks, i32 %seen_fcntl.0119, i32 3
  %23 = ptrtoint ptr %owner.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %owner.i, align 1
  %fl_type.i = getelementptr i8, ptr %.pn120, i32 40
  %24 = ptrtoint ptr %fl_type.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %fl_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %25)
  %26 = icmp ult i8 %25, 3
  br i1 %26, label %switch.lookup, label %do.body.i

do.body.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lock_to_ceph_filelock.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_encode_locks_to_buffer, %fail.sink.split)) #6
          to label %fail [label %fail.sink.split], !srcloc !67

switch.lookup:                                    ; preds = %if.end13
  %switch.cast = zext i8 %25 to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 262657, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %type6.i = getelementptr %struct.ceph_filelock, ptr %flocks, i32 %seen_fcntl.0119, i32 5
  %27 = ptrtoint ptr %type6.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %switch.masked, ptr %type6.i, align 1
  %28 = ptrtoint ptr %.pn120 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load ptr, ptr %.pn120, align 4
  %cmp.not = icmp eq ptr %.pn, %flc_posix
  br i1 %cmp.not, label %switch.lookup.for.end_crit_edge, label %switch.lookup.for.body_crit_edge

switch.lookup.for.body_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

switch.lookup.for.end_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %switch.lookup.for.end_crit_edge, %if.end6.for.end_crit_edge
  %l.0.lcssa = phi i32 [ 0, %if.end6.for.end_crit_edge ], [ %inc, %switch.lookup.for.end_crit_edge ]
  %flc_flock = getelementptr inbounds %struct.file_lock_context, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %flc_flock to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn79121 = load ptr, ptr %flc_flock, align 4
  %cmp31.not122 = icmp eq ptr %.pn79121, %flc_flock
  br i1 %cmp31.not122, label %for.end.fail_crit_edge, label %for.end.for.body34_crit_edge

for.end.for.body34_crit_edge:                     ; preds = %for.end
  br label %for.body34

for.end.fail_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

for.body34:                                       ; preds = %switch.lookup145.for.body34_crit_edge, %for.end.for.body34_crit_edge
  %.pn79126 = phi ptr [ %.pn79, %switch.lookup145.for.body34_crit_edge ], [ %.pn79121, %for.end.for.body34_crit_edge ]
  %seen_flock.0125 = phi i32 [ %inc35, %switch.lookup145.for.body34_crit_edge ], [ 0, %for.end.for.body34_crit_edge ]
  %l.1123 = phi i32 [ %inc44, %switch.lookup145.for.body34_crit_edge ], [ %l.0.lcssa, %for.end.for.body34_crit_edge ]
  %inc35 = add i32 %seen_flock.0125, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc35, i32 %num_flock_locks)
  %cmp36 = icmp sgt i32 %inc35, %num_flock_locks
  br i1 %cmp36, label %for.body34.fail_crit_edge, label %if.end38

for.body34.fail_crit_edge:                        ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end38:                                         ; preds = %for.body34
  %arrayidx39 = getelementptr %struct.ceph_filelock, ptr %flocks, i32 %l.1123
  %fl_start.i80 = getelementptr i8, ptr %.pn79126, i32 108
  %30 = ptrtoint ptr %fl_start.i80 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %fl_start.i80, align 8
  %32 = tail call i64 @llvm.bswap.i64(i64 %31) #6
  %33 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %32, ptr %arrayidx39, align 1
  %fl_end.i81 = getelementptr i8, ptr %.pn79126, i32 116
  %34 = ptrtoint ptr %fl_end.i81 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %fl_end.i81, align 8
  %36 = ptrtoint ptr %fl_start.i80 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %fl_start.i80, align 8
  %sub.i82 = add i64 %35, 1
  %add.i83 = sub i64 %sub.i82, %37
  %38 = tail call i64 @llvm.bswap.i64(i64 %add.i83) #6
  %length.i84 = getelementptr %struct.ceph_filelock, ptr %flocks, i32 %l.1123, i32 1
  %39 = ptrtoint ptr %length.i84 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 %38, ptr %length.i84, align 1
  %client.i85 = getelementptr %struct.ceph_filelock, ptr %flocks, i32 %l.1123, i32 2
  %40 = ptrtoint ptr %client.i85 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 0, ptr %client.i85, align 1
  %fl_pid.i86 = getelementptr i8, ptr %.pn79126, i32 44
  %41 = ptrtoint ptr %fl_pid.i86 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fl_pid.i86, align 8
  %conv.i87 = zext i32 %42 to i64
  %43 = tail call i64 @llvm.bswap.i64(i64 %conv.i87) #6
  %pid.i88 = getelementptr %struct.ceph_filelock, ptr %flocks, i32 %l.1123, i32 4
  %44 = ptrtoint ptr %pid.i88 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 8)
  store i64 %43, ptr %pid.i88, align 1
  %fl_owner.i89 = getelementptr i8, ptr %.pn79126, i32 32
  %45 = ptrtoint ptr %fl_owner.i89 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fl_owner.i89, align 4
  %47 = load i64, ptr @lock_secret, align 8
  %48 = ptrtoint ptr %46 to i32
  %conv.i.i90 = zext i32 %48 to i64
  %xor.i.i91 = xor i64 %47, %conv.i.i90
  %or.i.i92 = or i64 %xor.i.i91, -9223372036854775808
  %49 = tail call i64 @llvm.bswap.i64(i64 %or.i.i92) #6
  %owner.i93 = getelementptr %struct.ceph_filelock, ptr %flocks, i32 %l.1123, i32 3
  %50 = ptrtoint ptr %owner.i93 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 %49, ptr %owner.i93, align 1
  %fl_type.i94 = getelementptr i8, ptr %.pn79126, i32 40
  %51 = ptrtoint ptr %fl_type.i94 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %fl_type.i94, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %52)
  %53 = icmp ult i8 %52, 3
  br i1 %53, label %switch.lookup145, label %do.body.i101

do.body.i101:                                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lock_to_ceph_filelock.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_encode_locks_to_buffer, %fail.sink.split)) #6
          to label %fail [label %fail.sink.split], !srcloc !67

switch.lookup145:                                 ; preds = %if.end38
  %switch.cast146 = zext i8 %52 to i24
  %switch.shiftamt147 = shl nuw nsw i24 %switch.cast146, 3
  %switch.downshift148 = lshr i24 262657, %switch.shiftamt147
  %switch.masked149 = trunc i24 %switch.downshift148 to i8
  %type6.i99 = getelementptr %struct.ceph_filelock, ptr %flocks, i32 %l.1123, i32 5
  %54 = ptrtoint ptr %type6.i99 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %switch.masked149, ptr %type6.i99, align 1
  %inc44 = add i32 %l.1123, 1
  %55 = ptrtoint ptr %.pn79126 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn79 = load ptr, ptr %.pn79126, align 4
  %cmp31.not = icmp eq ptr %.pn79, %flc_flock
  br i1 %cmp31.not, label %switch.lookup145.fail_crit_edge, label %switch.lookup145.for.body34_crit_edge

switch.lookup145.for.body34_crit_edge:            ; preds = %switch.lookup145
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body34

switch.lookup145.fail_crit_edge:                  ; preds = %switch.lookup145
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

fail.sink.split:                                  ; preds = %do.body.i101, %do.body.i
  %.pn120.lcssa.pn = phi ptr [ %.pn120, %do.body.i ], [ %.pn79126, %do.body.i101 ]
  call void @__sanitizer_cov_trace_pc() #8
  %fl_type.i94.le.sink = getelementptr i8, ptr %.pn120.lcssa.pn, i32 40
  %56 = ptrtoint ptr %fl_type.i94.le.sink to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %fl_type.i94.le.sink, align 4
  %conv12.i102 = zext i8 %57 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lock_to_ceph_filelock.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.31, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 404, i32 noundef %conv12.i102) #6
  br label %fail

fail:                                             ; preds = %fail.sink.split, %switch.lookup145.fail_crit_edge, %do.body.i101, %for.body34.fail_crit_edge, %for.end.fail_crit_edge, %do.body.i, %for.body.fail_crit_edge
  %err.2 = phi i32 [ -22, %do.body.i ], [ -22, %do.body.i101 ], [ 0, %for.end.fail_crit_edge ], [ -22, %fail.sink.split ], [ 0, %switch.lookup145.fail_crit_edge ], [ -28, %for.body34.fail_crit_edge ], [ -28, %for.body.fail_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %fail, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %fail ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_locks_to_pagelist(ptr noundef %flocks, ptr noundef %pagelist, i32 noundef %num_fcntl_locks, i32 noundef %num_flock_locks) local_unnamed_addr #2 align 64 {
entry:
  %nlocks = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nlocks) #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %num_fcntl_locks)
  %1 = ptrtoint ptr %nlocks to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %nlocks, align 4
  %call = call i32 @ceph_pagelist_append(ptr noundef %pagelist, ptr noundef nonnull %nlocks, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_fail_crit_edge

entry.out_fail_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_fail

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_fcntl_locks)
  %cmp = icmp sgt i32 %num_fcntl_locks, 0
  br i1 %cmp, label %if.then1, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then1:                                         ; preds = %if.end
  %mul = mul i32 %num_fcntl_locks, 41
  %call2 = call i32 @ceph_pagelist_append(ptr noundef %pagelist, ptr noundef %flocks, i32 noundef %mul) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then1.if.end6_crit_edge, label %if.then1.out_fail_crit_edge

if.then1.out_fail_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_fail

if.then1.if.end6_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6:                                          ; preds = %if.then1.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %2 = call i32 @llvm.bswap.i32(i32 %num_flock_locks)
  %3 = ptrtoint ptr %nlocks to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %nlocks, align 4
  %call7 = call i32 @ceph_pagelist_append(ptr noundef %pagelist, ptr noundef nonnull %nlocks, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.out_fail_crit_edge

if.end6.out_fail_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_fail

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_flock_locks)
  %cmp11 = icmp sgt i32 %num_flock_locks, 0
  br i1 %cmp11, label %if.then12, label %if.end10.out_fail_crit_edge

if.end10.out_fail_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_fail

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.ceph_filelock, ptr %flocks, i32 %num_fcntl_locks
  %mul13 = mul i32 %num_flock_locks, 41
  %call14 = call i32 @ceph_pagelist_append(ptr noundef %pagelist, ptr noundef %arrayidx, i32 noundef %mul13) #6
  br label %out_fail

out_fail:                                         ; preds = %if.then12, %if.end10.out_fail_crit_edge, %if.end6.out_fail_crit_edge, %if.then1.out_fail_crit_edge, %entry.out_fail_crit_edge
  %err.0 = phi i32 [ %call, %entry.out_fail_crit_edge ], [ %call2, %if.then1.out_fail_crit_edge ], [ %call7, %if.end6.out_fail_crit_edge ], [ %call14, %if.then12 ], [ 0, %if.end10.out_fail_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nlocks) #6
  ret i32 %err.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_pagelist_append(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_mdsc_create_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_lock_wait_for_completion(ptr noundef %mdsc, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %r_inode = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 5
  %0 = ptrtoint ptr %r_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %r_inode, align 8
  %r_op = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 4
  %2 = ptrtoint ptr %r_op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r_op, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4361, i32 %3)
  %cmp.not = icmp eq i32 %3, 4361
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !71

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 151, 0\0A.popsection", ""() #6, !srcloc !73
  unreachable

do.end7:                                          ; preds = %entry
  %r_args = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 17
  %4 = ptrtoint ptr %r_args to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %r_args, align 8
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %5, label %do.body19 [
    i8 1, label %do.end7.do.body29_crit_edge
    i8 2, label %if.then16
  ]

do.end7.do.body29_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body29

if.then16:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body29

do.body19:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 157, 0\0A.popsection", ""() #6, !srcloc !74
  unreachable

do.body29:                                        ; preds = %if.then16, %do.end7.do.body29_crit_edge
  %lock_type.0 = phi i8 [ 4, %if.then16 ], [ 3, %do.end7.do.body29_crit_edge ]
  %type = getelementptr inbounds %struct.anon.143, ptr %r_args, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %8)
  %cmp32 = icmp eq i8 %8, 4
  br i1 %cmp32, label %do.body41, label %do.end49, !prof !75

do.body41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/locks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 158, 0\0A.popsection", ""() #6, !srcloc !76
  unreachable

do.end49:                                         ; preds = %do.body29
  %r_completion = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 57
  %call = tail call i32 @wait_for_completion_interruptible(ptr noundef %r_completion) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool50.not = icmp eq i32 %call, 0
  br i1 %tobool50.not, label %do.end49.cleanup_crit_edge, label %do.body53

do.end49.cleanup_crit_edge:                       ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body53:                                        ; preds = %do.end49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_lock_wait_for_completion.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_lock_wait_for_completion, %if.then62)) #6
          to label %do.end66 [label %if.then62], !srcloc !67

if.then62:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %req, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_lock_wait_for_completion.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.28, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 165, i64 noundef %10) #6
  br label %do.end66

do.end66:                                         ; preds = %if.then62, %do.body53
  %mutex = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %r_req_flags = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 15
  %11 = ptrtoint ptr %r_req_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %r_req_flags, align 4
  %13 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool68.not = icmp eq i32 %13, 0
  br i1 %tobool68.not, label %if.else70, label %if.then79.critedge

if.else70:                                        ; preds = %do.end66
  %r_fill_mutex = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %r_fill_mutex, i32 noundef 0) #6
  %r_err = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 37
  %14 = ptrtoint ptr %r_err to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call, ptr %r_err, align 8
  tail call void @_set_bit(i32 noundef 2, ptr noundef %r_req_flags) #6
  tail call void @mutex_unlock(ptr noundef %r_fill_mutex) #6
  %r_session = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 50
  %15 = ptrtoint ptr %r_session to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %r_session, align 4
  %tobool73.not = icmp eq ptr %16, null
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  br i1 %tobool73.not, label %if.else70.cleanup_crit_edge, label %if.end80

if.else70.cleanup_crit_edge:                      ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then79.critedge:                               ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  br label %cleanup

if.end80:                                         ; preds = %if.else70
  %call81 = tail call ptr @ceph_mdsc_create_request(ptr noundef %mdsc, i32 noundef 4361, i32 noundef 2) #6
  %cmp.i = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call81 to i32
  br label %cleanup

if.end85:                                         ; preds = %if.end80
  %r_inode86 = getelementptr inbounds %struct.ceph_mds_request, ptr %call81, i32 0, i32 5
  %18 = ptrtoint ptr %r_inode86 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %1, ptr %r_inode86, align 8
  tail call void @ihold(ptr noundef %1) #6
  %r_num_caps = getelementptr inbounds %struct.ceph_mds_request, ptr %call81, i32 0, i32 40
  %19 = ptrtoint ptr %r_num_caps to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %r_num_caps, align 4
  %r_args87 = getelementptr inbounds %struct.ceph_mds_request, ptr %call81, i32 0, i32 17
  %20 = call ptr @memcpy(ptr %r_args87, ptr %r_args, i32 35)
  %21 = ptrtoint ptr %r_args87 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %lock_type.0, ptr %r_args87, align 8
  %type93 = getelementptr inbounds %struct.anon.143, ptr %r_args87, i32 0, i32 1
  %22 = ptrtoint ptr %type93 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 4, ptr %type93, align 1
  %call94 = tail call i32 @ceph_mdsc_do_request(ptr noundef %mdsc, ptr noundef %1, ptr noundef %call81) #6
  %r_kref.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call81, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %r_kref.i, i32 1, i32 3, i32 1) #6
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i, ptr %r_kref.i, i32 1, ptr elementtype(i32) %r_kref.i) #6, !srcloc !70
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !71

if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ceph_mdsc_put_request.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %r_kref.i, i32 noundef 3) #6
  br label %ceph_mdsc_put_request.exit

if.then.i.i:                                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @ceph_mdsc_release_request(ptr noundef %r_kref.i) #6
  br label %ceph_mdsc_put_request.exit

ceph_mdsc_put_request.exit:                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge
  %24 = zext i32 %call94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %call94, label %ceph_mdsc_put_request.exit.cleanup_crit_edge [
    i32 0, label %ceph_mdsc_put_request.exit.if.end99_crit_edge
    i32 -512, label %ceph_mdsc_put_request.exit.if.end99_crit_edge137
  ]

ceph_mdsc_put_request.exit.if.end99_crit_edge137: ; preds = %ceph_mdsc_put_request.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

ceph_mdsc_put_request.exit.if.end99_crit_edge:    ; preds = %ceph_mdsc_put_request.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

ceph_mdsc_put_request.exit.cleanup_crit_edge:     ; preds = %ceph_mdsc_put_request.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end99:                                         ; preds = %ceph_mdsc_put_request.exit.if.end99_crit_edge, %ceph_mdsc_put_request.exit.if.end99_crit_edge137
  %r_safe_completion = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 58
  %call100 = tail call i32 @wait_for_completion_killable(ptr noundef %r_safe_completion) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %ceph_mdsc_put_request.exit.cleanup_crit_edge, %if.then83, %if.then79.critedge, %if.else70.cleanup_crit_edge, %do.end49.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then83 ], [ 0, %if.end99 ], [ 0, %do.end49.cleanup_crit_edge ], [ 0, %if.then79.critedge ], [ 0, %if.else70.cleanup_crit_edge ], [ %call94, %ceph_mdsc_put_request.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_mdsc_do_request(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_fl_copy_lock(ptr nocapture noundef readonly %dst, ptr nocapture noundef readnone %src) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fl_file = getelementptr inbounds %struct.file_lock, ptr %dst, i32 0, i32 11
  %0 = ptrtoint ptr %fl_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fl_file, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  %i_filelock_ref = getelementptr i8, ptr %5, i32 -184
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_filelock_ref, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %i_filelock_ref, i32 1, i32 3, i32 1) #6
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_filelock_ref, ptr %i_filelock_ref, i32 1, ptr elementtype(i32) %i_filelock_ref) #6, !srcloc !68
  %num_locks = getelementptr inbounds %struct.ceph_file_info, ptr %3, i32 0, i32 5
  %call.i.i4 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_locks, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %num_locks, i32 1, i32 3, i32 1) #6
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_locks, ptr %num_locks, i32 1, ptr elementtype(i32) %num_locks) #6, !srcloc !68
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_fl_release_lock(ptr nocapture noundef readonly %fl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fl_file = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 11
  %0 = ptrtoint ptr %fl_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fl_file, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  %num_locks = getelementptr inbounds %struct.ceph_file_info, ptr %3, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_locks, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %num_locks, i32 1, i32 3, i32 1) #6
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_locks, ptr %num_locks, i32 1, ptr elementtype(i32) %num_locks) #6, !srcloc !77
  %i_filelock_ref = getelementptr i8, ptr %5, i32 -184
  %call.i.i9 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_filelock_ref, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %i_filelock_ref, i32 1, i32 3, i32 1) #6
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_filelock_ref, ptr %i_filelock_ref, i32 1, ptr elementtype(i32) %i_filelock_ref) #6, !srcloc !79
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i_ceph_lock = getelementptr i8, ptr %5, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #6
  %i_ceph_flags = getelementptr i8, ptr %5, i32 -868
  %8 = ptrtoint ptr %i_ceph_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ceph_flags, align 4
  %and = and i32 %9, -1025
  store i32 %and, ptr %i_ceph_flags, align 4
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_killable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_mdsc_release_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @locks_lock_inode_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ceph/locks.c", i32 247, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ceph_lock.__UNIQUE_ID_ddebug319, !1, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ceph/locks.c", i32 282, i32 4}
!10 = !{ptr @ceph_lock.__UNIQUE_ID_ddebug320, !9, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ceph/locks.c", i32 290, i32 5}
!14 = !{ptr @ceph_lock.__UNIQUE_ID_ddebug321, !13, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!15 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ceph/locks.c", i32 312, i32 2}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ceph_flock.__UNIQUE_ID_ddebug322, !17, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!20 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ceph/locks.c", i32 349, i32 4}
!23 = !{ptr @ceph_flock.__UNIQUE_ID_ddebug323, !22, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!24 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ceph/locks.c", i32 376, i32 2}
!27 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ceph_count_locks.__UNIQUE_ID_ddebug324, !26, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!29 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ceph/locks.c", i32 427, i32 2}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ceph_encode_locks_to_buffer.__UNIQUE_ID_ddebug326, !31, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!34 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @lock_secret, !36, !"lock_secret", i1 false, i1 false}
!36 = !{!"../fs/ceph/locks.c", i32 12, i32 12}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ceph/locks.c", i32 101, i32 2}
!39 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ceph_lock_message.__UNIQUE_ID_ddebug316, !38, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!41 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ceph/locks.c", i32 137, i32 2}
!44 = !{ptr @ceph_lock_message.__UNIQUE_ID_ddebug317, !43, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!45 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ceph_fl_lock_ops, !47, !"ceph_fl_lock_ops", i1 false, i1 false}
!47 = !{!"../fs/ceph/locks.c", i32 55, i32 42}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ceph/locks.c", i32 164, i32 2}
!50 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ceph_lock_wait_for_completion.__UNIQUE_ID_ddebug318, !49, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!52 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ceph/locks.c", i32 404, i32 3}
!55 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @lock_to_ceph_filelock.__UNIQUE_ID_ddebug325, !54, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!57 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 2148512503, i64 2148512508, i64 2148512521, i64 2148512565, i64 2148512599, i64 2148512620}
!68 = !{i64 2148687905, i64 2148687931, i64 2148687960, i64 2148687994, i64 2148688025, i64 2148688048}
!69 = !{i64 2148777460}
!70 = !{i64 2148691900, i64 2148691932, i64 2148691961, i64 2148691995, i64 2148692026, i64 2148692049}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{i64 2150383200}
!73 = !{i64 2155878465, i64 2155878945, i64 2155878502, i64 2155878558, i64 2155878592, i64 2155878616, i64 2155878657, i64 2155878678, i64 2155878706, i64 2155878740}
!74 = !{i64 2155880019, i64 2155880499, i64 2155880056, i64 2155880112, i64 2155880146, i64 2155880170, i64 2155880211, i64 2155880232, i64 2155880260, i64 2155880294}
!75 = !{!"branch_weights", i32 1, i32 2000}
!76 = !{i64 2155881639, i64 2155882119, i64 2155881676, i64 2155881732, i64 2155881766, i64 2155881790, i64 2155881831, i64 2155881852, i64 2155881880, i64 2155881914}
!77 = !{i64 2148690370, i64 2148690396, i64 2148690425, i64 2148690459, i64 2148690490, i64 2148690513}
!78 = !{i64 2148776381}
!79 = !{i64 2148691090, i64 2148691122, i64 2148691151, i64 2148691185, i64 2148691216, i64 2148691239}
!80 = !{i64 2148776610}
