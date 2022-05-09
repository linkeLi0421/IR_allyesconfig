; ModuleID = '/llk/IR_all_yes/fs/afs/fs_operation.c_pt.bc'
source_filename = "../fs/afs/fs_operation.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.afs_volume = type { %union.anon.145, %struct.atomic_t, i64, ptr, %struct.rb_node, %struct.hlist_node, ptr, i32, ptr, ptr, %struct.rwlock_t, i32, i32, %struct.rwlock_t, i8, i8, i8, [65 x i8] }
%union.anon.145 = type { i64 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.afs_operation = type { ptr, ptr, ptr, ptr, ptr, [2 x %struct.afs_vnode_param], ptr, %struct.afs_volsync, ptr, ptr, %struct.timespec64, %struct.timespec64, i16, i16, i32, i32, i32, %union.anon.158, %struct.afs_addr_cursor, ptr, ptr, ptr, i32, i16, i16, i32 }
%struct.afs_vnode_param = type { ptr, %struct.afs_fid, %struct.afs_status_cb, i64, i32, i8, i8 }
%struct.afs_fid = type { i64, i64, i32, i32 }
%struct.afs_status_cb = type { %struct.afs_file_status, %struct.afs_callback, i8, i8, i8 }
%struct.afs_file_status = type { i64, i64, %struct.timespec64, %struct.timespec64, i64, i64, i64, i32, i32, i16, i32, i32, i32, i32 }
%struct.afs_callback = type { i64 }
%struct.afs_volsync = type { i64 }
%struct.timespec64 = type { i64, i32 }
%union.anon.158 = type { %struct.anon.169 }
%struct.anon.169 = type { %struct.afs_volume_status, ptr }
%struct.afs_volume_status = type { i64, i64, i8, i8, i8, i8, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.afs_addr_cursor = type { ptr, i32, i8, i8, i16, i16, i32 }
%struct.afs_cell = type { %union.anon.144, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.hlist_node, i64, i64, %struct.atomic_t, %struct.atomic_t, i32, i32, i16, i16, i32, i32, %struct.rb_root, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.seqlock_t, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.rwlock_t, ptr, i8, ptr }
%union.anon.144 = type { %struct.rb_node }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_head = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.afs_vnode = type { %struct.inode, ptr, %struct.afs_fid, %struct.afs_file_status, i64, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.delayed_work, ptr, i64, i16, %struct.work_struct, %struct.list_head, ptr, %struct.atomic_t, i32, i32, i32, i32, %struct.seqlock_t, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.152, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.153, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.154, ptr, %struct.address_space, %struct.list_head, %union.anon.155, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.152 = type { i32 }
%union.anon.153 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.154 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.155 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.afs_server = type { %struct.callback_head, %union.anon.143, ptr, ptr, %struct.rb_node, ptr, ptr, %struct.list_head, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.work_struct, ptr, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, %struct.rwlock_t, i32, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.147 }
%union.anon.143 = type { %struct.afs_uuid }
%struct.afs_uuid = type { i32, i16, i16, i8, i8, [6 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.147 = type { i32, i32, i16, i8 }
%struct.afs_operation_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@afs_debug = external dso_local local_unnamed_addr global i32, align 4
@afs_alloc_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 22, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afs_alloc_operation\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/afs/fs_operation.c\00", [42 x i8] zeroinitializer }, align 32
@afs_alloc_operation._entry_ptr = internal global ptr @afs_alloc_operation._entry, section ".printk_index", align 4
@afs_operation_debug_counter = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@afs_alloc_operation._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s] <== %s() = [op=%08x]\0A\00", [33 x i8] zeroinitializer }, align 32
@afs_alloc_operation._entry_ptr.5 = internal global ptr @afs_alloc_operation._entry.3, section ".printk_index", align 4
@afs_begin_vnode_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\013\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"afs_begin_vnode_operation\00", [38 x i8] zeroinitializer }, align 32
@afs_begin_vnode_operation._entry_ptr = internal global ptr @afs_begin_vnode_operation._entry, section ".printk_index", align 4
@afs_begin_vnode_operation._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013AFS: Assertion failed\0A\00", [39 x i8] zeroinitializer }, align 32
@afs_begin_vnode_operation._entry_ptr.10 = internal global ptr @afs_begin_vnode_operation._entry.8, section ".printk_index", align 4
@afs_begin_vnode_operation._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.7, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_begin_vnode_operation._entry_ptr.12 = internal global ptr @afs_begin_vnode_operation._entry.11, section ".printk_index", align 4
@afs_begin_vnode_operation._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s] <== %s() = true\0A\00", [38 x i8] zeroinitializer }, align 32
@afs_begin_vnode_operation._entry_ptr.15 = internal global ptr @afs_begin_vnode_operation._entry.13, section ".printk_index", align 4
@afs_wait_for_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.16, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"afs_wait_for_operation\00", [41 x i8] zeroinitializer }, align 32
@afs_wait_for_operation._entry_ptr = internal global ptr @afs_wait_for_operation._entry, section ".printk_index", align 4
@afs_wait_for_operation._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%-6.6s]     success\0A\00", [42 x i8] zeroinitializer }, align 32
@afs_wait_for_operation._entry_ptr.19 = internal global ptr @afs_wait_for_operation._entry.17, section ".printk_index", align 4
@afs_wait_for_operation._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s]     edit_dir\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_wait_for_operation._entry_ptr.22 = internal global ptr @afs_wait_for_operation._entry.20, section ".printk_index", align 4
@afs_wait_for_operation._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] <== %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@afs_wait_for_operation._entry_ptr.25 = internal global ptr @afs_wait_for_operation._entry.23, section ".printk_index", align 4
@afs_put_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] ==> %s(op=%08x,%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"afs_put_operation\00", [46 x i8] zeroinitializer }, align 32
@afs_put_operation._entry_ptr = internal global ptr @afs_put_operation._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@afs_get_io_locks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.28, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"afs_get_io_locks\00", [47 x i8] zeroinitializer }, align 32
@afs_get_io_locks._entry_ptr = internal global ptr @afs_get_io_locks._entry, section ".printk_index", align 4
@afs_get_io_locks._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s] <== %s() = t [1]\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_get_io_locks._entry_ptr.31 = internal global ptr @afs_get_io_locks._entry.29, section ".printk_index", align 4
@afs_get_io_locks._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] <== %s() = f [I 0]\0A\00", [35 x i8] zeroinitializer }, align 32
@afs_get_io_locks._entry_ptr.34 = internal global ptr @afs_get_io_locks._entry.32, section ".printk_index", align 4
@afs_get_io_locks._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] <== %s() = f [I 1]\0A\00", [35 x i8] zeroinitializer }, align 32
@afs_get_io_locks._entry_ptr.37 = internal global ptr @afs_get_io_locks._entry.35, section ".printk_index", align 4
@afs_get_io_locks._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.28, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s] <== %s() = t [2]\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_get_io_locks._entry_ptr.40 = internal global ptr @afs_get_io_locks._entry.38, section ".printk_index", align 4
@afs_prepare_vnode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%-6.6s]     PREP[%u] {%llx:%llu.%u}\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"afs_prepare_vnode\00", [46 x i8] zeroinitializer }, align 32
@afs_prepare_vnode._entry_ptr = internal global ptr @afs_prepare_vnode._entry, section ".printk_index", align 4
@afs_end_vnode_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.43, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"afs_end_vnode_operation\00", [40 x i8] zeroinitializer }, align 32
@afs_end_vnode_operation._entry_ptr = internal global ptr @afs_end_vnode_operation._entry, section ".printk_index", align 4
@afs_drop_io_locks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.44, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"afs_drop_io_locks\00", [46 x i8] zeroinitializer }, align 32
@afs_drop_io_locks._entry_ptr = internal global ptr @afs_drop_io_locks._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967193]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 16, i64 65423, i64 65435, i64 65437, i64 65447]
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 22, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [28 x i8] c"afs_operation_debug_counter\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 13, i32 17 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 46, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 140, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 142, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 151, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 179, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 197, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 213, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 216, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 226, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 58, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 63, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 76, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 87, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 93, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 126, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 160, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private constant [25 x i8] c"../fs/afs/fs_operation.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 102, i32 2 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @afs_alloc_operation._entry, ptr @afs_alloc_operation._entry.3, ptr @afs_alloc_operation._entry_ptr, ptr @afs_alloc_operation._entry_ptr.5, ptr @afs_begin_vnode_operation._entry, ptr @afs_begin_vnode_operation._entry.11, ptr @afs_begin_vnode_operation._entry.13, ptr @afs_begin_vnode_operation._entry.8, ptr @afs_begin_vnode_operation._entry_ptr, ptr @afs_begin_vnode_operation._entry_ptr.10, ptr @afs_begin_vnode_operation._entry_ptr.12, ptr @afs_begin_vnode_operation._entry_ptr.15, ptr @afs_drop_io_locks._entry, ptr @afs_drop_io_locks._entry_ptr, ptr @afs_end_vnode_operation._entry, ptr @afs_end_vnode_operation._entry_ptr, ptr @afs_get_io_locks._entry, ptr @afs_get_io_locks._entry.29, ptr @afs_get_io_locks._entry.32, ptr @afs_get_io_locks._entry.35, ptr @afs_get_io_locks._entry.38, ptr @afs_get_io_locks._entry_ptr, ptr @afs_get_io_locks._entry_ptr.31, ptr @afs_get_io_locks._entry_ptr.34, ptr @afs_get_io_locks._entry_ptr.37, ptr @afs_get_io_locks._entry_ptr.40, ptr @afs_prepare_vnode._entry, ptr @afs_prepare_vnode._entry_ptr, ptr @afs_put_operation._entry, ptr @afs_put_operation._entry_ptr, ptr @afs_wait_for_operation._entry, ptr @afs_wait_for_operation._entry.17, ptr @afs_wait_for_operation._entry.20, ptr @afs_wait_for_operation._entry.23, ptr @afs_wait_for_operation._entry_ptr, ptr @afs_wait_for_operation._entry_ptr.19, ptr @afs_wait_for_operation._entry_ptr.22, ptr @afs_wait_for_operation._entry_ptr.25, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @afs_operation_debug_counter, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_operation_debug_counter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_operation._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_begin_vnode_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_begin_vnode_operation._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_begin_vnode_operation._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_begin_vnode_operation._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_wait_for_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_wait_for_operation._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_wait_for_operation._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_wait_for_operation._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_put_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_get_io_locks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_get_io_locks._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_get_io_locks._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_get_io_locks._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_get_io_locks._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_prepare_vnode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_end_vnode_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_drop_io_locks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_alloc_operation(ptr noundef %key, ptr noundef %volume) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !91

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = tail call i32 @llvm.read_register.i32(metadata !81) #6
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1) #9
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 568) #10
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %do.end6.cleanup_crit_edge, label %if.end11

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %do.end6
  %tobool12.not = icmp eq ptr %key, null
  br i1 %tobool12.not, label %if.then13, label %cond.true.i

if.then13:                                        ; preds = %if.end11
  %cell = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 3
  %6 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cell, align 8
  %call14 = tail call ptr @afs_request_key(ptr noundef %7) #6
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.then13.if.end20_crit_edge

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cond.true.i:                                      ; preds = %if.end11
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %key, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull %key, i32 1, i32 3, i32 1) #6
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %key, ptr nonnull %key, i32 1, ptr nonnull elementtype(i32) %key) #6, !srcloc !92
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !93

cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %cond.true.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end20_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !91

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end20_crit_edge:             ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %key, i32 noundef %.sink.i.i.i.i.i) #6
  br label %if.end20

if.end20:                                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end20_crit_edge, %if.then13.if.end20_crit_edge
  %key.addr.0 = phi ptr [ %call14, %if.then13.if.end20_crit_edge ], [ %key, %if.else.i.i.i.i.i.if.end20_crit_edge ], [ %key, %if.end15.sink.split.i.i.i.i.i ]
  %key21 = getelementptr inbounds %struct.afs_operation, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %key21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %key.addr.0, ptr %key21, align 4
  %call22 = tail call ptr @afs_get_volume(ptr noundef %volume, i32 noundef 4) #6
  %volume23 = getelementptr inbounds %struct.afs_operation, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %volume23 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call22, ptr %volume23, align 8
  %cell24 = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 3
  %12 = ptrtoint ptr %cell24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cell24, align 8
  %net = getelementptr inbounds %struct.afs_cell, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net, align 4
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %call7.i.i, align 8
  %cb_v_break = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 12
  %17 = ptrtoint ptr %cb_v_break to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cb_v_break, align 8
  %cb_v_break26 = getelementptr inbounds %struct.afs_operation, ptr %call7.i.i, i32 0, i32 15
  %19 = ptrtoint ptr %cb_v_break26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %cb_v_break26, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @afs_operation_debug_counter, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr nonnull @afs_operation_debug_counter, i32 1, i32 3, i32 1) #6
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @afs_operation_debug_counter, ptr nonnull @afs_operation_debug_counter, i32 1, ptr nonnull elementtype(i32) @afs_operation_debug_counter) #6, !srcloc !95
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !96
  %debug_id = getelementptr inbounds %struct.afs_operation, ptr %call7.i.i, i32 0, i32 14
  %21 = ptrtoint ptr %debug_id to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %asmresult.i.i.i.i, ptr %debug_id, align 4
  %error = getelementptr inbounds %struct.afs_operation, ptr %call7.i.i, i32 0, i32 13
  %22 = ptrtoint ptr %error to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -89, ptr %error, align 2
  %error28 = getelementptr inbounds %struct.afs_operation, ptr %call7.i.i, i32 0, i32 18, i32 5
  %23 = ptrtoint ptr %error28 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 32767, ptr %error28, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %24 = load i32, ptr @afs_debug, align 4
  %and30 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end20.cleanup_crit_edge, label %do.end41, !prof !91

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end41:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %25 = tail call i32 @llvm.read_register.i32(metadata !81) #6
  %and.i69 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i69 to ptr
  %task44 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task44 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task44, align 8
  %comm45 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 101
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm45, ptr noundef nonnull @.str.1, i32 noundef %asmresult.i.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %if.end20.cleanup_crit_edge, %if.then16, %do.end6.cleanup_crit_edge
  %retval.0 = phi ptr [ %call14, %if.then16 ], [ %call7.i.i, %do.end41 ], [ %call7.i.i, %if.end20.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.end6.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_request_key(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_get_volume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @afs_begin_vnode_operation(ptr nocapture noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %do.body19, !prof !93

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/fs_operation.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 140, 0\0A.popsection", ""() #6, !srcloc !97
  unreachable

do.body19:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %do.body19.do.end36_crit_edge, label %do.end30, !prof !91

do.body19.do.end36_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end36

do.end30:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  %3 = tail call i32 @llvm.read_register.i32(metadata !81) #6
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.7) #9
  br label %do.end36

do.end36:                                         ; preds = %do.end30, %do.body19.do.end36_crit_edge
  %need_io_lock = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 6
  %7 = ptrtoint ptr %need_io_lock to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %need_io_lock, align 1
  %8 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %bf.cast.not = icmp eq i8 %8, 0
  br i1 %bf.cast.not, label %do.end36.if.end43_crit_edge, label %if.then39

do.end36.if.end43_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then39:                                        ; preds = %do.end36
  %9 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %file, align 8
  %arrayidx3.i = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx3.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %13 = load i32, ptr @afs_debug, align 4
  %and.i79 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i79)
  %tobool.not.i = icmp eq i32 %and.i79, 0
  br i1 %tobool.not.i, label %if.then39.do.end10.i_crit_edge, label %do.end.i, !prof !91

if.then39.do.end10.i_crit_edge:                   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10.i

do.end.i:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  %14 = tail call i32 @llvm.read_register.i32(metadata !81) #6
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 101
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm.i, ptr noundef nonnull @.str.28) #9
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i, %if.then39.do.end10.i_crit_edge
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 8
  %and11.i = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end37.i, label %if.then13.i

if.then13.i:                                      ; preds = %do.end10.i
  %io_lock.i = getelementptr inbounds %struct.afs_vnode, ptr %10, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %io_lock.i, i32 noundef 0) #6
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %21, 256
  store i32 %or.i, ptr %flags.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %22 = load i32, ptr @afs_debug, align 4
  %and16.i = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.then13.i.if.end43_crit_edge, label %if.then13.i.if.end43.sink.split_crit_edge, !prof !91

if.then13.i.if.end43.sink.split_crit_edge:        ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.sink.split

if.then13.i.if.end43_crit_edge:                   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.end37.i:                                       ; preds = %do.end10.i
  %tobool38.not.i = icmp eq ptr %12, null
  br i1 %tobool38.not.i, label %if.end37.i.if.then42.i_crit_edge, label %lor.lhs.false.i

if.end37.i.if.then42.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then42.i

lor.lhs.false.i:                                  ; preds = %if.end37.i
  %need_io_lock.i = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 6
  %23 = ptrtoint ptr %need_io_lock.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %need_io_lock.i, align 1
  %24 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %bf.cast.not.i = icmp eq i8 %24, 0
  %cmp.i = icmp eq ptr %10, %12
  %or.cond.i = select i1 %bf.cast.not.i, i1 true, i1 %cmp.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.then42.i_crit_edge, label %lor.lhs.false.i.if.end43.i_crit_edge

lor.lhs.false.i.if.end43.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i

lor.lhs.false.i.if.then42.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then42.i

if.then42.i:                                      ; preds = %lor.lhs.false.i.if.then42.i_crit_edge, %if.end37.i.if.then42.i_crit_edge
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then42.i, %lor.lhs.false.i.if.end43.i_crit_edge
  %vnode2.0.i = phi ptr [ null, %if.then42.i ], [ %12, %lor.lhs.false.i.if.end43.i_crit_edge ]
  %cmp44.i = icmp ugt ptr %vnode2.0.i, %10
  %spec.select.i = select i1 %cmp44.i, ptr %10, ptr %vnode2.0.i
  %spec.select164.i = select i1 %cmp44.i, ptr %vnode2.0.i, ptr %10
  %io_lock50.i = getelementptr inbounds %struct.afs_vnode, ptr %spec.select164.i, i32 0, i32 7
  %call51.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %io_lock50.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %cmp52.i = icmp slt i32 %call51.i, 0
  br i1 %cmp52.i, label %if.then53.i, label %if.end78.i

if.then53.i:                                      ; preds = %if.end43.i
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %25 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -512, ptr %error.i, align 2
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i, align 8
  %or55.i = or i32 %27, 1
  store i32 %or55.i, ptr %flags.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %28 = load i32, ptr @afs_debug, align 4
  %and57.i = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %if.then53.i.cleanup_crit_edge, label %cleanup.critedge, !prof !91

if.then53.i.cleanup_crit_edge:                    ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end78.i:                                       ; preds = %if.end43.i
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i, align 8
  %or80.i = or i32 %30, 256
  store i32 %or80.i, ptr %flags.i, align 8
  %tobool81.not.i = icmp eq ptr %spec.select.i, null
  br i1 %tobool81.not.i, label %if.end78.i.do.body119.i_crit_edge, label %if.then82.i

if.end78.i.do.body119.i_crit_edge:                ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body119.i

if.then82.i:                                      ; preds = %if.end78.i
  %io_lock83.i = getelementptr inbounds %struct.afs_vnode, ptr %spec.select.i, i32 0, i32 7
  %call84.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %io_lock83.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.i)
  %cmp85.i = icmp slt i32 %call84.i, 0
  br i1 %cmp85.i, label %if.then86.i, label %if.end115.i

if.then86.i:                                      ; preds = %if.then82.i
  %error87.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %31 = ptrtoint ptr %error87.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -512, ptr %error87.i, align 2
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i, align 8
  %or89.i = or i32 %33, 1
  store i32 %or89.i, ptr %flags.i, align 8
  tail call void @mutex_unlock(ptr noundef %io_lock50.i) #6
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 8
  %and92.i = and i32 %35, -257
  store i32 %and92.i, ptr %flags.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %36 = load i32, ptr @afs_debug, align 4
  %and94.i = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94.i)
  %tobool95.not.i = icmp eq i32 %and94.i, 0
  br i1 %tobool95.not.i, label %if.then86.i.cleanup_crit_edge, label %cleanup.critedge134, !prof !91

if.then86.i.cleanup_crit_edge:                    ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end115.i:                                      ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i, align 8
  %or117.i = or i32 %38, 512
  store i32 %or117.i, ptr %flags.i, align 8
  br label %do.body119.i

do.body119.i:                                     ; preds = %if.end115.i, %if.end78.i.do.body119.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %39 = load i32, ptr @afs_debug, align 4
  %and120.i = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.i)
  %tobool121.not.i = icmp eq i32 %and120.i, 0
  br i1 %tobool121.not.i, label %do.body119.i.if.end43_crit_edge, label %do.body119.i.if.end43.sink.split_crit_edge, !prof !91

do.body119.i.if.end43.sink.split_crit_edge:       ; preds = %do.body119.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.sink.split

do.body119.i.if.end43_crit_edge:                  ; preds = %do.body119.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.end43.sink.split:                              ; preds = %do.body119.i.if.end43.sink.split_crit_edge, %if.then13.i.if.end43.sink.split_crit_edge
  %.str.39.sink = phi ptr [ @.str.39, %do.body119.i.if.end43.sink.split_crit_edge ], [ @.str.30, %if.then13.i.if.end43.sink.split_crit_edge ]
  %40 = tail call i32 @llvm.read_register.i32(metadata !81) #6
  %and.i168.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i168.i to ptr
  %task134.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task134.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task134.i, align 8
  %comm135.i = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 101
  %call137.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.39.sink, ptr noundef %comm135.i, ptr noundef nonnull @.str.28) #9
  br label %if.end43

if.end43:                                         ; preds = %if.end43.sink.split, %do.body119.i.if.end43_crit_edge, %if.then13.i.if.end43_crit_edge, %do.end36.if.end43_crit_edge
  %44 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %file, align 8
  %tobool.not.i80 = icmp eq ptr %45, null
  br i1 %tobool.not.i80, label %if.end43.if.end10.i_crit_edge, label %if.then.i

if.end43.if.end10.i_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then.i:                                        ; preds = %if.end43
  %fid.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %fid2.i = getelementptr inbounds %struct.afs_vnode, ptr %45, i32 0, i32 2
  %46 = call ptr @memcpy(ptr %fid.i, ptr %fid2.i, i32 24)
  %data_version.i = getelementptr inbounds %struct.afs_vnode, ptr %45, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %data_version.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %data_version.i, align 8
  %dv_before.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 3
  %49 = ptrtoint ptr %dv_before.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %dv_before.i, align 8
  %cb_break.i.i = getelementptr inbounds %struct.afs_vnode, ptr %45, i32 0, i32 28
  %50 = ptrtoint ptr %cb_break.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cb_break.i.i, align 4
  %cb_v_break.i.i = getelementptr inbounds %struct.afs_vnode, ptr %45, i32 0, i32 27
  %52 = ptrtoint ptr %cb_v_break.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cb_v_break.i.i, align 8
  %add.i.i = add i32 %53, %51
  %cb_break_before.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 4
  %54 = ptrtoint ptr %cb_break_before.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add.i.i, ptr %cb_break_before.i, align 8
  %lock_state.i = getelementptr inbounds %struct.afs_vnode, ptr %45, i32 0, i32 20
  %55 = ptrtoint ptr %lock_state.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load.i81 = load i16, ptr %lock_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %bf.load.i81)
  %cmp.not.i = icmp ult i16 %bf.load.i81, 256
  br i1 %cmp.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then3.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %flags.i82 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %56 = ptrtoint ptr %flags.i82 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags.i82, align 8
  %or.i83 = or i32 %57, 16
  store i32 %or.i83, ptr %flags.i82, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %58 = ptrtoint ptr %need_io_lock to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load4.i = load i8, ptr %need_io_lock, align 1
  %59 = and i8 %bf.load4.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %bf.cast6.not.i = icmp eq i8 %59, 0
  br i1 %bf.cast6.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then7.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %flags8.i = getelementptr inbounds %struct.afs_vnode, ptr %45, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags8.i) #6
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.end.i.if.end10.i_crit_edge, %if.end43.if.end10.i_crit_edge
  %fid11.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1
  %vnode12.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %vnode12.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %vnode12.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %61)
  %tobool13.not.i = icmp eq i64 %61, 0
  br i1 %tobool13.not.i, label %if.end10.i.afs_prepare_vnode.exit_crit_edge, label %do.body.i

if.end10.i.afs_prepare_vnode.exit_crit_edge:      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %afs_prepare_vnode.exit

do.body.i:                                        ; preds = %if.end10.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %62 = load i32, ptr @afs_debug, align 4
  %and.i84 = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84)
  %tobool15.not.i = icmp eq i32 %and.i84, 0
  br i1 %tobool15.not.i, label %do.body.i.afs_prepare_vnode.exit_crit_edge, label %do.end.i88, !prof !91

do.body.i.afs_prepare_vnode.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %afs_prepare_vnode.exit

do.end.i88:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %63 = tail call i32 @llvm.read_register.i32(metadata !81) #6
  %and.i.i85 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i85 to ptr
  %task.i86 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task.i86 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task.i86, align 8
  %comm.i87 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 101
  %67 = ptrtoint ptr %fid11.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %fid11.i, align 8
  %unique.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 1, i32 3
  %69 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %unique.i, align 4
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %comm.i87, i32 noundef 0, i64 noundef %68, i64 noundef %61, i32 noundef %70) #9
  br label %afs_prepare_vnode.exit

afs_prepare_vnode.exit:                           ; preds = %do.end.i88, %do.body.i.afs_prepare_vnode.exit_crit_edge, %if.end10.i.afs_prepare_vnode.exit_crit_edge
  %arrayidx47 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1
  %71 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx47, align 8
  %tobool.not.i89 = icmp eq ptr %72, null
  br i1 %tobool.not.i89, label %afs_prepare_vnode.exit.if.end10.i114_crit_edge, label %if.then.i101

afs_prepare_vnode.exit.if.end10.i114_crit_edge:   ; preds = %afs_prepare_vnode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i114

if.then.i101:                                     ; preds = %afs_prepare_vnode.exit
  %fid.i90 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1
  %fid2.i91 = getelementptr inbounds %struct.afs_vnode, ptr %72, i32 0, i32 2
  %73 = call ptr @memcpy(ptr %fid.i90, ptr %fid2.i91, i32 24)
  %data_version.i92 = getelementptr inbounds %struct.afs_vnode, ptr %72, i32 0, i32 3, i32 1
  %74 = ptrtoint ptr %data_version.i92 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %data_version.i92, align 8
  %dv_before.i93 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 3
  %76 = ptrtoint ptr %dv_before.i93 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %75, ptr %dv_before.i93, align 8
  %cb_break.i.i94 = getelementptr inbounds %struct.afs_vnode, ptr %72, i32 0, i32 28
  %77 = ptrtoint ptr %cb_break.i.i94 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cb_break.i.i94, align 4
  %cb_v_break.i.i95 = getelementptr inbounds %struct.afs_vnode, ptr %72, i32 0, i32 27
  %79 = ptrtoint ptr %cb_v_break.i.i95 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cb_v_break.i.i95, align 8
  %add.i.i96 = add i32 %80, %78
  %cb_break_before.i97 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 4
  %81 = ptrtoint ptr %cb_break_before.i97 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add.i.i96, ptr %cb_break_before.i97, align 8
  %lock_state.i98 = getelementptr inbounds %struct.afs_vnode, ptr %72, i32 0, i32 20
  %82 = ptrtoint ptr %lock_state.i98 to i32
  call void @__asan_load2_noabort(i32 %82)
  %bf.load.i99 = load i16, ptr %lock_state.i98, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %bf.load.i99)
  %cmp.not.i100 = icmp ult i16 %bf.load.i99, 256
  br i1 %cmp.not.i100, label %if.then.i101.if.end.i108_crit_edge, label %if.then3.i104

if.then.i101.if.end.i108_crit_edge:               ; preds = %if.then.i101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i108

if.then3.i104:                                    ; preds = %if.then.i101
  call void @__sanitizer_cov_trace_pc() #8
  %flags.i102 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %83 = ptrtoint ptr %flags.i102 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags.i102, align 8
  %or.i103 = or i32 %84, 16
  store i32 %or.i103, ptr %flags.i102, align 8
  br label %if.end.i108

if.end.i108:                                      ; preds = %if.then3.i104, %if.then.i101.if.end.i108_crit_edge
  %modification.i105 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 6
  %85 = ptrtoint ptr %modification.i105 to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load4.i106 = load i8, ptr %modification.i105, align 1
  %86 = and i8 %bf.load4.i106, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %bf.cast6.not.i107 = icmp eq i8 %86, 0
  br i1 %bf.cast6.not.i107, label %if.end.i108.if.end10.i114_crit_edge, label %if.then7.i110

if.end.i108.if.end10.i114_crit_edge:              ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i114

if.then7.i110:                                    ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #8
  %flags8.i109 = getelementptr inbounds %struct.afs_vnode, ptr %72, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags8.i109) #6
  br label %if.end10.i114

if.end10.i114:                                    ; preds = %if.then7.i110, %if.end.i108.if.end10.i114_crit_edge, %afs_prepare_vnode.exit.if.end10.i114_crit_edge
  %fid11.i111 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1
  %vnode12.i112 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1, i32 1
  %87 = ptrtoint ptr %vnode12.i112 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %vnode12.i112, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %88)
  %tobool13.not.i113 = icmp eq i64 %88, 0
  br i1 %tobool13.not.i113, label %if.end10.i114.afs_prepare_vnode.exit124_crit_edge, label %do.body.i117

if.end10.i114.afs_prepare_vnode.exit124_crit_edge: ; preds = %if.end10.i114
  call void @__sanitizer_cov_trace_pc() #8
  br label %afs_prepare_vnode.exit124

do.body.i117:                                     ; preds = %if.end10.i114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %89 = load i32, ptr @afs_debug, align 4
  %and.i115 = and i32 %89, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i115)
  %tobool15.not.i116 = icmp eq i32 %and.i115, 0
  br i1 %tobool15.not.i116, label %do.body.i117.afs_prepare_vnode.exit124_crit_edge, label %do.end.i123, !prof !91

do.body.i117.afs_prepare_vnode.exit124_crit_edge: ; preds = %do.body.i117
  call void @__sanitizer_cov_trace_pc() #8
  br label %afs_prepare_vnode.exit124

do.end.i123:                                      ; preds = %do.body.i117
  call void @__sanitizer_cov_trace_pc() #8
  %90 = tail call i32 @llvm.read_register.i32(metadata !81) #6
  %and.i.i118 = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i118 to ptr
  %task.i119 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %task.i119 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task.i119, align 8
  %comm.i120 = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 101
  %94 = ptrtoint ptr %fid11.i111 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %fid11.i111, align 8
  %unique.i121 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 1, i32 3
  %96 = ptrtoint ptr %unique.i121 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %unique.i121, align 4
  %call25.i122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %comm.i120, i32 noundef 1, i64 noundef %95, i64 noundef %88, i32 noundef %97) #9
  br label %afs_prepare_vnode.exit124

afs_prepare_vnode.exit124:                        ; preds = %do.end.i123, %do.body.i117.afs_prepare_vnode.exit124_crit_edge, %if.end10.i114.afs_prepare_vnode.exit124_crit_edge
  %volume = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 4
  %98 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %volume, align 8
  %cb_v_break = getelementptr inbounds %struct.afs_volume, ptr %99, i32 0, i32 12
  %100 = ptrtoint ptr %cb_v_break to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cb_v_break, align 8
  %cb_v_break48 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 15
  %102 = ptrtoint ptr %cb_v_break48 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %cb_v_break48, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %103 = load i32, ptr @afs_debug, align 4
  %and50 = and i32 %103, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %afs_prepare_vnode.exit124.cleanup_crit_edge, label %do.end61, !prof !91

afs_prepare_vnode.exit124.cleanup_crit_edge:      ; preds = %afs_prepare_vnode.exit124
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end61:                                         ; preds = %afs_prepare_vnode.exit124
  call void @__sanitizer_cov_trace_pc() #8
  %104 = tail call i32 @llvm.read_register.i32(metadata !81) #6
  %and.i125 = and i32 %104, -16384
  %105 = inttoptr i32 %and.i125 to ptr
  %task64 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %task64 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %task64, align 8
  %comm65 = getelementptr inbounds %struct.task_struct, ptr %107, i32 0, i32 101
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %comm65, ptr noundef nonnull @.str.7) #9
  br label %cleanup

cleanup.critedge:                                 ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #8
  %108 = tail call i32 @llvm.read_register.i32(metadata !81) #6
  %and.i168.i.c130 = and i32 %108, -16384
  %109 = inttoptr i32 %and.i168.i.c130 to ptr
  %task134.i.c131 = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %task134.i.c131 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %task134.i.c131, align 8
  %comm135.i.c132 = getelementptr inbounds %struct.task_struct, ptr %111, i32 0, i32 101
  %call137.i.c133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %comm135.i.c132, ptr noundef nonnull @.str.28) #9
  br label %cleanup

cleanup.critedge134:                              ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #8
  %112 = tail call i32 @llvm.read_register.i32(metadata !81) #6
  %and.i168.i.c135 = and i32 %112, -16384
  %113 = inttoptr i32 %and.i168.i.c135 to ptr
  %task134.i.c136 = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %task134.i.c136 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %task134.i.c136, align 8
  %comm135.i.c137 = getelementptr inbounds %struct.task_struct, ptr %115, i32 0, i32 101
  %call137.i.c138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %comm135.i.c137, ptr noundef nonnull @.str.28) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge134, %cleanup.critedge, %do.end61, %afs_prepare_vnode.exit124.cleanup_crit_edge, %if.then86.i.cleanup_crit_edge, %if.then53.i.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %do.end61 ], [ true, %afs_prepare_vnode.exit124.cleanup_crit_edge ], [ false, %if.then53.i.cleanup_crit_edge ], [ false, %if.then86.i.cleanup_crit_edge ], [ false, %cleanup.critedge ], [ false, %cleanup.critedge134 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_wait_for_operation(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !91

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = tail call i32 @llvm.read_register.i32(metadata !81) #6
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.16) #9
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %call6153 = tail call zeroext i1 @afs_select_fileserver(ptr noundef %op) #6
  br i1 %call6153, label %while.body.lr.ph, label %do.end5.while.end_crit_edge

do.end5.while.end_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end5
  %server = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 20
  %cb_s_break7 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 16
  %ops = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 3
  %error = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18, i32 5
  %call23 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 21
  %ac27 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  %error29 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  br label %while.body

while.body:                                       ; preds = %if.end30.while.body_crit_edge, %while.body.lr.ph
  %5 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %server, align 8
  %cb_s_break = getelementptr inbounds %struct.afs_server, ptr %6, i32 0, i32 21
  %7 = ptrtoint ptr %cb_s_break to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cb_s_break, align 4
  %9 = ptrtoint ptr %cb_s_break7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %cb_s_break7, align 4
  %flags = getelementptr inbounds %struct.afs_server, ptr %6, i32 0, i32 14
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool10.not = icmp eq i32 %12, 0
  br i1 %tobool10.not, label %while.body.if.else_crit_edge, label %land.lhs.true

while.body.if.else_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %while.body
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %issue_yfs_rpc = getelementptr inbounds %struct.afs_operation_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %issue_yfs_rpc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %issue_yfs_rpc, align 4
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %land.lhs.true.if.else_crit_edge, label %if.then12

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %16(ptr noundef %op) #6
  br label %if.end22

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %while.body.if.else_crit_edge
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool16.not = icmp eq ptr %20, null
  br i1 %tobool16.not, label %if.else20, label %if.then17

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %20(ptr noundef %op) #6
  br label %if.end22

if.else20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %error to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -524, ptr %error, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else20, %if.then17, %if.then12
  %22 = ptrtoint ptr %call23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call23, align 4
  %tobool24.not = icmp eq ptr %23, null
  br i1 %tobool24.not, label %if.end22.if.end30_crit_edge, label %if.then25

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = tail call i32 @afs_wait_for_call_to_complete(ptr noundef nonnull %23, ptr noundef %ac27) #6
  %conv = trunc i32 %call28 to i16
  %24 = ptrtoint ptr %error29 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv, ptr %error29, align 2
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end22.if.end30_crit_edge
  %call6 = tail call zeroext i1 @afs_select_fileserver(ptr noundef %op) #6
  br i1 %call6, label %if.end30.while.body_crit_edge, label %if.end30.while.end_crit_edge

if.end30.while.end_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end30.while.end_crit_edge, %do.end5.while.end_crit_edge
  %error31 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %25 = ptrtoint ptr %error31 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %error31, align 2
  %conv32 = sext i16 %26 to i32
  %27 = zext i32 %conv32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv32, label %while.end.sw.default_crit_edge [
    i32 0, label %do.body33
    i32 -103, label %sw.bb54
  ]

while.end.sw.default_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

do.body33:                                        ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %28 = load i32, ptr @afs_debug, align 4
  %and34 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.body33.do.end52_crit_edge, label %do.end44, !prof !91

do.body33.do.end52_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end52

do.end44:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  %29 = tail call i32 @llvm.read_register.i32(metadata !81) #6
  %and.i149 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i149 to ptr
  %task47 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task47, align 8
  %comm48 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 101
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %comm48) #9
  br label %do.end52

do.end52:                                         ; preds = %do.end44, %do.body33.do.end52_crit_edge
  %ops53 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 3
  %33 = ptrtoint ptr %ops53 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops53, align 4
  %success = getelementptr inbounds %struct.afs_operation_ops, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %success to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %success, align 4
  br label %sw.epilog.sink.split

sw.bb54:                                          ; preds = %while.end
  %ops55 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 3
  %37 = ptrtoint ptr %ops55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops55, align 4
  %aborted = getelementptr inbounds %struct.afs_operation_ops, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %aborted to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %aborted, align 4
  %tobool56.not = icmp eq ptr %40, null
  br i1 %tobool56.not, label %sw.bb54.sw.default_crit_edge, label %if.then57

sw.bb54.sw.default_crit_edge:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

if.then57:                                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %40(ptr noundef %op) #6
  br label %sw.default

sw.default:                                       ; preds = %if.then57, %sw.bb54.sw.default_crit_edge, %while.end.sw.default_crit_edge
  %ops61 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 3
  %41 = ptrtoint ptr %ops61 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops61, align 4
  %failed = getelementptr inbounds %struct.afs_operation_ops, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %failed, align 4
  %tobool62.not = icmp eq ptr %44, null
  br i1 %tobool62.not, label %sw.default.sw.epilog_crit_edge, label %sw.default.sw.epilog.sink.split_crit_edge

sw.default.sw.epilog.sink.split_crit_edge:        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.default.sw.epilog.sink.split_crit_edge, %do.end52
  %.sink = phi ptr [ %36, %do.end52 ], [ %44, %sw.default.sw.epilog.sink.split_crit_edge ]
  tail call void %.sink(ptr noundef %op) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.default.sw.epilog_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %45 = load i32, ptr @afs_debug, align 4
  %and.i150 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i150)
  %tobool.not.i = icmp eq i32 %and.i150, 0
  br i1 %tobool.not.i, label %sw.epilog.do.end5.i_crit_edge, label %do.end.i, !prof !91

sw.epilog.do.end5.i_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5.i

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %46 = tail call i32 @llvm.read_register.i32(metadata !81) #6
  %and.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 101
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm.i, ptr noundef nonnull @.str.43) #9
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %sw.epilog.do.end5.i_crit_edge
  %50 = ptrtoint ptr %error31 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %error31, align 2
  %52 = zext i16 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.45)
  switch i16 %51, label %do.end5.i.if.end22.i_crit_edge [
    i16 -89, label %do.end5.i.if.then21.i_crit_edge
    i16 -99, label %do.end5.i.if.then21.i_crit_edge154
    i16 -101, label %do.end5.i.if.then21.i_crit_edge155
    i16 -113, label %do.end5.i.if.then21.i_crit_edge156
  ]

do.end5.i.if.then21.i_crit_edge156:               ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21.i

do.end5.i.if.then21.i_crit_edge155:               ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21.i

do.end5.i.if.then21.i_crit_edge154:               ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21.i

do.end5.i.if.then21.i_crit_edge:                  ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21.i

do.end5.i.if.end22.i_crit_edge:                   ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

if.then21.i:                                      ; preds = %do.end5.i.if.then21.i_crit_edge, %do.end5.i.if.then21.i_crit_edge154, %do.end5.i.if.then21.i_crit_edge155, %do.end5.i.if.then21.i_crit_edge156
  tail call void @afs_dump_edestaddrreq(ptr noundef %op) #6
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %do.end5.i.if.end22.i_crit_edge
  %file.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5
  %53 = ptrtoint ptr %file.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %file.i.i, align 8
  %arrayidx3.i.i = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1
  %55 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx3.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %57 = load i32, ptr @afs_debug, align 4
  %and.i40.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i40.i)
  %tobool.not.i.i = icmp eq i32 %and.i40.i, 0
  br i1 %tobool.not.i.i, label %if.end22.i.do.end10.i.i_crit_edge, label %do.end.i.i, !prof !91

if.end22.i.do.end10.i.i_crit_edge:                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10.i.i

do.end.i.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %58 = tail call i32 @llvm.read_register.i32(metadata !81) #6
  %and.i.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task.i.i, align 8
  %comm.i.i = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 101
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm.i.i, ptr noundef nonnull @.str.44) #9
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %do.end.i.i, %if.end22.i.do.end10.i.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %62 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i.i, align 8
  %and11.i.i = and i32 %63, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %do.end10.i.i.if.end14.i.i_crit_edge, label %if.then13.i.i

do.end10.i.i.if.end14.i.i_crit_edge:              ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i.i

if.then13.i.i:                                    ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %io_lock.i.i = getelementptr inbounds %struct.afs_vnode, ptr %56, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %io_lock.i.i) #6
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then13.i.i, %do.end10.i.i.if.end14.i.i_crit_edge
  %64 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags.i.i, align 8
  %and16.i.i = and i32 %65, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %tobool17.not.i.i = icmp eq i32 %and16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.end14.i.i.afs_drop_io_locks.exit.i_crit_edge, label %if.then18.i.i

if.end14.i.i.afs_drop_io_locks.exit.i_crit_edge:  ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %afs_drop_io_locks.exit.i

if.then18.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %io_lock19.i.i = getelementptr inbounds %struct.afs_vnode, ptr %54, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %io_lock19.i.i) #6
  br label %afs_drop_io_locks.exit.i

afs_drop_io_locks.exit.i:                         ; preds = %if.then18.i.i, %if.end14.i.i.afs_drop_io_locks.exit.i_crit_edge
  %66 = ptrtoint ptr %error31 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %error31, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -103, i16 %67)
  %cmp25.i = icmp eq i16 %67, -103
  br i1 %cmp25.i, label %if.then27.i, label %afs_drop_io_locks.exit.i.afs_end_vnode_operation.exit_crit_edge

afs_drop_io_locks.exit.i.afs_end_vnode_operation.exit_crit_edge: ; preds = %afs_drop_io_locks.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %afs_end_vnode_operation.exit

if.then27.i:                                      ; preds = %afs_drop_io_locks.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %abort_code.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18, i32 6
  %68 = ptrtoint ptr %abort_code.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %abort_code.i, align 8
  %call28.i = tail call i32 @afs_abort_to_error(i32 noundef %69) #6
  %conv29.i = trunc i32 %call28.i to i16
  %70 = ptrtoint ptr %error31 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv29.i, ptr %error31, align 2
  br label %afs_end_vnode_operation.exit

afs_end_vnode_operation.exit:                     ; preds = %if.then27.i, %afs_drop_io_locks.exit.i.afs_end_vnode_operation.exit_crit_edge
  %71 = phi i16 [ %67, %afs_drop_io_locks.exit.i.afs_end_vnode_operation.exit_crit_edge ], [ %conv29.i, %if.then27.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %cmp = icmp eq i16 %71, 0
  br i1 %cmp, label %land.lhs.true70, label %afs_end_vnode_operation.exit.do.body97_crit_edge

afs_end_vnode_operation.exit.do.body97_crit_edge: ; preds = %afs_end_vnode_operation.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body97

land.lhs.true70:                                  ; preds = %afs_end_vnode_operation.exit
  %ops71 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 3
  %72 = ptrtoint ptr %ops71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops71, align 4
  %edit_dir = getelementptr inbounds %struct.afs_operation_ops, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %edit_dir to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %edit_dir, align 4
  %tobool72.not = icmp eq ptr %75, null
  br i1 %tobool72.not, label %land.lhs.true70.do.body97_crit_edge, label %do.body74

land.lhs.true70.do.body97_crit_edge:              ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body97

do.body74:                                        ; preds = %land.lhs.true70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %76 = load i32, ptr @afs_debug, align 4
  %and75 = and i32 %76, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %do.body74.do.end93_crit_edge, label %do.end85, !prof !91

do.body74.do.end93_crit_edge:                     ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end93

do.end85:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #8
  %77 = tail call i32 @llvm.read_register.i32(metadata !81) #6
  %and.i151 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i151 to ptr
  %task88 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task88 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task88, align 8
  %comm89 = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 101
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %comm89) #9
  br label %do.end93

do.end93:                                         ; preds = %do.end85, %do.body74.do.end93_crit_edge
  %81 = ptrtoint ptr %ops71 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops71, align 4
  %edit_dir95 = getelementptr inbounds %struct.afs_operation_ops, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %edit_dir95 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %edit_dir95, align 4
  tail call void %84(ptr noundef %op) #6
  br label %do.body97

do.body97:                                        ; preds = %do.end93, %land.lhs.true70.do.body97_crit_edge, %afs_end_vnode_operation.exit.do.body97_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %85 = load i32, ptr @afs_debug, align 4
  %and98 = and i32 %85, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %do.body97.do.end116_crit_edge, label %do.end108, !prof !91

do.body97.do.end116_crit_edge:                    ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end116

do.end108:                                        ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #8
  %86 = tail call i32 @llvm.read_register.i32(metadata !81) #6
  %and.i152 = and i32 %86, -16384
  %87 = inttoptr i32 %and.i152 to ptr
  %task111 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %task111 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %task111, align 8
  %comm112 = getelementptr inbounds %struct.task_struct, ptr %89, i32 0, i32 101
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %comm112, ptr noundef nonnull @.str.16) #9
  br label %do.end116

do.end116:                                        ; preds = %do.end108, %do.body97.do.end116_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @afs_select_fileserver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_wait_for_call_to_complete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_put_operation(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %error = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %error, align 2
  %conv = sext i16 %1 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !91

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = tail call i32 @llvm.read_register.i32(metadata !81) #6
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 14
  %7 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug_id, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %comm, ptr noundef nonnull @.str.27, i32 noundef %8, i32 noundef %conv) #9
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %ops = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 3
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %do.end6.if.end13_crit_edge, label %land.lhs.true

do.end6.if.end13_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

land.lhs.true:                                    ; preds = %do.end6
  %put = getelementptr inbounds %struct.afs_operation_ops, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %put to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %put, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %land.lhs.true.if.end13_crit_edge, label %if.then10

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %12(ptr noundef %op) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %land.lhs.true.if.end13_crit_edge, %do.end6.if.end13_crit_edge
  %file = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5
  %modification = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 6
  %13 = ptrtoint ptr %modification to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %modification, align 1
  %14 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %bf.cast.not = icmp eq i8 %14, 0
  br i1 %bf.cast.not, label %if.end13.if.end17_crit_edge, label %if.then14

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then14:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %file, align 8
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %16, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %flags) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end13.if.end17_crit_edge
  %arrayidx19 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1
  %modification20 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 6
  %17 = ptrtoint ptr %modification20 to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load21 = load i8, ptr %modification20, align 1
  %18 = and i8 %bf.load21, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %bf.cast24.not = icmp eq i8 %18, 0
  br i1 %bf.cast24.not, label %if.end17.if.end39_crit_edge, label %land.lhs.true26

if.end17.if.end39_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

land.lhs.true26:                                  ; preds = %if.end17
  %19 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx19, align 8
  %21 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %file, align 8
  %cmp.not = icmp eq ptr %20, %22
  br i1 %cmp.not, label %land.lhs.true26.if.end39_crit_edge, label %if.then34

land.lhs.true26.if.end39_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then34:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  %flags38 = getelementptr inbounds %struct.afs_vnode, ptr %20, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %flags38) #6
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %land.lhs.true26.if.end39_crit_edge, %if.end17.if.end39_crit_edge
  %23 = ptrtoint ptr %modification to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load42 = load i8, ptr %modification, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load42)
  %bf.cast44.not = icmp sgt i8 %bf.load42, -1
  br i1 %bf.cast44.not, label %if.end39.if.end49_crit_edge, label %if.then45

if.end39.if.end49_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then45:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %file, align 8
  tail call void @iput(ptr noundef %25) #6
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %if.end39.if.end49_crit_edge
  %26 = ptrtoint ptr %modification20 to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load53 = load i8, ptr %modification20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load53)
  %bf.cast55.not = icmp sgt i8 %bf.load53, -1
  br i1 %bf.cast55.not, label %if.end49.if.end61_crit_edge, label %if.then56

if.end49.if.end61_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then56:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx19, align 8
  tail call void @iput(ptr noundef %28) #6
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %if.end49.if.end61_crit_edge
  %more_files = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 6
  %29 = ptrtoint ptr %more_files to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %more_files, align 8
  %tobool62.not = icmp eq ptr %30, null
  br i1 %tobool62.not, label %if.end61.if.end80_crit_edge, label %for.cond.preheader

if.end61.if.end80_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

for.cond.preheader:                               ; preds = %if.end61
  %nr_files = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 12
  %31 = ptrtoint ptr %nr_files to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %nr_files, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %32)
  %cmp65118 = icmp sgt i16 %32, 2
  br i1 %cmp65118, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0119 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %33 = ptrtoint ptr %more_files to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %more_files, align 8
  %put_vnode69 = getelementptr %struct.afs_vnode_param, ptr %34, i32 %i.0119, i32 6
  %35 = ptrtoint ptr %put_vnode69 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load70 = load i8, ptr %put_vnode69, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load70)
  %bf.cast72.not = icmp sgt i8 %bf.load70, -1
  br i1 %bf.cast72.not, label %for.body.for.inc_crit_edge, label %if.then73

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then73:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx68 = getelementptr %struct.afs_vnode_param, ptr %34, i32 %i.0119
  %36 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx68, align 8
  tail call void @iput(ptr noundef %37) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then73, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0119, 1
  %38 = ptrtoint ptr %nr_files to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %nr_files, align 8
  %conv64 = sext i16 %39 to i32
  %sub = add nsw i32 %conv64, -2
  %cmp65 = icmp slt i32 %inc, %sub
  br i1 %cmp65, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %40 = ptrtoint ptr %more_files to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %more_files, align 8
  tail call void @kfree(ptr noundef %41) #6
  br label %if.end80

if.end80:                                         ; preds = %for.end, %if.end61.if.end80_crit_edge
  %ac = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  %call81 = tail call i32 @afs_end_cursor(ptr noundef %ac) #6
  %42 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %op, align 8
  %server_list = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 19
  %44 = ptrtoint ptr %server_list to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %server_list, align 4
  tail call void @afs_put_serverlist(ptr noundef %43, ptr noundef %45) #6
  %46 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %op, align 8
  %volume = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 4
  %48 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %volume, align 8
  tail call void @afs_put_volume(ptr noundef %47, ptr noundef %49, i32 noundef 10) #6
  %key = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %50 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %key, align 4
  tail call void @key_put(ptr noundef %51) #6
  tail call void @kfree(ptr noundef %op) #6
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_end_cursor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_put_serverlist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_put_volume(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_do_sync_operation(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @afs_begin_vnode_operation(ptr noundef %op)
  tail call void @afs_wait_for_operation(ptr noundef %op)
  %call1 = tail call i32 @afs_put_operation(ptr noundef %op)
  ret i32 %call1
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_dump_edestaddrreq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_abort_to_error(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80}
!llvm.named.register.sp = !{!81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/afs/fs_operation.c", i32 22, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @afs_alloc_operation._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @afs_alloc_operation._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/afs/fs_operation.c", i32 46, i32 2}
!8 = !{ptr @afs_alloc_operation._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @afs_alloc_operation._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/afs/fs_operation.c", i32 140, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @afs_begin_vnode_operation._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @afs_begin_vnode_operation._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @afs_begin_vnode_operation._entry.8, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @afs_begin_vnode_operation._entry_ptr.10, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @afs_begin_vnode_operation._entry.11, !19, !"_entry", i1 false, i1 false}
!19 = !{!"../fs/afs/fs_operation.c", i32 142, i32 2}
!20 = !{ptr @afs_begin_vnode_operation._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/afs/fs_operation.c", i32 151, i32 2}
!23 = !{ptr @afs_begin_vnode_operation._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @afs_begin_vnode_operation._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/afs/fs_operation.c", i32 179, i32 2}
!27 = !{ptr @afs_wait_for_operation._entry, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @afs_wait_for_operation._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/afs/fs_operation.c", i32 197, i32 3}
!31 = !{ptr @afs_wait_for_operation._entry.17, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @afs_wait_for_operation._entry_ptr.19, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/afs/fs_operation.c", i32 213, i32 3}
!35 = !{ptr @afs_wait_for_operation._entry.20, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @afs_wait_for_operation._entry_ptr.22, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/afs/fs_operation.c", i32 216, i32 2}
!39 = !{ptr @afs_wait_for_operation._entry.23, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @afs_wait_for_operation._entry_ptr.25, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/afs/fs_operation.c", i32 226, i32 2}
!43 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @afs_put_operation._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @afs_put_operation._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @afs_operation_debug_counter, !47, !"afs_operation_debug_counter", i1 false, i1 false}
!47 = !{!"../fs/afs/fs_operation.c", i32 13, i32 17}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/afs/fs_operation.c", i32 58, i32 2}
!50 = !{ptr @afs_get_io_locks._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @afs_get_io_locks._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/afs/fs_operation.c", i32 63, i32 3}
!54 = !{ptr @afs_get_io_locks._entry.29, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @afs_get_io_locks._entry_ptr.31, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/afs/fs_operation.c", i32 76, i32 3}
!58 = !{ptr @afs_get_io_locks._entry.32, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @afs_get_io_locks._entry_ptr.34, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.36, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/afs/fs_operation.c", i32 87, i32 4}
!62 = !{ptr @afs_get_io_locks._entry.35, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @afs_get_io_locks._entry_ptr.37, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.39, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/afs/fs_operation.c", i32 93, i32 2}
!66 = !{ptr @afs_get_io_locks._entry.38, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @afs_get_io_locks._entry_ptr.40, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/afs/fs_operation.c", i32 126, i32 3}
!70 = !{ptr @.str.42, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @afs_prepare_vnode._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @afs_prepare_vnode._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.43, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/afs/fs_operation.c", i32 160, i32 2}
!75 = !{ptr @afs_end_vnode_operation._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @afs_end_vnode_operation._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.44, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/afs/fs_operation.c", i32 102, i32 2}
!79 = !{ptr @afs_drop_io_locks._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @afs_drop_io_locks._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
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
!91 = !{!"branch_weights", i32 2000, i32 1}
!92 = !{i64 2148215225, i64 2148215257, i64 2148215286, i64 2148215320, i64 2148215351, i64 2148215374}
!93 = !{!"branch_weights", i32 1, i32 2000}
!94 = !{i64 2148299106}
!95 = !{i64 2148214415, i64 2148214447, i64 2148214476, i64 2148214510, i64 2148214541, i64 2148214564}
!96 = !{i64 2148299335}
!97 = !{i64 2157793026, i64 2157793512, i64 2157793063, i64 2157793119, i64 2157793153, i64 2157793177, i64 2157793218, i64 2157793239, i64 2157793267, i64 2157793301}
