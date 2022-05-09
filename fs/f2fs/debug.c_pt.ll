; ModuleID = '/llk/IR_all_yes/fs/f2fs/debug.c_pt.bc'
source_filename = "../fs/f2fs/debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.f2fs_sb_info = type { ptr, ptr, ptr, %struct.rw_semaphore, i32, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, [3 x ptr], %struct.rw_semaphore, ptr, ptr, i32, %struct.spinlock, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.wait_queue_head, [6 x i32], [6 x i32], %struct.ckpt_req_control, [5 x %struct.inode_management], %struct.spinlock, %struct.list_head, i32, i32, i32, [4 x %struct.list_head], [4 x %struct.spinlock], %struct.mutex, %struct.xarray, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rw_semaphore, [14 x %struct.atomic_t], %struct.percpu_counter, [2 x %struct.atomic_t], %struct.percpu_counter, %struct.f2fs_mount_info, %struct.rw_semaphore, ptr, %struct.atgc_management, i32, i32, [2 x i32], %struct.spinlock, i8, i32, i32, [2 x i64], i64, i64, %struct.rw_semaphore, i32, i32, ptr, [4 x %struct.atomic_t], [2 x i32], [2 x i32], %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, [4 x i32], %struct.spinlock, i32, i32, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.list_head, %struct.mutex, i32, i32, ptr, i32, %struct.spinlock, i8, i64, i64, ptr, i32, ptr, ptr, i32, i32, [6 x i32], i32, i32, i32, ptr, i32, i64, i64, i32, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, [22 x i64], [22 x i64], i8, i32, i32, %struct.spinlock, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ckpt_req_control = type { ptr, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.llist_head, %struct.spinlock, i32, i32 }
%struct.llist_head = type { ptr }
%struct.inode_management = type { %struct.xarray, %struct.spinlock, %struct.list_head, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.f2fs_mount_info = type { i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32, %struct.f2fs_fault_info, [3 x ptr], i32, i32, i32, i32, i32, i32, i32, %struct.fscrypt_dummy_policy, i32, i32, i8, i8, i8, i8, i8, i8, i32, [16 x [8 x i8]], [16 x [8 x i8]] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.f2fs_fault_info = type { %struct.atomic_t, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.atgc_management = type { i8, %struct.rb_root_cached, %struct.list_head, i32, i32, i32, i32, i64 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.f2fs_sm_info = type { ptr, ptr, ptr, ptr, %struct.rw_semaphore, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.sit_info = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, %struct.rw_semaphore, ptr, ptr, i64, i64, i64, i64, i64, i64, [5 x i32] }
%struct.sec_entry = type { i32 }
%struct.seg_entry = type { i32, ptr, ptr, ptr, ptr, i64 }
%struct.f2fs_stat_info = type { %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i64], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [4 x i32], [2 x i32], [2 x i32], i32, i64, i64, i64 }
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
%struct.f2fs_super_block = type <{ i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], [512 x i16], i32, [64 x [8 x i8]], i32, [256 x i8], [256 x i8], i32, i8, [16 x i8], [8 x %struct.f2fs_device], [3 x i32], i8, i16, i16, [306 x i8], i32 }>
%struct.f2fs_device = type { [64 x i8], i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.74 = type { %struct.callback_head }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.76 = type { ptr }
%struct.flush_cmd_control = type { ptr, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.llist_head, ptr }
%struct.discard_cmd_control = type { ptr, %struct.list_head, [512 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.wait_queue_head, i32, %struct.mutex, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.rb_root_cached, i8 }
%struct.free_segmap_info = type { i32, i32, i32, %struct.spinlock, ptr, ptr }
%struct.dirty_seglist_info = type { ptr, [8 x ptr], ptr, %struct.mutex, [8 x i32], ptr }
%struct.f2fs_nm_info = type { i32, i32, i32, i32, i32, i32, i32, %struct.xarray, %struct.xarray, %struct.rw_semaphore, %struct.list_head, %struct.spinlock, [3 x i32], i32, %struct.xarray, %struct.list_head, [2 x i32], %struct.spinlock, %struct.mutex, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32 }
%struct.curseg_info = type { %struct.mutex, ptr, %struct.rw_semaphore, ptr, i8, i16, i32, i16, i32, i32, i32, i8 }
%struct.f2fs_checkpoint = type { i64, i64, i64, i32, i32, i32, [8 x i32], [8 x i16], [8 x i32], [8 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, [16 x i8], [0 x i8] }

@f2fs_stat_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @f2fs_stat_mutex, i64 52), ptr getelementptr (i8, ptr @f2fs_stat_mutex, i64 52) }, ptr @f2fs_stat_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@f2fs_stat_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @f2fs_stat_list, ptr @f2fs_stat_list }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"f2fs\00", [27 x i8] zeroinitializer }, align 32
@f2fs_debugfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@stat_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @stat_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@f2fs_kmalloc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.f2fs_kmalloc = private unnamed_addr constant [13 x i8] c"f2fs_kmalloc\00", align 1
@f2fs_kmalloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.f2fs_kmalloc, ptr @.str.4, i32 3219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%sF2FS-fs (%s) : inject %s in %s of %pS\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/f2fs/f2fs.h\00", [17 x i8] zeroinitializer }, align 32
@f2fs_kmalloc._entry_ptr = internal global ptr @f2fs_kmalloc._entry, section ".printk_index", align 4
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@f2fs_fault_name = external dso_local local_unnamed_addr global [18 x ptr], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"f2fs_stat_mutex.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"f2fs_stat_mutex\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\0A=====[ partition info(%pg). #%d, %s, CP: %s]=====\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RO\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RW\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Error\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Good\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[SBI:\00", [26 x i8] zeroinitializer }, align 32
@s_flag = internal constant { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105], [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"]\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[SB: 1] [CP: 2] [SIT: %d] [NAT: %d] \00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[SSA: %d] [MAIN: %d\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(OverProv:%d Resv:%d)]\0A\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Current Time Sec: %llu / Mounted Time Sec: %llu\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Utilization: %u%% (%u valid blocks, %u discard blocks)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Utilization: %u%% (%u valid blocks)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"  - Node: %u (Inode: %u, \00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Other: %u)\0A  - Data: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"  - Inline_xattr Inode: %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  - Inline_data Inode: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"  - Inline_dentry Inode: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"  - Compressed Inode: %u, Blocks: %llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"  - Orphan/Append/Update Inode: %u, %u, %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\0AMain area: %d segs, %d secs %d zones\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"    TYPE         %8s %8s %8s %10s %10s %10s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"segno\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"secno\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"zoneno\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dirty_seg\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"full_seg\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"valid_blk\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"  - COLD   data: %8d %8d %8d %10u %10u %10u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"  - WARM   data: %8d %8d %8d %10u %10u %10u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"  - HOT    data: %8d %8d %8d %10u %10u %10u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"  - Dir   dnode: %8d %8d %8d %10u %10u %10u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"  - File  dnode: %8d %8d %8d %10u %10u %10u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"  - Indir nodes: %8d %8d %8d %10u %10u %10u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"  - Pinned file: %8d %8d %8d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"  - ATGC   data: %8d %8d %8d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\0A  - Valid: %d\0A  - Dirty: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"  - Prefree: %d\0A  - Free: %d (%d)\0A\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CP calls: %d (BG: %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  - cp blocks : %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  - sit blocks : %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  - nat blocks : %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  - ssa blocks : %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"CP merge (Queued: %4d, Issued: %4d, Total: %4d, Cur time: %4d(ms), Peak time: %4d(ms))\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GC calls: %d (BG: %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"  - data segments : %d (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"  - node segments : %d (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"  - Reclaimed segs : Normal (%d), Idle CB (%d), Idle Greedy (%d), Idle AT (%d), Urgent High (%d), Urgent Low (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Try to move %d blocks (BG: %d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  - data blocks : %d (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  - node blocks : %d (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Skipped : atomic write %llu (%llu)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"BG skip : IO: %u, Other: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0AExtent Cache:\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"  - Hit Count: L1-1:%llu L1-2:%llu L2:%llu\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"  - Hit Ratio: %llu%% (%llu / %llu)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"  - Inner Struct Count: tree: %d(%d), node: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\0ABalancing F2FS Async:\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"  - DIO (R: %4d, W: %4d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"  - IO_R (Data: %4d, Node: %4d, Meta: %4d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"  - IO_W (CP: %4d, Data: %4d, Flush: (%4d %4d %4d), Discard: (%4d %4d)) cmd: %4d undiscard:%4u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"  - inmem: %4d, atomic IO: %4d (Max. %4d), volatile IO: %4d (Max. %4d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"  - compress: %4d, hit:%8d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"  - nodes: %4d in %4d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  - dents: %4d in dirs:%4d (%4d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"  - datas: %4d in files:%4d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"  - quota datas: %4d in quota files:%4d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  - meta: %4d in %4d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  - imeta: %4d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"  - NATs: %9d/%9d\0A  - SITs: %9d/%9d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"  - free_nids: %9d/%9d\0A  - alloc_nids: %9d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\0ADistribution of User Blocks:\00", [34 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c" [ valid | invalid | free ]\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"  [\00", [28 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"]\0A\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IPU: %u blocks\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SSR: %u blocks in %u segments\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"LFS: %u blocks in %u segments\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\0ABDF: %u, avg. vblocks: %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\0AMemory: %llu KB\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  - static: %llu KB\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  - cached: %llu KB\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  - paged : %llu KB\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" fs_dirty\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" closing\00", [23 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" need_fsck\00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" recovering\00", [20 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" sb_dirty\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" need_cp\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" shutdown\00", [22 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" recovered\00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" cp_disabled\00", [19 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" cp_disabled_quick\00", [45 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" quota_need_flush\00", [46 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" quota_skip_flush\00", [46 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" quota_need_repair\00", [45 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" resizefs\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"f2fs_stat_mutex\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [15 x i8] c"f2fs_stat_list\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 23, i32 8 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 643, i32 41 }
@___asan_gen_.115 = private unnamed_addr constant [18 x i8] c"f2fs_debugfs_root\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 26, i32 23 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 645, i32 22 }
@___asan_gen_.121 = private unnamed_addr constant [10 x i8] c"stat_fops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 580, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [18 x i8] c"../fs/f2fs/f2fs.h\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 3219, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 24, i32 8 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 352, i32 17 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 354, i32 33 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 354, i32 39 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 356, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 356, i32 43 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 356, i32 53 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 358, i32 16 }
@___asan_gen_.169 = private unnamed_addr constant [7 x i8] c"s_flag\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 326, i32 14 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 361, i32 16 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 363, i32 17 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 365, i32 17 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 367, i32 17 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 369, i32 17 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 373, i32 18 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 376, i32 18 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 379, i32 17 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 381, i32 17 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 384, i32 17 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 386, i32 17 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 388, i32 17 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 390, i32 17 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 392, i32 17 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 394, i32 17 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 397, i32 17 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 398, i32 7 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 398, i32 16 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 398, i32 25 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 398, i32 35 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 398, i32 48 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 398, i32 60 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 399, i32 17 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 406, i32 17 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 413, i32 17 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 420, i32 17 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 427, i32 17 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 434, i32 17 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 441, i32 17 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 445, i32 17 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 449, i32 17 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 453, i32 17 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 455, i32 17 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 457, i32 17 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 458, i32 17 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 460, i32 17 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 462, i32 17 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 464, i32 17 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 469, i32 17 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 471, i32 17 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 473, i32 17 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 475, i32 17 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 484, i32 17 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 486, i32 17 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 488, i32 17 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 490, i32 17 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 494, i32 17 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 496, i32 15 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 497, i32 17 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 500, i32 17 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 504, i32 17 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 506, i32 15 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 507, i32 17 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 509, i32 17 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 511, i32 17 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 518, i32 17 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 522, i32 17 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 523, i32 17 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 525, i32 17 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 527, i32 17 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 529, i32 17 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 531, i32 17 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 533, i32 17 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 535, i32 17 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 537, i32 17 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 539, i32 15 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 540, i32 15 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 541, i32 15 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 553, i32 15 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 554, i32 17 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 555, i32 17 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 557, i32 17 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 562, i32 17 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 567, i32 17 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 569, i32 17 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 571, i32 17 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 573, i32 17 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 327, i32 20 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 328, i32 20 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 329, i32 21 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 330, i32 21 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 331, i32 24 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 332, i32 19 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 333, i32 22 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 334, i32 23 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 335, i32 22 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 336, i32 28 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 337, i32 27 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 338, i32 27 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 339, i32 28 }
@___asan_gen_.442 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.443 = private constant [19 x i8] c"../fs/f2fs/debug.c\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 340, i32 22 }
@llvm.compiler.used = appending global [114 x ptr] [ptr @f2fs_kmalloc._entry, ptr @f2fs_kmalloc._entry_ptr, ptr @f2fs_stat_mutex, ptr @f2fs_stat_list, ptr @.str, ptr @f2fs_debugfs_root, ptr @.str.1, ptr @stat_fops, ptr @f2fs_kmalloc._rs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @s_flag, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105], section "llvm.metadata"
@0 = internal global [113 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_stat_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_stat_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stat_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kmalloc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kmalloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s_flag to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_update_sit_info(ptr nocapture noundef readonly %sbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stat_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 90
  %0 = ptrtoint ptr %stat_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stat_info.i, align 8
  %segs_per_sec = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 52
  %2 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %segs_per_sec, align 8
  %blocks_per_seg = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 51
  %4 = ptrtoint ptr %blocks_per_seg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %blocks_per_seg, align 4
  %mul = mul i32 %5, %3
  %6 = lshr i32 %mul, 1
  %div54 = zext i32 %6 to i64
  %sm_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %7 = ptrtoint ptr %sm_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sm_info.i, align 8
  %main_segments = getelementptr inbounds %struct.f2fs_sm_info, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %main_segments to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %main_segments, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp65.not = icmp eq i32 %10, 0
  br i1 %cmp65.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp ugt i32 %3, 1
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %sentries.i.i = getelementptr inbounds %struct.sit_info, ptr %12, i32 0, i32 14
  %sec_entries.i.i = getelementptr inbounds %struct.sit_info, ptr %12, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %get_valid_blocks.exit.for.body_crit_edge, %for.body.lr.ph
  %ndirty.070 = phi i32 [ 0, %for.body.lr.ph ], [ %ndirty.1, %get_valid_blocks.exit.for.body_crit_edge ]
  %segno.068 = phi i32 [ 0, %for.body.lr.ph ], [ %add17, %get_valid_blocks.exit.for.body_crit_edge ]
  %bimodal.067 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %get_valid_blocks.exit.for.body_crit_edge ]
  %total_vblocks.066 = phi i64 [ 0, %for.body.lr.ph ], [ %total_vblocks.1, %get_valid_blocks.exit.for.body_crit_edge ]
  br i1 %cmp.i, label %get_sec_entry.exit.i, label %if.else.i

get_sec_entry.exit.i:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %sec_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sec_entries.i.i, align 8
  %div.i.i = udiv i32 %segno.068, %3
  %arrayidx.i.i = getelementptr %struct.sec_entry, ptr %14, i32 %div.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  br label %get_valid_blocks.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %sentries.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sentries.i.i, align 4
  %arrayidx.i2.i = getelementptr %struct.seg_entry, ptr %18, i32 %segno.068
  %19 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load.i = load i32, ptr %arrayidx.i2.i, align 8
  %bf.lshr.i = lshr i32 %bf.load.i, 16
  %bf.clear.i = and i32 %bf.lshr.i, 1023
  br label %get_valid_blocks.exit

get_valid_blocks.exit:                            ; preds = %if.else.i, %get_sec_entry.exit.i
  %retval.0.i = phi i32 [ %16, %get_sec_entry.exit.i ], [ %bf.clear.i, %if.else.i ]
  %conv4 = zext i32 %retval.0.i to i64
  %sub = sub nsw i64 %conv4, %div54
  %mul8 = mul i64 %sub, %sub
  %add = add i64 %mul8, %bimodal.067
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp9.not = icmp ne i32 %retval.0.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %mul)
  %cmp12 = icmp ult i32 %retval.0.i, %mul
  %or.cond = select i1 %cmp9.not, i1 %cmp12, i1 false
  %add15 = select i1 %or.cond, i64 %conv4, i64 0
  %total_vblocks.1 = add i64 %add15, %total_vblocks.066
  %inc = zext i1 %or.cond to i32
  %ndirty.1 = add i32 %ndirty.070, %inc
  %add17 = add i32 %segno.068, %3
  %cmp = icmp ult i32 %add17, %10
  br i1 %cmp, label %get_valid_blocks.exit.for.body_crit_edge, label %get_valid_blocks.exit.for.end_crit_edge

get_valid_blocks.exit.for.end_crit_edge:          ; preds = %get_valid_blocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

get_valid_blocks.exit.for.body_crit_edge:         ; preds = %get_valid_blocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %get_valid_blocks.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %total_vblocks.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %total_vblocks.1, %get_valid_blocks.exit.for.end_crit_edge ]
  %bimodal.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add, %get_valid_blocks.exit.for.end_crit_edge ]
  %ndirty.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %ndirty.1, %get_valid_blocks.exit.for.end_crit_edge ]
  %total_sections = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 54
  %20 = ptrtoint ptr %total_sections to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %total_sections, align 8
  %conv18 = zext i32 %21 to i64
  %mul19 = mul nuw nsw i64 %div54, %div54
  %mul20 = mul i64 %mul19, %conv18
  %22 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul20, i32 0) #11, !srcloc !230
  %asmresult.i.i.i = extractvalue { i64, i32 } %22, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %22, 1
  %23 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul20, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #11, !srcloc !231
  %asmresult10.i.i.i = extractvalue { i64, i32 } %23, 0
  %div158.i.i61 = lshr i64 %asmresult10.i.i.i, 6
  %call22 = tail call i64 @div64_u64(i64 noundef %bimodal.0.lcssa, i64 noundef %div158.i.i61) #8
  %conv23 = trunc i64 %call22 to i32
  %bimodal24 = getelementptr inbounds %struct.f2fs_stat_info, ptr %1, i32 0, i32 75
  %24 = ptrtoint ptr %bimodal24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv23, ptr %bimodal24, align 8
  %dirty_count = getelementptr inbounds %struct.f2fs_stat_info, ptr %1, i32 0, i32 82
  %25 = ptrtoint ptr %dirty_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dirty_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not = icmp eq i32 %26, 0
  br i1 %tobool.not, label %for.end.if.end29_crit_edge, label %if.else162.i.i

for.end.if.end29_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.else162.i.i:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %total_vblocks.0.lcssa)
  %cmp164.i.i = icmp ult i64 %total_vblocks.0.lcssa, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !232

if.then168.i.i:                                   ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %total_vblocks.0.lcssa to i32
  %div172.i.i = udiv i32 %conv169.i.i, %ndirty.0.lcssa
  br label %if.end29

if.else174.i.i:                                   ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %ndirty.0.lcssa, i64 %total_vblocks.0.lcssa) #11, !srcloc !233
  %asmresult1.i.i.i = extractvalue { i64, i64 } %27, 1
  %extract.t63 = trunc i64 %asmresult1.i.i.i to i32
  br label %if.end29

if.end29:                                         ; preds = %if.else174.i.i, %if.then168.i.i, %for.end.if.end29_crit_edge
  %.sink = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t63, %if.else174.i.i ], [ 0, %for.end.if.end29_crit_edge ]
  %avg_vblocks28 = getelementptr inbounds %struct.f2fs_stat_info, ptr %1, i32 0, i32 76
  %28 = ptrtoint ptr %avg_vblocks28 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink, ptr %avg_vblocks28, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_build_stats(ptr noundef %sbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_super.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %0 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw_super.i, align 8
  %fault_info.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7
  %inject_rate.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7, i32 1
  %2 = ptrtoint ptr %inject_rate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inject_rate.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i.i, label %entry.f2fs_kzalloc.exit_crit_edge, label %if.end.i.i.i

entry.f2fs_kzalloc.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %f2fs_kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %inject_type.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7, i32 2
  %4 = ptrtoint ptr %inject_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inject_type.i.i.i, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end.i.i.i.f2fs_kzalloc.exit_crit_edge, label %if.end3.i.i.i

if.end.i.i.i.f2fs_kzalloc.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %f2fs_kzalloc.exit

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %fault_info.i.i.i, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fault_info.i.i.i, ptr %fault_info.i.i.i, i32 1, ptr elementtype(i32) %fault_info.i.i.i) #8, !srcloc !234
  %call.i.i1.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fault_info.i.i.i, i32 noundef 4) #8
  %7 = ptrtoint ptr %fault_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %fault_info.i.i.i, align 4
  %9 = ptrtoint ptr %inject_rate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %inject_rate.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not.i.i.i = icmp ult i32 %8, %10
  br i1 %cmp.not.i.i.i, label %if.end3.i.i.i.f2fs_kzalloc.exit_crit_edge, label %if.then.i.i

if.end3.i.i.i.f2fs_kzalloc.exit_crit_edge:        ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %f2fs_kzalloc.exit

if.then.i.i:                                      ; preds = %if.end3.i.i.i
  %call.i.i2.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i.i.i, i32 noundef 4) #8
  %11 = ptrtoint ptr %fault_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %fault_info.i.i.i, align 4
  %call1.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @f2fs_kmalloc._rs, ptr noundef nonnull @__func__.f2fs_kmalloc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.cleanup_crit_edge, label %do.end.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sbi, align 8
  %s_id.i.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @f2fs_fault_name to i32))
  %14 = load ptr, ptr @f2fs_fault_name, align 4
  %15 = tail call ptr @llvm.returnaddress(i32 0) #8
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, ptr noundef %s_id.i.i, ptr noundef %14, ptr noundef nonnull @__func__.f2fs_kmalloc, ptr noundef %15) #12
  br label %cleanup

f2fs_kzalloc.exit:                                ; preds = %if.end3.i.i.i.f2fs_kzalloc.exit_crit_edge, %if.end.i.i.i.f2fs_kzalloc.exit_crit_edge, %entry.f2fs_kzalloc.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 712) #13
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %f2fs_kzalloc.exit.cleanup_crit_edge, label %if.end

f2fs_kzalloc.exit.cleanup_crit_edge:              ; preds = %f2fs_kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %f2fs_kzalloc.exit
  %segment_count = getelementptr inbounds %struct.f2fs_super_block, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %segment_count to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %segment_count, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %all_area_segs = getelementptr inbounds %struct.f2fs_stat_info, ptr %call7.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %all_area_segs to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %all_area_segs, align 4
  %segment_count_sit = getelementptr inbounds %struct.f2fs_super_block, ptr %1, i32 0, i32 14
  %21 = ptrtoint ptr %segment_count_sit to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %segment_count_sit, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %sit_area_segs = getelementptr inbounds %struct.f2fs_stat_info, ptr %call7.i.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %sit_area_segs to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %sit_area_segs, align 8
  %segment_count_nat = getelementptr inbounds %struct.f2fs_super_block, ptr %1, i32 0, i32 15
  %25 = ptrtoint ptr %segment_count_nat to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %segment_count_nat, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %nat_area_segs = getelementptr inbounds %struct.f2fs_stat_info, ptr %call7.i.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %nat_area_segs to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %nat_area_segs, align 4
  %segment_count_ssa = getelementptr inbounds %struct.f2fs_super_block, ptr %1, i32 0, i32 16
  %29 = ptrtoint ptr %segment_count_ssa to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %segment_count_ssa, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %ssa_area_segs = getelementptr inbounds %struct.f2fs_stat_info, ptr %call7.i.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %ssa_area_segs to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %ssa_area_segs, align 8
  %segment_count_main = getelementptr inbounds %struct.f2fs_super_block, ptr %1, i32 0, i32 17
  %33 = ptrtoint ptr %segment_count_main to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %segment_count_main, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %main_area_segs = getelementptr inbounds %struct.f2fs_stat_info, ptr %call7.i.i.i, i32 0, i32 6
  %36 = ptrtoint ptr %main_area_segs to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %main_area_segs, align 4
  %section_count = getelementptr inbounds %struct.f2fs_super_block, ptr %1, i32 0, i32 11
  %37 = ptrtoint ptr %section_count to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %section_count, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %main_area_sections = getelementptr inbounds %struct.f2fs_stat_info, ptr %call7.i.i.i, i32 0, i32 7
  %40 = ptrtoint ptr %main_area_sections to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %main_area_sections, align 8
  %secs_per_zone = getelementptr inbounds %struct.f2fs_super_block, ptr %1, i32 0, i32 8
  %41 = ptrtoint ptr %secs_per_zone to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %secs_per_zone, align 1
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %div = udiv i32 %39, %43
  %main_area_zones = getelementptr inbounds %struct.f2fs_stat_info, ptr %call7.i.i.i, i32 0, i32 8
  %44 = ptrtoint ptr %main_area_zones to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %div, ptr %main_area_zones, align 4
  %sbi3 = getelementptr inbounds %struct.f2fs_stat_info, ptr %call7.i.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %sbi3 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %sbi, ptr %sbi3, align 8
  %stat_info = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 90
  %46 = ptrtoint ptr %stat_info to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i.i.i, ptr %stat_info, align 8
  %total_hit_ext = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 95
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %total_hit_ext, i32 noundef 8) #8
  tail call void @generic_atomic64_set(ptr noundef %total_hit_ext, i64 noundef 0) #8
  %read_hit_rbtree = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 96
  %call.i.i42 = tail call zeroext i1 @__kasan_check_write(ptr noundef %read_hit_rbtree, i32 noundef 8) #8
  tail call void @generic_atomic64_set(ptr noundef %read_hit_rbtree, i64 noundef 0) #8
  %read_hit_largest = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 97
  %call.i.i43 = tail call zeroext i1 @__kasan_check_write(ptr noundef %read_hit_largest, i32 noundef 8) #8
  tail call void @generic_atomic64_set(ptr noundef %read_hit_largest, i64 noundef 0) #8
  %read_hit_cached = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 98
  %call.i.i44 = tail call zeroext i1 @__kasan_check_write(ptr noundef %read_hit_cached, i32 noundef 8) #8
  tail call void @generic_atomic64_set(ptr noundef %read_hit_cached, i64 noundef 0) #8
  %inline_xattr = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 99
  %call.i.i45 = tail call zeroext i1 @__kasan_check_write(ptr noundef %inline_xattr, i32 noundef 4) #8
  %47 = ptrtoint ptr %inline_xattr to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 0, ptr %inline_xattr, align 4
  %inline_inode = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 100
  %call.i.i46 = tail call zeroext i1 @__kasan_check_write(ptr noundef %inline_inode, i32 noundef 4) #8
  %48 = ptrtoint ptr %inline_inode to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 0, ptr %inline_inode, align 4
  %inline_dir = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 101
  %call.i.i47 = tail call zeroext i1 @__kasan_check_write(ptr noundef %inline_dir, i32 noundef 4) #8
  %49 = ptrtoint ptr %inline_dir to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 0, ptr %inline_dir, align 4
  %compr_inode = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 102
  %call.i.i48 = tail call zeroext i1 @__kasan_check_write(ptr noundef %compr_inode, i32 noundef 4) #8
  %50 = ptrtoint ptr %compr_inode to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 0, ptr %compr_inode, align 4
  %compr_blocks = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 103
  %call.i.i49 = tail call zeroext i1 @__kasan_check_write(ptr noundef %compr_blocks, i32 noundef 8) #8
  tail call void @generic_atomic64_set(ptr noundef %compr_blocks, i64 noundef 0) #8
  %inplace_count = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 94
  %call.i.i50 = tail call zeroext i1 @__kasan_check_write(ptr noundef %inplace_count, i32 noundef 4) #8
  %51 = ptrtoint ptr %inplace_count to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 0, ptr %inplace_count, align 4
  %arrayidx = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 91, i32 0
  %call.i.i51 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #8
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 0, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 91, i32 1
  %call.i.i51.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.1, i32 noundef 4) #8
  %53 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 0, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 91, i32 2
  %call.i.i51.2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.2, i32 noundef 4) #8
  %54 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 0, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 91, i32 3
  %call.i.i51.3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.3, i32 noundef 4) #8
  %55 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 0, ptr %arrayidx.3, align 4
  %vw_cnt = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 104
  %call.i.i52 = tail call zeroext i1 @__kasan_check_write(ptr noundef %vw_cnt, i32 noundef 4) #8
  %56 = ptrtoint ptr %vw_cnt to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 0, ptr %vw_cnt, align 4
  %max_aw_cnt = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 105
  %call.i.i53 = tail call zeroext i1 @__kasan_check_write(ptr noundef %max_aw_cnt, i32 noundef 4) #8
  %57 = ptrtoint ptr %max_aw_cnt to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 0, ptr %max_aw_cnt, align 4
  %max_vw_cnt = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 106
  %call.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef %max_vw_cnt, i32 noundef 4) #8
  %58 = ptrtoint ptr %max_vw_cnt to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 0, ptr %max_vw_cnt, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @f2fs_stat_mutex, i32 noundef 0) #8
  %59 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @f2fs_stat_list, i32 0, i32 1), align 4
  %call.i.i55 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %59, ptr noundef nonnull @f2fs_stat_list) #8
  br i1 %call.i.i55, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %call7.i.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @f2fs_stat_list, i32 0, i32 1), align 4
  %60 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @f2fs_stat_list, ptr %call7.i.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %59, ptr %prev3.i.i, align 4
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %call7.i.i.i, ptr %59, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @f2fs_stat_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %f2fs_kzalloc.exit.cleanup_crit_edge, %do.end.i.i, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %f2fs_kzalloc.exit.cleanup_crit_edge ], [ -12, %do.end.i.i ], [ -12, %if.then.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_destroy_stats(ptr nocapture noundef readonly %sbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stat_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 90
  %0 = ptrtoint ptr %stat_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stat_info.i, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @f2fs_stat_mutex, i32 noundef 0) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @f2fs_stat_mutex) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_create_root_stats() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #8
  store ptr %call, ptr @f2fs_debugfs_root, align 4
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %call, ptr noundef null, ptr noundef nonnull @stat_fops) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_destroy_root_stats() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @f2fs_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #8
  store ptr null, ptr @f2fs_debugfs_root, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stat_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @stat_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stat_show(ptr noundef %s, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @f2fs_stat_mutex, i32 noundef 0) #8
  %si.0523 = load ptr, ptr @f2fs_stat_list, align 4
  %cmp.not524 = icmp eq ptr %si.0523, @f2fs_stat_list
  br i1 %cmp.not524, label %entry.for.end201_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end201_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end201

for.body:                                         ; preds = %update_mem_info.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %si.0526 = phi ptr [ %si.0, %update_mem_info.exit.for.body_crit_edge ], [ %si.0523, %entry.for.body_crit_edge ]
  %i.0525 = phi i32 [ %inc, %update_mem_info.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %sbi = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 1
  %0 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi, align 8
  %stat_info.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 90
  %2 = ptrtoint ptr %stat_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stat_info.i.i, align 8
  %raw_super.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %raw_super.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %raw_super.i.i, align 8
  %segment_count_main.i = getelementptr inbounds %struct.f2fs_super_block, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %segment_count_main.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %segment_count_main.i, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %main_area_segs.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %main_area_segs.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %main_area_segs.i, align 4
  %section_count.i = getelementptr inbounds %struct.f2fs_super_block, ptr %5, i32 0, i32 11
  %10 = ptrtoint ptr %section_count.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %section_count.i, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  %main_area_sections.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %main_area_sections.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %main_area_sections.i, align 8
  %secs_per_zone.i = getelementptr inbounds %struct.f2fs_super_block, ptr %5, i32 0, i32 8
  %14 = ptrtoint ptr %secs_per_zone.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %secs_per_zone.i, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  %div.i = udiv i32 %12, %16
  %main_area_zones.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 8
  %17 = ptrtoint ptr %main_area_zones.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div.i, ptr %main_area_zones.i, align 4
  %read_hit_largest.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 97
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %read_hit_largest.i, i32 noundef 8) #8
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %read_hit_largest.i) #8
  %hit_largest.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 9
  %18 = ptrtoint ptr %hit_largest.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %call.i.i, ptr %hit_largest.i, align 8
  %read_hit_cached.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 98
  %call.i.i506.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %read_hit_cached.i, i32 noundef 8) #8
  %call.i507.i = tail call i64 @generic_atomic64_read(ptr noundef %read_hit_cached.i) #8
  %hit_cached.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 10
  %19 = ptrtoint ptr %hit_cached.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %call.i507.i, ptr %hit_cached.i, align 8
  %read_hit_rbtree.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 96
  %call.i.i508.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %read_hit_rbtree.i, i32 noundef 8) #8
  %call.i509.i = tail call i64 @generic_atomic64_read(ptr noundef %read_hit_rbtree.i) #8
  %hit_rbtree.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 11
  %20 = ptrtoint ptr %hit_rbtree.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %call.i509.i, ptr %hit_rbtree.i, align 8
  %21 = ptrtoint ptr %hit_largest.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %hit_largest.i, align 8
  %23 = ptrtoint ptr %hit_cached.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %hit_cached.i, align 8
  %add.i = add i64 %22, %call.i509.i
  %add9.i = add i64 %add.i, %24
  %hit_total.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 12
  %25 = ptrtoint ptr %hit_total.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %add9.i, ptr %hit_total.i, align 8
  %total_hit_ext.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 95
  %call.i.i510.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %total_hit_ext.i, i32 noundef 8) #8
  %call.i511.i = tail call i64 @generic_atomic64_read(ptr noundef %total_hit_ext.i) #8
  %total_ext.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 13
  %26 = ptrtoint ptr %total_ext.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %call.i511.i, ptr %total_ext.i, align 8
  %total_ext_tree.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 40
  %call.i.i512.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %total_ext_tree.i, i32 noundef 4) #8
  %27 = ptrtoint ptr %total_ext_tree.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %total_ext_tree.i, align 4
  %ext_tree.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 14
  %29 = ptrtoint ptr %ext_tree.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ext_tree.i, align 8
  %total_zombie_tree.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 42
  %call.i.i513.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %total_zombie_tree.i, i32 noundef 4) #8
  %30 = ptrtoint ptr %total_zombie_tree.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %total_zombie_tree.i, align 4
  %zombie_tree.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 15
  %32 = ptrtoint ptr %zombie_tree.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %zombie_tree.i, align 4
  %total_ext_node.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 43
  %call.i.i514.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %total_ext_node.i, i32 noundef 4) #8
  %33 = ptrtoint ptr %total_ext_node.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %total_ext_node.i, align 4
  %ext_node.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 16
  %35 = ptrtoint ptr %ext_node.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %ext_node.i, align 8
  %arrayidx.i.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 69, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i, i32 noundef 4) #8
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %arrayidx.i.i, align 4
  %ndirty_node.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 17
  %38 = ptrtoint ptr %ndirty_node.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %ndirty_node.i, align 4
  %arrayidx.i535.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 69, i32 0
  %call.i.i.i536.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i535.i, i32 noundef 4) #8
  %39 = ptrtoint ptr %arrayidx.i535.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %arrayidx.i535.i, align 4
  %ndirty_dent.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 18
  %41 = ptrtoint ptr %ndirty_dent.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %ndirty_dent.i, align 8
  %arrayidx.i538.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 69, i32 4
  %call.i.i.i539.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i538.i, i32 noundef 4) #8
  %42 = ptrtoint ptr %arrayidx.i538.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %arrayidx.i538.i, align 4
  %ndirty_meta.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 19
  %44 = ptrtoint ptr %ndirty_meta.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %ndirty_meta.i, align 4
  %arrayidx.i541.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 69, i32 1
  %call.i.i.i542.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i541.i, i32 noundef 4) #8
  %45 = ptrtoint ptr %arrayidx.i541.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %arrayidx.i541.i, align 4
  %ndirty_data.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 21
  %47 = ptrtoint ptr %ndirty_data.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %ndirty_data.i, align 4
  %arrayidx.i544.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 69, i32 2
  %call.i.i.i545.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i544.i, i32 noundef 4) #8
  %48 = ptrtoint ptr %arrayidx.i544.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %arrayidx.i544.i, align 4
  %ndirty_qdata.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 22
  %50 = ptrtoint ptr %ndirty_qdata.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %ndirty_qdata.i, align 8
  %arrayidx.i547.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 69, i32 6
  %call.i.i.i548.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i547.i, i32 noundef 4) #8
  %51 = ptrtoint ptr %arrayidx.i547.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %arrayidx.i547.i, align 4
  %ndirty_imeta.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 20
  %53 = ptrtoint ptr %ndirty_imeta.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %ndirty_imeta.i, align 8
  %ndirty_inode.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 109
  %54 = ptrtoint ptr %ndirty_inode.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ndirty_inode.i, align 4
  %ndirty_dirs.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 24
  %56 = ptrtoint ptr %ndirty_dirs.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %ndirty_dirs.i, align 8
  %arrayidx26.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 109, i32 1
  %57 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx26.i, align 4
  %ndirty_files.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 25
  %59 = ptrtoint ptr %ndirty_files.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %ndirty_files.i, align 4
  %nquota_files.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 67
  %60 = ptrtoint ptr %nquota_files.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nquota_files.i, align 4
  %nquota_files27.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 26
  %62 = ptrtoint ptr %nquota_files27.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %nquota_files27.i, align 8
  %arrayidx29.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 109, i32 2
  %63 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx29.i, align 4
  %ndirty_all.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 27
  %65 = ptrtoint ptr %ndirty_all.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %ndirty_all.i, align 4
  %arrayidx.i550.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 69, i32 5
  %call.i.i.i551.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i550.i, i32 noundef 4) #8
  %66 = ptrtoint ptr %arrayidx.i550.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %arrayidx.i550.i, align 4
  %inmem_pages.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 23
  %68 = ptrtoint ptr %inmem_pages.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %inmem_pages.i, align 4
  %atomic_files.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 83
  %69 = ptrtoint ptr %atomic_files.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %atomic_files.i, align 4
  %aw_cnt.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 67
  %71 = ptrtoint ptr %aw_cnt.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %aw_cnt.i, align 8
  %vw_cnt.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 104
  %call.i.i515.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vw_cnt.i, i32 noundef 4) #8
  %72 = ptrtoint ptr %vw_cnt.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %vw_cnt.i, align 4
  %vw_cnt33.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 69
  %74 = ptrtoint ptr %vw_cnt33.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %vw_cnt33.i, align 8
  %max_aw_cnt.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 105
  %call.i.i516.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %max_aw_cnt.i, i32 noundef 4) #8
  %75 = ptrtoint ptr %max_aw_cnt.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %max_aw_cnt.i, align 4
  %max_aw_cnt35.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 68
  %77 = ptrtoint ptr %max_aw_cnt35.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %max_aw_cnt35.i, align 4
  %max_vw_cnt.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 106
  %call.i.i517.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %max_vw_cnt.i, i32 noundef 4) #8
  %78 = ptrtoint ptr %max_vw_cnt.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %max_vw_cnt.i, align 4
  %max_vw_cnt37.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 70
  %80 = ptrtoint ptr %max_vw_cnt37.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %max_vw_cnt37.i, align 4
  %arrayidx.i553.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 69, i32 13
  %call.i.i.i554.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i553.i, i32 noundef 4) #8
  %81 = ptrtoint ptr %arrayidx.i553.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %arrayidx.i553.i, align 4
  %nr_dio_read.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 43
  %83 = ptrtoint ptr %nr_dio_read.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %nr_dio_read.i, align 4
  %arrayidx.i556.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 69, i32 12
  %call.i.i.i557.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i556.i, i32 noundef 4) #8
  %84 = ptrtoint ptr %arrayidx.i556.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %arrayidx.i556.i, align 4
  %nr_dio_write.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 44
  %86 = ptrtoint ptr %nr_dio_write.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %nr_dio_write.i, align 8
  %arrayidx.i559.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 69, i32 7
  %call.i.i.i560.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i559.i, i32 noundef 4) #8
  %87 = ptrtoint ptr %arrayidx.i559.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %arrayidx.i559.i, align 4
  %nr_wb_cp_data.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 38
  %89 = ptrtoint ptr %nr_wb_cp_data.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %nr_wb_cp_data.i, align 8
  %arrayidx.i562.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 69, i32 8
  %call.i.i.i563.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i562.i, i32 noundef 4) #8
  %90 = ptrtoint ptr %arrayidx.i562.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %arrayidx.i562.i, align 4
  %nr_wb_data.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 39
  %92 = ptrtoint ptr %nr_wb_data.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %nr_wb_data.i, align 4
  %arrayidx.i565.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 69, i32 9
  %call.i.i.i566.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i565.i, i32 noundef 4) #8
  %93 = ptrtoint ptr %arrayidx.i565.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %arrayidx.i565.i, align 4
  %nr_rd_data.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 40
  %95 = ptrtoint ptr %nr_rd_data.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %nr_rd_data.i, align 8
  %arrayidx.i568.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 69, i32 10
  %call.i.i.i569.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i568.i, i32 noundef 4) #8
  %96 = ptrtoint ptr %arrayidx.i568.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %arrayidx.i568.i, align 4
  %nr_rd_node.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 41
  %98 = ptrtoint ptr %nr_rd_node.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %nr_rd_node.i, align 4
  %arrayidx.i571.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 69, i32 11
  %call.i.i.i572.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i571.i, i32 noundef 4) #8
  %99 = ptrtoint ptr %arrayidx.i571.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %arrayidx.i571.i, align 4
  %nr_rd_meta.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 42
  %101 = ptrtoint ptr %nr_rd_meta.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %nr_rd_meta.i, align 8
  %sm_info.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 11
  %102 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %sm_info.i.i, align 8
  %fcc_info.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %103, i32 0, i32 22
  %104 = ptrtoint ptr %fcc_info.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %fcc_info.i, align 4
  %tobool.not.i = icmp eq ptr %105, null
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %issued_flush.i = getelementptr inbounds %struct.flush_cmd_control, ptr %105, i32 0, i32 2
  %call.i.i518.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %issued_flush.i, i32 noundef 4) #8
  %106 = ptrtoint ptr %issued_flush.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %issued_flush.i, align 4
  %nr_flushed.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 48
  %108 = ptrtoint ptr %nr_flushed.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %nr_flushed.i, align 8
  %109 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %sm_info.i.i, align 8
  %fcc_info57.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %110, i32 0, i32 22
  %111 = ptrtoint ptr %fcc_info57.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %fcc_info57.i, align 4
  %queued_flush.i = getelementptr inbounds %struct.flush_cmd_control, ptr %112, i32 0, i32 3
  %call.i.i519.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %queued_flush.i, i32 noundef 4) #8
  %113 = ptrtoint ptr %queued_flush.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %queued_flush.i, align 4
  %nr_flushing.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 47
  %115 = ptrtoint ptr %nr_flushing.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %nr_flushing.i, align 4
  %116 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %sm_info.i.i, align 8
  %fcc_info60.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %117, i32 0, i32 22
  %118 = ptrtoint ptr %fcc_info60.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %fcc_info60.i, align 4
  %issue_list.i = getelementptr inbounds %struct.flush_cmd_control, ptr %119, i32 0, i32 4
  %120 = ptrtoint ptr %issue_list.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile ptr, ptr %issue_list.i, align 4
  %cmp.i.i = icmp eq ptr %121, null
  %conv62.i = zext i1 %cmp.i.i to i32
  %flush_list_empty.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 49
  %122 = ptrtoint ptr %flush_list_empty.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %conv62.i, ptr %flush_list_empty.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %123 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %sm_info.i.i, align 8
  %dcc_info.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %124, i32 0, i32 23
  %125 = ptrtoint ptr %dcc_info.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dcc_info.i, align 4
  %tobool64.not.i = icmp eq ptr %126, null
  br i1 %tobool64.not.i, label %if.end.i.if.end78.i_crit_edge, label %if.then65.i

if.end.i.if.end78.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.i

if.then65.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %issued_discard.i = getelementptr inbounds %struct.discard_cmd_control, ptr %126, i32 0, i32 13
  %call.i.i520.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %issued_discard.i, i32 noundef 4) #8
  %127 = ptrtoint ptr %issued_discard.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %issued_discard.i, align 4
  %nr_discarded.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 51
  %129 = ptrtoint ptr %nr_discarded.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %nr_discarded.i, align 4
  %130 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %sm_info.i.i, align 8
  %dcc_info70.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %131, i32 0, i32 23
  %132 = ptrtoint ptr %dcc_info70.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dcc_info70.i, align 4
  %queued_discard.i = getelementptr inbounds %struct.discard_cmd_control, ptr %133, i32 0, i32 14
  %call.i.i521.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %queued_discard.i, i32 noundef 4) #8
  %134 = ptrtoint ptr %queued_discard.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %queued_discard.i, align 4
  %nr_discarding.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 50
  %136 = ptrtoint ptr %nr_discarding.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %nr_discarding.i, align 8
  %137 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %sm_info.i.i, align 8
  %dcc_info73.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %138, i32 0, i32 23
  %139 = ptrtoint ptr %dcc_info73.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dcc_info73.i, align 4
  %discard_cmd_cnt.i = getelementptr inbounds %struct.discard_cmd_control, ptr %140, i32 0, i32 15
  %call.i.i522.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %discard_cmd_cnt.i, i32 noundef 4) #8
  %141 = ptrtoint ptr %discard_cmd_cnt.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %discard_cmd_cnt.i, align 4
  %nr_discard_cmd.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 52
  %143 = ptrtoint ptr %nr_discard_cmd.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %nr_discard_cmd.i, align 8
  %144 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %sm_info.i.i, align 8
  %dcc_info76.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %145, i32 0, i32 23
  %146 = ptrtoint ptr %dcc_info76.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dcc_info76.i, align 4
  %undiscard_blks.i = getelementptr inbounds %struct.discard_cmd_control, ptr %147, i32 0, i32 11
  %148 = ptrtoint ptr %undiscard_blks.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %undiscard_blks.i, align 4
  %undiscard_blks77.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 53
  %150 = ptrtoint ptr %undiscard_blks77.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %undiscard_blks77.i, align 4
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then65.i, %if.end.i.if.end78.i_crit_edge
  %issued_ckpt.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 26, i32 3
  %call.i.i523.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %issued_ckpt.i, i32 noundef 4) #8
  %151 = ptrtoint ptr %issued_ckpt.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %issued_ckpt.i, align 4
  %nr_issued_ckpt.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 54
  %153 = ptrtoint ptr %nr_issued_ckpt.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %nr_issued_ckpt.i, align 8
  %total_ckpt.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 26, i32 4
  %call.i.i524.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %total_ckpt.i, i32 noundef 4) #8
  %154 = ptrtoint ptr %total_ckpt.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %total_ckpt.i, align 4
  %nr_total_ckpt.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 55
  %156 = ptrtoint ptr %nr_total_ckpt.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %nr_total_ckpt.i, align 4
  %queued_ckpt.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 26, i32 5
  %call.i.i525.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %queued_ckpt.i, i32 noundef 4) #8
  %157 = ptrtoint ptr %queued_ckpt.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %queued_ckpt.i, align 4
  %nr_queued_ckpt.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 56
  %159 = ptrtoint ptr %nr_queued_ckpt.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %nr_queued_ckpt.i, align 8
  %stat_lock.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 26, i32 7
  tail call void @_raw_spin_lock(ptr noundef %stat_lock.i) #8
  %cur_time.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 26, i32 8
  %160 = ptrtoint ptr %cur_time.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %cur_time.i, align 8
  %cur_ckpt_time.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 57
  %162 = ptrtoint ptr %cur_ckpt_time.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %cur_ckpt_time.i, align 4
  %peak_time.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 26, i32 9
  %163 = ptrtoint ptr %peak_time.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %peak_time.i, align 4
  %peak_ckpt_time.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 58
  %165 = ptrtoint ptr %peak_ckpt_time.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %peak_ckpt_time.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %stat_lock.i) #8
  %user_block_count.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 60
  %166 = ptrtoint ptr %user_block_count.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %user_block_count.i, align 8
  %blocks_per_seg.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 51
  %168 = ptrtoint ptr %blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %blocks_per_seg.i, align 4
  %div89.i = udiv i32 %167, %169
  %total_count.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 35
  %170 = ptrtoint ptr %total_count.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %div89.i, ptr %total_count.i, align 4
  %171 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %sm_info.i.i, align 8
  %reserved_segments.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %172, i32 0, i32 10
  %173 = ptrtoint ptr %reserved_segments.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %reserved_segments.i.i, align 4
  %additional_reserved_segments.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %172, i32 0, i32 11
  %175 = ptrtoint ptr %additional_reserved_segments.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %additional_reserved_segments.i.i, align 4
  %add.i.i = add i32 %176, %174
  %rsvd_segs.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 80
  %177 = ptrtoint ptr %rsvd_segs.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %add.i.i, ptr %rsvd_segs.i, align 4
  %178 = load ptr, ptr %sm_info.i.i, align 8
  %ovp_segments.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %178, i32 0, i32 12
  %179 = ptrtoint ptr %ovp_segments.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %ovp_segments.i.i, align 4
  %overp_segs.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 81
  %181 = ptrtoint ptr %overp_segs.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %overp_segs.i, align 8
  %total_valid_block_count.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 61
  %182 = ptrtoint ptr %total_valid_block_count.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %total_valid_block_count.i.i, align 4
  %valid_count.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 71
  %184 = ptrtoint ptr %valid_count.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %valid_count.i, align 8
  %discard_blks.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 62
  %185 = ptrtoint ptr %discard_blks.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %discard_blks.i.i, align 8
  %discard_blks.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 74
  %187 = ptrtoint ptr %discard_blks.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %discard_blks.i, align 4
  %total_valid_node_count.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 56
  %188 = ptrtoint ptr %total_valid_node_count.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %total_valid_node_count.i.i, align 8
  %valid_node_count.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 72
  %190 = ptrtoint ptr %valid_node_count.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %valid_node_count.i, align 4
  %total_valid_inode_count.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 72
  %call.i.i583.i = tail call i64 @__percpu_counter_sum(ptr noundef %total_valid_inode_count.i.i) #8
  %191 = tail call i64 @llvm.smax.i64(i64 %call.i.i583.i, i64 0) #8
  %conv96.i = trunc i64 %191 to i32
  %valid_inode_count.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 73
  %192 = ptrtoint ptr %valid_inode_count.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %conv96.i, ptr %valid_inode_count.i, align 8
  %inline_xattr.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 99
  %call.i.i526.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %inline_xattr.i, i32 noundef 4) #8
  %193 = ptrtoint ptr %inline_xattr.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load volatile i32, ptr %inline_xattr.i, align 4
  %inline_xattr98.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 59
  %195 = ptrtoint ptr %inline_xattr98.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %194, ptr %inline_xattr98.i, align 4
  %inline_inode.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 100
  %call.i.i527.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %inline_inode.i, i32 noundef 4) #8
  %196 = ptrtoint ptr %inline_inode.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load volatile i32, ptr %inline_inode.i, align 4
  %inline_inode100.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 60
  %198 = ptrtoint ptr %inline_inode100.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %inline_inode100.i, align 8
  %inline_dir.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 101
  %call.i.i528.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %inline_dir.i, i32 noundef 4) #8
  %199 = ptrtoint ptr %inline_dir.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load volatile i32, ptr %inline_dir.i, align 4
  %inline_dir102.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 61
  %201 = ptrtoint ptr %inline_dir102.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %inline_dir102.i, align 4
  %compr_inode.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 102
  %call.i.i529.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %compr_inode.i, i32 noundef 4) #8
  %202 = ptrtoint ptr %compr_inode.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load volatile i32, ptr %compr_inode.i, align 4
  %compr_inode104.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 65
  %204 = ptrtoint ptr %compr_inode104.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %compr_inode104.i, align 4
  %compr_blocks.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 103
  %call.i.i530.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %compr_blocks.i, i32 noundef 8) #8
  %call.i531.i = tail call i64 @generic_atomic64_read(ptr noundef %compr_blocks.i) #8
  %compr_blocks106.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 66
  %205 = ptrtoint ptr %compr_blocks106.i to i32
  call void @__asan_store8_noabort(i32 %205)
  store i64 %call.i531.i, ptr %compr_blocks106.i, align 8
  %ino_num.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 27, i32 1, i32 3
  %206 = ptrtoint ptr %ino_num.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %ino_num.i, align 4
  %append.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 62
  %208 = ptrtoint ptr %append.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %207, ptr %append.i, align 8
  %ino_num110.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 27, i32 2, i32 3
  %209 = ptrtoint ptr %ino_num110.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %ino_num110.i, align 8
  %update.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 63
  %211 = ptrtoint ptr %update.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %210, ptr %update.i, align 4
  %ino_num113.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 27, i32 0, i32 3
  %212 = ptrtoint ptr %ino_num113.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %ino_num113.i, align 8
  %orphans.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 64
  %214 = ptrtoint ptr %orphans.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %orphans.i, align 8
  %215 = ptrtoint ptr %total_valid_block_count.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %total_valid_block_count.i.i, align 4
  %conv.i584.i = zext i32 %216 to i64
  %mul.i.i = mul nuw nsw i64 %conv.i584.i, 100
  %217 = ptrtoint ptr %user_block_count.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %user_block_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i.i)
  %cmp164.i.i.i.i = icmp ult i64 %mul.i.i, 4294967296
  br i1 %cmp164.i.i.i.i, label %if.then168.i.i.i.i, label %if.else174.i.i.i.i, !prof !232

if.then168.i.i.i.i:                               ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i.i.i = trunc i64 %mul.i.i to i32
  %div172.i.i.i.i = udiv i32 %conv169.i.i.i.i, %218
  br label %utilization.exit.i

if.else174.i.i.i.i:                               ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #10
  %219 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %218, i64 %mul.i.i) #11, !srcloc !233
  %asmresult1.i.i.i.i.i = extractvalue { i64, i64 } %219, 1
  %extract.t5.i.i = trunc i64 %asmresult1.i.i.i.i.i to i32
  br label %utilization.exit.i

utilization.exit.i:                               ; preds = %if.else174.i.i.i.i, %if.then168.i.i.i.i
  %dividend.addr.0.i.i.off0.i.i = phi i32 [ %div172.i.i.i.i, %if.then168.i.i.i.i ], [ %extract.t5.i.i, %if.else174.i.i.i.i ]
  %utilization.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 36
  %220 = ptrtoint ptr %utilization.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %dividend.addr.0.i.i.off0.i.i, ptr %utilization.i, align 8
  %221 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %sm_info.i.i, align 8
  %free_info.i.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %222, i32 0, i32 1
  %223 = ptrtoint ptr %free_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %free_info.i.i.i, align 4
  %free_segments.i.i = getelementptr inbounds %struct.free_segmap_info, ptr %224, i32 0, i32 1
  %225 = ptrtoint ptr %free_segments.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %free_segments.i.i, align 4
  %free_segs.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 94
  %227 = ptrtoint ptr %free_segs.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %226, ptr %free_segs.i, align 4
  %228 = load ptr, ptr %sm_info.i.i, align 8
  %free_info.i.i586.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %228, i32 0, i32 1
  %229 = ptrtoint ptr %free_info.i.i586.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %free_info.i.i586.i, align 4
  %free_sections.i.i = getelementptr inbounds %struct.free_segmap_info, ptr %230, i32 0, i32 2
  %231 = ptrtoint ptr %free_sections.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %free_sections.i.i, align 4
  %free_secs.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 95
  %233 = ptrtoint ptr %free_secs.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %232, ptr %free_secs.i, align 8
  %234 = load ptr, ptr %sm_info.i.i, align 8
  %dirty_info.i.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %234, i32 0, i32 2
  %235 = ptrtoint ptr %dirty_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dirty_info.i.i.i, align 4
  %arrayidx.i588.i = getelementptr %struct.dirty_seglist_info, ptr %236, i32 0, i32 4, i32 7
  %237 = ptrtoint ptr %arrayidx.i588.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %arrayidx.i588.i, align 4
  %prefree_count.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 87
  %239 = ptrtoint ptr %prefree_count.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %238, ptr %prefree_count.i, align 8
  %240 = load ptr, ptr %sm_info.i.i, align 8
  %dirty_info.i.i590.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %240, i32 0, i32 2
  %241 = ptrtoint ptr %dirty_info.i.i590.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %dirty_info.i.i590.i, align 4
  %nr_dirty.i.i = getelementptr inbounds %struct.dirty_seglist_info, ptr %242, i32 0, i32 4
  %243 = ptrtoint ptr %nr_dirty.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %nr_dirty.i.i, align 4
  %arrayidx3.i.i = getelementptr %struct.dirty_seglist_info, ptr %242, i32 0, i32 4, i32 1
  %245 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %arrayidx3.i.i, align 4
  %add.i591.i = add i32 %246, %244
  %arrayidx6.i.i = getelementptr %struct.dirty_seglist_info, ptr %242, i32 0, i32 4, i32 2
  %247 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %arrayidx6.i.i, align 4
  %add7.i.i = add i32 %add.i591.i, %248
  %arrayidx10.i.i = getelementptr %struct.dirty_seglist_info, ptr %242, i32 0, i32 4, i32 3
  %249 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %arrayidx10.i.i, align 4
  %add11.i.i = add i32 %add7.i.i, %250
  %arrayidx14.i.i = getelementptr %struct.dirty_seglist_info, ptr %242, i32 0, i32 4, i32 4
  %251 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %arrayidx14.i.i, align 4
  %add15.i.i = add i32 %add11.i.i, %252
  %arrayidx18.i.i = getelementptr %struct.dirty_seglist_info, ptr %242, i32 0, i32 4, i32 5
  %253 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %arrayidx18.i.i, align 4
  %add19.i.i = add i32 %add15.i.i, %254
  %dirty_count.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 82
  %255 = ptrtoint ptr %dirty_count.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %add19.i.i, ptr %dirty_count.i, align 4
  %node_inode.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 10
  %256 = ptrtoint ptr %node_inode.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %node_inode.i, align 4
  %tobool119.not.i = icmp eq ptr %257, null
  br i1 %tobool119.not.i, label %utilization.exit.i.if.end122.i_crit_edge, label %if.then120.i

utilization.exit.i.if.end122.i_crit_edge:         ; preds = %utilization.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122.i

if.then120.i:                                     ; preds = %utilization.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %i_mapping.i.i = getelementptr inbounds %struct.inode, ptr %257, i32 0, i32 9
  %258 = ptrtoint ptr %i_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %i_mapping.i.i, align 8
  %nrpages.i = getelementptr inbounds %struct.address_space, ptr %259, i32 0, i32 7
  %260 = ptrtoint ptr %nrpages.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %nrpages.i, align 4
  %node_pages.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 83
  %262 = ptrtoint ptr %node_pages.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %261, ptr %node_pages.i, align 8
  br label %if.end122.i

if.end122.i:                                      ; preds = %if.then120.i, %utilization.exit.i.if.end122.i_crit_edge
  %meta_inode.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 18
  %263 = ptrtoint ptr %meta_inode.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %meta_inode.i, align 8
  %tobool123.not.i = icmp eq ptr %264, null
  br i1 %tobool123.not.i, label %if.end122.i.if.end127.i_crit_edge, label %if.then124.i

if.end122.i.if.end127.i_crit_edge:                ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127.i

if.then124.i:                                     ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #10
  %i_mapping.i592.i = getelementptr inbounds %struct.inode, ptr %264, i32 0, i32 9
  %265 = ptrtoint ptr %i_mapping.i592.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %i_mapping.i592.i, align 8
  %nrpages126.i = getelementptr inbounds %struct.address_space, ptr %266, i32 0, i32 7
  %267 = ptrtoint ptr %nrpages126.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %nrpages126.i, align 4
  %meta_pages.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 84
  %269 = ptrtoint ptr %meta_pages.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %268, ptr %meta_pages.i, align 4
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.then124.i, %if.end122.i.if.end127.i_crit_edge
  %compress_inode.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 144
  %270 = ptrtoint ptr %compress_inode.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %compress_inode.i, align 4
  %tobool128.not.i = icmp eq ptr %271, null
  br i1 %tobool128.not.i, label %if.end127.i.if.end134.i_crit_edge, label %if.then129.i

if.end127.i.if.end134.i_crit_edge:                ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134.i

if.then129.i:                                     ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #10
  %call130.i = tail call ptr @COMPRESS_MAPPING(ptr noundef %1) #8
  %nrpages131.i = getelementptr inbounds %struct.address_space, ptr %call130.i, i32 0, i32 7
  %272 = ptrtoint ptr %nrpages131.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %nrpages131.i, align 4
  %compress_pages.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 85
  %274 = ptrtoint ptr %compress_pages.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %273, ptr %compress_pages.i, align 8
  %compress_page_hit.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 147
  %call.i.i532.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %compress_page_hit.i, i32 noundef 4) #8
  %275 = ptrtoint ptr %compress_page_hit.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load volatile i32, ptr %compress_page_hit.i, align 4
  %compress_page_hit133.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 86
  %277 = ptrtoint ptr %compress_page_hit133.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %276, ptr %compress_page_hit133.i, align 4
  br label %if.end134.i

if.end134.i:                                      ; preds = %if.then129.i, %if.end127.i.if.end134.i_crit_edge
  %nm_info.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 9
  %278 = ptrtoint ptr %nm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %nm_info.i.i, align 8
  %nat_cnt.i = getelementptr inbounds %struct.f2fs_nm_info, ptr %279, i32 0, i32 12
  %280 = ptrtoint ptr %nat_cnt.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %nat_cnt.i, align 4
  %nats.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 28
  %282 = ptrtoint ptr %nats.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %281, ptr %nats.i, align 8
  %283 = load ptr, ptr %nm_info.i.i, align 8
  %arrayidx139.i = getelementptr %struct.f2fs_nm_info, ptr %283, i32 0, i32 12, i32 1
  %284 = ptrtoint ptr %arrayidx139.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %arrayidx139.i, align 4
  %dirty_nats.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 29
  %286 = ptrtoint ptr %dirty_nats.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %285, ptr %dirty_nats.i, align 4
  %287 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %sm_info.i.i, align 8
  %main_segments.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %288, i32 0, i32 9
  %289 = ptrtoint ptr %main_segments.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %main_segments.i, align 4
  %sits.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 30
  %291 = ptrtoint ptr %sits.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %290, ptr %sits.i, align 8
  %292 = load ptr, ptr %sm_info.i.i, align 8
  %293 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %292, align 4
  %dirty_sentries.i = getelementptr inbounds %struct.sit_info, ptr %294, i32 0, i32 11
  %295 = ptrtoint ptr %dirty_sentries.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %dirty_sentries.i, align 4
  %dirty_sits.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 31
  %297 = ptrtoint ptr %dirty_sits.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %296, ptr %dirty_sits.i, align 4
  %298 = load ptr, ptr %nm_info.i.i, align 8
  %nid_cnt.i = getelementptr inbounds %struct.f2fs_nm_info, ptr %298, i32 0, i32 16
  %299 = ptrtoint ptr %nid_cnt.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %nid_cnt.i, align 4
  %free_nids.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 32
  %301 = ptrtoint ptr %free_nids.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %300, ptr %free_nids.i, align 8
  %302 = load ptr, ptr %nm_info.i.i, align 8
  %available_nids.i = getelementptr inbounds %struct.f2fs_nm_info, ptr %302, i32 0, i32 2
  %303 = ptrtoint ptr %available_nids.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %available_nids.i, align 4
  %avail_nids.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 33
  %305 = ptrtoint ptr %avail_nids.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 %304, ptr %avail_nids.i, align 4
  %306 = load ptr, ptr %nm_info.i.i, align 8
  %arrayidx147.i = getelementptr %struct.f2fs_nm_info, ptr %306, i32 0, i32 16, i32 1
  %307 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %arrayidx147.i, align 4
  %alloc_nids.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 34
  %309 = ptrtoint ptr %alloc_nids.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %308, ptr %alloc_nids.i, align 8
  %io_skip_bggc.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 107
  %310 = ptrtoint ptr %io_skip_bggc.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %io_skip_bggc.i, align 4
  %io_skip_bggc148.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 45
  %312 = ptrtoint ptr %io_skip_bggc148.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 %311, ptr %io_skip_bggc148.i, align 4
  %other_skip_bggc.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 108
  %313 = ptrtoint ptr %other_skip_bggc.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %other_skip_bggc.i, align 8
  %other_skip_bggc149.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 46
  %315 = ptrtoint ptr %other_skip_bggc149.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %314, ptr %other_skip_bggc149.i, align 8
  %skipped_atomic_files.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 84
  %316 = ptrtoint ptr %skipped_atomic_files.i to i32
  call void @__asan_load8_noabort(i32 %316)
  %317 = load i64, ptr %skipped_atomic_files.i, align 8
  %skipped_atomic_files151.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 103
  %318 = ptrtoint ptr %skipped_atomic_files151.i to i32
  call void @__asan_store8_noabort(i32 %318)
  store i64 %317, ptr %skipped_atomic_files151.i, align 8
  %arrayidx154.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 84, i32 1
  %319 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_load8_noabort(i32 %319)
  %320 = load i64, ptr %arrayidx154.i, align 8
  %arrayidx156.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 103, i32 1
  %321 = ptrtoint ptr %arrayidx156.i to i32
  call void @__asan_store8_noabort(i32 %321)
  store i64 %320, ptr %arrayidx156.i, align 8
  %322 = ptrtoint ptr %raw_super.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %raw_super.i.i, align 8
  %feature.i.i.i.i = getelementptr inbounds %struct.f2fs_super_block, ptr %323, i32 0, i32 34
  %324 = ptrtoint ptr %feature.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %324, i32 4)
  %325 = load i32, ptr %feature.i.i.i.i, align 1
  %326 = and i32 %325, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %326)
  %tobool.not.i.i.i = icmp eq i32 %326, 0
  %327 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %sm_info.i.i, align 8
  %free_info.i.i7.i.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %328, i32 0, i32 1
  %329 = ptrtoint ptr %free_info.i.i7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %free_info.i.i7.i.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end134.i
  %segmap_lock.i.i.i.i = getelementptr inbounds %struct.free_segmap_info, ptr %330, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %segmap_lock.i.i.i.i) #8
  %331 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %sm_info.i.i, align 8
  %main_segments13.i.i.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %332, i32 0, i32 9
  %333 = ptrtoint ptr %main_segments13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %main_segments13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %334)
  %cmp14.not.i.i.i.i = icmp eq i32 %334, 0
  br i1 %cmp14.not.i.i.i.i, label %if.then.i.i.i.free_segs_blk_count_zoned.exit.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i.i

if.then.i.i.i.free_segs_blk_count_zoned.exit.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_segs_blk_count_zoned.exit.i.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %if.then.i.i.i
  %free_segmap.i.i.i.i = getelementptr inbounds %struct.free_segmap_info, ptr %330, i32 0, i32 4
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %j.016.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i ], [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %free_seg_blks.015.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i ], [ %free_seg_blks.1.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %335 = ptrtoint ptr %free_segmap.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %free_segmap.i.i.i.i, align 4
  %div3.i.i.i.i.i = lshr i32 %j.016.i.i.i.i, 5
  %arrayidx.i.i.i.i.i = getelementptr i32, ptr %336, i32 %div3.i.i.i.i.i
  %337 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %and.i.i.i.i599.i = and i32 %j.016.i.i.i.i, 31
  %339 = shl nuw i32 1, %and.i.i.i.i599.i
  %340 = and i32 %338, %339
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %340)
  %tobool.not.i.i.i600.i = icmp eq i32 %340, 0
  br i1 %tobool.not.i.i.i600.i, label %if.then.i.i.i602.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i.i

if.then.i.i.i602.i:                               ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.i.i.i = tail call i32 @f2fs_usable_blks_in_seg(ptr noundef %1, i32 noundef %j.016.i.i.i.i) #8
  %add.i.i.i601.i = add i32 %call3.i.i.i.i, %free_seg_blks.015.i.i.i.i
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %if.then.i.i.i602.i, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %free_seg_blks.1.i.i.i.i = phi i32 [ %free_seg_blks.015.i.i.i.i, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge ], [ %add.i.i.i601.i, %if.then.i.i.i602.i ]
  %inc.i.i.i.i = add nuw i32 %j.016.i.i.i.i, 1
  %341 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %sm_info.i.i, align 8
  %main_segments.i.i.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %342, i32 0, i32 9
  %343 = ptrtoint ptr %main_segments.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %main_segments.i.i.i.i, align 4
  %cmp.i.i.i603.i = icmp ult i32 %inc.i.i.i.i, %344
  br i1 %cmp.i.i.i603.i, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.free_segs_blk_count_zoned.exit.i.i.i_crit_edge

for.inc.i.i.i.i.free_segs_blk_count_zoned.exit.i.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_segs_blk_count_zoned.exit.i.i.i

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i.i

free_segs_blk_count_zoned.exit.i.i.i:             ; preds = %for.inc.i.i.i.i.free_segs_blk_count_zoned.exit.i.i.i_crit_edge, %if.then.i.i.i.free_segs_blk_count_zoned.exit.i.i.i_crit_edge
  %free_seg_blks.0.lcssa.i.i.i.i = phi i32 [ 0, %if.then.i.i.i.free_segs_blk_count_zoned.exit.i.i.i_crit_edge ], [ %free_seg_blks.1.i.i.i.i, %for.inc.i.i.i.i.free_segs_blk_count_zoned.exit.i.i.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %segmap_lock.i.i.i.i) #8
  br label %free_user_blocks.exit.i

if.end.i.i.i:                                     ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #10
  %free_segments.i.i.i.i = getelementptr inbounds %struct.free_segmap_info, ptr %330, i32 0, i32 1
  %345 = ptrtoint ptr %free_segments.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %free_segments.i.i.i.i, align 4
  %log_blocks_per_seg.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 50
  %347 = ptrtoint ptr %log_blocks_per_seg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %log_blocks_per_seg.i.i.i, align 8
  %shl.i.i.i = shl i32 %346, %348
  br label %free_user_blocks.exit.i

free_user_blocks.exit.i:                          ; preds = %if.end.i.i.i, %free_segs_blk_count_zoned.exit.i.i.i
  %retval.0.i.i.i = phi i32 [ %free_seg_blks.0.lcssa.i.i.i.i, %free_segs_blk_count_zoned.exit.i.i.i ], [ %shl.i.i.i, %if.end.i.i.i ]
  %349 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %sm_info.i.i, align 8
  %ovp_segments.i.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %350, i32 0, i32 12
  %351 = ptrtoint ptr %ovp_segments.i.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %ovp_segments.i.i.i, align 4
  %log_blocks_per_seg.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 50
  %353 = ptrtoint ptr %log_blocks_per_seg.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %log_blocks_per_seg.i.i, align 8
  %shl.i.i = shl i32 %352, %354
  %355 = tail call i32 @llvm.usub.sat.i32(i32 %retval.0.i.i.i, i32 %shl.i.i) #8
  %shr.i = lshr i32 %355, %354
  %mul.i = mul i32 %shr.i, 100
  %356 = ptrtoint ptr %user_block_count.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %user_block_count.i, align 8
  %shr160.i = lshr i32 %357, %354
  %div161.i = sdiv i32 %mul.i, %shr160.i
  %div162.i = sdiv i32 %div161.i, 2
  %util_free.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 77
  %358 = ptrtoint ptr %util_free.i to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 %div162.i, ptr %util_free.i, align 8
  %359 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %sm_info.i.i, align 8
  %361 = ptrtoint ptr %360 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %360, align 4
  %written_valid_blocks.i.i = getelementptr inbounds %struct.sit_info, ptr %362, i32 0, i32 3
  %363 = ptrtoint ptr %written_valid_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %written_valid_blocks.i.i, align 4
  %365 = ptrtoint ptr %log_blocks_per_seg.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %log_blocks_per_seg.i.i, align 8
  %shr165.i = lshr i32 %364, %366
  %mul166.i = mul i32 %shr165.i, 100
  %367 = load i32, ptr %user_block_count.i, align 8
  %shr169.i = lshr i32 %367, %366
  %div170.i = sdiv i32 %mul166.i, %shr169.i
  %div171.i = sdiv i32 %div170.i, 2
  %util_valid.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 78
  %368 = ptrtoint ptr %util_valid.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 %div171.i, ptr %util_valid.i, align 4
  %369 = add nsw i32 %div162.i, %div171.i
  %sub174.i = sub i32 50, %369
  %util_invalid.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 79
  %370 = ptrtoint ptr %util_invalid.i to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 %sub174.i, ptr %util_invalid.i, align 8
  %segs_per_sec.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 52
  %secs_per_zone193.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 53
  %371 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %371, i32 0, i32 3
  %372 = ptrtoint ptr %curseg_array.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %curseg_array.i.i, align 4
  %segno.i = getelementptr %struct.curseg_info, ptr %373, i32 0, i32 6
  %374 = ptrtoint ptr %segno.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %segno.i, align 4
  %arrayidx178.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 104, i32 0
  %376 = ptrtoint ptr %arrayidx178.i to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 %375, ptr %arrayidx178.i, align 4
  %377 = load i32, ptr %segno.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %377)
  %cmp180.i = icmp eq i32 %377, -1
  br i1 %cmp180.i, label %cond.end.thread.i, label %cond.end.i

cond.end.thread.i:                                ; preds = %free_user_blocks.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx184613.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 105, i32 0
  %378 = ptrtoint ptr %arrayidx184613.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 -1, ptr %arrayidx184613.i, align 4
  br label %cond.end195.i

cond.end.i:                                       ; preds = %free_user_blocks.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %379 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %segs_per_sec.i, align 8
  %div183.i = udiv i32 %377, %380
  %arrayidx184.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 105, i32 0
  %381 = ptrtoint ptr %arrayidx184.i to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %div183.i, ptr %arrayidx184.i, align 4
  %382 = ptrtoint ptr %secs_per_zone193.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %secs_per_zone193.i, align 4
  %div194.i = udiv i32 %div183.i, %383
  br label %cond.end195.i

cond.end195.i:                                    ; preds = %cond.end.i, %cond.end.thread.i
  %cond196.i = phi i32 [ %div194.i, %cond.end.i ], [ -1, %cond.end.thread.i ]
  %arrayidx197.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 106, i32 0
  %384 = ptrtoint ptr %arrayidx197.i to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 %cond196.i, ptr %arrayidx197.i, align 4
  %385 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.1.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %386, i32 0, i32 3
  %387 = ptrtoint ptr %curseg_array.i.1.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %curseg_array.i.1.i, align 4
  %segno.1.i = getelementptr %struct.curseg_info, ptr %388, i32 1, i32 6
  %389 = ptrtoint ptr %segno.1.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %segno.1.i, align 4
  %arrayidx178.1.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 104, i32 1
  %391 = ptrtoint ptr %arrayidx178.1.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %390, ptr %arrayidx178.1.i, align 4
  %392 = load i32, ptr %segno.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %392)
  %cmp180.1.i = icmp eq i32 %392, -1
  br i1 %cmp180.1.i, label %cond.end.thread.1.i, label %cond.end.1.i

cond.end.1.i:                                     ; preds = %cond.end195.i
  call void @__sanitizer_cov_trace_pc() #10
  %393 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %segs_per_sec.i, align 8
  %div183.1.i = udiv i32 %392, %394
  %arrayidx184.1.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 105, i32 1
  %395 = ptrtoint ptr %arrayidx184.1.i to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 %div183.1.i, ptr %arrayidx184.1.i, align 4
  %396 = ptrtoint ptr %secs_per_zone193.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %secs_per_zone193.i, align 4
  %div194.1.i = udiv i32 %div183.1.i, %397
  br label %cond.end195.1.i

cond.end.thread.1.i:                              ; preds = %cond.end195.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx184613.1.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 105, i32 1
  %398 = ptrtoint ptr %arrayidx184613.1.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 -1, ptr %arrayidx184613.1.i, align 4
  br label %cond.end195.1.i

cond.end195.1.i:                                  ; preds = %cond.end.thread.1.i, %cond.end.1.i
  %cond196.1.i = phi i32 [ %div194.1.i, %cond.end.1.i ], [ -1, %cond.end.thread.1.i ]
  %arrayidx197.1.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 106, i32 1
  %399 = ptrtoint ptr %arrayidx197.1.i to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 %cond196.1.i, ptr %arrayidx197.1.i, align 4
  %400 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.2.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %401, i32 0, i32 3
  %402 = ptrtoint ptr %curseg_array.i.2.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %curseg_array.i.2.i, align 4
  %segno.2.i = getelementptr %struct.curseg_info, ptr %403, i32 2, i32 6
  %404 = ptrtoint ptr %segno.2.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %segno.2.i, align 4
  %arrayidx178.2.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 104, i32 2
  %406 = ptrtoint ptr %arrayidx178.2.i to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 %405, ptr %arrayidx178.2.i, align 4
  %407 = load i32, ptr %segno.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %407)
  %cmp180.2.i = icmp eq i32 %407, -1
  br i1 %cmp180.2.i, label %cond.end.thread.2.i, label %cond.end.2.i

cond.end.2.i:                                     ; preds = %cond.end195.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %408 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %segs_per_sec.i, align 8
  %div183.2.i = udiv i32 %407, %409
  %arrayidx184.2.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 105, i32 2
  %410 = ptrtoint ptr %arrayidx184.2.i to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 %div183.2.i, ptr %arrayidx184.2.i, align 4
  %411 = ptrtoint ptr %secs_per_zone193.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %secs_per_zone193.i, align 4
  %div194.2.i = udiv i32 %div183.2.i, %412
  br label %cond.end195.2.i

cond.end.thread.2.i:                              ; preds = %cond.end195.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx184613.2.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 105, i32 2
  %413 = ptrtoint ptr %arrayidx184613.2.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 -1, ptr %arrayidx184613.2.i, align 4
  br label %cond.end195.2.i

cond.end195.2.i:                                  ; preds = %cond.end.thread.2.i, %cond.end.2.i
  %cond196.2.i = phi i32 [ %div194.2.i, %cond.end.2.i ], [ -1, %cond.end.thread.2.i ]
  %arrayidx197.2.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 106, i32 2
  %414 = ptrtoint ptr %arrayidx197.2.i to i32
  call void @__asan_store4_noabort(i32 %414)
  store i32 %cond196.2.i, ptr %arrayidx197.2.i, align 4
  %415 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.3.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %416, i32 0, i32 3
  %417 = ptrtoint ptr %curseg_array.i.3.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %curseg_array.i.3.i, align 4
  %segno.3.i = getelementptr %struct.curseg_info, ptr %418, i32 3, i32 6
  %419 = ptrtoint ptr %segno.3.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %segno.3.i, align 4
  %arrayidx178.3.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 104, i32 3
  %421 = ptrtoint ptr %arrayidx178.3.i to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 %420, ptr %arrayidx178.3.i, align 4
  %422 = load i32, ptr %segno.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %422)
  %cmp180.3.i = icmp eq i32 %422, -1
  br i1 %cmp180.3.i, label %cond.end.thread.3.i, label %cond.end.3.i

cond.end.3.i:                                     ; preds = %cond.end195.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %423 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %segs_per_sec.i, align 8
  %div183.3.i = udiv i32 %422, %424
  %arrayidx184.3.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 105, i32 3
  %425 = ptrtoint ptr %arrayidx184.3.i to i32
  call void @__asan_store4_noabort(i32 %425)
  store i32 %div183.3.i, ptr %arrayidx184.3.i, align 4
  %426 = ptrtoint ptr %secs_per_zone193.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %secs_per_zone193.i, align 4
  %div194.3.i = udiv i32 %div183.3.i, %427
  br label %cond.end195.3.i

cond.end.thread.3.i:                              ; preds = %cond.end195.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx184613.3.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 105, i32 3
  %428 = ptrtoint ptr %arrayidx184613.3.i to i32
  call void @__asan_store4_noabort(i32 %428)
  store i32 -1, ptr %arrayidx184613.3.i, align 4
  br label %cond.end195.3.i

cond.end195.3.i:                                  ; preds = %cond.end.thread.3.i, %cond.end.3.i
  %cond196.3.i = phi i32 [ %div194.3.i, %cond.end.3.i ], [ -1, %cond.end.thread.3.i ]
  %arrayidx197.3.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 106, i32 3
  %429 = ptrtoint ptr %arrayidx197.3.i to i32
  call void @__asan_store4_noabort(i32 %429)
  store i32 %cond196.3.i, ptr %arrayidx197.3.i, align 4
  %430 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.4.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %431, i32 0, i32 3
  %432 = ptrtoint ptr %curseg_array.i.4.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %curseg_array.i.4.i, align 4
  %segno.4.i = getelementptr %struct.curseg_info, ptr %433, i32 4, i32 6
  %434 = ptrtoint ptr %segno.4.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %segno.4.i, align 4
  %arrayidx178.4.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 104, i32 4
  %436 = ptrtoint ptr %arrayidx178.4.i to i32
  call void @__asan_store4_noabort(i32 %436)
  store i32 %435, ptr %arrayidx178.4.i, align 4
  %437 = load i32, ptr %segno.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %437)
  %cmp180.4.i = icmp eq i32 %437, -1
  br i1 %cmp180.4.i, label %cond.end.thread.4.i, label %cond.end.4.i

cond.end.4.i:                                     ; preds = %cond.end195.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %438 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %segs_per_sec.i, align 8
  %div183.4.i = udiv i32 %437, %439
  %arrayidx184.4.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 105, i32 4
  %440 = ptrtoint ptr %arrayidx184.4.i to i32
  call void @__asan_store4_noabort(i32 %440)
  store i32 %div183.4.i, ptr %arrayidx184.4.i, align 4
  %441 = ptrtoint ptr %secs_per_zone193.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %secs_per_zone193.i, align 4
  %div194.4.i = udiv i32 %div183.4.i, %442
  br label %cond.end195.4.i

cond.end.thread.4.i:                              ; preds = %cond.end195.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx184613.4.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 105, i32 4
  %443 = ptrtoint ptr %arrayidx184613.4.i to i32
  call void @__asan_store4_noabort(i32 %443)
  store i32 -1, ptr %arrayidx184613.4.i, align 4
  br label %cond.end195.4.i

cond.end195.4.i:                                  ; preds = %cond.end.thread.4.i, %cond.end.4.i
  %cond196.4.i = phi i32 [ %div194.4.i, %cond.end.4.i ], [ -1, %cond.end.thread.4.i ]
  %arrayidx197.4.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 106, i32 4
  %444 = ptrtoint ptr %arrayidx197.4.i to i32
  call void @__asan_store4_noabort(i32 %444)
  store i32 %cond196.4.i, ptr %arrayidx197.4.i, align 4
  %445 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.5.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %446, i32 0, i32 3
  %447 = ptrtoint ptr %curseg_array.i.5.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %curseg_array.i.5.i, align 4
  %segno.5.i = getelementptr %struct.curseg_info, ptr %448, i32 5, i32 6
  %449 = ptrtoint ptr %segno.5.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %segno.5.i, align 4
  %arrayidx178.5.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 104, i32 5
  %451 = ptrtoint ptr %arrayidx178.5.i to i32
  call void @__asan_store4_noabort(i32 %451)
  store i32 %450, ptr %arrayidx178.5.i, align 4
  %452 = load i32, ptr %segno.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %452)
  %cmp180.5.i = icmp eq i32 %452, -1
  br i1 %cmp180.5.i, label %cond.end.thread.5.i, label %cond.end.5.i

cond.end.5.i:                                     ; preds = %cond.end195.4.i
  call void @__sanitizer_cov_trace_pc() #10
  %453 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %segs_per_sec.i, align 8
  %div183.5.i = udiv i32 %452, %454
  %arrayidx184.5.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 105, i32 5
  %455 = ptrtoint ptr %arrayidx184.5.i to i32
  call void @__asan_store4_noabort(i32 %455)
  store i32 %div183.5.i, ptr %arrayidx184.5.i, align 4
  %456 = ptrtoint ptr %secs_per_zone193.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %secs_per_zone193.i, align 4
  %div194.5.i = udiv i32 %div183.5.i, %457
  br label %cond.end195.5.i

cond.end.thread.5.i:                              ; preds = %cond.end195.4.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx184613.5.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 105, i32 5
  %458 = ptrtoint ptr %arrayidx184613.5.i to i32
  call void @__asan_store4_noabort(i32 %458)
  store i32 -1, ptr %arrayidx184613.5.i, align 4
  br label %cond.end195.5.i

cond.end195.5.i:                                  ; preds = %cond.end.thread.5.i, %cond.end.5.i
  %cond196.5.i = phi i32 [ %div194.5.i, %cond.end.5.i ], [ -1, %cond.end.thread.5.i ]
  %arrayidx197.5.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 106, i32 5
  %459 = ptrtoint ptr %arrayidx197.5.i to i32
  call void @__asan_store4_noabort(i32 %459)
  store i32 %cond196.5.i, ptr %arrayidx197.5.i, align 4
  %460 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.6.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %461, i32 0, i32 3
  %462 = ptrtoint ptr %curseg_array.i.6.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %curseg_array.i.6.i, align 4
  %segno.6.i = getelementptr %struct.curseg_info, ptr %463, i32 6, i32 6
  %464 = ptrtoint ptr %segno.6.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %segno.6.i, align 4
  %arrayidx178.6.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 104, i32 6
  %466 = ptrtoint ptr %arrayidx178.6.i to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 %465, ptr %arrayidx178.6.i, align 4
  %467 = load i32, ptr %segno.6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %467)
  %cmp180.6.i = icmp eq i32 %467, -1
  br i1 %cmp180.6.i, label %cond.end.thread.6.i, label %cond.end.6.i

cond.end.6.i:                                     ; preds = %cond.end195.5.i
  call void @__sanitizer_cov_trace_pc() #10
  %468 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %segs_per_sec.i, align 8
  %div183.6.i = udiv i32 %467, %469
  %arrayidx184.6.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 105, i32 6
  %470 = ptrtoint ptr %arrayidx184.6.i to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 %div183.6.i, ptr %arrayidx184.6.i, align 4
  %471 = ptrtoint ptr %secs_per_zone193.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %secs_per_zone193.i, align 4
  %div194.6.i = udiv i32 %div183.6.i, %472
  br label %cond.end195.6.i

cond.end.thread.6.i:                              ; preds = %cond.end195.5.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx184613.6.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 105, i32 6
  %473 = ptrtoint ptr %arrayidx184613.6.i to i32
  call void @__asan_store4_noabort(i32 %473)
  store i32 -1, ptr %arrayidx184613.6.i, align 4
  br label %cond.end195.6.i

cond.end195.6.i:                                  ; preds = %cond.end.thread.6.i, %cond.end.6.i
  %cond196.6.i = phi i32 [ %div194.6.i, %cond.end.6.i ], [ -1, %cond.end.thread.6.i ]
  %arrayidx197.6.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 106, i32 6
  %474 = ptrtoint ptr %arrayidx197.6.i to i32
  call void @__asan_store4_noabort(i32 %474)
  store i32 %cond196.6.i, ptr %arrayidx197.6.i, align 4
  %475 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.7.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %476, i32 0, i32 3
  %477 = ptrtoint ptr %curseg_array.i.7.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %curseg_array.i.7.i, align 4
  %segno.7.i = getelementptr %struct.curseg_info, ptr %478, i32 7, i32 6
  %479 = ptrtoint ptr %segno.7.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %segno.7.i, align 4
  %arrayidx178.7.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 104, i32 7
  %481 = ptrtoint ptr %arrayidx178.7.i to i32
  call void @__asan_store4_noabort(i32 %481)
  store i32 %480, ptr %arrayidx178.7.i, align 4
  %482 = load i32, ptr %segno.7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %482)
  %cmp180.7.i = icmp eq i32 %482, -1
  br i1 %cmp180.7.i, label %cond.end.thread.7.i, label %cond.end.7.i

cond.end.7.i:                                     ; preds = %cond.end195.6.i
  call void @__sanitizer_cov_trace_pc() #10
  %483 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %segs_per_sec.i, align 8
  %div183.7.i = udiv i32 %482, %484
  %arrayidx184.7.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 105, i32 7
  %485 = ptrtoint ptr %arrayidx184.7.i to i32
  call void @__asan_store4_noabort(i32 %485)
  store i32 %div183.7.i, ptr %arrayidx184.7.i, align 4
  %486 = ptrtoint ptr %secs_per_zone193.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %secs_per_zone193.i, align 4
  %div194.7.i = udiv i32 %div183.7.i, %487
  br label %cond.end195.7.i

cond.end.thread.7.i:                              ; preds = %cond.end195.6.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx184613.7.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 105, i32 7
  %488 = ptrtoint ptr %arrayidx184613.7.i to i32
  call void @__asan_store4_noabort(i32 %488)
  store i32 -1, ptr %arrayidx184613.7.i, align 4
  br label %cond.end195.7.i

cond.end195.7.i:                                  ; preds = %cond.end.thread.7.i, %cond.end.7.i
  %cond196.7.i = phi i32 [ %div194.7.i, %cond.end.7.i ], [ -1, %cond.end.thread.7.i ]
  %arrayidx197.7.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 106, i32 7
  %489 = ptrtoint ptr %arrayidx197.7.i to i32
  call void @__asan_store4_noabort(i32 %489)
  store i32 %cond196.7.i, ptr %arrayidx197.7.i, align 4
  %arrayidx202.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 91, i32 0
  %call.i.i533.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx202.i, i32 noundef 4) #8
  %490 = ptrtoint ptr %arrayidx202.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load volatile i32, ptr %arrayidx202.i, align 4
  %arrayidx205.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 110, i32 0
  %492 = ptrtoint ptr %arrayidx205.i to i32
  call void @__asan_store4_noabort(i32 %492)
  store i32 %491, ptr %arrayidx205.i, align 4
  %arrayidx202.1.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 91, i32 1
  %call.i.i533.1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx202.1.i, i32 noundef 4) #8
  %493 = ptrtoint ptr %arrayidx202.1.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load volatile i32, ptr %arrayidx202.1.i, align 4
  %arrayidx205.1.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 110, i32 1
  %495 = ptrtoint ptr %arrayidx205.1.i to i32
  call void @__asan_store4_noabort(i32 %495)
  store i32 %494, ptr %arrayidx205.1.i, align 4
  %arrayidx202.2.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 91, i32 2
  %call.i.i533.2.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx202.2.i, i32 noundef 4) #8
  %496 = ptrtoint ptr %arrayidx202.2.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load volatile i32, ptr %arrayidx202.2.i, align 4
  %arrayidx205.2.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 110, i32 2
  %498 = ptrtoint ptr %arrayidx205.2.i to i32
  call void @__asan_store4_noabort(i32 %498)
  store i32 %497, ptr %arrayidx205.2.i, align 4
  %arrayidx202.3.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 91, i32 3
  %call.i.i533.3.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx202.3.i, i32 noundef 4) #8
  %499 = ptrtoint ptr %arrayidx202.3.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load volatile i32, ptr %arrayidx202.3.i, align 4
  %arrayidx205.3.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 110, i32 3
  %501 = ptrtoint ptr %arrayidx205.3.i to i32
  call void @__asan_store4_noabort(i32 %501)
  store i32 %500, ptr %arrayidx205.3.i, align 4
  %arrayidx213.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 107, i32 0
  %502 = call ptr @memset(ptr %arrayidx213.i, i32 0, i32 96)
  %503 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %sm_info.i.i, align 8
  %main_segments221619.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %504, i32 0, i32 9
  %505 = ptrtoint ptr %main_segments221619.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load i32, ptr %main_segments221619.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %506)
  %cmp222620.not.i = icmp eq i32 %506, 0
  br i1 %cmp222620.not.i, label %cond.end195.7.i.update_general_status.exit_crit_edge, label %cond.end195.7.i.for.body224.i_crit_edge

cond.end195.7.i.for.body224.i_crit_edge:          ; preds = %cond.end195.7.i
  br label %for.body224.i

cond.end195.7.i.update_general_status.exit_crit_edge: ; preds = %cond.end195.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_general_status.exit

for.body224.i:                                    ; preds = %cleanup.i.for.body224.i_crit_edge, %cond.end195.7.i.for.body224.i_crit_edge
  %507 = phi ptr [ %520, %cleanup.i.for.body224.i_crit_edge ], [ %504, %cond.end195.7.i.for.body224.i_crit_edge ]
  %i.3621.i = phi i32 [ %inc248.i, %cleanup.i.for.body224.i_crit_edge ], [ 0, %cond.end195.7.i.for.body224.i_crit_edge ]
  %508 = ptrtoint ptr %507 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %507, align 4
  %sentries.i.i = getelementptr inbounds %struct.sit_info, ptr %509, i32 0, i32 14
  %510 = ptrtoint ptr %sentries.i.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %sentries.i.i, align 4
  %arrayidx.i608.i = getelementptr %struct.seg_entry, ptr %511, i32 %i.3621.i
  %512 = ptrtoint ptr %arrayidx.i608.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %bf.load.i = load i32, ptr %arrayidx.i608.i, align 8
  %bf.lshr.i = lshr i32 %bf.load.i, 16
  %bf.clear.i = and i32 %bf.lshr.i, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i)
  %tobool229.not.i = icmp eq i32 %bf.clear.i, 0
  br i1 %tobool229.not.i, label %for.body224.i.cleanup.i_crit_edge, label %if.end231.i

for.body224.i.cleanup.i_crit_edge:                ; preds = %for.body224.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end231.i:                                      ; preds = %for.body224.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.lshr228.i = lshr i32 %bf.load.i, 26
  %513 = ptrtoint ptr %blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %blocks_per_seg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear.i, i32 %514)
  %cmp233.i = icmp eq i32 %bf.clear.i, %514
  %arrayidx240.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 107, i32 %bf.lshr228.i
  %arrayidx237.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 108, i32 %bf.lshr228.i
  %arrayidx240.sink623.i = select i1 %cmp233.i, ptr %arrayidx237.i, ptr %arrayidx240.i
  %515 = ptrtoint ptr %arrayidx240.sink623.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %arrayidx240.sink623.i, align 4
  %inc241.i = add i32 %516, 1
  store i32 %inc241.i, ptr %arrayidx240.sink623.i, align 4
  %arrayidx244.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 109, i32 %bf.lshr228.i
  %517 = ptrtoint ptr %arrayidx244.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %arrayidx244.i, align 4
  %add245.i = add i32 %518, %bf.clear.i
  store i32 %add245.i, ptr %arrayidx244.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end231.i, %for.body224.i.cleanup.i_crit_edge
  %inc248.i = add nuw i32 %i.3621.i, 1
  %519 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %sm_info.i.i, align 8
  %main_segments221.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %520, i32 0, i32 9
  %521 = ptrtoint ptr %main_segments221.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %main_segments221.i, align 4
  %cmp222.i = icmp ult i32 %inc248.i, %522
  br i1 %cmp222.i, label %cleanup.i.for.body224.i_crit_edge, label %cleanup.i.update_general_status.exit_crit_edge

cleanup.i.update_general_status.exit_crit_edge:   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_general_status.exit

cleanup.i.for.body224.i_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body224.i

update_general_status.exit:                       ; preds = %cleanup.i.update_general_status.exit_crit_edge, %cond.end195.7.i.update_general_status.exit_crit_edge
  %arrayidx254.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 92, i32 0
  %523 = ptrtoint ptr %arrayidx254.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load i32, ptr %arrayidx254.i, align 4
  %arrayidx256.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 111, i32 0
  %525 = ptrtoint ptr %arrayidx256.i to i32
  call void @__asan_store4_noabort(i32 %525)
  store i32 %524, ptr %arrayidx256.i, align 4
  %arrayidx257.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 93, i32 0
  %526 = ptrtoint ptr %arrayidx257.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load i32, ptr %arrayidx257.i, align 4
  %arrayidx259.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 112, i32 0
  %528 = ptrtoint ptr %arrayidx259.i to i32
  call void @__asan_store4_noabort(i32 %528)
  store i32 %527, ptr %arrayidx259.i, align 4
  %arrayidx254.1.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 92, i32 1
  %529 = ptrtoint ptr %arrayidx254.1.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %arrayidx254.1.i, align 4
  %arrayidx256.1.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 111, i32 1
  %531 = ptrtoint ptr %arrayidx256.1.i to i32
  call void @__asan_store4_noabort(i32 %531)
  store i32 %530, ptr %arrayidx256.1.i, align 4
  %arrayidx257.1.i = getelementptr %struct.f2fs_sb_info, ptr %1, i32 0, i32 93, i32 1
  %532 = ptrtoint ptr %arrayidx257.1.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load i32, ptr %arrayidx257.1.i, align 4
  %arrayidx259.1.i = getelementptr %struct.f2fs_stat_info, ptr %3, i32 0, i32 112, i32 1
  %534 = ptrtoint ptr %arrayidx259.1.i to i32
  call void @__asan_store4_noabort(i32 %534)
  store i32 %533, ptr %arrayidx259.1.i, align 4
  %inplace_count.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 94
  %call.i.i534.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %inplace_count.i, i32 noundef 4) #8
  %535 = ptrtoint ptr %inplace_count.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load volatile i32, ptr %inplace_count.i, align 4
  %inplace_count264.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %3, i32 0, i32 113
  %537 = ptrtoint ptr %inplace_count264.i to i32
  call void @__asan_store4_noabort(i32 %537)
  store i32 %536, ptr %inplace_count264.i, align 8
  %538 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %sbi, align 8
  %540 = ptrtoint ptr %539 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %539, align 8
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %541, i32 0, i32 26
  %542 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %s_bdev, align 4
  %inc = add i32 %i.0525, 1
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %541, i32 0, i32 10
  %544 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %s_flags.i.i, align 4
  %and.i.i = and i32 %545, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  %cond = select i1 %tobool.i.i.not, ptr @.str.10, ptr @.str.9
  %ckpt.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %539, i32 0, i32 15
  %546 = ptrtoint ptr %ckpt.i.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %ckpt.i.i, align 4
  %ckpt_flags1.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %547, i32 0, i32 10
  %548 = ptrtoint ptr %ckpt_flags1.i.i to i32
  call void @__asan_loadN_noabort(i32 %548, i32 4)
  %549 = load i32, ptr %ckpt_flags1.i.i, align 1
  %550 = and i32 %549, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %550)
  %tobool.i.i482.not = icmp eq i32 %550, 0
  %551 = and i32 %549, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %551)
  %tobool.i.i.i.not = icmp eq i32 %551, 0
  %cond8 = select i1 %tobool.i.i.i.not, ptr @.str.13, ptr @.str.12
  %cond9 = select i1 %tobool.i.i482.not, ptr %cond8, ptr @.str.11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef %543, i32 noundef %i.0525, ptr noundef nonnull %cond, ptr noundef nonnull %cond9) #8
  %552 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %sbi, align 8
  %s_flag = getelementptr inbounds %struct.f2fs_sb_info, ptr %553, i32 0, i32 5
  %554 = ptrtoint ptr %s_flag to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load i32, ptr %s_flag, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %555)
  %tobool.not = icmp eq i32 %555, 0
  br i1 %tobool.not, label %update_general_status.exit.if.end_crit_edge, label %if.then

update_general_status.exit.if.end_crit_edge:      ; preds = %update_general_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %update_general_status.exit
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.14) #8
  %556 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %sbi, align 8
  %s_flag12 = getelementptr inbounds %struct.f2fs_sb_info, ptr %557, i32 0, i32 5
  %call13 = tail call i32 @_find_next_bit_be(ptr noundef %s_flag12, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call13)
  %cmp15515 = icmp slt i32 %call13, 32
  br i1 %cmp15515, label %if.then.for.body16_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then.for.body16_crit_edge:                     ; preds = %if.then
  br label %for.body16

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %if.then.for.body16_crit_edge
  %j.0516 = phi i32 [ %call19, %for.body16.for.body16_crit_edge ], [ %call13, %if.then.for.body16_crit_edge ]
  %arrayidx = getelementptr [14 x ptr], ptr @s_flag, i32 0, i32 %j.0516
  %558 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %arrayidx, align 4
  tail call void @seq_puts(ptr noundef %s, ptr noundef %559) #8
  %560 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %sbi, align 8
  %s_flag18 = getelementptr inbounds %struct.f2fs_sb_info, ptr %561, i32 0, i32 5
  %add = add nsw i32 %j.0516, 1
  %call19 = tail call i32 @_find_next_bit_be(ptr noundef %s_flag18, i32 noundef 32, i32 noundef %add) #8
  %cmp15 = icmp slt i32 %call19, 32
  br i1 %cmp15, label %for.body16.for.body16_crit_edge, label %for.body16.for.end_crit_edge

for.body16.for.end_crit_edge:                     ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body16

for.end:                                          ; preds = %for.body16.for.end_crit_edge, %if.then.for.end_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.15) #8
  br label %if.end

if.end:                                           ; preds = %for.end, %update_general_status.exit.if.end_crit_edge
  %sit_area_segs = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 3
  %562 = ptrtoint ptr %sit_area_segs to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load i32, ptr %sit_area_segs, align 8
  %nat_area_segs = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 4
  %564 = ptrtoint ptr %nat_area_segs to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load i32, ptr %nat_area_segs, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, i32 noundef %563, i32 noundef %565) #8
  %ssa_area_segs = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 5
  %566 = ptrtoint ptr %ssa_area_segs to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load i32, ptr %ssa_area_segs, align 8
  %main_area_segs = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 6
  %568 = ptrtoint ptr %main_area_segs to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load i32, ptr %main_area_segs, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.17, i32 noundef %567, i32 noundef %569) #8
  %overp_segs = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 81
  %570 = ptrtoint ptr %overp_segs to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load i32, ptr %overp_segs, align 8
  %rsvd_segs = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 80
  %572 = ptrtoint ptr %rsvd_segs to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %rsvd_segs, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.18, i32 noundef %571, i32 noundef %573) #8
  %call.i.i483 = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i483)
  %cmp8.i.i = icmp slt i64 %call.i.i483, 0
  %574 = tail call i64 @llvm.abs.i64(i64 %call.i.i483, i1 false) #8
  %575 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %574, i32 0) #11, !srcloc !230
  %asmresult.i.i.i = extractvalue { i64, i32 } %575, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %575, 1
  %576 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %574, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #11, !srcloc !231
  %asmresult10.i.i.i = extractvalue { i64, i32 } %576, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 29
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  %577 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %sbi, align 8
  %sm_info.i.i484 = getelementptr inbounds %struct.f2fs_sb_info, ptr %578, i32 0, i32 11
  %579 = ptrtoint ptr %sm_info.i.i484 to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %sm_info.i.i484, align 8
  %581 = ptrtoint ptr %580 to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %580, align 4
  %mounted_time = getelementptr inbounds %struct.sit_info, ptr %582, i32 0, i32 17
  %583 = ptrtoint ptr %mounted_time to i32
  call void @__asan_load8_noabort(i32 %583)
  %584 = load i64, ptr %mounted_time, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.19, i64 noundef %cond213.i.i, i64 noundef %584) #8
  %585 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %sbi, align 8
  %mount_opt = getelementptr inbounds %struct.f2fs_sb_info, ptr %586, i32 0, i32 73
  %587 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load i32, ptr %mount_opt, align 8
  %and = and i32 %588, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  %utilization26 = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 36
  %589 = ptrtoint ptr %utilization26 to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load i32, ptr %utilization26, align 8
  %valid_count27 = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 71
  %591 = ptrtoint ptr %valid_count27 to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load i32, ptr %valid_count27, align 8
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %discard_blks = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 74
  %593 = ptrtoint ptr %discard_blks to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load i32, ptr %discard_blks, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.20, i32 noundef %590, i32 noundef %592, i32 noundef %594) #8
  br label %if.end28

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.21, i32 noundef %590, i32 noundef %592) #8
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then25
  %valid_node_count = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 72
  %595 = ptrtoint ptr %valid_node_count to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load i32, ptr %valid_node_count, align 4
  %valid_inode_count = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 73
  %597 = ptrtoint ptr %valid_inode_count to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load i32, ptr %valid_inode_count, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.22, i32 noundef %596, i32 noundef %598) #8
  %599 = ptrtoint ptr %valid_node_count to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load i32, ptr %valid_node_count, align 4
  %601 = ptrtoint ptr %valid_inode_count to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load i32, ptr %valid_inode_count, align 8
  %sub = sub i32 %600, %602
  %valid_count31 = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 71
  %603 = ptrtoint ptr %valid_count31 to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load i32, ptr %valid_count31, align 8
  %sub33 = sub i32 %604, %600
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.23, i32 noundef %sub, i32 noundef %sub33) #8
  %inline_xattr = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 59
  %605 = ptrtoint ptr %inline_xattr to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load i32, ptr %inline_xattr, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.24, i32 noundef %606) #8
  %inline_inode = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 60
  %607 = ptrtoint ptr %inline_inode to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load i32, ptr %inline_inode, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, i32 noundef %608) #8
  %inline_dir = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 61
  %609 = ptrtoint ptr %inline_dir to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load i32, ptr %inline_dir, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.26, i32 noundef %610) #8
  %compr_inode = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 65
  %611 = ptrtoint ptr %compr_inode to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load i32, ptr %compr_inode, align 4
  %compr_blocks = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 66
  %613 = ptrtoint ptr %compr_blocks to i32
  call void @__asan_load8_noabort(i32 %613)
  %614 = load i64, ptr %compr_blocks, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, i32 noundef %612, i64 noundef %614) #8
  %orphans = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 64
  %615 = ptrtoint ptr %orphans to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load i32, ptr %orphans, align 8
  %append = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 62
  %617 = ptrtoint ptr %append to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load i32, ptr %append, align 8
  %update = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 63
  %619 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load i32, ptr %update, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.28, i32 noundef %616, i32 noundef %618, i32 noundef %620) #8
  %621 = ptrtoint ptr %main_area_segs to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load i32, ptr %main_area_segs, align 4
  %main_area_sections = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 7
  %623 = ptrtoint ptr %main_area_sections to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load i32, ptr %main_area_sections, align 8
  %main_area_zones = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 8
  %625 = ptrtoint ptr %main_area_zones to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load i32, ptr %main_area_zones, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.29, i32 noundef %622, i32 noundef %624, i32 noundef %626) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36) #8
  %curseg = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 104
  %arrayidx35 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 104, i32 2
  %627 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load i32, ptr %arrayidx35, align 8
  %cursec = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 105
  %arrayidx36 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 105, i32 2
  %629 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load i32, ptr %arrayidx36, align 8
  %curzone = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 106
  %arrayidx37 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 106, i32 2
  %631 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load i32, ptr %arrayidx37, align 8
  %dirty_seg = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 107
  %arrayidx38 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 107, i32 2
  %633 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load i32, ptr %arrayidx38, align 8
  %full_seg = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 108
  %arrayidx39 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 108, i32 2
  %635 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load i32, ptr %arrayidx39, align 8
  %valid_blks = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 109
  %arrayidx40 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 109, i32 2
  %637 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load i32, ptr %arrayidx40, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.37, i32 noundef %628, i32 noundef %630, i32 noundef %632, i32 noundef %634, i32 noundef %636, i32 noundef %638) #8
  %arrayidx42 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 104, i32 1
  %639 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load i32, ptr %arrayidx42, align 4
  %arrayidx44 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 105, i32 1
  %641 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load i32, ptr %arrayidx44, align 4
  %arrayidx46 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 106, i32 1
  %643 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load i32, ptr %arrayidx46, align 4
  %arrayidx48 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 107, i32 1
  %645 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load i32, ptr %arrayidx48, align 4
  %arrayidx50 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 108, i32 1
  %647 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load i32, ptr %arrayidx50, align 4
  %arrayidx52 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 109, i32 1
  %649 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load i32, ptr %arrayidx52, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.38, i32 noundef %640, i32 noundef %642, i32 noundef %644, i32 noundef %646, i32 noundef %648, i32 noundef %650) #8
  %651 = ptrtoint ptr %curseg to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load i32, ptr %curseg, align 8
  %653 = ptrtoint ptr %cursec to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load i32, ptr %cursec, align 8
  %655 = ptrtoint ptr %curzone to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load i32, ptr %curzone, align 8
  %657 = ptrtoint ptr %dirty_seg to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load i32, ptr %dirty_seg, align 8
  %659 = ptrtoint ptr %full_seg to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load i32, ptr %full_seg, align 8
  %661 = ptrtoint ptr %valid_blks to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load i32, ptr %valid_blks, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.39, i32 noundef %652, i32 noundef %654, i32 noundef %656, i32 noundef %658, i32 noundef %660, i32 noundef %662) #8
  %arrayidx66 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 104, i32 3
  %663 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load i32, ptr %arrayidx66, align 4
  %arrayidx68 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 105, i32 3
  %665 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load i32, ptr %arrayidx68, align 4
  %arrayidx70 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 106, i32 3
  %667 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load i32, ptr %arrayidx70, align 4
  %arrayidx72 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 107, i32 3
  %669 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load i32, ptr %arrayidx72, align 4
  %arrayidx74 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 108, i32 3
  %671 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load i32, ptr %arrayidx74, align 4
  %arrayidx76 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 109, i32 3
  %673 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load i32, ptr %arrayidx76, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.40, i32 noundef %664, i32 noundef %666, i32 noundef %668, i32 noundef %670, i32 noundef %672, i32 noundef %674) #8
  %arrayidx78 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 104, i32 4
  %675 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load i32, ptr %arrayidx78, align 8
  %arrayidx80 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 105, i32 4
  %677 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load i32, ptr %arrayidx80, align 8
  %arrayidx82 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 106, i32 4
  %679 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load i32, ptr %arrayidx82, align 8
  %arrayidx84 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 107, i32 4
  %681 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load i32, ptr %arrayidx84, align 8
  %arrayidx86 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 108, i32 4
  %683 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load i32, ptr %arrayidx86, align 8
  %arrayidx88 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 109, i32 4
  %685 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load i32, ptr %arrayidx88, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.41, i32 noundef %676, i32 noundef %678, i32 noundef %680, i32 noundef %682, i32 noundef %684, i32 noundef %686) #8
  %arrayidx90 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 104, i32 5
  %687 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load i32, ptr %arrayidx90, align 4
  %arrayidx92 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 105, i32 5
  %689 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load i32, ptr %arrayidx92, align 4
  %arrayidx94 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 106, i32 5
  %691 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load i32, ptr %arrayidx94, align 4
  %arrayidx96 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 107, i32 5
  %693 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load i32, ptr %arrayidx96, align 4
  %arrayidx98 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 108, i32 5
  %695 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load i32, ptr %arrayidx98, align 4
  %arrayidx100 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 109, i32 5
  %697 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load i32, ptr %arrayidx100, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.42, i32 noundef %688, i32 noundef %690, i32 noundef %692, i32 noundef %694, i32 noundef %696, i32 noundef %698) #8
  %arrayidx102 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 104, i32 6
  %699 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load i32, ptr %arrayidx102, align 8
  %arrayidx104 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 105, i32 6
  %701 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load i32, ptr %arrayidx104, align 8
  %arrayidx106 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 106, i32 6
  %703 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load i32, ptr %arrayidx106, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.43, i32 noundef %700, i32 noundef %702, i32 noundef %704) #8
  %arrayidx108 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 104, i32 7
  %705 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load i32, ptr %arrayidx108, align 4
  %arrayidx110 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 105, i32 7
  %707 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load i32, ptr %arrayidx110, align 4
  %arrayidx112 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 106, i32 7
  %709 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load i32, ptr %arrayidx112, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.44, i32 noundef %706, i32 noundef %708, i32 noundef %710) #8
  %711 = ptrtoint ptr %main_area_segs to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load i32, ptr %main_area_segs, align 4
  %dirty_count = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 82
  %713 = ptrtoint ptr %dirty_count to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load i32, ptr %dirty_count, align 4
  %prefree_count = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 87
  %715 = ptrtoint ptr %prefree_count to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load i32, ptr %prefree_count, align 8
  %free_segs = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 94
  %717 = ptrtoint ptr %free_segs to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load i32, ptr %free_segs, align 4
  %719 = add i32 %714, %716
  %720 = add i32 %719, %718
  %sub116 = sub i32 %712, %720
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.45, i32 noundef %sub116, i32 noundef %714) #8
  %721 = ptrtoint ptr %prefree_count to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load i32, ptr %prefree_count, align 8
  %723 = ptrtoint ptr %free_segs to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load i32, ptr %free_segs, align 4
  %free_secs = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 95
  %725 = ptrtoint ptr %free_secs to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load i32, ptr %free_secs, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.46, i32 noundef %722, i32 noundef %724, i32 noundef %726) #8
  %cp_count = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 89
  %727 = ptrtoint ptr %cp_count to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load i32, ptr %cp_count, align 8
  %bg_cp_count = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 90
  %729 = ptrtoint ptr %bg_cp_count to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load i32, ptr %bg_cp_count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.47, i32 noundef %728, i32 noundef %730) #8
  %meta_count = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 110
  %731 = ptrtoint ptr %meta_count to i32
  call void @__asan_load4_noabort(i32 %731)
  %732 = load i32, ptr %meta_count, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.48, i32 noundef %732) #8
  %arrayidx122 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 110, i32 2
  %733 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load i32, ptr %arrayidx122, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.49, i32 noundef %734) #8
  %arrayidx124 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 110, i32 1
  %735 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load i32, ptr %arrayidx124, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.50, i32 noundef %736) #8
  %arrayidx126 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 110, i32 3
  %737 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load i32, ptr %arrayidx126, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, i32 noundef %738) #8
  %nr_queued_ckpt = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 56
  %739 = ptrtoint ptr %nr_queued_ckpt to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load i32, ptr %nr_queued_ckpt, align 8
  %nr_issued_ckpt = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 54
  %741 = ptrtoint ptr %nr_issued_ckpt to i32
  call void @__asan_load4_noabort(i32 %741)
  %742 = load i32, ptr %nr_issued_ckpt, align 8
  %nr_total_ckpt = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 55
  %743 = ptrtoint ptr %nr_total_ckpt to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load i32, ptr %nr_total_ckpt, align 4
  %cur_ckpt_time = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 57
  %745 = ptrtoint ptr %cur_ckpt_time to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load i32, ptr %cur_ckpt_time, align 4
  %peak_ckpt_time = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 58
  %747 = ptrtoint ptr %peak_ckpt_time to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load i32, ptr %peak_ckpt_time, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.52, i32 noundef %740, i32 noundef %742, i32 noundef %744, i32 noundef %746, i32 noundef %748) #8
  %call_count = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 88
  %749 = ptrtoint ptr %call_count to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load i32, ptr %call_count, align 4
  %bg_gc = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 37
  %751 = ptrtoint ptr %bg_gc to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load i32, ptr %bg_gc, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.53, i32 noundef %750, i32 noundef %752) #8
  %data_segs = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 93
  %753 = ptrtoint ptr %data_segs to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load i32, ptr %data_segs, align 8
  %bg_data_segs = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 97
  %755 = ptrtoint ptr %bg_data_segs to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load i32, ptr %bg_data_segs, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, i32 noundef %754, i32 noundef %756) #8
  %node_segs = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 92
  %757 = ptrtoint ptr %node_segs to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load i32, ptr %node_segs, align 4
  %bg_node_segs = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 96
  %759 = ptrtoint ptr %bg_node_segs to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load i32, ptr %bg_node_segs, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.55, i32 noundef %758, i32 noundef %760) #8
  %761 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load ptr, ptr %sbi, align 8
  %gc_reclaimed_segs = getelementptr inbounds %struct.f2fs_sb_info, ptr %762, i32 0, i32 135
  %763 = ptrtoint ptr %gc_reclaimed_segs to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load i32, ptr %gc_reclaimed_segs, align 8
  %arrayidx131 = getelementptr %struct.f2fs_sb_info, ptr %762, i32 0, i32 135, i32 1
  %765 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load i32, ptr %arrayidx131, align 4
  %arrayidx134 = getelementptr %struct.f2fs_sb_info, ptr %762, i32 0, i32 135, i32 2
  %767 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load i32, ptr %arrayidx134, align 8
  %arrayidx137 = getelementptr %struct.f2fs_sb_info, ptr %762, i32 0, i32 135, i32 3
  %769 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load i32, ptr %arrayidx137, align 4
  %arrayidx140 = getelementptr %struct.f2fs_sb_info, ptr %762, i32 0, i32 135, i32 4
  %771 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load i32, ptr %arrayidx140, align 8
  %arrayidx143 = getelementptr %struct.f2fs_sb_info, ptr %762, i32 0, i32 135, i32 5
  %773 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load i32, ptr %arrayidx143, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.56, i32 noundef %764, i32 noundef %766, i32 noundef %768, i32 noundef %770, i32 noundef %772, i32 noundef %774) #8
  %tot_blks = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 98
  %775 = ptrtoint ptr %tot_blks to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load i32, ptr %tot_blks, align 4
  %bg_data_blks = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 101
  %777 = ptrtoint ptr %bg_data_blks to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load i32, ptr %bg_data_blks, align 8
  %bg_node_blks = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 102
  %779 = ptrtoint ptr %bg_node_blks to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load i32, ptr %bg_node_blks, align 4
  %add144 = add i32 %780, %778
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.57, i32 noundef %776, i32 noundef %add144) #8
  %data_blks = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 99
  %781 = ptrtoint ptr %data_blks to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load i32, ptr %data_blks, align 8
  %783 = ptrtoint ptr %bg_data_blks to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load i32, ptr %bg_data_blks, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.58, i32 noundef %782, i32 noundef %784) #8
  %node_blks = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 100
  %785 = ptrtoint ptr %node_blks to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load i32, ptr %node_blks, align 4
  %787 = ptrtoint ptr %bg_node_blks to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load i32, ptr %bg_node_blks, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.59, i32 noundef %786, i32 noundef %788) #8
  %skipped_atomic_files = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 103
  %789 = ptrtoint ptr %skipped_atomic_files to i32
  call void @__asan_load8_noabort(i32 %789)
  %790 = load i64, ptr %skipped_atomic_files, align 8
  %arrayidx149 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 103, i32 1
  %791 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load8_noabort(i32 %791)
  %792 = load i64, ptr %arrayidx149, align 8
  %add150 = add i64 %792, %790
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.60, i64 noundef %add150, i64 noundef %790) #8
  %io_skip_bggc = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 45
  %793 = ptrtoint ptr %io_skip_bggc to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load i32, ptr %io_skip_bggc, align 4
  %other_skip_bggc = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 46
  %795 = ptrtoint ptr %other_skip_bggc to i32
  call void @__asan_load4_noabort(i32 %795)
  %796 = load i32, ptr %other_skip_bggc, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.61, i32 noundef %794, i32 noundef %796) #8
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.62) #8
  %hit_largest = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 9
  %797 = ptrtoint ptr %hit_largest to i32
  call void @__asan_load8_noabort(i32 %797)
  %798 = load i64, ptr %hit_largest, align 8
  %hit_cached = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 10
  %799 = ptrtoint ptr %hit_cached to i32
  call void @__asan_load8_noabort(i32 %799)
  %800 = load i64, ptr %hit_cached, align 8
  %hit_rbtree = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 11
  %801 = ptrtoint ptr %hit_rbtree to i32
  call void @__asan_load8_noabort(i32 %801)
  %802 = load i64, ptr %hit_rbtree, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.63, i64 noundef %798, i64 noundef %800, i64 noundef %802) #8
  %total_ext = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 13
  %803 = ptrtoint ptr %total_ext to i32
  call void @__asan_load8_noabort(i32 %803)
  %804 = load i64, ptr %total_ext, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %804)
  %tobool153.not = icmp eq i64 %804, 0
  br i1 %tobool153.not, label %if.end28.cond.end158_crit_edge, label %cond.false155

if.end28.cond.end158_crit_edge:                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end158

cond.false155:                                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %hit_total = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 12
  %805 = ptrtoint ptr %hit_total to i32
  call void @__asan_load8_noabort(i32 %805)
  %806 = load i64, ptr %hit_total, align 8
  %mul = mul i64 %806, 100
  %call157 = tail call i64 @div64_u64(i64 noundef %mul, i64 noundef %804) #8
  br label %cond.end158

cond.end158:                                      ; preds = %cond.false155, %if.end28.cond.end158_crit_edge
  %cond159 = phi i64 [ %call157, %cond.false155 ], [ 0, %if.end28.cond.end158_crit_edge ]
  %hit_total160 = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 12
  %807 = ptrtoint ptr %hit_total160 to i32
  call void @__asan_load8_noabort(i32 %807)
  %808 = load i64, ptr %hit_total160, align 8
  %809 = ptrtoint ptr %total_ext to i32
  call void @__asan_load8_noabort(i32 %809)
  %810 = load i64, ptr %total_ext, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.64, i64 noundef %cond159, i64 noundef %808, i64 noundef %810) #8
  %ext_tree = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 14
  %811 = ptrtoint ptr %ext_tree to i32
  call void @__asan_load4_noabort(i32 %811)
  %812 = load i32, ptr %ext_tree, align 8
  %zombie_tree = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 15
  %813 = ptrtoint ptr %zombie_tree to i32
  call void @__asan_load4_noabort(i32 %813)
  %814 = load i32, ptr %zombie_tree, align 4
  %ext_node = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 16
  %815 = ptrtoint ptr %ext_node to i32
  call void @__asan_load4_noabort(i32 %815)
  %816 = load i32, ptr %ext_node, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.65, i32 noundef %812, i32 noundef %814, i32 noundef %816) #8
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.66) #8
  %nr_dio_read = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 43
  %817 = ptrtoint ptr %nr_dio_read to i32
  call void @__asan_load4_noabort(i32 %817)
  %818 = load i32, ptr %nr_dio_read, align 4
  %nr_dio_write = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 44
  %819 = ptrtoint ptr %nr_dio_write to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load i32, ptr %nr_dio_write, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.67, i32 noundef %818, i32 noundef %820) #8
  %nr_rd_data = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 40
  %821 = ptrtoint ptr %nr_rd_data to i32
  call void @__asan_load4_noabort(i32 %821)
  %822 = load i32, ptr %nr_rd_data, align 8
  %nr_rd_node = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 41
  %823 = ptrtoint ptr %nr_rd_node to i32
  call void @__asan_load4_noabort(i32 %823)
  %824 = load i32, ptr %nr_rd_node, align 4
  %nr_rd_meta = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 42
  %825 = ptrtoint ptr %nr_rd_meta to i32
  call void @__asan_load4_noabort(i32 %825)
  %826 = load i32, ptr %nr_rd_meta, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.68, i32 noundef %822, i32 noundef %824, i32 noundef %826) #8
  %nr_wb_cp_data = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 38
  %827 = ptrtoint ptr %nr_wb_cp_data to i32
  call void @__asan_load4_noabort(i32 %827)
  %828 = load i32, ptr %nr_wb_cp_data, align 8
  %nr_wb_data = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 39
  %829 = ptrtoint ptr %nr_wb_data to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load i32, ptr %nr_wb_data, align 4
  %nr_flushing = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 47
  %831 = ptrtoint ptr %nr_flushing to i32
  call void @__asan_load4_noabort(i32 %831)
  %832 = load i32, ptr %nr_flushing, align 4
  %nr_flushed = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 48
  %833 = ptrtoint ptr %nr_flushed to i32
  call void @__asan_load4_noabort(i32 %833)
  %834 = load i32, ptr %nr_flushed, align 8
  %flush_list_empty = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 49
  %835 = ptrtoint ptr %flush_list_empty to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load i32, ptr %flush_list_empty, align 4
  %nr_discarding = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 50
  %837 = ptrtoint ptr %nr_discarding to i32
  call void @__asan_load4_noabort(i32 %837)
  %838 = load i32, ptr %nr_discarding, align 8
  %nr_discarded = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 51
  %839 = ptrtoint ptr %nr_discarded to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load i32, ptr %nr_discarded, align 4
  %nr_discard_cmd = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 52
  %841 = ptrtoint ptr %nr_discard_cmd to i32
  call void @__asan_load4_noabort(i32 %841)
  %842 = load i32, ptr %nr_discard_cmd, align 8
  %undiscard_blks = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 53
  %843 = ptrtoint ptr %undiscard_blks to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load i32, ptr %undiscard_blks, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.69, i32 noundef %828, i32 noundef %830, i32 noundef %832, i32 noundef %834, i32 noundef %836, i32 noundef %838, i32 noundef %840, i32 noundef %842, i32 noundef %844) #8
  %inmem_pages = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 23
  %845 = ptrtoint ptr %inmem_pages to i32
  call void @__asan_load4_noabort(i32 %845)
  %846 = load i32, ptr %inmem_pages, align 4
  %aw_cnt = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 67
  %847 = ptrtoint ptr %aw_cnt to i32
  call void @__asan_load4_noabort(i32 %847)
  %848 = load i32, ptr %aw_cnt, align 8
  %max_aw_cnt = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 68
  %849 = ptrtoint ptr %max_aw_cnt to i32
  call void @__asan_load4_noabort(i32 %849)
  %850 = load i32, ptr %max_aw_cnt, align 4
  %vw_cnt = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 69
  %851 = ptrtoint ptr %vw_cnt to i32
  call void @__asan_load4_noabort(i32 %851)
  %852 = load i32, ptr %vw_cnt, align 8
  %max_vw_cnt = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 70
  %853 = ptrtoint ptr %max_vw_cnt to i32
  call void @__asan_load4_noabort(i32 %853)
  %854 = load i32, ptr %max_vw_cnt, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.70, i32 noundef %846, i32 noundef %848, i32 noundef %850, i32 noundef %852, i32 noundef %854) #8
  %compress_pages = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 85
  %855 = ptrtoint ptr %compress_pages to i32
  call void @__asan_load4_noabort(i32 %855)
  %856 = load i32, ptr %compress_pages, align 8
  %compress_page_hit = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 86
  %857 = ptrtoint ptr %compress_page_hit to i32
  call void @__asan_load4_noabort(i32 %857)
  %858 = load i32, ptr %compress_page_hit, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.71, i32 noundef %856, i32 noundef %858) #8
  %ndirty_node = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 17
  %859 = ptrtoint ptr %ndirty_node to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load i32, ptr %ndirty_node, align 4
  %node_pages = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 83
  %861 = ptrtoint ptr %node_pages to i32
  call void @__asan_load4_noabort(i32 %861)
  %862 = load i32, ptr %node_pages, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.72, i32 noundef %860, i32 noundef %862) #8
  %ndirty_dent = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 18
  %863 = ptrtoint ptr %ndirty_dent to i32
  call void @__asan_load4_noabort(i32 %863)
  %864 = load i32, ptr %ndirty_dent, align 8
  %ndirty_dirs = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 24
  %865 = ptrtoint ptr %ndirty_dirs to i32
  call void @__asan_load4_noabort(i32 %865)
  %866 = load i32, ptr %ndirty_dirs, align 8
  %ndirty_all = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 27
  %867 = ptrtoint ptr %ndirty_all to i32
  call void @__asan_load4_noabort(i32 %867)
  %868 = load i32, ptr %ndirty_all, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.73, i32 noundef %864, i32 noundef %866, i32 noundef %868) #8
  %ndirty_data = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 21
  %869 = ptrtoint ptr %ndirty_data to i32
  call void @__asan_load4_noabort(i32 %869)
  %870 = load i32, ptr %ndirty_data, align 4
  %ndirty_files = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 25
  %871 = ptrtoint ptr %ndirty_files to i32
  call void @__asan_load4_noabort(i32 %871)
  %872 = load i32, ptr %ndirty_files, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.74, i32 noundef %870, i32 noundef %872) #8
  %ndirty_qdata = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 22
  %873 = ptrtoint ptr %ndirty_qdata to i32
  call void @__asan_load4_noabort(i32 %873)
  %874 = load i32, ptr %ndirty_qdata, align 8
  %nquota_files = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 26
  %875 = ptrtoint ptr %nquota_files to i32
  call void @__asan_load4_noabort(i32 %875)
  %876 = load i32, ptr %nquota_files, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.75, i32 noundef %874, i32 noundef %876) #8
  %ndirty_meta = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 19
  %877 = ptrtoint ptr %ndirty_meta to i32
  call void @__asan_load4_noabort(i32 %877)
  %878 = load i32, ptr %ndirty_meta, align 4
  %meta_pages = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 84
  %879 = ptrtoint ptr %meta_pages to i32
  call void @__asan_load4_noabort(i32 %879)
  %880 = load i32, ptr %meta_pages, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.76, i32 noundef %878, i32 noundef %880) #8
  %ndirty_imeta = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 20
  %881 = ptrtoint ptr %ndirty_imeta to i32
  call void @__asan_load4_noabort(i32 %881)
  %882 = load i32, ptr %ndirty_imeta, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.77, i32 noundef %882) #8
  %dirty_nats = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 29
  %883 = ptrtoint ptr %dirty_nats to i32
  call void @__asan_load4_noabort(i32 %883)
  %884 = load i32, ptr %dirty_nats, align 4
  %nats = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 28
  %885 = ptrtoint ptr %nats to i32
  call void @__asan_load4_noabort(i32 %885)
  %886 = load i32, ptr %nats, align 8
  %dirty_sits = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 31
  %887 = ptrtoint ptr %dirty_sits to i32
  call void @__asan_load4_noabort(i32 %887)
  %888 = load i32, ptr %dirty_sits, align 4
  %sits = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 30
  %889 = ptrtoint ptr %sits to i32
  call void @__asan_load4_noabort(i32 %889)
  %890 = load i32, ptr %sits, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.78, i32 noundef %884, i32 noundef %886, i32 noundef %888, i32 noundef %890) #8
  %free_nids = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 32
  %891 = ptrtoint ptr %free_nids to i32
  call void @__asan_load4_noabort(i32 %891)
  %892 = load i32, ptr %free_nids, align 8
  %avail_nids = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 33
  %893 = ptrtoint ptr %avail_nids to i32
  call void @__asan_load4_noabort(i32 %893)
  %894 = load i32, ptr %avail_nids, align 4
  %alloc_nids = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 34
  %895 = ptrtoint ptr %alloc_nids to i32
  call void @__asan_load4_noabort(i32 %895)
  %896 = load i32, ptr %alloc_nids, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.79, i32 noundef %892, i32 noundef %894, i32 noundef %896) #8
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.80) #8
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.81) #8
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.82) #8
  %util_valid = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 78
  %897 = ptrtoint ptr %util_valid to i32
  call void @__asan_load4_noabort(i32 %897)
  %898 = load i32, ptr %util_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %898)
  %cmp163517 = icmp sgt i32 %898, 0
  br i1 %cmp163517, label %cond.end158.for.body164_crit_edge, label %cond.end158.for.end167_crit_edge

cond.end158.for.end167_crit_edge:                 ; preds = %cond.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end167

cond.end158.for.body164_crit_edge:                ; preds = %cond.end158
  br label %for.body164

for.body164:                                      ; preds = %for.body164.for.body164_crit_edge, %cond.end158.for.body164_crit_edge
  %j.1518 = phi i32 [ %inc166, %for.body164.for.body164_crit_edge ], [ 0, %cond.end158.for.body164_crit_edge ]
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 45) #8
  %inc166 = add nuw nsw i32 %j.1518, 1
  %899 = ptrtoint ptr %util_valid to i32
  call void @__asan_load4_noabort(i32 %899)
  %900 = load i32, ptr %util_valid, align 4
  %cmp163 = icmp slt i32 %inc166, %900
  br i1 %cmp163, label %for.body164.for.body164_crit_edge, label %for.body164.for.end167_crit_edge

for.body164.for.end167_crit_edge:                 ; preds = %for.body164
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end167

for.body164.for.body164_crit_edge:                ; preds = %for.body164
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body164

for.end167:                                       ; preds = %for.body164.for.end167_crit_edge, %cond.end158.for.end167_crit_edge
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 124) #8
  %util_invalid = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 79
  %901 = ptrtoint ptr %util_invalid to i32
  call void @__asan_load4_noabort(i32 %901)
  %902 = load i32, ptr %util_invalid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %902)
  %cmp169519 = icmp sgt i32 %902, 0
  br i1 %cmp169519, label %for.end167.for.body170_crit_edge, label %for.end167.for.end173_crit_edge

for.end167.for.end173_crit_edge:                  ; preds = %for.end167
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end173

for.end167.for.body170_crit_edge:                 ; preds = %for.end167
  br label %for.body170

for.body170:                                      ; preds = %for.body170.for.body170_crit_edge, %for.end167.for.body170_crit_edge
  %j.2520 = phi i32 [ %inc172, %for.body170.for.body170_crit_edge ], [ 0, %for.end167.for.body170_crit_edge ]
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 45) #8
  %inc172 = add nuw nsw i32 %j.2520, 1
  %903 = ptrtoint ptr %util_invalid to i32
  call void @__asan_load4_noabort(i32 %903)
  %904 = load i32, ptr %util_invalid, align 8
  %cmp169 = icmp slt i32 %inc172, %904
  br i1 %cmp169, label %for.body170.for.body170_crit_edge, label %for.body170.for.end173_crit_edge

for.body170.for.end173_crit_edge:                 ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end173

for.body170.for.body170_crit_edge:                ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body170

for.end173:                                       ; preds = %for.body170.for.end173_crit_edge, %for.end167.for.end173_crit_edge
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 124) #8
  %util_free = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 77
  %905 = ptrtoint ptr %util_free to i32
  call void @__asan_load4_noabort(i32 %905)
  %906 = load i32, ptr %util_free, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %906)
  %cmp175521 = icmp sgt i32 %906, 0
  br i1 %cmp175521, label %for.end173.for.body176_crit_edge, label %for.end173.for.end179_crit_edge

for.end173.for.end179_crit_edge:                  ; preds = %for.end173
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end179

for.end173.for.body176_crit_edge:                 ; preds = %for.end173
  br label %for.body176

for.body176:                                      ; preds = %for.body176.for.body176_crit_edge, %for.end173.for.body176_crit_edge
  %j.3522 = phi i32 [ %inc178, %for.body176.for.body176_crit_edge ], [ 0, %for.end173.for.body176_crit_edge ]
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 45) #8
  %inc178 = add nuw nsw i32 %j.3522, 1
  %907 = ptrtoint ptr %util_free to i32
  call void @__asan_load4_noabort(i32 %907)
  %908 = load i32, ptr %util_free, align 8
  %cmp175 = icmp slt i32 %inc178, %908
  br i1 %cmp175, label %for.body176.for.body176_crit_edge, label %for.body176.for.end179_crit_edge

for.body176.for.end179_crit_edge:                 ; preds = %for.body176
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end179

for.body176.for.body176_crit_edge:                ; preds = %for.body176
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body176

for.end179:                                       ; preds = %for.body176.for.end179_crit_edge, %for.end173.for.end179_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.83) #8
  %inplace_count = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 113
  %909 = ptrtoint ptr %inplace_count to i32
  call void @__asan_load4_noabort(i32 %909)
  %910 = load i32, ptr %inplace_count, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.84, i32 noundef %910) #8
  %block_count = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 112
  %arrayidx180 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 112, i32 1
  %911 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load4_noabort(i32 %911)
  %912 = load i32, ptr %arrayidx180, align 4
  %segment_count = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 111
  %arrayidx181 = getelementptr %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 111, i32 1
  %913 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load4_noabort(i32 %913)
  %914 = load i32, ptr %arrayidx181, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.85, i32 noundef %912, i32 noundef %914) #8
  %915 = ptrtoint ptr %block_count to i32
  call void @__asan_load4_noabort(i32 %915)
  %916 = load i32, ptr %block_count, align 8
  %917 = ptrtoint ptr %segment_count to i32
  call void @__asan_load4_noabort(i32 %917)
  %918 = load i32, ptr %segment_count, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.86, i32 noundef %916, i32 noundef %918) #8
  %919 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %919)
  %920 = load ptr, ptr %sbi, align 8
  tail call void @f2fs_update_sit_info(ptr noundef %920)
  %bimodal = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 75
  %921 = ptrtoint ptr %bimodal to i32
  call void @__asan_load4_noabort(i32 %921)
  %922 = load i32, ptr %bimodal, align 8
  %avg_vblocks = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 76
  %923 = ptrtoint ptr %avg_vblocks to i32
  call void @__asan_load4_noabort(i32 %923)
  %924 = load i32, ptr %avg_vblocks, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.87, i32 noundef %922, i32 noundef %924) #8
  %925 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %925)
  %926 = load ptr, ptr %sbi, align 8
  %stat_info.i.i485 = getelementptr inbounds %struct.f2fs_sb_info, ptr %926, i32 0, i32 90
  %927 = ptrtoint ptr %stat_info.i.i485 to i32
  call void @__asan_load4_noabort(i32 %927)
  %928 = load ptr, ptr %stat_info.i.i485, align 8
  %base_mem.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %928, i32 0, i32 114
  %929 = ptrtoint ptr %base_mem.i to i32
  call void @__asan_load8_noabort(i32 %929)
  %930 = load i64, ptr %base_mem.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %930)
  %tobool.not.i486 = icmp eq i64 %930, 0
  br i1 %tobool.not.i486, label %if.end.i492, label %for.end179.get_cache.i_crit_edge

for.end179.get_cache.i_crit_edge:                 ; preds = %for.end179
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_cache.i

if.end.i492:                                      ; preds = %for.end179
  %931 = ptrtoint ptr %base_mem.i to i32
  call void @__asan_store8_noabort(i32 %931)
  store i64 712, ptr %base_mem.i, align 8
  %932 = ptrtoint ptr %926 to i32
  call void @__asan_load4_noabort(i32 %932)
  %933 = load ptr, ptr %926, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %933, i32 0, i32 3
  %934 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %934)
  %935 = load i32, ptr %s_blocksize.i, align 16
  %add.i487 = add i32 %935, 4768
  %conv.i = zext i32 %add.i487 to i64
  %add11.i = add nuw nsw i64 %conv.i, 4416
  store i64 %add11.i, ptr %base_mem.i, align 8
  %sm_info.i.i488 = getelementptr inbounds %struct.f2fs_sb_info, ptr %926, i32 0, i32 11
  %936 = ptrtoint ptr %sm_info.i.i488 to i32
  call void @__asan_load4_noabort(i32 %936)
  %937 = load ptr, ptr %sm_info.i.i488, align 8
  %main_segments.i489 = getelementptr inbounds %struct.f2fs_sm_info, ptr %937, i32 0, i32 9
  %938 = ptrtoint ptr %main_segments.i489 to i32
  call void @__asan_load4_noabort(i32 %938)
  %939 = load i32, ptr %main_segments.i489, align 4
  %mul.i490 = shl i32 %939, 5
  %conv13.i = zext i32 %mul.i490 to i64
  %add15.i = add nuw nsw i64 %add11.i, %conv13.i
  store i64 %add15.i, ptr %base_mem.i, align 8
  %940 = load ptr, ptr %sm_info.i.i488, align 8
  %main_segments17.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %940, i32 0, i32 9
  %941 = ptrtoint ptr %main_segments17.i to i32
  call void @__asan_load4_noabort(i32 %941)
  %942 = load i32, ptr %main_segments17.i, align 4
  %sub.i = add i32 %942, 31
  %943 = lshr i32 %sub.i, 3
  %mul19.i = and i32 %943, 536870908
  %conv20.i = zext i32 %mul19.i to i64
  %add22.i = add nuw nsw i64 %add15.i, %conv20.i
  store i64 %add22.i, ptr %base_mem.i, align 8
  %944 = load ptr, ptr %sm_info.i.i488, align 8
  %main_segments24.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %944, i32 0, i32 9
  %945 = ptrtoint ptr %main_segments24.i to i32
  call void @__asan_load4_noabort(i32 %945)
  %946 = load i32, ptr %main_segments24.i, align 4
  %mul25.i = shl i32 %946, 7
  %conv26.i = zext i32 %mul25.i to i64
  %add28.i = add nuw nsw i64 %add22.i, %conv26.i
  store i64 %add28.i, ptr %base_mem.i, align 8
  %947 = load ptr, ptr %sm_info.i.i488, align 8
  %main_segments30.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %947, i32 0, i32 9
  %948 = ptrtoint ptr %main_segments30.i to i32
  call void @__asan_load4_noabort(i32 %948)
  %949 = load i32, ptr %main_segments30.i, align 4
  %mul31.i = shl i32 %949, 6
  %conv32.i = zext i32 %mul31.i to i64
  %add34.i = add nuw nsw i64 %add28.i, 64
  %add36.i = add nuw nsw i64 %add34.i, %conv32.i
  store i64 %add36.i, ptr %base_mem.i, align 8
  %segs_per_sec.i491 = getelementptr inbounds %struct.f2fs_sb_info, ptr %926, i32 0, i32 52
  %950 = ptrtoint ptr %segs_per_sec.i491 to i32
  call void @__asan_load4_noabort(i32 %950)
  %951 = load i32, ptr %segs_per_sec.i491, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %951)
  %cmp.i = icmp ugt i32 %951, 1
  br i1 %cmp.i, label %if.then38.i, label %if.end.i492.if.end43.i_crit_edge

if.end.i492.if.end43.i_crit_edge:                 ; preds = %if.end.i492
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then38.i:                                      ; preds = %if.end.i492
  call void @__sanitizer_cov_trace_pc() #10
  %total_sections.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %926, i32 0, i32 54
  %952 = ptrtoint ptr %total_sections.i to i32
  call void @__asan_load4_noabort(i32 %952)
  %953 = load i32, ptr %total_sections.i, align 8
  %mul39.i = shl i32 %953, 2
  %conv40.i = zext i32 %mul39.i to i64
  %add42.i = add nuw nsw i64 %add36.i, %conv40.i
  %954 = ptrtoint ptr %base_mem.i to i32
  call void @__asan_store8_noabort(i32 %954)
  store i64 %add42.i, ptr %base_mem.i, align 8
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then38.i, %if.end.i492.if.end43.i_crit_edge
  %ckpt.i.i.i493 = getelementptr inbounds %struct.f2fs_sb_info, ptr %926, i32 0, i32 15
  %955 = ptrtoint ptr %ckpt.i.i.i493 to i32
  call void @__asan_load4_noabort(i32 %955)
  %956 = load ptr, ptr %ckpt.i.i.i493, align 4
  %sit_ver_bitmap_bytesize.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %956, i32 0, i32 16
  %957 = ptrtoint ptr %sit_ver_bitmap_bytesize.i.i to i32
  call void @__asan_loadN_noabort(i32 %957, i32 4)
  %958 = load i32, ptr %sit_ver_bitmap_bytesize.i.i, align 1
  %959 = tail call i32 @llvm.bswap.i32(i32 %958) #8
  %conv45.i = zext i32 %959 to i64
  %960 = ptrtoint ptr %base_mem.i to i32
  call void @__asan_load8_noabort(i32 %960)
  %961 = load i64, ptr %base_mem.i, align 8
  %add47.i = add i64 %961, 64
  %add49.i = add i64 %add47.i, %conv45.i
  store i64 %add49.i, ptr %base_mem.i, align 8
  %962 = ptrtoint ptr %sm_info.i.i488 to i32
  call void @__asan_load4_noabort(i32 %962)
  %963 = load ptr, ptr %sm_info.i.i488, align 8
  %main_segments51.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %963, i32 0, i32 9
  %964 = ptrtoint ptr %main_segments51.i to i32
  call void @__asan_load4_noabort(i32 %964)
  %965 = load i32, ptr %main_segments51.i, align 4
  %sub53.i = add i32 %965, 31
  %966 = lshr i32 %sub53.i, 3
  %mul55.i = and i32 %966, 536870908
  %conv56.i = zext i32 %mul55.i to i64
  %add58.i = add i64 %add49.i, %conv56.i
  store i64 %add58.i, ptr %base_mem.i, align 8
  %total_sections59.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %926, i32 0, i32 54
  %967 = ptrtoint ptr %total_sections59.i to i32
  call void @__asan_load4_noabort(i32 %967)
  %968 = load i32, ptr %total_sections59.i, align 8
  %sub61.i = add i32 %968, 31
  %969 = lshr i32 %sub61.i, 3
  %mul63.i = and i32 %969, 536870908
  %conv64.i = zext i32 %mul63.i to i64
  %add66.i = add i64 %add58.i, 34728
  %add72.i = add i64 %add66.i, %conv64.i
  store i64 %add72.i, ptr %base_mem.i, align 8
  %970 = load ptr, ptr %sm_info.i.i488, align 8
  %main_segments74.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %970, i32 0, i32 9
  %971 = ptrtoint ptr %main_segments74.i to i32
  call void @__asan_load4_noabort(i32 %971)
  %972 = load i32, ptr %main_segments74.i, align 4
  %sub76.i = add i32 %972, 31
  %mul78.i = and i32 %sub76.i, -32
  %conv80.i = zext i32 %mul78.i to i64
  %add82.i = add i64 %add72.i, %conv80.i
  store i64 %add82.i, ptr %base_mem.i, align 8
  %973 = load i32, ptr %total_sections59.i, align 8
  %sub85.i = add i32 %973, 31
  %974 = lshr i32 %sub85.i, 3
  %mul87.i = and i32 %974, 536870908
  %conv88.i = zext i32 %mul87.i to i64
  %add90.i = add i64 %add82.i, 540
  %add92.i = add i64 %add90.i, %conv88.i
  store i64 %add92.i, ptr %base_mem.i, align 8
  %975 = ptrtoint ptr %ckpt.i.i.i493 to i32
  call void @__asan_load4_noabort(i32 %975)
  %976 = load ptr, ptr %ckpt.i.i.i493, align 4
  %nat_ver_bitmap_bytesize.i308.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %976, i32 0, i32 17
  %977 = ptrtoint ptr %nat_ver_bitmap_bytesize.i308.i to i32
  call void @__asan_loadN_noabort(i32 %977, i32 4)
  %978 = load i32, ptr %nat_ver_bitmap_bytesize.i308.i, align 1
  %979 = tail call i32 @llvm.bswap.i32(i32 %978) #8
  %conv94.i = zext i32 %979 to i64
  %add96.i = add i64 %add92.i, %conv94.i
  %980 = ptrtoint ptr %base_mem.i to i32
  call void @__asan_store8_noabort(i32 %980)
  store i64 %add96.i, ptr %base_mem.i, align 8
  %nm_info.i.i494 = getelementptr inbounds %struct.f2fs_sb_info, ptr %926, i32 0, i32 9
  %981 = ptrtoint ptr %nm_info.i.i494 to i32
  call void @__asan_load4_noabort(i32 %981)
  %982 = load ptr, ptr %nm_info.i.i494, align 8
  %nat_bits_blocks.i = getelementptr inbounds %struct.f2fs_nm_info, ptr %982, i32 0, i32 23
  %983 = ptrtoint ptr %nat_bits_blocks.i to i32
  call void @__asan_load4_noabort(i32 %983)
  %984 = load i32, ptr %nat_bits_blocks.i, align 4
  %shl.i = shl i32 %984, 12
  %conv98.i = zext i32 %shl.i to i64
  %add100.i = add i64 %add96.i, %conv98.i
  store i64 %add100.i, ptr %base_mem.i, align 8
  %985 = load ptr, ptr %nm_info.i.i494, align 8
  %nat_blocks.i = getelementptr inbounds %struct.f2fs_nm_info, ptr %985, i32 0, i32 13
  %986 = ptrtoint ptr %nat_blocks.i to i32
  call void @__asan_load4_noabort(i32 %986)
  %987 = load i32, ptr %nat_blocks.i, align 4
  %mul102.i = mul i32 %987, 60
  %conv103.i = zext i32 %mul102.i to i64
  %add105.i = add i64 %add100.i, %conv103.i
  store i64 %add105.i, ptr %base_mem.i, align 8
  %988 = load ptr, ptr %nm_info.i.i494, align 8
  %nat_blocks107.i = getelementptr inbounds %struct.f2fs_nm_info, ptr %988, i32 0, i32 13
  %989 = ptrtoint ptr %nat_blocks107.i to i32
  call void @__asan_load4_noabort(i32 %989)
  %990 = load i32, ptr %nat_blocks107.i, align 4
  %div108298.i = lshr i32 %990, 3
  %conv109.i = zext i32 %div108298.i to i64
  %add111.i = add i64 %add105.i, %conv109.i
  store i64 %add111.i, ptr %base_mem.i, align 8
  %991 = load ptr, ptr %nm_info.i.i494, align 8
  %nat_blocks113.i = getelementptr inbounds %struct.f2fs_nm_info, ptr %991, i32 0, i32 13
  %992 = ptrtoint ptr %nat_blocks113.i to i32
  call void @__asan_load4_noabort(i32 %992)
  %993 = load i32, ptr %nat_blocks113.i, align 4
  %mul114.i = shl i32 %993, 1
  %conv115.i = zext i32 %mul114.i to i64
  %add117.i = add i64 %add111.i, %conv115.i
  store i64 %add117.i, ptr %base_mem.i, align 8
  br label %get_cache.i

get_cache.i:                                      ; preds = %if.end43.i, %for.end179.get_cache.i_crit_edge
  %cache_mem.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %928, i32 0, i32 115
  %994 = ptrtoint ptr %cache_mem.i to i32
  call void @__asan_store8_noabort(i32 %994)
  store i64 0, ptr %cache_mem.i, align 8
  %gc_thread.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %926, i32 0, i32 75
  %995 = ptrtoint ptr %gc_thread.i to i32
  call void @__asan_load4_noabort(i32 %995)
  %996 = load ptr, ptr %gc_thread.i, align 8
  %tobool118.not.i = icmp eq ptr %996, null
  %spec.store.select.i = select i1 %tobool118.not.i, i64 0, i64 128
  store i64 %spec.store.select.i, ptr %cache_mem.i, align 8
  %sm_info.i312.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %926, i32 0, i32 11
  %997 = ptrtoint ptr %sm_info.i312.i to i32
  call void @__asan_load4_noabort(i32 %997)
  %998 = load ptr, ptr %sm_info.i312.i, align 8
  %fcc_info.i495 = getelementptr inbounds %struct.f2fs_sm_info, ptr %998, i32 0, i32 22
  %999 = ptrtoint ptr %fcc_info.i495 to i32
  call void @__asan_load4_noabort(i32 %999)
  %1000 = load ptr, ptr %fcc_info.i495, align 4
  %tobool124.not.i = icmp eq ptr %1000, null
  br i1 %tobool124.not.i, label %get_cache.i.if.end128.i_crit_edge, label %if.then125.i

get_cache.i.if.end128.i_crit_edge:                ; preds = %get_cache.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128.i

if.then125.i:                                     ; preds = %get_cache.i
  call void @__sanitizer_cov_trace_pc() #10
  %add127.i = or i64 %spec.store.select.i, 72
  %1001 = ptrtoint ptr %cache_mem.i to i32
  call void @__asan_store8_noabort(i32 %1001)
  store i64 %add127.i, ptr %cache_mem.i, align 8
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.then125.i, %get_cache.i.if.end128.i_crit_edge
  %1002 = ptrtoint ptr %sm_info.i312.i to i32
  call void @__asan_load4_noabort(i32 %1002)
  %1003 = load ptr, ptr %sm_info.i312.i, align 8
  %dcc_info.i496 = getelementptr inbounds %struct.f2fs_sm_info, ptr %1003, i32 0, i32 23
  %1004 = ptrtoint ptr %dcc_info.i496 to i32
  call void @__asan_load4_noabort(i32 %1004)
  %1005 = load ptr, ptr %dcc_info.i496, align 4
  %tobool130.not.i = icmp eq ptr %1005, null
  br i1 %tobool130.not.i, label %if.end128.i.if.end141.i_crit_edge, label %if.then131.i

if.end128.i.if.end141.i_crit_edge:                ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141.i

if.then131.i:                                     ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #10
  %1006 = ptrtoint ptr %cache_mem.i to i32
  call void @__asan_load8_noabort(i32 %1006)
  %1007 = load i64, ptr %cache_mem.i, align 8
  %add133.i = add i64 %1007, 4316
  store i64 %add133.i, ptr %cache_mem.i, align 8
  %1008 = ptrtoint ptr %sm_info.i312.i to i32
  call void @__asan_load4_noabort(i32 %1008)
  %1009 = load ptr, ptr %sm_info.i312.i, align 8
  %dcc_info135.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %1009, i32 0, i32 23
  %1010 = ptrtoint ptr %dcc_info135.i to i32
  call void @__asan_load4_noabort(i32 %1010)
  %1011 = load ptr, ptr %dcc_info135.i, align 4
  %discard_cmd_cnt.i497 = getelementptr inbounds %struct.discard_cmd_control, ptr %1011, i32 0, i32 15
  %call.i.i.i498 = tail call zeroext i1 @__kasan_check_read(ptr noundef %discard_cmd_cnt.i497, i32 noundef 4) #8
  %1012 = ptrtoint ptr %discard_cmd_cnt.i497 to i32
  call void @__asan_load4_noabort(i32 %1012)
  %1013 = load volatile i32, ptr %discard_cmd_cnt.i497, align 4
  %mul137.i = mul i32 %1013, 148
  %conv138.i = zext i32 %mul137.i to i64
  %1014 = ptrtoint ptr %cache_mem.i to i32
  call void @__asan_load8_noabort(i32 %1014)
  %1015 = load i64, ptr %cache_mem.i, align 8
  %add140.i = add i64 %1015, %conv138.i
  store i64 %add140.i, ptr %cache_mem.i, align 8
  br label %if.end141.i

if.end141.i:                                      ; preds = %if.then131.i, %if.end128.i.if.end141.i_crit_edge
  %nm_info.i315.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %926, i32 0, i32 9
  %1016 = ptrtoint ptr %nm_info.i315.i to i32
  call void @__asan_load4_noabort(i32 %1016)
  %1017 = load ptr, ptr %nm_info.i315.i, align 8
  %nid_cnt.i499 = getelementptr inbounds %struct.f2fs_nm_info, ptr %1017, i32 0, i32 16
  %1018 = ptrtoint ptr %nid_cnt.i499 to i32
  call void @__asan_load4_noabort(i32 %1018)
  %1019 = load i32, ptr %nid_cnt.i499, align 4
  %arrayidx145.i = getelementptr %struct.f2fs_nm_info, ptr %1017, i32 0, i32 16, i32 1
  %1020 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_load4_noabort(i32 %1020)
  %1021 = load i32, ptr %arrayidx145.i, align 4
  %add146.i = add i32 %1021, %1019
  %mul147.i = shl i32 %add146.i, 4
  %conv148.i = zext i32 %mul147.i to i64
  %1022 = ptrtoint ptr %cache_mem.i to i32
  call void @__asan_load8_noabort(i32 %1022)
  %1023 = load i64, ptr %cache_mem.i, align 8
  %add150.i = add i64 %1023, %conv148.i
  store i64 %add150.i, ptr %cache_mem.i, align 8
  %1024 = load ptr, ptr %nm_info.i315.i, align 8
  %nat_cnt.i500 = getelementptr inbounds %struct.f2fs_nm_info, ptr %1024, i32 0, i32 12
  %1025 = ptrtoint ptr %nat_cnt.i500 to i32
  call void @__asan_load4_noabort(i32 %1025)
  %1026 = load i32, ptr %nat_cnt.i500, align 4
  %mul153.i = mul i32 %1026, 24
  %conv154.i = zext i32 %mul153.i to i64
  %add156.i = add i64 %add150.i, %conv154.i
  store i64 %add156.i, ptr %cache_mem.i, align 8
  %1027 = load ptr, ptr %nm_info.i315.i, align 8
  %arrayidx159.i = getelementptr %struct.f2fs_nm_info, ptr %1027, i32 0, i32 12, i32 1
  %1028 = ptrtoint ptr %arrayidx159.i to i32
  call void @__asan_load4_noabort(i32 %1028)
  %1029 = load i32, ptr %arrayidx159.i, align 4
  %mul160.i = mul i32 %1029, 24
  %conv161.i = zext i32 %mul160.i to i64
  %add163.i = add i64 %add156.i, %conv161.i
  %inmem_pages.i501 = getelementptr inbounds %struct.f2fs_stat_info, ptr %928, i32 0, i32 23
  %1030 = ptrtoint ptr %inmem_pages.i501 to i32
  call void @__asan_load4_noabort(i32 %1030)
  %1031 = load i32, ptr %inmem_pages.i501, align 4
  %mul164.i = shl i32 %1031, 4
  %conv165.i = zext i32 %mul164.i to i64
  %add167.i = add i64 %add163.i, %conv165.i
  store i64 %add167.i, ptr %cache_mem.i, align 8
  %ino_num.i502 = getelementptr %struct.f2fs_sb_info, ptr %926, i32 0, i32 27, i32 0, i32 3
  %1032 = ptrtoint ptr %ino_num.i502 to i32
  call void @__asan_load4_noabort(i32 %1032)
  %1033 = load i32, ptr %ino_num.i502, align 4
  %mul171.i = shl i32 %1033, 4
  %conv172.i = zext i32 %mul171.i to i64
  %add174.i = add i64 %add167.i, %conv172.i
  store i64 %add174.i, ptr %cache_mem.i, align 8
  %ino_num.1.i = getelementptr %struct.f2fs_sb_info, ptr %926, i32 0, i32 27, i32 1, i32 3
  %1034 = ptrtoint ptr %ino_num.1.i to i32
  call void @__asan_load4_noabort(i32 %1034)
  %1035 = load i32, ptr %ino_num.1.i, align 4
  %mul171.1.i = shl i32 %1035, 4
  %conv172.1.i = zext i32 %mul171.1.i to i64
  %add174.1.i = add i64 %add174.i, %conv172.1.i
  store i64 %add174.1.i, ptr %cache_mem.i, align 8
  %ino_num.2.i = getelementptr %struct.f2fs_sb_info, ptr %926, i32 0, i32 27, i32 2, i32 3
  %1036 = ptrtoint ptr %ino_num.2.i to i32
  call void @__asan_load4_noabort(i32 %1036)
  %1037 = load i32, ptr %ino_num.2.i, align 4
  %mul171.2.i = shl i32 %1037, 4
  %conv172.2.i = zext i32 %mul171.2.i to i64
  %add174.2.i = add i64 %add174.1.i, %conv172.2.i
  store i64 %add174.2.i, ptr %cache_mem.i, align 8
  %ino_num.3.i = getelementptr %struct.f2fs_sb_info, ptr %926, i32 0, i32 27, i32 3, i32 3
  %1038 = ptrtoint ptr %ino_num.3.i to i32
  call void @__asan_load4_noabort(i32 %1038)
  %1039 = load i32, ptr %ino_num.3.i, align 4
  %mul171.3.i = shl i32 %1039, 4
  %conv172.3.i = zext i32 %mul171.3.i to i64
  %add174.3.i = add i64 %add174.2.i, %conv172.3.i
  store i64 %add174.3.i, ptr %cache_mem.i, align 8
  %ino_num.4.i = getelementptr %struct.f2fs_sb_info, ptr %926, i32 0, i32 27, i32 4, i32 3
  %1040 = ptrtoint ptr %ino_num.4.i to i32
  call void @__asan_load4_noabort(i32 %1040)
  %1041 = load i32, ptr %ino_num.4.i, align 4
  %mul171.4.i = shl i32 %1041, 4
  %conv172.4.i = zext i32 %mul171.4.i to i64
  %add174.4.i = add i64 %add174.3.i, %conv172.4.i
  store i64 %add174.4.i, ptr %cache_mem.i, align 8
  %total_ext_tree.i503 = getelementptr inbounds %struct.f2fs_sb_info, ptr %926, i32 0, i32 40
  %call.i.i299.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %total_ext_tree.i503, i32 noundef 4) #8
  %1042 = ptrtoint ptr %total_ext_tree.i503 to i32
  call void @__asan_load4_noabort(i32 %1042)
  %1043 = load volatile i32, ptr %total_ext_tree.i503, align 4
  %mul176.i = mul i32 %1043, 92
  %conv177.i = zext i32 %mul176.i to i64
  %1044 = ptrtoint ptr %cache_mem.i to i32
  call void @__asan_load8_noabort(i32 %1044)
  %1045 = load i64, ptr %cache_mem.i, align 8
  %add179.i = add i64 %1045, %conv177.i
  store i64 %add179.i, ptr %cache_mem.i, align 8
  %total_ext_node.i504 = getelementptr inbounds %struct.f2fs_sb_info, ptr %926, i32 0, i32 43
  %call.i.i300.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %total_ext_node.i504, i32 noundef 4) #8
  %1046 = ptrtoint ptr %total_ext_node.i504 to i32
  call void @__asan_load4_noabort(i32 %1046)
  %1047 = load volatile i32, ptr %total_ext_node.i504, align 4
  %mul181.i = mul i32 %1047, 40
  %conv182.i = zext i32 %mul181.i to i64
  %1048 = ptrtoint ptr %cache_mem.i to i32
  call void @__asan_load8_noabort(i32 %1048)
  %1049 = load i64, ptr %cache_mem.i, align 8
  %add184.i = add i64 %1049, %conv182.i
  store i64 %add184.i, ptr %cache_mem.i, align 8
  %page_mem.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %928, i32 0, i32 116
  %1050 = ptrtoint ptr %page_mem.i to i32
  call void @__asan_store8_noabort(i32 %1050)
  store i64 0, ptr %page_mem.i, align 8
  %node_inode.i505 = getelementptr inbounds %struct.f2fs_sb_info, ptr %926, i32 0, i32 10
  %1051 = ptrtoint ptr %node_inode.i505 to i32
  call void @__asan_load4_noabort(i32 %1051)
  %1052 = load ptr, ptr %node_inode.i505, align 4
  %tobool185.not.i = icmp eq ptr %1052, null
  br i1 %tobool185.not.i, label %if.end141.i.if.end192.i_crit_edge, label %if.then186.i

if.end141.i.if.end192.i_crit_edge:                ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end192.i

if.then186.i:                                     ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #10
  %i_mapping.i.i506 = getelementptr inbounds %struct.inode, ptr %1052, i32 0, i32 9
  %1053 = ptrtoint ptr %i_mapping.i.i506 to i32
  call void @__asan_load4_noabort(i32 %1053)
  %1054 = load ptr, ptr %i_mapping.i.i506, align 8
  %nrpages.i507 = getelementptr inbounds %struct.address_space, ptr %1054, i32 0, i32 7
  %1055 = ptrtoint ptr %nrpages.i507 to i32
  call void @__asan_load4_noabort(i32 %1055)
  %1056 = load i32, ptr %nrpages.i507, align 4
  %conv188.i = zext i32 %1056 to i64
  %shl189.i = shl nuw nsw i64 %conv188.i, 12
  %1057 = ptrtoint ptr %page_mem.i to i32
  call void @__asan_store8_noabort(i32 %1057)
  store i64 %shl189.i, ptr %page_mem.i, align 8
  br label %if.end192.i

if.end192.i:                                      ; preds = %if.then186.i, %if.end141.i.if.end192.i_crit_edge
  %meta_inode.i508 = getelementptr inbounds %struct.f2fs_sb_info, ptr %926, i32 0, i32 18
  %1058 = ptrtoint ptr %meta_inode.i508 to i32
  call void @__asan_load4_noabort(i32 %1058)
  %1059 = load ptr, ptr %meta_inode.i508, align 8
  %tobool193.not.i = icmp eq ptr %1059, null
  br i1 %tobool193.not.i, label %if.end192.i.if.end202.i_crit_edge, label %if.then194.i

if.end192.i.if.end202.i_crit_edge:                ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end202.i

if.then194.i:                                     ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #10
  %i_mapping.i319.i = getelementptr inbounds %struct.inode, ptr %1059, i32 0, i32 9
  %1060 = ptrtoint ptr %i_mapping.i319.i to i32
  call void @__asan_load4_noabort(i32 %1060)
  %1061 = load ptr, ptr %i_mapping.i319.i, align 8
  %nrpages197.i = getelementptr inbounds %struct.address_space, ptr %1061, i32 0, i32 7
  %1062 = ptrtoint ptr %nrpages197.i to i32
  call void @__asan_load4_noabort(i32 %1062)
  %1063 = load i32, ptr %nrpages197.i, align 4
  %conv198.i = zext i32 %1063 to i64
  %shl199.i = shl nuw nsw i64 %conv198.i, 12
  %1064 = ptrtoint ptr %page_mem.i to i32
  call void @__asan_load8_noabort(i32 %1064)
  %1065 = load i64, ptr %page_mem.i, align 8
  %add201.i = add i64 %shl199.i, %1065
  store i64 %add201.i, ptr %page_mem.i, align 8
  br label %if.end202.i

if.end202.i:                                      ; preds = %if.then194.i, %if.end192.i.if.end202.i_crit_edge
  %compress_inode.i509 = getelementptr inbounds %struct.f2fs_sb_info, ptr %926, i32 0, i32 144
  %1066 = ptrtoint ptr %compress_inode.i509 to i32
  call void @__asan_load4_noabort(i32 %1066)
  %1067 = load ptr, ptr %compress_inode.i509, align 4
  %tobool203.not.i = icmp eq ptr %1067, null
  br i1 %tobool203.not.i, label %if.end202.i.update_mem_info.exit_crit_edge, label %if.then204.i

if.end202.i.update_mem_info.exit_crit_edge:       ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_mem_info.exit

if.then204.i:                                     ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #10
  %call206.i = tail call ptr @COMPRESS_MAPPING(ptr noundef %926) #8
  %nrpages207.i = getelementptr inbounds %struct.address_space, ptr %call206.i, i32 0, i32 7
  %1068 = ptrtoint ptr %nrpages207.i to i32
  call void @__asan_load4_noabort(i32 %1068)
  %1069 = load i32, ptr %nrpages207.i, align 4
  %conv208.i = zext i32 %1069 to i64
  %shl209.i = shl nuw nsw i64 %conv208.i, 12
  %1070 = ptrtoint ptr %page_mem.i to i32
  call void @__asan_load8_noabort(i32 %1070)
  %1071 = load i64, ptr %page_mem.i, align 8
  %add211.i = add i64 %shl209.i, %1071
  store i64 %add211.i, ptr %page_mem.i, align 8
  br label %update_mem_info.exit

update_mem_info.exit:                             ; preds = %if.then204.i, %if.end202.i.update_mem_info.exit_crit_edge
  %base_mem = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 114
  %1072 = ptrtoint ptr %base_mem to i32
  call void @__asan_load8_noabort(i32 %1072)
  %1073 = load i64, ptr %base_mem, align 8
  %cache_mem = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 115
  %1074 = ptrtoint ptr %cache_mem to i32
  call void @__asan_load8_noabort(i32 %1074)
  %1075 = load i64, ptr %cache_mem, align 8
  %add188 = add i64 %1075, %1073
  %page_mem = getelementptr inbounds %struct.f2fs_stat_info, ptr %si.0526, i32 0, i32 116
  %1076 = ptrtoint ptr %page_mem to i32
  call void @__asan_load8_noabort(i32 %1076)
  %1077 = load i64, ptr %page_mem, align 8
  %add189 = add i64 %add188, %1077
  %shr = lshr i64 %add189, 10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.88, i64 noundef %shr) #8
  %1078 = ptrtoint ptr %base_mem to i32
  call void @__asan_load8_noabort(i32 %1078)
  %1079 = load i64, ptr %base_mem, align 8
  %shr191 = lshr i64 %1079, 10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.89, i64 noundef %shr191) #8
  %1080 = ptrtoint ptr %cache_mem to i32
  call void @__asan_load8_noabort(i32 %1080)
  %1081 = load i64, ptr %cache_mem, align 8
  %shr193 = lshr i64 %1081, 10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.90, i64 noundef %shr193) #8
  %1082 = ptrtoint ptr %page_mem to i32
  call void @__asan_load8_noabort(i32 %1082)
  %1083 = load i64, ptr %page_mem, align 8
  %shr195 = lshr i64 %1083, 10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.91, i64 noundef %shr195) #8
  %1084 = ptrtoint ptr %si.0526 to i32
  call void @__asan_load4_noabort(i32 %1084)
  %si.0 = load ptr, ptr %si.0526, align 4
  %cmp.not = icmp eq ptr %si.0, @f2fs_stat_list
  br i1 %cmp.not, label %update_mem_info.exit.for.end201_crit_edge, label %update_mem_info.exit.for.body_crit_edge

update_mem_info.exit.for.body_crit_edge:          ; preds = %update_mem_info.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

update_mem_info.exit.for.end201_crit_edge:        ; preds = %update_mem_info.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end201

for.end201:                                       ; preds = %update_mem_info.exit.for.end201_crit_edge, %entry.for.end201_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @f2fs_stat_mutex) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @COMPRESS_MAPPING(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_usable_blks_in_seg(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_coarse_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219}
!llvm.module.flags = !{!221, !222, !223, !224, !225, !226, !227, !228}
!llvm.ident = !{!229}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/f2fs/debug.c", i32 643, i32 41}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/f2fs/debug.c", i32 645, i32 22}
!4 = !{ptr @f2fs_debugfs_root, !5, !"f2fs_debugfs_root", i1 false, i1 false}
!5 = !{!"../fs/f2fs/debug.c", i32 26, i32 23}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/f2fs/f2fs.h", i32 3219, i32 3}
!8 = !{ptr @f2fs_kmalloc._rs, !7, !"_rs", i1 false, i1 false}
!9 = !{ptr @__func__.f2fs_kmalloc, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @f2fs_kmalloc._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @f2fs_kmalloc._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/f2fs/debug.c", i32 24, i32 8}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @f2fs_stat_mutex, !16, !"f2fs_stat_mutex", i1 false, i1 false}
!19 = !{ptr @f2fs_stat_list, !20, !"f2fs_stat_list", i1 false, i1 false}
!20 = !{!"../fs/f2fs/debug.c", i32 23, i32 8}
!21 = !{ptr @stat_fops, !22, !"stat_fops", i1 false, i1 false}
!22 = !{!"../fs/f2fs/debug.c", i32 580, i32 1}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/f2fs/debug.c", i32 352, i32 17}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/f2fs/debug.c", i32 354, i32 33}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/f2fs/debug.c", i32 354, i32 39}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/f2fs/debug.c", i32 356, i32 4}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/f2fs/debug.c", i32 356, i32 43}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/f2fs/debug.c", i32 356, i32 53}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/f2fs/debug.c", i32 358, i32 16}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/f2fs/debug.c", i32 361, i32 16}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/f2fs/debug.c", i32 363, i32 17}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/f2fs/debug.c", i32 365, i32 17}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/f2fs/debug.c", i32 367, i32 17}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/f2fs/debug.c", i32 369, i32 17}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/f2fs/debug.c", i32 373, i32 18}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/f2fs/debug.c", i32 376, i32 18}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/f2fs/debug.c", i32 379, i32 17}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/f2fs/debug.c", i32 381, i32 17}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/f2fs/debug.c", i32 384, i32 17}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/f2fs/debug.c", i32 386, i32 17}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/f2fs/debug.c", i32 388, i32 17}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/f2fs/debug.c", i32 390, i32 17}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/f2fs/debug.c", i32 392, i32 17}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/f2fs/debug.c", i32 394, i32 17}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/f2fs/debug.c", i32 397, i32 17}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/f2fs/debug.c", i32 398, i32 7}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/f2fs/debug.c", i32 398, i32 16}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/f2fs/debug.c", i32 398, i32 25}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/f2fs/debug.c", i32 398, i32 35}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/f2fs/debug.c", i32 398, i32 48}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/f2fs/debug.c", i32 398, i32 60}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/f2fs/debug.c", i32 399, i32 17}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/f2fs/debug.c", i32 406, i32 17}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/f2fs/debug.c", i32 413, i32 17}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/f2fs/debug.c", i32 420, i32 17}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/f2fs/debug.c", i32 427, i32 17}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/f2fs/debug.c", i32 434, i32 17}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/f2fs/debug.c", i32 441, i32 17}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/f2fs/debug.c", i32 445, i32 17}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/f2fs/debug.c", i32 449, i32 17}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/f2fs/debug.c", i32 453, i32 17}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/f2fs/debug.c", i32 455, i32 17}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/f2fs/debug.c", i32 457, i32 17}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/f2fs/debug.c", i32 458, i32 17}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/f2fs/debug.c", i32 460, i32 17}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/f2fs/debug.c", i32 462, i32 17}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/f2fs/debug.c", i32 464, i32 17}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/f2fs/debug.c", i32 469, i32 17}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/f2fs/debug.c", i32 471, i32 17}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/f2fs/debug.c", i32 473, i32 17}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/f2fs/debug.c", i32 475, i32 17}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/f2fs/debug.c", i32 484, i32 17}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/f2fs/debug.c", i32 486, i32 17}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/f2fs/debug.c", i32 488, i32 17}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/f2fs/debug.c", i32 490, i32 17}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/f2fs/debug.c", i32 494, i32 17}
!131 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/f2fs/debug.c", i32 496, i32 15}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/f2fs/debug.c", i32 497, i32 17}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/f2fs/debug.c", i32 500, i32 17}
!137 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/f2fs/debug.c", i32 504, i32 17}
!139 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/f2fs/debug.c", i32 506, i32 15}
!141 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/f2fs/debug.c", i32 507, i32 17}
!143 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/f2fs/debug.c", i32 509, i32 17}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/f2fs/debug.c", i32 511, i32 17}
!147 = !{ptr @.str.70, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/f2fs/debug.c", i32 518, i32 17}
!149 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/f2fs/debug.c", i32 522, i32 17}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/f2fs/debug.c", i32 523, i32 17}
!153 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/f2fs/debug.c", i32 525, i32 17}
!155 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../fs/f2fs/debug.c", i32 527, i32 17}
!157 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/f2fs/debug.c", i32 529, i32 17}
!159 = !{ptr @.str.76, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/f2fs/debug.c", i32 531, i32 17}
!161 = !{ptr @.str.77, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/f2fs/debug.c", i32 533, i32 17}
!163 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/f2fs/debug.c", i32 535, i32 17}
!165 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/f2fs/debug.c", i32 537, i32 17}
!167 = !{ptr @.str.80, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/f2fs/debug.c", i32 539, i32 15}
!169 = !{ptr @.str.81, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../fs/f2fs/debug.c", i32 540, i32 15}
!171 = !{ptr @.str.82, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/f2fs/debug.c", i32 541, i32 15}
!173 = !{ptr @.str.83, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../fs/f2fs/debug.c", i32 553, i32 15}
!175 = !{ptr @.str.84, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/f2fs/debug.c", i32 554, i32 17}
!177 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/f2fs/debug.c", i32 555, i32 17}
!179 = !{ptr @.str.86, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/f2fs/debug.c", i32 557, i32 17}
!181 = !{ptr @.str.87, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/f2fs/debug.c", i32 562, i32 17}
!183 = !{ptr @.str.88, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/f2fs/debug.c", i32 567, i32 17}
!185 = !{ptr @.str.89, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../fs/f2fs/debug.c", i32 569, i32 17}
!187 = !{ptr @.str.90, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../fs/f2fs/debug.c", i32 571, i32 17}
!189 = !{ptr @.str.91, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../fs/f2fs/debug.c", i32 573, i32 17}
!191 = !{ptr @.str.92, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../fs/f2fs/debug.c", i32 327, i32 20}
!193 = !{ptr @.str.93, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../fs/f2fs/debug.c", i32 328, i32 20}
!195 = !{ptr @.str.94, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../fs/f2fs/debug.c", i32 329, i32 21}
!197 = !{ptr @.str.95, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../fs/f2fs/debug.c", i32 330, i32 21}
!199 = !{ptr @.str.96, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../fs/f2fs/debug.c", i32 331, i32 24}
!201 = !{ptr @.str.97, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/f2fs/debug.c", i32 332, i32 19}
!203 = !{ptr @.str.98, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/f2fs/debug.c", i32 333, i32 22}
!205 = !{ptr @.str.99, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../fs/f2fs/debug.c", i32 334, i32 23}
!207 = !{ptr @.str.100, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/f2fs/debug.c", i32 335, i32 22}
!209 = !{ptr @.str.101, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/f2fs/debug.c", i32 336, i32 28}
!211 = !{ptr @.str.102, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/f2fs/debug.c", i32 337, i32 27}
!213 = !{ptr @.str.103, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../fs/f2fs/debug.c", i32 338, i32 27}
!215 = !{ptr @.str.104, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../fs/f2fs/debug.c", i32 339, i32 28}
!217 = !{ptr @.str.105, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../fs/f2fs/debug.c", i32 340, i32 22}
!219 = !{ptr @s_flag, !220, !"s_flag", i1 false, i1 false}
!220 = !{!"../fs/f2fs/debug.c", i32 326, i32 14}
!221 = !{i32 1, !"wchar_size", i32 2}
!222 = !{i32 1, !"min_enum_size", i32 4}
!223 = !{i32 8, !"branch-target-enforcement", i32 0}
!224 = !{i32 8, !"sign-return-address", i32 0}
!225 = !{i32 8, !"sign-return-address-all", i32 0}
!226 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!227 = !{i32 7, !"uwtable", i32 1}
!228 = !{i32 7, !"frame-pointer", i32 2}
!229 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!230 = !{i64 1037813, i64 1037840, i64 1037862, i64 1037890}
!231 = !{i64 1038221, i64 1038248, i64 1038281, i64 1038302, i64 1038329, i64 1038355}
!232 = !{!"branch_weights", i32 2000, i32 1}
!233 = !{i64 2148523357, i64 2148523637, i64 2148523971, i64 2148524305}
!234 = !{i64 2148673572, i64 2148673598, i64 2148673627, i64 2148673661, i64 2148673692, i64 2148673715}
