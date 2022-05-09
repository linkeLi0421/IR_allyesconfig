; ModuleID = '/llk/IR_all_yes/fs/afs/rotate.c_pt.bc'
source_filename = "../fs/afs/rotate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.afs_error = type { i16, i8 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.afs_server_list = type { [3 x i64], %struct.refcount_struct, i8, i8, i16, i32, %struct.rwlock_t, [0 x %struct.afs_server_entry] }
%struct.afs_server_entry = type { ptr }
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
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.afs_server = type { %struct.callback_head, %union.anon.143, ptr, ptr, %struct.rb_node, ptr, ptr, %struct.list_head, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.work_struct, ptr, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, %struct.rwlock_t, i32, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.147 }
%union.anon.143 = type { %struct.afs_uuid }
%struct.afs_uuid = type { i32, i16, i16, i8, i8, [6 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.147 = type { i32, i32, i16, i8 }
%struct.afs_cell = type { %union.anon.144, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.hlist_node, i64, i64, %struct.atomic_t, %struct.atomic_t, i32, i32, i16, i16, i32, i32, %struct.rb_root, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.seqlock_t, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.rwlock_t, ptr, i8, ptr }
%union.anon.144 = type { %struct.rb_node }
%struct.hlist_head = type { ptr }
%struct.afs_addr_list = type { %struct.callback_head, %struct.refcount_struct, i32, i8, i8, i8, i8, i16, i32, i32, [0 x %struct.sockaddr_rxrpc] }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon.142 }
%union.anon.142 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }

@afs_debug = external dso_local local_unnamed_addr global i32, align 4
@afs_select_fileserver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[%-6.6s] ==> %s(%lx[%d],%lx[%d],%d,%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"afs_select_fileserver\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/afs/rotate.c\00", [16 x i8] zeroinitializer }, align 32
@afs_select_fileserver._entry_ptr = internal global ptr @afs_select_fileserver._entry, section ".printk_index", align 4
@afs_select_fileserver._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s] <== %s() = f [stopped]\0A\00", [63 x i8] zeroinitializer }, align 32
@afs_select_fileserver._entry_ptr.5 = internal global ptr @afs_select_fileserver._entry.3, section ".printk_index", align 4
@afs_select_fileserver._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[%-6.6s] <== %s() = f [okay/local %d]\0A\00", [57 x i8] zeroinitializer }, align 32
@afs_select_fileserver._entry_ptr.8 = internal global ptr @afs_select_fileserver._entry.6, section ".printk_index", align 4
@afs_select_fileserver._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%-6.6s] <== %s() = t [vnovol]\0A\00", [32 x i8] zeroinitializer }, align 32
@afs_select_fileserver._entry_ptr.11 = internal global ptr @afs_select_fileserver._entry.9, section ".printk_index", align 4
@afs_select_fileserver._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s] <== %s() = t [vbusy]\0A\00", [33 x i8] zeroinitializer }, align 32
@afs_select_fileserver._entry_ptr.14 = internal global ptr @afs_select_fileserver._entry.12, section ".printk_index", align 4
@afs_select_fileserver._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%-6.6s]     no conn\0A\00", [42 x i8] zeroinitializer }, align 32
@afs_select_fileserver._entry_ptr.17 = internal global ptr @afs_select_fileserver._entry.15, section ".printk_index", align 4
@afs_select_fileserver._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s]     call reset\0A\00", [39 x i8] zeroinitializer }, align 32
@afs_select_fileserver._entry_ptr.20 = internal global ptr @afs_select_fileserver._entry.18, section ".printk_index", align 4
@afs_select_fileserver._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%-6.6s]     restart\0A\00", [42 x i8] zeroinitializer }, align 32
@afs_select_fileserver._entry_ptr.23 = internal global ptr @afs_select_fileserver._entry.21, section ".printk_index", align 4
@afs_select_fileserver._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[%-6.6s]     start\0A\00", [44 x i8] zeroinitializer }, align 32
@afs_select_fileserver._entry_ptr.26 = internal global ptr @afs_select_fileserver._entry.24, section ".printk_index", align 4
@afs_select_fileserver._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s]     __ VOL %llx __\0A\00", [35 x i8] zeroinitializer }, align 32
@afs_select_fileserver._entry_ptr.29 = internal global ptr @afs_select_fileserver._entry.27, section ".printk_index", align 4
@afs_select_fileserver._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s]     pick [%lx]\0A\00", [39 x i8] zeroinitializer }, align 32
@afs_select_fileserver._entry_ptr.32 = internal global ptr @afs_select_fileserver._entry.30, section ".printk_index", align 4
@afs_select_fileserver._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s]     server %u\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_select_fileserver._entry_ptr.35 = internal global ptr @afs_select_fileserver._entry.33, section ".printk_index", align 4
@afs_select_fileserver._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.1, ptr @.str.2, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s]     no server\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_select_fileserver._entry_ptr.38 = internal global ptr @afs_select_fileserver._entry.36, section ".printk_index", align 4
@afs_select_fileserver._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.1, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s]     use %d\0A\00", [43 x i8] zeroinitializer }, align 32
@afs_select_fileserver._entry_ptr.41 = internal global ptr @afs_select_fileserver._entry.39, section ".printk_index", align 4
@afs_select_fileserver._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.1, ptr @.str.2, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\013\0A\00", [28 x i8] zeroinitializer }, align 32
@afs_select_fileserver._entry_ptr.44 = internal global ptr @afs_select_fileserver._entry.42, section ".printk_index", align 4
@afs_select_fileserver._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.1, ptr @.str.2, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013AFS: Assertion failed\0A\00", [39 x i8] zeroinitializer }, align 32
@afs_select_fileserver._entry_ptr.47 = internal global ptr @afs_select_fileserver._entry.45, section ".printk_index", align 4
@afs_select_fileserver._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.1, ptr @.str.2, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%lu == %lu is false\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_select_fileserver._entry_ptr.50 = internal global ptr @afs_select_fileserver._entry.48, section ".printk_index", align 4
@afs_select_fileserver._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.1, ptr @.str.2, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0130x%lx == 0x%lx is false\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_select_fileserver._entry_ptr.53 = internal global ptr @afs_select_fileserver._entry.51, section ".printk_index", align 4
@afs_select_fileserver._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.1, ptr @.str.2, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%-6.6s]     USING SERVER: %pU\0A\00", [32 x i8] zeroinitializer }, align 32
@afs_select_fileserver._entry_ptr.56 = internal global ptr @afs_select_fileserver._entry.54, section ".printk_index", align 4
@afs_select_fileserver.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.57 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@afs_select_fileserver._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.1, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_select_fileserver._entry_ptr.59 = internal global ptr @afs_select_fileserver._entry.58, section ".printk_index", align 4
@afs_select_fileserver._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.1, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_select_fileserver._entry_ptr.61 = internal global ptr @afs_select_fileserver._entry.60, section ".printk_index", align 4
@afs_select_fileserver._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.1, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[%-6.6s]     address [%u] %u/%u %pISp\0A\00", [57 x i8] zeroinitializer }, align 32
@afs_select_fileserver._entry_ptr.64 = internal global ptr @afs_select_fileserver._entry.62, section ".printk_index", align 4
@afs_select_fileserver._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.1, ptr @.str.2, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] <== %s() = t\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_select_fileserver._entry_ptr.67 = internal global ptr @afs_select_fileserver._entry.65, section ".printk_index", align 4
@afs_select_fileserver._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.1, ptr @.str.2, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s]     next\0A\00", [45 x i8] zeroinitializer }, align 32
@afs_select_fileserver._entry_ptr.70 = internal global ptr @afs_select_fileserver._entry.68, section ".printk_index", align 4
@afs_select_fileserver._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.1, ptr @.str.2, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%-6.6s] <== %s() = f [failed %d]\0A\00", [61 x i8] zeroinitializer }, align 32
@afs_select_fileserver._entry_ptr.73 = internal global ptr @afs_select_fileserver._entry.71, section ".printk_index", align 4
@afs_dump_edestaddrreq.count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@afs_dump_edestaddrreq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\015EDESTADDR occurred\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"afs_dump_edestaddrreq\00", [42 x i8] zeroinitializer }, align 32
@afs_dump_edestaddrreq._entry_ptr = internal global ptr @afs_dump_edestaddrreq._entry, section ".printk_index", align 4
@afs_dump_edestaddrreq._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015FC: cbb=%x cbb2=%x fl=%x err=%hd\0A\00", [60 x i8] zeroinitializer }, align 32
@afs_dump_edestaddrreq._entry_ptr.78 = internal global ptr @afs_dump_edestaddrreq._entry.76, section ".printk_index", align 4
@afs_dump_edestaddrreq._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.2, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\015FC: ut=%lx ix=%d ni=%u\0A\00", [38 x i8] zeroinitializer }, align 32
@afs_dump_edestaddrreq._entry_ptr.81 = internal global ptr @afs_dump_edestaddrreq._entry.79, section ".printk_index", align 4
@afs_dump_edestaddrreq._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.75, ptr @.str.2, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015FC: SL nr=%u pr=%u vnov=%hx\0A\00", [33 x i8] zeroinitializer }, align 32
@afs_dump_edestaddrreq._entry_ptr.84 = internal global ptr @afs_dump_edestaddrreq._entry.82, section ".printk_index", align 4
@afs_dump_edestaddrreq._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.75, ptr @.str.2, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015FC: server fl=%lx av=%u %pU\0A\00", [33 x i8] zeroinitializer }, align 32
@afs_dump_edestaddrreq._entry_ptr.87 = internal global ptr @afs_dump_edestaddrreq._entry.85, section ".printk_index", align 4
@afs_dump_edestaddrreq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.88 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@afs_dump_edestaddrreq._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.75, ptr @.str.2, i32 501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015FC:  - av=%u nr=%u/%u/%u pr=%u\0A\00", [62 x i8] zeroinitializer }, align 32
@afs_dump_edestaddrreq._entry_ptr.91 = internal global ptr @afs_dump_edestaddrreq._entry.89, section ".printk_index", align 4
@afs_dump_edestaddrreq._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.75, ptr @.str.2, i32 503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\015FC:  - R=%lx F=%lx\0A\00", [42 x i8] zeroinitializer }, align 32
@afs_dump_edestaddrreq._entry_ptr.94 = internal global ptr @afs_dump_edestaddrreq._entry.92, section ".printk_index", align 4
@afs_dump_edestaddrreq._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.75, ptr @.str.2, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\015FC:  - current\0A\00", [46 x i8] zeroinitializer }, align 32
@afs_dump_edestaddrreq._entry_ptr.97 = internal global ptr @afs_dump_edestaddrreq._entry.95, section ".printk_index", align 4
@afs_dump_edestaddrreq._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.75, ptr @.str.2, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015AC: t=%lx ax=%u ac=%d er=%d r=%u ni=%u\0A\00", [54 x i8] zeroinitializer }, align 32
@afs_dump_edestaddrreq._entry_ptr.100 = internal global ptr @afs_dump_edestaddrreq._entry.98, section ".printk_index", align 4
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"offline\00", [24 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"restarting\00", [21 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"being salvaged\00", [17 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"busy\00", [27 x i8] zeroinitializer }, align 32
@afs_busy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015kAFS: Volume %llu '%s' is %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"afs_busy\00", [23 x i8] zeroinitializer }, align 32
@afs_busy._entry_ptr = internal global ptr @afs_busy._entry, section ".printk_index", align 4
@afs_start_fs_iteration.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@afs_start_fs_iteration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.107, ptr @.str.2, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"afs_start_fs_iteration\00", [41 x i8] zeroinitializer }, align 32
@afs_start_fs_iteration._entry_ptr = internal global ptr @afs_start_fs_iteration._entry, section ".printk_index", align 4
@afs_start_fs_iteration._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.107, ptr @.str.2, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_start_fs_iteration._entry_ptr.109 = internal global ptr @afs_start_fs_iteration._entry.108, section ".printk_index", align 4
@afs_start_fs_iteration._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.107, ptr @.str.2, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_start_fs_iteration._entry_ptr.111 = internal global ptr @afs_start_fs_iteration._entry.110, section ".printk_index", align 4
@afs_start_fs_iteration._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.107, ptr @.str.2, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_start_fs_iteration._entry_ptr.113 = internal global ptr @afs_start_fs_iteration._entry.112, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.114 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.116 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 32767, i64 4294967164, i64 4294967183, i64 4294967184, i64 4294967185, i64 4294967186, i64 4294967192, i64 4294967193, i64 4294967195, i64 4294967197, i64 4294967234]
@__sancov_gen_cov_switch_values.117 = internal global [14 x i64] [i64 12, i64 32, i64 101, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 113, i64 4294967196]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.119 = internal global [5 x i64] [i64 3, i64 32, i64 106, i64 113, i64 4294967196]
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 118, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 124, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 140, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 183, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 230, i32 5 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 291, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 296, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 302, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 308, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 319, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 322, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 332, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 336, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 357, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 364, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 370, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 383, i32 10 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 399, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 406, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 410, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 435, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 462, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 471, i32 13 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 480, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 481, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 484, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 489, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 493, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 497, i32 6 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 498, i32 5 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 502, i32 5 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 505, i32 6 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 510, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 78, i32 22 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 79, i32 24 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 80, i32 23 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 81, i32 16 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 84, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.370 = private constant [19 x i8] c"../fs/afs/rotate.c\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 59, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 695, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.379 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 723, i32 2 }
@llvm.compiler.used = appending global [126 x ptr] [ptr @afs_busy._entry, ptr @afs_busy._entry_ptr, ptr @afs_dump_edestaddrreq._entry, ptr @afs_dump_edestaddrreq._entry.76, ptr @afs_dump_edestaddrreq._entry.79, ptr @afs_dump_edestaddrreq._entry.82, ptr @afs_dump_edestaddrreq._entry.85, ptr @afs_dump_edestaddrreq._entry.89, ptr @afs_dump_edestaddrreq._entry.92, ptr @afs_dump_edestaddrreq._entry.95, ptr @afs_dump_edestaddrreq._entry.98, ptr @afs_dump_edestaddrreq._entry_ptr, ptr @afs_dump_edestaddrreq._entry_ptr.100, ptr @afs_dump_edestaddrreq._entry_ptr.78, ptr @afs_dump_edestaddrreq._entry_ptr.81, ptr @afs_dump_edestaddrreq._entry_ptr.84, ptr @afs_dump_edestaddrreq._entry_ptr.87, ptr @afs_dump_edestaddrreq._entry_ptr.91, ptr @afs_dump_edestaddrreq._entry_ptr.94, ptr @afs_dump_edestaddrreq._entry_ptr.97, ptr @afs_select_fileserver._entry, ptr @afs_select_fileserver._entry.12, ptr @afs_select_fileserver._entry.15, ptr @afs_select_fileserver._entry.18, ptr @afs_select_fileserver._entry.21, ptr @afs_select_fileserver._entry.24, ptr @afs_select_fileserver._entry.27, ptr @afs_select_fileserver._entry.3, ptr @afs_select_fileserver._entry.30, ptr @afs_select_fileserver._entry.33, ptr @afs_select_fileserver._entry.36, ptr @afs_select_fileserver._entry.39, ptr @afs_select_fileserver._entry.42, ptr @afs_select_fileserver._entry.45, ptr @afs_select_fileserver._entry.48, ptr @afs_select_fileserver._entry.51, ptr @afs_select_fileserver._entry.54, ptr @afs_select_fileserver._entry.58, ptr @afs_select_fileserver._entry.6, ptr @afs_select_fileserver._entry.60, ptr @afs_select_fileserver._entry.62, ptr @afs_select_fileserver._entry.65, ptr @afs_select_fileserver._entry.68, ptr @afs_select_fileserver._entry.71, ptr @afs_select_fileserver._entry.9, ptr @afs_select_fileserver._entry_ptr, ptr @afs_select_fileserver._entry_ptr.11, ptr @afs_select_fileserver._entry_ptr.14, ptr @afs_select_fileserver._entry_ptr.17, ptr @afs_select_fileserver._entry_ptr.20, ptr @afs_select_fileserver._entry_ptr.23, ptr @afs_select_fileserver._entry_ptr.26, ptr @afs_select_fileserver._entry_ptr.29, ptr @afs_select_fileserver._entry_ptr.32, ptr @afs_select_fileserver._entry_ptr.35, ptr @afs_select_fileserver._entry_ptr.38, ptr @afs_select_fileserver._entry_ptr.41, ptr @afs_select_fileserver._entry_ptr.44, ptr @afs_select_fileserver._entry_ptr.47, ptr @afs_select_fileserver._entry_ptr.5, ptr @afs_select_fileserver._entry_ptr.50, ptr @afs_select_fileserver._entry_ptr.53, ptr @afs_select_fileserver._entry_ptr.56, ptr @afs_select_fileserver._entry_ptr.59, ptr @afs_select_fileserver._entry_ptr.61, ptr @afs_select_fileserver._entry_ptr.64, ptr @afs_select_fileserver._entry_ptr.67, ptr @afs_select_fileserver._entry_ptr.70, ptr @afs_select_fileserver._entry_ptr.73, ptr @afs_select_fileserver._entry_ptr.8, ptr @afs_start_fs_iteration._entry, ptr @afs_start_fs_iteration._entry.108, ptr @afs_start_fs_iteration._entry.110, ptr @afs_start_fs_iteration._entry.112, ptr @afs_start_fs_iteration._entry_ptr, ptr @afs_start_fs_iteration._entry_ptr.109, ptr @afs_start_fs_iteration._entry_ptr.111, ptr @afs_start_fs_iteration._entry_ptr.113, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @afs_dump_edestaddrreq.count, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.114, ptr @.str.115, ptr @.str.116], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_fileserver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_fileserver._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_fileserver._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_fileserver._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_fileserver._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_fileserver._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_fileserver._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_fileserver._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_fileserver._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_fileserver._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_fileserver._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_fileserver._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_fileserver._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_fileserver._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_fileserver._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_fileserver._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_fileserver._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_fileserver._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_fileserver._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_fileserver._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_fileserver._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_fileserver._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_fileserver._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_fileserver._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_fileserver._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dump_edestaddrreq.count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dump_edestaddrreq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dump_edestaddrreq._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dump_edestaddrreq._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dump_edestaddrreq._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dump_edestaddrreq._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dump_edestaddrreq._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dump_edestaddrreq._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dump_edestaddrreq._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dump_edestaddrreq._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_busy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_start_fs_iteration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_start_fs_iteration._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_start_fs_iteration._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_start_fs_iteration._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @afs_select_fileserver(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  %e = alloca %struct.afs_error, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e) #8
  %2 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %e, align 4, !annotation !183
  %ac = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  %error2 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18, i32 5
  %3 = ptrtoint ptr %error2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %error2, align 4
  %conv = sext i16 %4 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %5 = load i32, ptr @afs_debug, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.end, !prof !184

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = tail call i32 @llvm.read_register.i32(metadata !173) #8
  %and.i1038 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i1038 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 101
  %untried = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 22
  %10 = ptrtoint ptr %untried to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %untried, align 8
  %index = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 23
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %index, align 4
  %conv6 = sext i16 %13 to i32
  %tried = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %tried to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tried, align 4
  %index9 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18, i32 2
  %16 = ptrtoint ptr %index9 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %index9, align 8
  %conv10 = sext i8 %17 to i32
  %abort_code = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18, i32 6
  %18 = ptrtoint ptr %abort_code to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %abort_code, align 8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1, i32 noundef %11, i32 noundef %conv6, i32 noundef %15, i32 noundef %conv10, i32 noundef %conv, i32 noundef %19) #11
  br label %do.end14

do.end14:                                         ; preds = %do.end, %entry.do.end14_crit_edge
  %flags = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 8
  %and15 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end40, label %do.body18

do.body18:                                        ; preds = %do.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %22 = load i32, ptr @afs_debug, align 4
  %and19 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body18.cleanup858_crit_edge, label %do.end30, !prof !184

do.body18.cleanup858_crit_edge:                   ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup858

do.end30:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %23 = tail call i32 @llvm.read_register.i32(metadata !173) #8
  %and.i1039 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i1039 to ptr
  %task33 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task33, align 8
  %comm34 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 101
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm34, ptr noundef nonnull @.str.1) #11
  br label %cleanup858

if.end40:                                         ; preds = %do.end14
  %nr_iterations = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 24
  %27 = ptrtoint ptr %nr_iterations to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %nr_iterations, align 2
  %inc = add i16 %28, 1
  store i16 %inc, ptr %nr_iterations, align 2
  %29 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv, label %sw.default [
    i32 32767, label %if.end40.start_crit_edge
    i32 -104, label %do.body289
    i32 -103, label %sw.bb67
    i32 -110, label %if.end40.sw.bb256_crit_edge
    i32 -62, label %if.end40.sw.bb256_crit_edge1081
    i32 -132, label %if.end40.do.body264_crit_edge
    i32 -99, label %if.end40.do.body264_crit_edge1082
    i32 -101, label %if.end40.do.body264_crit_edge1083
    i32 -113, label %if.end40.do.body264_crit_edge1084
    i32 -112, label %if.end40.do.body264_crit_edge1085
    i32 -111, label %if.end40.do.body264_crit_edge1086
  ]

if.end40.do.body264_crit_edge1086:                ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body264

if.end40.do.body264_crit_edge1085:                ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body264

if.end40.do.body264_crit_edge1084:                ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body264

if.end40.do.body264_crit_edge1083:                ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body264

if.end40.do.body264_crit_edge1082:                ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body264

if.end40.do.body264_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body264

if.end40.sw.bb256_crit_edge1081:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb256

if.end40.sw.bb256_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb256

if.end40.start_crit_edge:                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %start

sw.default:                                       ; preds = %if.end40
  %error43 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %30 = ptrtoint ptr %error43 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %4, ptr %error43, align 2
  %or = or i32 %21, 1
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or, ptr %flags, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %32 = load i32, ptr @afs_debug, align 4
  %and46 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %sw.default.cleanup858_crit_edge, label %do.end57, !prof !184

sw.default.cleanup858_crit_edge:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup858

do.end57:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %33 = tail call i32 @llvm.read_register.i32(metadata !173) #8
  %and.i1040 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i1040 to ptr
  %task60 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task60 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task60, align 8
  %comm61 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 101
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm61, ptr noundef nonnull @.str.1, i32 noundef %conv) #11
  br label %cleanup858

sw.bb67:                                          ; preds = %if.end40
  %abort_code69 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18, i32 6
  %37 = ptrtoint ptr %abort_code69 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %abort_code69, align 8
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %38, label %sw.default246 [
    i32 103, label %sw.bb70
    i32 101, label %sw.bb67.sw.bb134_crit_edge
    i32 104, label %sw.bb67.sw.bb134_crit_edge1087
    i32 105, label %sw.bb67.sw.bb134_crit_edge1088
    i32 107, label %sw.bb67.sw.bb134_crit_edge1089
    i32 108, label %sw.bb67.sw.bb134_crit_edge1090
    i32 109, label %sw.bb67.sw.bb134_crit_edge1091
    i32 106, label %sw.bb140
    i32 113, label %sw.bb67.sw.bb164_crit_edge
    i32 -100, label %sw.bb67.sw.bb164_crit_edge1092
    i32 110, label %sw.bb67.sw.bb164_crit_edge1093
    i32 111, label %sw.bb214
  ]

sw.bb67.sw.bb164_crit_edge1093:                   ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb164

sw.bb67.sw.bb164_crit_edge1092:                   ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb164

sw.bb67.sw.bb164_crit_edge:                       ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb164

sw.bb67.sw.bb134_crit_edge1091:                   ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb134

sw.bb67.sw.bb134_crit_edge1090:                   ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb134

sw.bb67.sw.bb134_crit_edge1089:                   ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb134

sw.bb67.sw.bb134_crit_edge1088:                   ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb134

sw.bb67.sw.bb134_crit_edge1087:                   ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb134

sw.bb67.sw.bb134_crit_edge:                       ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb134

sw.bb70:                                          ; preds = %sw.bb67
  %and72 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end76, label %if.then74

if.then74:                                        ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #10
  %error75 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %40 = ptrtoint ptr %error75 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -121, ptr %error75, align 2
  br label %do.body772

if.end76:                                         ; preds = %sw.bb70
  %volume = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 4
  %41 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %volume, align 8
  %servers_lock = getelementptr inbounds %struct.afs_volume, ptr %42, i32 0, i32 10
  tail call void @_raw_write_lock(ptr noundef %servers_lock) #8
  %index77 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 23
  %43 = ptrtoint ptr %index77 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %index77, align 4
  %conv781028 = zext i16 %44 to i32
  %shl = shl nuw i32 1, %conv781028
  %server_list = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 19
  %45 = ptrtoint ptr %server_list to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %server_list, align 4
  %vnovol_mask = getelementptr inbounds %struct.afs_server_list, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %vnovol_mask to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vnovol_mask, align 2
  %49 = trunc i32 %shl to i16
  %conv81 = or i16 %48, %49
  store i16 %conv81, ptr %vnovol_mask, align 2
  %50 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %volume, align 8
  %servers_lock83 = getelementptr inbounds %struct.afs_volume, ptr %51, i32 0, i32 10
  tail call void @_raw_write_unlock(ptr noundef %servers_lock83) #8
  %52 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %volume, align 8
  %flags85 = getelementptr inbounds %struct.afs_volume, ptr %53, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags85) #8
  %54 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %volume, align 8
  %call87 = tail call i32 @afs_check_volume_status(ptr noundef %55, ptr noundef %op) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp = icmp slt i32 %call87, 0
  br i1 %cmp, label %if.end76.failed_set_error_crit_edge, label %if.end90

if.end76.failed_set_error_crit_edge:              ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed_set_error

if.end90:                                         ; preds = %if.end76
  %56 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %volume, align 8
  %flags92 = getelementptr inbounds %struct.afs_volume, ptr %57, i32 0, i32 7
  %58 = ptrtoint ptr %flags92 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %flags92, align 4
  %60 = and i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool94.not = icmp eq i32 %60, 0
  br i1 %tobool94.not, label %if.end97, label %if.end90.failed.sink.split_crit_edge

if.end90.failed.sink.split_crit_edge:             ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed.sink.split

if.end97:                                         ; preds = %if.end90
  %servers = getelementptr inbounds %struct.afs_volume, ptr %57, i32 0, i32 9
  %61 = ptrtoint ptr %servers to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %servers, align 4
  %63 = ptrtoint ptr %server_list to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %server_list, align 4
  %cmp105 = icmp eq ptr %62, %64
  br i1 %cmp105, label %if.then107, label %if.end109

if.then107:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  %error108 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %65 = ptrtoint ptr %error108 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 -121, ptr %error108, align 2
  br label %do.body772

if.end109:                                        ; preds = %if.end97
  %66 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags, align 8
  %or111 = or i32 %67, 8
  store i32 %or111, ptr %flags, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %68 = load i32, ptr @afs_debug, align 4
  %and113 = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end109.cleanup858_crit_edge, label %do.end124, !prof !184

if.end109.cleanup858_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup858

do.end124:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  %69 = tail call i32 @llvm.read_register.i32(metadata !173) #8
  %and.i1041 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i1041 to ptr
  %task127 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %task127 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %task127, align 8
  %comm128 = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 101
  %call130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %comm128, ptr noundef nonnull @.str.1) #11
  br label %cleanup858

sw.bb134:                                         ; preds = %sw.bb67.sw.bb134_crit_edge, %sw.bb67.sw.bb134_crit_edge1087, %sw.bb67.sw.bb134_crit_edge1088, %sw.bb67.sw.bb134_crit_edge1089, %sw.bb67.sw.bb134_crit_edge1090, %sw.bb67.sw.bb134_crit_edge1091
  %call137 = tail call i32 @afs_abort_to_error(i32 noundef %38) #8
  %conv138 = trunc i32 %call137 to i16
  %error139 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %73 = ptrtoint ptr %error139 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv138, ptr %error139, align 2
  br label %do.body772

sw.bb140:                                         ; preds = %sw.bb67
  %volume141 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 4
  %74 = ptrtoint ptr %volume141 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %volume141, align 8
  %flags142 = getelementptr inbounds %struct.afs_volume, ptr %75, i32 0, i32 7
  %call143 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %flags142) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.then145, label %sw.bb140.if.end151_crit_edge

sw.bb140.if.end151_crit_edge:                     ; preds = %sw.bb140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end151

if.then145:                                       ; preds = %sw.bb140
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %volume141 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %volume141, align 8
  %78 = ptrtoint ptr %abort_code69 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %abort_code69, align 8
  tail call fastcc void @afs_busy(ptr noundef %77, i32 noundef %79)
  %80 = ptrtoint ptr %volume141 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %volume141, align 8
  %flags150 = getelementptr inbounds %struct.afs_volume, ptr %81, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags150) #8
  br label %if.end151

if.end151:                                        ; preds = %if.then145, %sw.bb140.if.end151_crit_edge
  %82 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags, align 8
  %and153 = and i32 %83, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %if.end157, label %if.end151.failed.sink.split_crit_edge

if.end151.failed.sink.split_crit_edge:            ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed.sink.split

if.end157:                                        ; preds = %if.end151
  %and159 = and i32 %83, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %if.end157.busy_crit_edge, label %if.end157.failed.sink.split_crit_edge

if.end157.failed.sink.split_crit_edge:            ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed.sink.split

if.end157.busy_crit_edge:                         ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %busy

sw.bb164:                                         ; preds = %sw.bb67.sw.bb164_crit_edge, %sw.bb67.sw.bb164_crit_edge1092, %sw.bb67.sw.bb164_crit_edge1093
  %and166 = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %if.end170, label %sw.bb164.failed.sink.split_crit_edge

sw.bb164.failed.sink.split_crit_edge:             ; preds = %sw.bb164
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed.sink.split

if.end170:                                        ; preds = %sw.bb164
  %volume171 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 4
  %84 = ptrtoint ptr %volume171 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %volume171, align 8
  %flags172 = getelementptr inbounds %struct.afs_volume, ptr %85, i32 0, i32 7
  %call173 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %flags172) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.then175, label %if.end170.busy_crit_edge

if.end170.busy_crit_edge:                         ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %busy

if.then175:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %volume171 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %volume171, align 8
  %88 = ptrtoint ptr %abort_code69 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %abort_code69, align 8
  tail call fastcc void @afs_busy(ptr noundef %87, i32 noundef %89)
  %90 = ptrtoint ptr %volume171 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %volume171, align 8
  %flags180 = getelementptr inbounds %struct.afs_volume, ptr %91, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags180) #8
  br label %busy

busy:                                             ; preds = %if.then175, %if.end170.busy_crit_edge, %if.end157.busy_crit_edge
  %92 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags, align 8
  %and183 = and i32 %93, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183)
  %tobool184.not = icmp eq i32 %and183, 0
  br i1 %tobool184.not, label %if.end211, label %if.then185

if.then185:                                       ; preds = %busy
  %call186 = tail call fastcc zeroext i1 @afs_sleep_and_retry(ptr noundef %op)
  br i1 %call186, label %do.body189, label %if.then185.failed_crit_edge

if.then185.failed_crit_edge:                      ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

do.body189:                                       ; preds = %if.then185
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %94 = load i32, ptr @afs_debug, align 4
  %and190 = and i32 %94, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190)
  %tobool191.not = icmp eq i32 %and190, 0
  br i1 %tobool191.not, label %do.body189.cleanup858_crit_edge, label %do.end201, !prof !184

do.body189.cleanup858_crit_edge:                  ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup858

do.end201:                                        ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #10
  %95 = tail call i32 @llvm.read_register.i32(metadata !173) #8
  %and.i1042 = and i32 %95, -16384
  %96 = inttoptr i32 %and.i1042 to ptr
  %task204 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %task204 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %task204, align 8
  %comm205 = getelementptr inbounds %struct.task_struct, ptr %98, i32 0, i32 101
  %call207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %comm205, ptr noundef nonnull @.str.1) #11
  br label %cleanup858

if.end211:                                        ; preds = %busy
  call void @__sanitizer_cov_trace_pc() #10
  %or213 = or i32 %93, 2
  %99 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %or213, ptr %flags, align 8
  br label %do.body772

sw.bb214:                                         ; preds = %sw.bb67
  %and216 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216)
  %tobool217.not = icmp eq i32 %and216, 0
  br i1 %tobool217.not, label %if.end220, label %sw.bb214.failed.sink.split_crit_edge

sw.bb214.failed.sink.split_crit_edge:             ; preds = %sw.bb214
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed.sink.split

if.end220:                                        ; preds = %sw.bb214
  %or222 = or i32 %21, 4
  %100 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %or222, ptr %flags, align 8
  %volume223 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 4
  %101 = ptrtoint ptr %volume223 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %volume223, align 8
  %flags224 = getelementptr inbounds %struct.afs_volume, ptr %102, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags224) #8
  %103 = ptrtoint ptr %volume223 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %volume223, align 8
  %flags226 = getelementptr inbounds %struct.afs_volume, ptr %104, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags226) #8
  %105 = ptrtoint ptr %volume223 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %volume223, align 8
  %call228 = tail call i32 @afs_check_volume_status(ptr noundef %106, ptr noundef %op) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %cmp229 = icmp slt i32 %call228, 0
  br i1 %cmp229, label %if.end220.failed_set_error_crit_edge, label %if.end232

if.end220.failed_set_error_crit_edge:             ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed_set_error

if.end232:                                        ; preds = %if.end220
  %107 = ptrtoint ptr %volume223 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %volume223, align 8
  %servers238 = getelementptr inbounds %struct.afs_volume, ptr %108, i32 0, i32 9
  %109 = ptrtoint ptr %servers238 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile ptr, ptr %servers238, align 4
  %server_list240 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 19
  %111 = ptrtoint ptr %server_list240 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %server_list240, align 4
  %cmp241 = icmp eq ptr %110, %112
  br i1 %cmp241, label %if.end232.failed.sink.split_crit_edge, label %if.end232.do.body313_crit_edge

if.end232.do.body313_crit_edge:                   ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body313

if.end232.failed.sink.split_crit_edge:            ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed.sink.split

sw.default246:                                    ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #10
  %volume247 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 4
  %113 = ptrtoint ptr %volume247 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %volume247, align 8
  %flags248 = getelementptr inbounds %struct.afs_volume, ptr %114, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags248) #8
  %115 = ptrtoint ptr %volume247 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %volume247, align 8
  %flags250 = getelementptr inbounds %struct.afs_volume, ptr %116, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags250) #8
  %117 = ptrtoint ptr %abort_code69 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %abort_code69, align 8
  %call253 = tail call i32 @afs_abort_to_error(i32 noundef %118) #8
  %conv254 = trunc i32 %call253 to i16
  br label %failed.sink.split

sw.bb256:                                         ; preds = %if.end40.sw.bb256_crit_edge, %if.end40.sw.bb256_crit_edge1081
  %error257 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %119 = ptrtoint ptr %error257 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %error257, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -89, i16 %120)
  %cmp259.not = icmp eq i16 %120, -89
  br i1 %cmp259.not, label %sw.bb256.do.body264_crit_edge, label %sw.bb256.do.body657thread-pre-split_crit_edge

sw.bb256.do.body657thread-pre-split_crit_edge:    ; preds = %sw.bb256
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body657thread-pre-split

sw.bb256.do.body264_crit_edge:                    ; preds = %sw.bb256
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body264

do.body264:                                       ; preds = %sw.bb256.do.body264_crit_edge, %if.end40.do.body264_crit_edge, %if.end40.do.body264_crit_edge1082, %if.end40.do.body264_crit_edge1083, %if.end40.do.body264_crit_edge1084, %if.end40.do.body264_crit_edge1085, %if.end40.do.body264_crit_edge1086
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %121 = load i32, ptr @afs_debug, align 4
  %and265 = and i32 %121, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and265)
  %tobool266.not = icmp eq i32 %and265, 0
  br i1 %tobool266.not, label %do.body264.do.end285_crit_edge, label %do.end276, !prof !184

do.body264.do.end285_crit_edge:                   ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end285

do.end276:                                        ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #10
  %122 = tail call i32 @llvm.read_register.i32(metadata !173) #8
  %and.i1043 = and i32 %122, -16384
  %123 = inttoptr i32 %and.i1043 to ptr
  %task279 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %task279 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %task279, align 8
  %comm280 = getelementptr inbounds %struct.task_struct, ptr %125, i32 0, i32 101
  %call282 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %comm280) #11
  br label %do.end285

do.end285:                                        ; preds = %do.end276, %do.body264.do.end285_crit_edge
  %error287 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %126 = ptrtoint ptr %error287 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %4, ptr %error287, align 2
  br label %do.body657thread-pre-split

do.body289:                                       ; preds = %if.end40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %127 = load i32, ptr @afs_debug, align 4
  %and290 = and i32 %127, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and290)
  %tobool291.not = icmp eq i32 %and290, 0
  br i1 %tobool291.not, label %do.body289.failed.sink.split_crit_edge, label %do.end301, !prof !184

do.body289.failed.sink.split_crit_edge:           ; preds = %do.body289
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed.sink.split

do.end301:                                        ; preds = %do.body289
  call void @__sanitizer_cov_trace_pc() #10
  %128 = tail call i32 @llvm.read_register.i32(metadata !173) #8
  %and.i1044 = and i32 %128, -16384
  %129 = inttoptr i32 %and.i1044 to ptr
  %task304 = getelementptr inbounds %struct.thread_info, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %task304 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %task304, align 8
  %comm305 = getelementptr inbounds %struct.task_struct, ptr %131, i32 0, i32 101
  %call307 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %comm305) #11
  br label %failed.sink.split

do.body313:                                       ; preds = %no_more_servers.do.body313_crit_edge, %if.end232.do.body313_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %132 = load i32, ptr @afs_debug, align 4
  %and314 = and i32 %132, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and314)
  %tobool315.not = icmp eq i32 %and314, 0
  br i1 %tobool315.not, label %do.body313.do.end334_crit_edge, label %do.end325, !prof !184

do.body313.do.end334_crit_edge:                   ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end334

do.end325:                                        ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #10
  %133 = tail call i32 @llvm.read_register.i32(metadata !173) #8
  %and.i1045 = and i32 %133, -16384
  %134 = inttoptr i32 %and.i1045 to ptr
  %task328 = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %task328 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %task328, align 8
  %comm329 = getelementptr inbounds %struct.task_struct, ptr %136, i32 0, i32 101
  %call331 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %comm329) #11
  br label %do.end334

do.end334:                                        ; preds = %do.end325, %do.body313.do.end334_crit_edge
  %call336 = tail call i32 @afs_end_cursor(ptr noundef %ac) #8
  %server337 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 20
  %137 = ptrtoint ptr %server337 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %server337, align 8
  %138 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %op, align 8
  %server_list338 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 19
  %140 = ptrtoint ptr %server_list338 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %server_list338, align 4
  tail call void @afs_put_serverlist(ptr noundef %139, ptr noundef %141) #8
  %142 = ptrtoint ptr %server_list338 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %server_list338, align 4
  br label %start

start:                                            ; preds = %do.end334, %if.end40.start_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %143 = load i32, ptr @afs_debug, align 4
  %and341 = and i32 %143, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and341)
  %tobool342.not = icmp eq i32 %and341, 0
  br i1 %tobool342.not, label %start.do.end361_crit_edge, label %do.end352, !prof !184

start.do.end361_crit_edge:                        ; preds = %start
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end361

do.end352:                                        ; preds = %start
  call void @__sanitizer_cov_trace_pc() #10
  %144 = tail call i32 @llvm.read_register.i32(metadata !173) #8
  %and.i1046 = and i32 %144, -16384
  %145 = inttoptr i32 %and.i1046 to ptr
  %task355 = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 2
  %146 = ptrtoint ptr %task355 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %task355, align 8
  %comm356 = getelementptr inbounds %struct.task_struct, ptr %147, i32 0, i32 101
  %call358 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %comm356) #11
  br label %do.end361

do.end361:                                        ; preds = %do.end352, %start.do.end361_crit_edge
  %volume362 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 4
  %148 = ptrtoint ptr %volume362 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %volume362, align 8
  %call363 = tail call i32 @afs_check_volume_status(ptr noundef %149, ptr noundef %op) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call363)
  %cmp364 = icmp slt i32 %call363, 0
  br i1 %cmp364, label %do.end361.failed_set_error_crit_edge, label %if.end367

do.end361.failed_set_error_crit_edge:             ; preds = %do.end361
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed_set_error

if.end367:                                        ; preds = %do.end361
  %150 = ptrtoint ptr %volume362 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %volume362, align 8
  %servers_lock.i = getelementptr inbounds %struct.afs_volume, ptr %151, i32 0, i32 10
  tail call void @_raw_read_lock(ptr noundef %servers_lock.i) #8
  %152 = ptrtoint ptr %volume362 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %volume362, align 8
  %dep_map.i = getelementptr inbounds %struct.afs_volume, ptr %153, i32 0, i32 10, i32 4
  %call.i.i1047 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1047)
  %tobool.not.i = icmp eq i32 %call.i.i1047, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end367.do.end.i_crit_edge

if.end367.do.end.i_crit_edge:                     ; preds = %if.end367
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end367
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b115.i = load i1, ptr @afs_start_fs_iteration.__warned, align 1
  br i1 %.b115.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @afs_start_fs_iteration.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 31, ptr noundef nonnull @.str.57) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end367.do.end.i_crit_edge
  %154 = ptrtoint ptr %volume362 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %volume362, align 8
  %servers.i = getelementptr inbounds %struct.afs_volume, ptr %155, i32 0, i32 9
  %156 = ptrtoint ptr %servers.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %servers.i, align 4
  %usage.i.i = getelementptr inbounds %struct.afs_server_list, ptr %157, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #8
  %158 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #8, !srcloc !185
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %158, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !186

do.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %159 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %159)
  %.not.i.i.i.i.i = icmp sgt i32 %159, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.afs_get_serverlist.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !184

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.afs_get_serverlist.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %afs_get_serverlist.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %afs_get_serverlist.exit.i

afs_get_serverlist.exit.i:                        ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.afs_get_serverlist.exit.i_crit_edge
  %server_list.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 19
  %160 = ptrtoint ptr %server_list.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %157, ptr %server_list.i, align 4
  %161 = ptrtoint ptr %volume362 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %volume362, align 8
  %servers_lock10.i = getelementptr inbounds %struct.afs_volume, ptr %162, i32 0, i32 10
  tail call void @_raw_read_unlock(ptr noundef %servers_lock10.i) #8
  %163 = ptrtoint ptr %server_list.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %server_list.i, align 4
  %nr_servers.i = getelementptr inbounds %struct.afs_server_list, ptr %164, i32 0, i32 2
  %165 = ptrtoint ptr %nr_servers.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %nr_servers.i, align 4
  %conv.i = zext i8 %166 to i32
  %notmask.i = shl nsw i32 -1, %conv.i
  %sub.i = xor i32 %notmask.i, -1
  %untried.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 22
  %167 = ptrtoint ptr %untried.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %sub.i, ptr %untried.i, align 8
  %preferred.i = getelementptr inbounds %struct.afs_server_list, ptr %164, i32 0, i32 3
  %168 = ptrtoint ptr %preferred.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load volatile i8, ptr %preferred.i, align 1
  %conv17.i = zext i8 %169 to i16
  %index.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 23
  %170 = ptrtoint ptr %index.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %conv17.i, ptr %index.i, align 4
  %cb_server18.i = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 23
  %171 = ptrtoint ptr %cb_server18.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %cb_server18.i, align 8
  %tobool19.not.i = icmp eq ptr %172, null
  br i1 %tobool19.not.i, label %afs_get_serverlist.exit.i.do.body371_crit_edge, label %for.cond.preheader.i

afs_get_serverlist.exit.i.do.body371_crit_edge:   ; preds = %afs_get_serverlist.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body371

for.cond.preheader.i:                             ; preds = %afs_get_serverlist.exit.i
  %173 = ptrtoint ptr %nr_servers.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %nr_servers.i, align 4
  %conv23.i = zext i8 %174 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %cmp118.not.i = icmp eq i8 %174, 0
  br i1 %cmp118.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0119.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i1048 = getelementptr %struct.afs_server_list, ptr %164, i32 0, i32 7, i32 %i.0119.i
  %175 = ptrtoint ptr %arrayidx.i1048 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx.i1048, align 4
  %cmp28.i = icmp eq ptr %176, %172
  br i1 %cmp28.i, label %if.then30.i, label %for.inc.i

if.then30.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv31.i = trunc i32 %i.0119.i to i16
  %177 = ptrtoint ptr %index.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %conv31.i, ptr %index.i, align 4
  br label %do.body371

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.0119.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv23.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %178 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %flags, align 8
  %and.i1049 = and i32 %179, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1049)
  %tobool34.not.i = icmp eq i32 %and.i1049, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %for.end.i.failed.sink.split_crit_edge

for.end.i.failed.sink.split_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed.sink.split

if.end36.i:                                       ; preds = %for.end.i
  %cb_lock.i = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 29
  %lock.i.i = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 29, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #8
  %180 = ptrtoint ptr %cb_lock.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %cb_lock.i, align 4
  %inc.i.i.i.i.i = add i32 %181, 1
  store i32 %inc.i.i.i.i.i, ptr %cb_lock.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !187
  %dep_map.i.i.i.i = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 29, i32 0, i32 0, i32 1
  %182 = tail call ptr @llvm.returnaddress(i32 0) #8
  %183 = ptrtoint ptr %182 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %183) #8
  %184 = ptrtoint ptr %cb_server18.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %cb_server18.i, align 8
  %cmp39.not.i = icmp eq ptr %172, %185
  br i1 %cmp39.not.i, label %do.end75.i, label %do.end47.i, !prof !184

do.end47.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %call49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #11
  %call54.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #11
  %186 = ptrtoint ptr %172 to i32
  %187 = ptrtoint ptr %cb_server18.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %cb_server18.i, align 8
  %189 = ptrtoint ptr %188 to i32
  %call60.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %186, i32 noundef %189) #11
  %190 = ptrtoint ptr %cb_server18.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %cb_server18.i, align 8
  %192 = ptrtoint ptr %191 to i32
  %call66.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %186, i32 noundef %192) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/rotate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 59, 0\0A.popsection", ""() #8, !srcloc !188
  unreachable

do.end75.i:                                       ; preds = %if.end36.i
  %193 = ptrtoint ptr %cb_server18.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr null, ptr %cb_server18.i, align 8
  %flags77.i = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 13
  %call78.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags77.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool79.not.i = icmp eq i32 %call78.i, 0
  br i1 %tobool79.not.i, label %do.end75.i.if.end82.i_crit_edge, label %if.then80.i

do.end75.i.if.end82.i_crit_edge:                  ; preds = %do.end75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82.i

if.then80.i:                                      ; preds = %do.end75.i
  call void @__sanitizer_cov_trace_pc() #10
  %cb_break.i = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 28
  %194 = ptrtoint ptr %cb_break.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %cb_break.i, align 4
  %inc81.i = add i32 %195, 1
  store i32 %inc81.i, ptr %cb_break.i, align 4
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then80.i, %do.end75.i.if.end82.i_crit_edge
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %183) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !189
  %196 = ptrtoint ptr %cb_lock.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %cb_lock.i, align 4
  %inc.i.i.i.i = add i32 %197, 1
  store i32 %inc.i.i.i.i, ptr %cb_lock.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #8
  br label %do.body371

do.body371:                                       ; preds = %if.end82.i, %if.then30.i, %afs_get_serverlist.exit.i.do.body371_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %198 = load i32, ptr @afs_debug, align 4
  %and372 = and i32 %198, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and372)
  %tobool373.not = icmp eq i32 %and372, 0
  br i1 %tobool373.not, label %do.body371.pick_server_crit_edge, label %do.end383, !prof !184

do.body371.pick_server_crit_edge:                 ; preds = %do.body371
  call void @__sanitizer_cov_trace_pc() #10
  br label %pick_server

do.end383:                                        ; preds = %do.body371
  call void @__sanitizer_cov_trace_pc() #10
  %199 = tail call i32 @llvm.read_register.i32(metadata !173) #8
  %and.i1050 = and i32 %199, -16384
  %200 = inttoptr i32 %and.i1050 to ptr
  %task386 = getelementptr inbounds %struct.thread_info, ptr %200, i32 0, i32 2
  %201 = ptrtoint ptr %task386 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %task386, align 8
  %comm387 = getelementptr inbounds %struct.task_struct, ptr %202, i32 0, i32 101
  %203 = ptrtoint ptr %volume362 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %volume362, align 8
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %204, align 8
  %call390 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %comm387, i64 noundef %206) #11
  br label %pick_server

pick_server:                                      ; preds = %do.end793, %do.end383, %do.body371.pick_server_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %207 = load i32, ptr @afs_debug, align 4
  %and395 = and i32 %207, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and395)
  %tobool396.not = icmp eq i32 %and395, 0
  br i1 %tobool396.not, label %pick_server.do.end416_crit_edge, label %do.end406, !prof !184

pick_server.do.end416_crit_edge:                  ; preds = %pick_server
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end416

do.end406:                                        ; preds = %pick_server
  call void @__sanitizer_cov_trace_pc() #10
  %208 = tail call i32 @llvm.read_register.i32(metadata !173) #8
  %and.i1051 = and i32 %208, -16384
  %209 = inttoptr i32 %and.i1051 to ptr
  %task409 = getelementptr inbounds %struct.thread_info, ptr %209, i32 0, i32 2
  %210 = ptrtoint ptr %task409 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %task409, align 8
  %comm410 = getelementptr inbounds %struct.task_struct, ptr %211, i32 0, i32 101
  %untried412 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 22
  %212 = ptrtoint ptr %untried412 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %untried412, align 8
  %call413 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %comm410, i32 noundef %213) #11
  br label %do.end416

do.end416:                                        ; preds = %do.end406, %pick_server.do.end416_crit_edge
  %server_list417 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 19
  %214 = ptrtoint ptr %server_list417 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %server_list417, align 4
  %untried418 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 22
  %216 = ptrtoint ptr %untried418 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %untried418, align 8
  %call419 = tail call i32 @afs_wait_for_fs_probes(ptr noundef %215, i32 noundef %217) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call419)
  %cmp420 = icmp slt i32 %call419, 0
  br i1 %cmp420, label %do.end416.failed_set_error_crit_edge, label %if.end423

do.end416.failed_set_error_crit_edge:             ; preds = %do.end416
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed_set_error

if.end423:                                        ; preds = %do.end416
  %server424 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 20
  %218 = ptrtoint ptr %server424 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %server424, align 8
  %tobool425.not = icmp eq ptr %219, null
  br i1 %tobool425.not, label %if.end423.if.end481_crit_edge, label %do.body427

if.end423.if.end481_crit_edge:                    ; preds = %if.end423
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end481

do.body427:                                       ; preds = %if.end423
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %220 = load i32, ptr @afs_debug, align 4
  %and428 = and i32 %220, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and428)
  %tobool429.not = icmp eq i32 %and428, 0
  br i1 %tobool429.not, label %do.body427.do.end450_crit_edge, label %do.end439, !prof !184

do.body427.do.end450_crit_edge:                   ; preds = %do.body427
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end450

do.end439:                                        ; preds = %do.body427
  call void @__sanitizer_cov_trace_pc() #10
  %221 = tail call i32 @llvm.read_register.i32(metadata !173) #8
  %and.i1052 = and i32 %221, -16384
  %222 = inttoptr i32 %and.i1052 to ptr
  %task442 = getelementptr inbounds %struct.thread_info, ptr %222, i32 0, i32 2
  %223 = ptrtoint ptr %task442 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %task442, align 8
  %comm443 = getelementptr inbounds %struct.task_struct, ptr %224, i32 0, i32 101
  %index445 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 23
  %225 = ptrtoint ptr %index445 to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %index445, align 4
  %conv446 = sext i16 %226 to i32
  %call447 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %comm443, i32 noundef %conv446) #11
  br label %do.end450

do.end450:                                        ; preds = %do.end439, %do.body427.do.end450_crit_edge
  %index451 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 23
  %227 = ptrtoint ptr %index451 to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %index451, align 4
  %conv452 = sext i16 %228 to i32
  %div3.i = lshr i32 %conv452, 5
  %arrayidx.i = getelementptr i32, ptr %untried418, i32 %div3.i
  %229 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv452, 31
  %231 = shl nuw i32 1, %and.i
  %232 = and i32 %231, %230
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool455.not = icmp eq i32 %232, 0
  br i1 %tobool455.not, label %if.end457, label %do.end450.do.body515_crit_edge

do.end450.do.body515_crit_edge:                   ; preds = %do.end450
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body515

if.end457:                                        ; preds = %do.end450
  %233 = ptrtoint ptr %server424 to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr null, ptr %server424, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %234 = load i32, ptr @afs_debug, align 4
  %and460 = and i32 %234, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and460)
  %tobool461.not = icmp eq i32 %and460, 0
  br i1 %tobool461.not, label %if.end457.if.end481_crit_edge, label %do.end471, !prof !184

if.end457.if.end481_crit_edge:                    ; preds = %if.end457
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end481

do.end471:                                        ; preds = %if.end457
  call void @__sanitizer_cov_trace_pc() #10
  %235 = tail call i32 @llvm.read_register.i32(metadata !173) #8
  %and.i1053 = and i32 %235, -16384
  %236 = inttoptr i32 %and.i1053 to ptr
  %task474 = getelementptr inbounds %struct.thread_info, ptr %236, i32 0, i32 2
  %237 = ptrtoint ptr %task474 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %task474, align 8
  %comm475 = getelementptr inbounds %struct.task_struct, ptr %238, i32 0, i32 101
  %call477 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %comm475) #11
  br label %if.end481

if.end481:                                        ; preds = %do.end471, %if.end457.if.end481_crit_edge, %if.end423.if.end481_crit_edge
  %index482 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 23
  %239 = ptrtoint ptr %index482 to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 -1, ptr %index482, align 4
  %240 = ptrtoint ptr %server_list417 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %server_list417, align 4
  %nr_servers = getelementptr inbounds %struct.afs_server_list, ptr %241, i32 0, i32 2
  %242 = ptrtoint ptr %nr_servers to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %nr_servers, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %243)
  %cmp4851065.not = icmp eq i8 %243, 0
  br i1 %cmp4851065.not, label %if.end481.no_more_servers_crit_edge, label %if.end481.for.body_crit_edge

if.end481.for.body_crit_edge:                     ; preds = %if.end481
  br label %for.body

if.end481.no_more_servers_crit_edge:              ; preds = %if.end481
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_more_servers

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end481.for.body_crit_edge
  %rtt.01068 = phi i32 [ %rtt.2, %cleanup.for.body_crit_edge ], [ -1, %if.end481.for.body_crit_edge ]
  %i.01066 = phi i32 [ %inc508, %cleanup.for.body_crit_edge ], [ 0, %if.end481.for.body_crit_edge ]
  %arrayidx489 = getelementptr %struct.afs_server_list, ptr %241, i32 0, i32 7, i32 %i.01066
  %244 = ptrtoint ptr %arrayidx489 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %arrayidx489, align 4
  %div3.i1031 = lshr i32 %i.01066, 5
  %arrayidx.i1032 = getelementptr i32, ptr %untried418, i32 %div3.i1031
  %246 = ptrtoint ptr %arrayidx.i1032 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load volatile i32, ptr %arrayidx.i1032, align 4
  %and.i1033 = and i32 %i.01066, 31
  %248 = shl nuw i32 1, %and.i1033
  %249 = and i32 %247, %248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %tobool493.not = icmp eq i32 %249, 0
  br i1 %tobool493.not, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %flags494 = getelementptr inbounds %struct.afs_server, ptr %245, i32 0, i32 14
  %250 = ptrtoint ptr %flags494 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load volatile i32, ptr %flags494, align 4
  %and1.i1036 = and i32 %251, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1036)
  %tobool496.not = icmp eq i32 %and1.i1036, 0
  br i1 %tobool496.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end498

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end498:                                        ; preds = %lor.lhs.false
  %probe = getelementptr inbounds %struct.afs_server, ptr %245, i32 0, i32 26
  %252 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %probe, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %253, i32 %rtt.01068)
  %cmp500 = icmp ult i32 %253, %rtt.01068
  br i1 %cmp500, label %if.then502, label %if.end498.cleanup_crit_edge

if.end498.cleanup_crit_edge:                      ; preds = %if.end498
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then502:                                       ; preds = %if.end498
  call void @__sanitizer_cov_trace_pc() #10
  %conv503 = trunc i32 %i.01066 to i16
  %254 = ptrtoint ptr %index482 to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 %conv503, ptr %index482, align 4
  %255 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %probe, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then502, %if.end498.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %rtt.2 = phi i32 [ %rtt.01068, %lor.lhs.false.cleanup_crit_edge ], [ %rtt.01068, %for.body.cleanup_crit_edge ], [ %256, %if.then502 ], [ %rtt.01068, %if.end498.cleanup_crit_edge ]
  %inc508 = add nuw nsw i32 %i.01066, 1
  %257 = ptrtoint ptr %nr_servers to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %nr_servers, align 4
  %conv484 = zext i8 %258 to i32
  %cmp485 = icmp ult i32 %inc508, %conv484
  br i1 %cmp485, label %cleanup.for.body_crit_edge, label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup
  %259 = ptrtoint ptr %index482 to i32
  call void @__asan_load2_noabort(i32 %259)
  %.pr = load i16, ptr %index482, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %.pr)
  %cmp511 = icmp eq i16 %.pr, -1
  br i1 %cmp511, label %for.end.no_more_servers_crit_edge, label %for.end.do.body515_crit_edge

for.end.do.body515_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body515

for.end.no_more_servers_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_more_servers

do.body515:                                       ; preds = %for.end.do.body515_crit_edge, %do.end450.do.body515_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %260 = load i32, ptr @afs_debug, align 4
  %and516 = and i32 %260, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and516)
  %tobool517.not = icmp eq i32 %and516, 0
  br i1 %tobool517.not, label %do.body515.do.end538_crit_edge, label %do.end527, !prof !184

do.body515.do.end538_crit_edge:                   ; preds = %do.body515
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end538

do.end527:                                        ; preds = %do.body515
  call void @__sanitizer_cov_trace_pc() #10
  %261 = tail call i32 @llvm.read_register.i32(metadata !173) #8
  %and.i1054 = and i32 %261, -16384
  %262 = inttoptr i32 %and.i1054 to ptr
  %task530 = getelementptr inbounds %struct.thread_info, ptr %262, i32 0, i32 2
  %263 = ptrtoint ptr %task530 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %task530, align 8
  %comm531 = getelementptr inbounds %struct.task_struct, ptr %264, i32 0, i32 101
  %index533 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 23
  %265 = ptrtoint ptr %index533 to i32
  call void @__asan_load2_noabort(i32 %265)
  %266 = load i16, ptr %index533, align 4
  %conv534 = sext i16 %266 to i32
  %call535 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %comm531, i32 noundef %conv534) #11
  br label %do.end538

do.end538:                                        ; preds = %do.end527, %do.body515.do.end538_crit_edge
  %index539 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 23
  %267 = ptrtoint ptr %index539 to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %index539, align 4
  %conv540 = sext i16 %268 to i32
  %rem.i = and i32 %conv540, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv540, 5
  %add.ptr.i = getelementptr i32, ptr %untried418, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %269 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %add.ptr.i, align 4
  %and.i1037 = and i32 %270, %neg.i
  store i32 %and.i1037, ptr %add.ptr.i, align 4
  %271 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %ac, align 8
  %cmp545.not = icmp eq ptr %272, null
  br i1 %cmp545.not, label %do.end588, label %do.end558, !prof !184

do.end558:                                        ; preds = %do.end538
  call void @__sanitizer_cov_trace_pc() #10
  %call560 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #11
  %call565 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #11
  %273 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %ac, align 8
  %275 = ptrtoint ptr %274 to i32
  %call572 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %275, i32 noundef 0) #11
  %276 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %ac, align 8
  %278 = ptrtoint ptr %277 to i32
  %call579 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %278, i32 noundef 0) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/rotate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 364, 0\0A.popsection", ""() #8, !srcloc !190
  unreachable

do.end588:                                        ; preds = %do.end538
  %279 = ptrtoint ptr %server_list417 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %server_list417, align 4
  %281 = ptrtoint ptr %index539 to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %index539, align 4
  %idxprom = sext i16 %282 to i32
  %arrayidx592 = getelementptr %struct.afs_server_list, ptr %280, i32 0, i32 7, i32 %idxprom
  %283 = ptrtoint ptr %arrayidx592 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %arrayidx592, align 4
  %call594 = tail call zeroext i1 @afs_check_server_record(ptr noundef %op, ptr noundef %284) #8
  br i1 %call594, label %do.body597, label %do.end588.failed_crit_edge

do.end588.failed_crit_edge:                       ; preds = %do.end588
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

do.body597:                                       ; preds = %do.end588
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %285 = load i32, ptr @afs_debug, align 4
  %and598 = and i32 %285, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and598)
  %tobool599.not = icmp eq i32 %and598, 0
  br i1 %tobool599.not, label %do.body597.do.end618_crit_edge, label %do.end609, !prof !184

do.body597.do.end618_crit_edge:                   ; preds = %do.body597
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end618

do.end609:                                        ; preds = %do.body597
  call void @__sanitizer_cov_trace_pc() #10
  %286 = tail call i32 @llvm.read_register.i32(metadata !173) #8
  %and.i1055 = and i32 %286, -16384
  %287 = inttoptr i32 %and.i1055 to ptr
  %task612 = getelementptr inbounds %struct.thread_info, ptr %287, i32 0, i32 2
  %288 = ptrtoint ptr %task612 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %task612, align 8
  %comm613 = getelementptr inbounds %struct.task_struct, ptr %289, i32 0, i32 101
  %290 = getelementptr inbounds %struct.afs_server, ptr %284, i32 0, i32 1
  %call615 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %comm613, ptr noundef %290) #11
  br label %do.end618

do.end618:                                        ; preds = %do.end609, %do.body597.do.end618_crit_edge
  %291 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %flags, align 8
  %or620 = or i32 %292, 2048
  store i32 %or620, ptr %flags, align 8
  %293 = ptrtoint ptr %server424 to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr %284, ptr %server424, align 8
  %cb_server = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 23
  %294 = ptrtoint ptr %cb_server to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %cb_server, align 8
  %cmp622.not = icmp eq ptr %295, %284
  br i1 %cmp622.not, label %do.end618.if.end631_crit_edge, label %if.then624

do.end618.if.end631_crit_edge:                    ; preds = %do.end618
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end631

if.then624:                                       ; preds = %do.end618
  call void @__sanitizer_cov_trace_pc() #10
  %296 = ptrtoint ptr %cb_server to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr %284, ptr %cb_server, align 8
  %cb_s_break = getelementptr inbounds %struct.afs_server, ptr %284, i32 0, i32 21
  %297 = ptrtoint ptr %cb_s_break to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %cb_s_break, align 4
  %cb_s_break626 = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 26
  %299 = ptrtoint ptr %cb_s_break626 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %298, ptr %cb_s_break626, align 4
  %cell = getelementptr inbounds %struct.afs_server, ptr %284, i32 0, i32 3
  %300 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %cell, align 4
  %fs_s_break = getelementptr inbounds %struct.afs_cell, ptr %301, i32 0, i32 24
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fs_s_break, i32 noundef 4) #8
  %302 = ptrtoint ptr %fs_s_break to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load volatile i32, ptr %fs_s_break, align 4
  %cb_fs_s_break = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 25
  %304 = ptrtoint ptr %cb_fs_s_break to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %303, ptr %cb_fs_s_break, align 8
  %volume628 = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 1
  %305 = ptrtoint ptr %volume628 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %volume628, align 8
  %cb_v_break = getelementptr inbounds %struct.afs_volume, ptr %306, i32 0, i32 12
  %307 = ptrtoint ptr %cb_v_break to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %cb_v_break, align 8
  %cb_v_break629 = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 27
  %309 = ptrtoint ptr %cb_v_break629 to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %308, ptr %cb_v_break629, align 8
  %flags630 = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags630) #8
  br label %if.end631

if.end631:                                        ; preds = %if.then624, %do.end618.if.end631_crit_edge
  %fs_lock = getelementptr inbounds %struct.afs_server, ptr %284, i32 0, i32 20
  tail call void @_raw_read_lock(ptr noundef %fs_lock) #8
  %dep_map = getelementptr inbounds %struct.afs_server, ptr %284, i32 0, i32 20, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool635.not = icmp eq i32 %call.i, 0
  br i1 %tobool635.not, label %land.lhs.true, label %if.end631.do.end643_crit_edge

if.end631.do.end643_crit_edge:                    ; preds = %if.end631
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end643

land.lhs.true:                                    ; preds = %if.end631
  %call636 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call636)
  %tobool637.not = icmp eq i32 %call636, 0
  br i1 %tobool637.not, label %land.lhs.true.do.end643_crit_edge, label %land.lhs.true638

land.lhs.true.do.end643_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end643

land.lhs.true638:                                 ; preds = %land.lhs.true
  %.b1027 = load i1, ptr @afs_select_fileserver.__warned, align 1
  br i1 %.b1027, label %land.lhs.true638.do.end643_crit_edge, label %if.then640

land.lhs.true638.do.end643_crit_edge:             ; preds = %land.lhs.true638
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end643

if.then640:                                       ; preds = %land.lhs.true638
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @afs_select_fileserver.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 384, ptr noundef nonnull @.str.57) #8
  br label %do.end643

do.end643:                                        ; preds = %if.then640, %land.lhs.true638.do.end643_crit_edge, %land.lhs.true.do.end643_crit_edge, %if.end631.do.end643_crit_edge
  %addresses = getelementptr inbounds %struct.afs_server, ptr %284, i32 0, i32 2
  %310 = ptrtoint ptr %addresses to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %addresses, align 8
  %tobool.not.i1056 = icmp eq ptr %311, null
  br i1 %tobool.not.i1056, label %do.end643.afs_get_addrlist.exit_crit_edge, label %if.then.i1057

do.end643.afs_get_addrlist.exit_crit_edge:        ; preds = %do.end643
  call void @__sanitizer_cov_trace_pc() #10
  br label %afs_get_addrlist.exit

if.then.i1057:                                    ; preds = %do.end643
  %usage.i = getelementptr inbounds %struct.afs_addr_list, ptr %311, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #8
  %312 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #8, !srcloc !185
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %312, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i1057.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !186

if.then.i1057.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i1057
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i1057
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %313 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %313)
  %.not.i.i.i.i = icmp sgt i32 %313, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.afs_get_addrlist.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !184

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.afs_get_addrlist.exit_crit_edge:  ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %afs_get_addrlist.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i1057.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i1057.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #8
  br label %afs_get_addrlist.exit

afs_get_addrlist.exit:                            ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.afs_get_addrlist.exit_crit_edge, %do.end643.afs_get_addrlist.exit_crit_edge
  tail call void @_raw_read_unlock(ptr noundef %fs_lock) #8
  br label %if.end654

if.end654:                                        ; preds = %sw.bb766, %afs_get_addrlist.exit
  %alist.0 = phi ptr [ %311, %afs_get_addrlist.exit ], [ %344, %sw.bb766 ]
  %314 = call ptr @memset(ptr %ac, i32 0, i32 20)
  %315 = ptrtoint ptr %ac to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr %alist.0, ptr %ac, align 8
  %index656 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18, i32 2
  %316 = ptrtoint ptr %index656 to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 -1, ptr %index656, align 8
  br label %do.body657

do.body657thread-pre-split:                       ; preds = %do.end285, %sw.bb256.do.body657thread-pre-split_crit_edge
  %317 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %317)
  %.pr1076 = load ptr, ptr %ac, align 8
  br label %do.body657

do.body657:                                       ; preds = %do.body657thread-pre-split, %if.end654
  %318 = phi ptr [ %.pr1076, %do.body657thread-pre-split ], [ %alist.0, %if.end654 ]
  %tobool660.not = icmp eq ptr %318, null
  br i1 %tobool660.not, label %do.end672, label %do.end688, !prof !186

do.end672:                                        ; preds = %do.body657
  call void @__sanitizer_cov_trace_pc() #10
  %call674 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #11
  %call679 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/rotate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 399, 0\0A.popsection", ""() #8, !srcloc !191
  unreachable

do.end688:                                        ; preds = %do.body657
  %call690 = tail call zeroext i1 @afs_iterate_addresses(ptr noundef %ac) #8
  br i1 %call690, label %do.body693, label %out_of_addresses

do.body693:                                       ; preds = %do.end688
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %319 = load i32, ptr @afs_debug, align 4
  %and694 = and i32 %319, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and694)
  %tobool695.not = icmp eq i32 %and694, 0
  br i1 %tobool695.not, label %do.body693.do.body729_crit_edge, label %do.end705, !prof !184

do.body693.do.body729_crit_edge:                  ; preds = %do.body693
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body729

do.end705:                                        ; preds = %do.body693
  call void @__sanitizer_cov_trace_pc() #10
  %320 = tail call i32 @llvm.read_register.i32(metadata !173) #8
  %and.i1058 = and i32 %320, -16384
  %321 = inttoptr i32 %and.i1058 to ptr
  %task708 = getelementptr inbounds %struct.thread_info, ptr %321, i32 0, i32 2
  %322 = ptrtoint ptr %task708 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %task708, align 8
  %comm709 = getelementptr inbounds %struct.task_struct, ptr %323, i32 0, i32 101
  %index711 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 23
  %324 = ptrtoint ptr %index711 to i32
  call void @__asan_load2_noabort(i32 %324)
  %325 = load i16, ptr %index711, align 4
  %conv712 = sext i16 %325 to i32
  %index714 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18, i32 2
  %326 = ptrtoint ptr %index714 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %index714, align 8
  %conv715 = sext i8 %327 to i32
  %328 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %ac, align 8
  %nr_addrs = getelementptr inbounds %struct.afs_addr_list, ptr %329, i32 0, i32 4
  %330 = ptrtoint ptr %nr_addrs to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %nr_addrs, align 1
  %conv718 = zext i8 %331 to i32
  %transport = getelementptr %struct.afs_addr_list, ptr %329, i32 0, i32 10, i32 %conv715, i32 4
  %call725 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %comm709, i32 noundef %conv712, i32 noundef %conv715, i32 noundef %conv718, ptr noundef %transport) #11
  br label %do.body729

do.body729:                                       ; preds = %do.end705, %do.body693.do.body729_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %332 = load i32, ptr @afs_debug, align 4
  %and730 = and i32 %332, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and730)
  %tobool731.not = icmp eq i32 %and730, 0
  br i1 %tobool731.not, label %do.body729.cleanup858_crit_edge, label %do.end741, !prof !184

do.body729.cleanup858_crit_edge:                  ; preds = %do.body729
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup858

do.end741:                                        ; preds = %do.body729
  call void @__sanitizer_cov_trace_pc() #10
  %333 = tail call i32 @llvm.read_register.i32(metadata !173) #8
  %and.i1059 = and i32 %333, -16384
  %334 = inttoptr i32 %and.i1059 to ptr
  %task744 = getelementptr inbounds %struct.thread_info, ptr %334, i32 0, i32 2
  %335 = ptrtoint ptr %task744 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %task744, align 8
  %comm745 = getelementptr inbounds %struct.task_struct, ptr %336, i32 0, i32 101
  %call747 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %comm745, ptr noundef nonnull @.str.1) #11
  br label %cleanup858

out_of_addresses:                                 ; preds = %do.end688
  %337 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %op, align 8
  %server752 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 20
  %339 = ptrtoint ptr %server752 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %server752, align 8
  tail call void @afs_probe_fileserver(ptr noundef %338, ptr noundef %340) #8
  %341 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %flags, align 8
  %and754 = and i32 %342, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and754)
  %tobool755.not = icmp eq i32 %and754, 0
  br i1 %tobool755.not, label %out_of_addresses.do.body772_crit_edge, label %if.then756

out_of_addresses.do.body772_crit_edge:            ; preds = %out_of_addresses
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body772

if.then756:                                       ; preds = %out_of_addresses
  %343 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %ac, align 8
  %345 = ptrtoint ptr %server752 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %server752, align 8
  %and761 = and i32 %342, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and761)
  %tobool762.not = icmp eq i32 %and761, 0
  %call765 = tail call i32 @afs_wait_for_one_fs_probe(ptr noundef %346, i1 noundef zeroext %tobool762.not) #8
  %347 = zext i32 %call765 to i64
  call void @__sanitizer_cov_trace_switch(i64 %347, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %call765, label %if.then756.do.body772_crit_edge [
    i32 0, label %sw.bb766
    i32 -512, label %if.then756.failed_set_error_crit_edge
  ]

if.then756.failed_set_error_crit_edge:            ; preds = %if.then756
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed_set_error

if.then756.do.body772_crit_edge:                  ; preds = %if.then756
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body772

sw.bb766:                                         ; preds = %if.then756
  call void @__sanitizer_cov_trace_pc() #10
  %348 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %flags, align 8
  %and768 = and i32 %349, -2049
  store i32 %and768, ptr %flags, align 8
  br label %if.end654

do.body772:                                       ; preds = %if.then756.do.body772_crit_edge, %out_of_addresses.do.body772_crit_edge, %if.end211, %sw.bb134, %if.then107, %if.then74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %350 = load i32, ptr @afs_debug, align 4
  %and773 = and i32 %350, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and773)
  %tobool774.not = icmp eq i32 %and773, 0
  br i1 %tobool774.not, label %do.body772.do.end793_crit_edge, label %do.end784, !prof !184

do.body772.do.end793_crit_edge:                   ; preds = %do.body772
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end793

do.end784:                                        ; preds = %do.body772
  call void @__sanitizer_cov_trace_pc() #10
  %351 = tail call i32 @llvm.read_register.i32(metadata !173) #8
  %and.i1060 = and i32 %351, -16384
  %352 = inttoptr i32 %and.i1060 to ptr
  %task787 = getelementptr inbounds %struct.thread_info, ptr %352, i32 0, i32 2
  %353 = ptrtoint ptr %task787 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %task787, align 8
  %comm788 = getelementptr inbounds %struct.task_struct, ptr %354, i32 0, i32 101
  %call790 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %comm788) #11
  br label %do.end793

do.end793:                                        ; preds = %do.end784, %do.body772.do.end793_crit_edge
  %call795 = tail call i32 @afs_end_cursor(ptr noundef %ac) #8
  br label %pick_server

no_more_servers:                                  ; preds = %for.end.no_more_servers_crit_edge, %if.end481.no_more_servers_crit_edge
  %355 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %flags, align 8
  %and797 = and i32 %356, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and797)
  %tobool798.not = icmp eq i32 %and797, 0
  br i1 %tobool798.not, label %if.end800, label %no_more_servers.do.body313_crit_edge

no_more_servers.do.body313_crit_edge:             ; preds = %no_more_servers
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body313

if.end800:                                        ; preds = %no_more_servers
  %357 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %357)
  store i16 -89, ptr %e, align 4
  %responded = getelementptr inbounds %struct.afs_error, ptr %e, i32 0, i32 1
  %358 = ptrtoint ptr %responded to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 0, ptr %responded, align 2
  %359 = ptrtoint ptr %server_list417 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %server_list417, align 4
  %nr_servers8041069 = getelementptr inbounds %struct.afs_server_list, ptr %360, i32 0, i32 2
  %361 = ptrtoint ptr %nr_servers8041069 to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %nr_servers8041069, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %362)
  %cmp8061071.not = icmp eq i8 %362, 0
  br i1 %cmp8061071.not, label %if.end800.for.end825_crit_edge, label %if.end800.for.body808_crit_edge

if.end800.for.body808_crit_edge:                  ; preds = %if.end800
  br label %for.body808

if.end800.for.end825_crit_edge:                   ; preds = %if.end800
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end825

for.body808:                                      ; preds = %for.body808.for.body808_crit_edge, %if.end800.for.body808_crit_edge
  %363 = phi ptr [ %371, %for.body808.for.body808_crit_edge ], [ %360, %if.end800.for.body808_crit_edge ]
  %i.11072 = phi i32 [ %inc824, %for.body808.for.body808_crit_edge ], [ 0, %if.end800.for.body808_crit_edge ]
  %arrayidx812 = getelementptr %struct.afs_server_list, ptr %363, i32 0, i32 7, i32 %i.11072
  %364 = ptrtoint ptr %arrayidx812 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %arrayidx812, align 4
  %error819 = getelementptr inbounds %struct.afs_server, ptr %365, i32 0, i32 26, i32 2
  %366 = ptrtoint ptr %error819 to i32
  call void @__asan_load2_noabort(i32 %366)
  %367 = load volatile i16, ptr %error819, align 8
  %conv820 = sext i16 %367 to i32
  %abort_code822 = getelementptr inbounds %struct.afs_server, ptr %365, i32 0, i32 26, i32 1
  %368 = ptrtoint ptr %abort_code822 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %abort_code822, align 4
  call void @afs_prioritise_error(ptr noundef nonnull %e, i32 noundef %conv820, i32 noundef %369) #8
  %inc824 = add nuw nsw i32 %i.11072, 1
  %370 = ptrtoint ptr %server_list417 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %server_list417, align 4
  %nr_servers804 = getelementptr inbounds %struct.afs_server_list, ptr %371, i32 0, i32 2
  %372 = ptrtoint ptr %nr_servers804 to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %nr_servers804, align 4
  %conv805 = zext i8 %373 to i32
  %cmp806 = icmp ult i32 %inc824, %conv805
  br i1 %cmp806, label %for.body808.for.body808_crit_edge, label %for.body808.for.end825_crit_edge

for.body808.for.end825_crit_edge:                 ; preds = %for.body808
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end825

for.body808.for.body808_crit_edge:                ; preds = %for.body808
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body808

for.end825:                                       ; preds = %for.body808.for.end825_crit_edge, %if.end800.for.end825_crit_edge
  %374 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %374)
  %375 = load i16, ptr %e, align 4
  %conv8271074 = zext i16 %375 to i32
  br label %failed_set_error

failed_set_error:                                 ; preds = %for.end825, %if.then756.failed_set_error_crit_edge, %do.end416.failed_set_error_crit_edge, %do.end361.failed_set_error_crit_edge, %if.end220.failed_set_error_crit_edge, %if.end76.failed_set_error_crit_edge
  %error.0 = phi i32 [ %call419, %do.end416.failed_set_error_crit_edge ], [ %call363, %do.end361.failed_set_error_crit_edge ], [ %conv8271074, %for.end825 ], [ %call765, %if.then756.failed_set_error_crit_edge ], [ %call228, %if.end220.failed_set_error_crit_edge ], [ %call87, %if.end76.failed_set_error_crit_edge ]
  %conv828 = trunc i32 %error.0 to i16
  br label %failed.sink.split

failed.sink.split:                                ; preds = %failed_set_error, %for.end.i.failed.sink.split_crit_edge, %do.end301, %do.body289.failed.sink.split_crit_edge, %sw.default246, %if.end232.failed.sink.split_crit_edge, %sw.bb214.failed.sink.split_crit_edge, %sw.bb164.failed.sink.split_crit_edge, %if.end157.failed.sink.split_crit_edge, %if.end151.failed.sink.split_crit_edge, %if.end90.failed.sink.split_crit_edge
  %.sink = phi i16 [ %conv828, %failed_set_error ], [ %conv254, %sw.default246 ], [ -123, %if.end90.failed.sink.split_crit_edge ], [ -68, %if.end151.failed.sink.split_crit_edge ], [ -116, %if.end157.failed.sink.split_crit_edge ], [ -16, %sw.bb164.failed.sink.split_crit_edge ], [ -121, %sw.bb214.failed.sink.split_crit_edge ], [ -123, %if.end232.failed.sink.split_crit_edge ], [ %4, %do.end301 ], [ %4, %do.body289.failed.sink.split_crit_edge ], [ -116, %for.end.i.failed.sink.split_crit_edge ]
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %376 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %376)
  store i16 %.sink, ptr %error.i, align 2
  br label %failed

failed:                                           ; preds = %failed.sink.split, %do.end588.failed_crit_edge, %if.then185.failed_crit_edge
  %377 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %flags, align 8
  %or831 = or i32 %378, 1
  store i32 %or831, ptr %flags, align 8
  %call833 = call i32 @afs_end_cursor(ptr noundef %ac) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %379 = load i32, ptr @afs_debug, align 4
  %and835 = and i32 %379, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and835)
  %tobool836.not = icmp eq i32 %and835, 0
  br i1 %tobool836.not, label %failed.cleanup858_crit_edge, label %do.end846, !prof !184

failed.cleanup858_crit_edge:                      ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup858

do.end846:                                        ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #10
  %380 = call i32 @llvm.read_register.i32(metadata !173) #8
  %and.i1061 = and i32 %380, -16384
  %381 = inttoptr i32 %and.i1061 to ptr
  %task849 = getelementptr inbounds %struct.thread_info, ptr %381, i32 0, i32 2
  %382 = ptrtoint ptr %task849 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %task849, align 8
  %comm850 = getelementptr inbounds %struct.task_struct, ptr %383, i32 0, i32 101
  %error852 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %384 = ptrtoint ptr %error852 to i32
  call void @__asan_load2_noabort(i32 %384)
  %385 = load i16, ptr %error852, align 2
  %conv853 = sext i16 %385 to i32
  %call854 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %comm850, ptr noundef nonnull @.str.1, i32 noundef %conv853) #11
  br label %cleanup858

cleanup858:                                       ; preds = %do.end846, %failed.cleanup858_crit_edge, %do.end741, %do.body729.cleanup858_crit_edge, %do.end201, %do.body189.cleanup858_crit_edge, %do.end124, %if.end109.cleanup858_crit_edge, %do.end57, %sw.default.cleanup858_crit_edge, %do.end30, %do.body18.cleanup858_crit_edge
  %retval.0 = phi i1 [ false, %do.end30 ], [ false, %do.body18.cleanup858_crit_edge ], [ false, %do.end57 ], [ false, %sw.default.cleanup858_crit_edge ], [ true, %do.end124 ], [ true, %if.end109.cleanup858_crit_edge ], [ true, %do.end201 ], [ true, %do.body189.cleanup858_crit_edge ], [ true, %do.end741 ], [ true, %do.body729.cleanup858_crit_edge ], [ false, %do.end846 ], [ false, %failed.cleanup858_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e) #8
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_check_volume_status(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_abort_to_error(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @afs_busy(ptr noundef %volume, i32 noundef %abort_code) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %abort_code to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %abort_code, label %sw.default [
    i32 106, label %entry.do.end_crit_edge
    i32 -100, label %sw.bb1
    i32 113, label %sw.bb2
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %entry.do.end_crit_edge
  %m.0 = phi ptr [ @.str.104, %sw.default ], [ @.str.103, %sw.bb2 ], [ @.str.102, %sw.bb1 ], [ @.str.101, %entry.do.end_crit_edge ]
  %1 = ptrtoint ptr %volume to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %volume, align 8
  %name = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i64 noundef %2, ptr noundef %name, ptr noundef nonnull %m.0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @afs_sleep_and_retry(ptr nocapture noundef %op) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @msleep_interruptible(i32 noundef 1000) #8
  %2 = tail call i32 @llvm.read_register.i32(metadata !173) #8
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stack.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.then.if.then4_crit_edge, !prof !184

if.then.if.then4_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

signal_pending.exit:                              ; preds = %if.then
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %7, align 4
  %and1.i.i.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool3.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool3.not, label %signal_pending.exit.return_crit_edge, label %signal_pending.exit.if.then4_crit_edge

signal_pending.exit.if.then4_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

signal_pending.exit.return_crit_edge:             ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then4:                                         ; preds = %signal_pending.exit.if.then4_crit_edge, %if.then.if.then4_crit_edge
  %error = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %13 = ptrtoint ptr %error to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -512, ptr %error, align 2
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 1000) #8
  br label %return

return:                                           ; preds = %if.else, %if.then4, %signal_pending.exit.return_crit_edge
  %retval.0 = phi i1 [ false, %if.then4 ], [ true, %signal_pending.exit.return_crit_edge ], [ true, %if.else ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_end_cursor(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_put_serverlist(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_wait_for_fs_probes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @afs_check_server_record(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @afs_iterate_addresses(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_probe_fileserver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_wait_for_one_fs_probe(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_prioritise_error(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_dump_edestaddrreq(ptr nocapture noundef readonly %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @afs_dump_edestaddrreq.count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @afs_dump_edestaddrreq.count, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !173) #8
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !192
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 696, ptr noundef nonnull @.str.115) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #11
  %cb_break_before = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 4
  %5 = ptrtoint ptr %cb_break_before to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cb_break_before, align 8
  %cb_break_before7 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1, i32 4
  %7 = ptrtoint ptr %cb_break_before7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cb_break_before7, align 8
  %flags = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 8
  %error = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %11 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %error, align 2
  %conv = sext i16 %12 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %conv) #11
  %untried = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 22
  %13 = ptrtoint ptr %untried to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %untried, align 8
  %index = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 23
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %index, align 4
  %conv13 = sext i16 %16 to i32
  %nr_iterations = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 24
  %17 = ptrtoint ptr %nr_iterations to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %nr_iterations, align 2
  %conv14 = zext i16 %18 to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %14, i32 noundef %conv13, i32 noundef %conv14) #11
  %server_list = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 19
  %19 = ptrtoint ptr %server_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %server_list, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %rcu_read_lock.exit.do.end85_crit_edge, label %if.then16

rcu_read_lock.exit.do.end85_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end85

if.then16:                                        ; preds = %rcu_read_lock.exit
  %nr_servers = getelementptr inbounds %struct.afs_server_list, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %nr_servers to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %nr_servers, align 4
  %conv22 = zext i8 %22 to i32
  %preferred = getelementptr inbounds %struct.afs_server_list, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %preferred to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %preferred, align 1
  %conv23 = zext i8 %24 to i32
  %vnovol_mask = getelementptr inbounds %struct.afs_server_list, ptr %20, i32 0, i32 4
  %25 = ptrtoint ptr %vnovol_mask to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vnovol_mask, align 2
  %conv24 = zext i16 %26 to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef %conv22, i32 noundef %conv23, i32 noundef %conv24) #11
  %27 = ptrtoint ptr %nr_servers to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %nr_servers, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp28147.not = icmp eq i8 %28, 0
  br i1 %cmp28147.not, label %if.then16.do.end85_crit_edge, label %for.body.lr.ph

if.then16.do.end85_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end85

for.body.lr.ph:                                   ; preds = %if.then16
  %ac = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %if.end80.for.body_crit_edge, %for.body.lr.ph
  %i.0148 = phi i32 [ 0, %for.body.lr.ph ], [ %inc81, %if.end80.for.body_crit_edge ]
  %arrayidx30 = getelementptr %struct.afs_server_list, ptr %20, i32 0, i32 7, i32 %i.0148
  %29 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx30, align 4
  %flags35 = getelementptr inbounds %struct.afs_server, ptr %30, i32 0, i32 14
  %31 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags35, align 8
  %addr_version = getelementptr inbounds %struct.afs_server, ptr %30, i32 0, i32 17
  %33 = ptrtoint ptr %addr_version to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr_version, align 4
  %35 = getelementptr inbounds %struct.afs_server, ptr %30, i32 0, i32 1
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %32, i32 noundef %34, ptr noundef %35) #11
  %addresses = getelementptr inbounds %struct.afs_server, ptr %30, i32 0, i32 2
  %36 = ptrtoint ptr %addresses to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %addresses, align 8
  %tobool37.not = icmp eq ptr %37, null
  br i1 %tobool37.not, label %for.body.if.end80_crit_edge, label %if.then38

for.body.if.end80_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then38:                                        ; preds = %for.body
  %38 = ptrtoint ptr %addresses to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %addresses, align 8
  %call45 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.lhs.true, label %if.then38.do.end54_crit_edge

if.then38.do.end54_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end54

land.lhs.true:                                    ; preds = %if.then38
  %call47 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true.do.end54_crit_edge, label %land.lhs.true49

land.lhs.true.do.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end54

land.lhs.true49:                                  ; preds = %land.lhs.true
  %.b136 = load i1, ptr @afs_dump_edestaddrreq.__warned, align 1
  br i1 %.b136, label %land.lhs.true49.do.end54_crit_edge, label %if.then51

land.lhs.true49.do.end54_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end54

if.then51:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @afs_dump_edestaddrreq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 497, ptr noundef nonnull @.str.88) #8
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %land.lhs.true49.do.end54_crit_edge, %land.lhs.true.do.end54_crit_edge, %if.then38.do.end54_crit_edge
  %version = getelementptr inbounds %struct.afs_addr_list, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %version, align 4
  %nr_ipv4 = getelementptr inbounds %struct.afs_addr_list, ptr %39, i32 0, i32 6
  %42 = ptrtoint ptr %nr_ipv4 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %nr_ipv4, align 1
  %conv60 = zext i8 %43 to i32
  %nr_addrs = getelementptr inbounds %struct.afs_addr_list, ptr %39, i32 0, i32 4
  %44 = ptrtoint ptr %nr_addrs to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %nr_addrs, align 1
  %conv61 = zext i8 %45 to i32
  %max_addrs = getelementptr inbounds %struct.afs_addr_list, ptr %39, i32 0, i32 3
  %46 = ptrtoint ptr %max_addrs to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %max_addrs, align 4
  %conv62 = zext i8 %47 to i32
  %preferred63 = getelementptr inbounds %struct.afs_addr_list, ptr %39, i32 0, i32 5
  %48 = ptrtoint ptr %preferred63 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %preferred63, align 2
  %conv64 = zext i8 %49 to i32
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %41, i32 noundef %conv60, i32 noundef %conv61, i32 noundef %conv62, i32 noundef %conv64) #11
  %responded = getelementptr inbounds %struct.afs_addr_list, ptr %39, i32 0, i32 9
  %50 = ptrtoint ptr %responded to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %responded, align 4
  %failed = getelementptr inbounds %struct.afs_addr_list, ptr %39, i32 0, i32 8
  %52 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %failed, align 4
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %51, i32 noundef %53) #11
  %54 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ac, align 8
  %cmp71 = icmp eq ptr %39, %55
  br i1 %cmp71, label %do.end76, label %do.end54.if.end80_crit_edge

do.end54.if.end80_crit_edge:                      ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

do.end76:                                         ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #10
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #11
  br label %if.end80

if.end80:                                         ; preds = %do.end76, %do.end54.if.end80_crit_edge, %for.body.if.end80_crit_edge
  %inc81 = add nuw nsw i32 %i.0148, 1
  %56 = ptrtoint ptr %nr_servers to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %nr_servers, align 4
  %conv27 = zext i8 %57 to i32
  %cmp28 = icmp ult i32 %inc81, %conv27
  br i1 %cmp28, label %if.end80.for.body_crit_edge, label %if.end80.do.end85_crit_edge

if.end80.do.end85_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end85

if.end80.for.body_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end85:                                         ; preds = %if.end80.do.end85_crit_edge, %if.then16.do.end85_crit_edge, %rcu_read_lock.exit.do.end85_crit_edge
  %tried = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18, i32 1
  %58 = ptrtoint ptr %tried to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tried, align 4
  %index89 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18, i32 2
  %60 = ptrtoint ptr %index89 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %index89, align 8
  %conv90 = sext i8 %61 to i32
  %abort_code = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18, i32 6
  %62 = ptrtoint ptr %abort_code to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %abort_code, align 8
  %error93 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18, i32 5
  %64 = ptrtoint ptr %error93 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %error93, align 4
  %conv94 = sext i16 %65 to i32
  %responded96 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18, i32 3
  %66 = ptrtoint ptr %responded96 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %responded96, align 1, !range !193
  %68 = zext i8 %67 to i32
  %nr_iterations100 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 18, i32 4
  %69 = ptrtoint ptr %nr_iterations100 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %nr_iterations100, align 2
  %conv101 = zext i16 %70 to i32
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, i32 noundef %59, i32 noundef %conv90, i32 noundef %63, i32 noundef %conv94, i32 noundef %68, i32 noundef %conv101) #11
  %call.i137 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i137, label %do.end85.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i140

do.end85.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i140:                               ; preds = %do.end85
  %call1.i138 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i138)
  %tobool.not.i139 = icmp eq i32 %call1.i138, 0
  br i1 %tobool.not.i139, label %land.lhs.true.i140.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i142

land.lhs.true.i140.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i140
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i142:                              ; preds = %land.lhs.true.i140
  %.b4.i141 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i141, label %land.lhs.true2.i142.rcu_read_unlock.exit_crit_edge, label %if.then.i143

land.lhs.true2.i142.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i142
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i143:                                     ; preds = %land.lhs.true2.i142
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 724, ptr noundef nonnull @.str.116) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i143, %land.lhs.true2.i142.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i140.rcu_read_unlock.exit_crit_edge, %do.end85.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !194
  %71 = tail call i32 @llvm.read_register.i32(metadata !173) #8
  %and.i.i.i.i.i144 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i144 to ptr
  %preempt_count.i.i.i.i145 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i.i.i145, align 4
  %sub.i.i.i = add i32 %74, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i145, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !73, !74, !75, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !145, !147, !149, !151, !152, !153, !154, !156, !158, !159, !160, !161, !162, !163, !164, !165, !166, !168, !169, !170, !172}
!llvm.named.register.sp = !{!173}
!llvm.module.flags = !{!174, !175, !176, !177, !178, !179, !180, !181}
!llvm.ident = !{!182}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/afs/rotate.c", i32 118, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @afs_select_fileserver._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @afs_select_fileserver._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/afs/rotate.c", i32 124, i32 3}
!8 = !{ptr @afs_select_fileserver._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @afs_select_fileserver._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/afs/rotate.c", i32 140, i32 3}
!12 = !{ptr @afs_select_fileserver._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @afs_select_fileserver._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/afs/rotate.c", i32 183, i32 4}
!16 = !{ptr @afs_select_fileserver._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @afs_select_fileserver._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/afs/rotate.c", i32 230, i32 5}
!20 = !{ptr @afs_select_fileserver._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @afs_select_fileserver._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/afs/rotate.c", i32 291, i32 3}
!24 = !{ptr @afs_select_fileserver._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @afs_select_fileserver._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/afs/rotate.c", i32 296, i32 3}
!28 = !{ptr @afs_select_fileserver._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @afs_select_fileserver._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.22, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/afs/rotate.c", i32 302, i32 2}
!32 = !{ptr @afs_select_fileserver._entry.21, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @afs_select_fileserver._entry_ptr.23, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.25, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/afs/rotate.c", i32 308, i32 2}
!36 = !{ptr @afs_select_fileserver._entry.24, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @afs_select_fileserver._entry_ptr.26, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.28, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/afs/rotate.c", i32 319, i32 2}
!40 = !{ptr @afs_select_fileserver._entry.27, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @afs_select_fileserver._entry_ptr.29, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.31, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/afs/rotate.c", i32 322, i32 2}
!44 = !{ptr @afs_select_fileserver._entry.30, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @afs_select_fileserver._entry_ptr.32, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.34, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/afs/rotate.c", i32 332, i32 3}
!48 = !{ptr @afs_select_fileserver._entry.33, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @afs_select_fileserver._entry_ptr.35, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.37, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/afs/rotate.c", i32 336, i32 3}
!52 = !{ptr @afs_select_fileserver._entry.36, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @afs_select_fileserver._entry_ptr.38, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.40, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/afs/rotate.c", i32 357, i32 2}
!56 = !{ptr @afs_select_fileserver._entry.39, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @afs_select_fileserver._entry_ptr.41, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.43, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/afs/rotate.c", i32 364, i32 2}
!60 = !{ptr @afs_select_fileserver._entry.42, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @afs_select_fileserver._entry_ptr.44, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.46, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @afs_select_fileserver._entry.45, !59, !"_entry", i1 false, i1 false}
!64 = !{ptr @afs_select_fileserver._entry_ptr.47, !59, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.49, !59, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @afs_select_fileserver._entry.48, !59, !"_entry", i1 false, i1 false}
!67 = !{ptr @afs_select_fileserver._entry_ptr.50, !59, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.52, !59, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @afs_select_fileserver._entry.51, !59, !"_entry", i1 false, i1 false}
!70 = !{ptr @afs_select_fileserver._entry_ptr.53, !59, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.55, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/afs/rotate.c", i32 370, i32 2}
!73 = !{ptr @afs_select_fileserver._entry.54, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @afs_select_fileserver._entry_ptr.56, !72, !"_entry_ptr", i1 false, i1 false}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../fs/afs/rotate.c", i32 383, i32 10}
!77 = !{ptr @.str.57, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @afs_select_fileserver._entry.58, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../fs/afs/rotate.c", i32 399, i32 2}
!80 = !{ptr @afs_select_fileserver._entry_ptr.59, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @afs_select_fileserver._entry.60, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @afs_select_fileserver._entry_ptr.61, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.63, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/afs/rotate.c", i32 406, i32 2}
!85 = !{ptr @afs_select_fileserver._entry.62, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @afs_select_fileserver._entry_ptr.64, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.66, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/afs/rotate.c", i32 410, i32 2}
!89 = !{ptr @afs_select_fileserver._entry.65, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @afs_select_fileserver._entry_ptr.67, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.69, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/afs/rotate.c", i32 435, i32 2}
!93 = !{ptr @afs_select_fileserver._entry.68, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @afs_select_fileserver._entry_ptr.70, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.72, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/afs/rotate.c", i32 462, i32 2}
!97 = !{ptr @afs_select_fileserver._entry.71, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @afs_select_fileserver._entry_ptr.73, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @afs_dump_edestaddrreq.count, !100, !"count", i1 false, i1 false}
!100 = !{!"../fs/afs/rotate.c", i32 471, i32 13}
!101 = !{ptr @.str.74, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/afs/rotate.c", i32 480, i32 2}
!103 = !{ptr @.str.75, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @afs_dump_edestaddrreq._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @afs_dump_edestaddrreq._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.77, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/afs/rotate.c", i32 481, i32 2}
!108 = !{ptr @afs_dump_edestaddrreq._entry.76, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @afs_dump_edestaddrreq._entry_ptr.78, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.80, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/afs/rotate.c", i32 484, i32 2}
!112 = !{ptr @afs_dump_edestaddrreq._entry.79, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @afs_dump_edestaddrreq._entry_ptr.81, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.83, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/afs/rotate.c", i32 489, i32 3}
!116 = !{ptr @afs_dump_edestaddrreq._entry.82, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @afs_dump_edestaddrreq._entry_ptr.84, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.86, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/afs/rotate.c", i32 493, i32 4}
!120 = !{ptr @afs_dump_edestaddrreq._entry.85, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @afs_dump_edestaddrreq._entry_ptr.87, !119, !"_entry_ptr", i1 false, i1 false}
!122 = distinct !{null, !123, !"__warned", i1 false, i1 false}
!123 = !{!"../fs/afs/rotate.c", i32 497, i32 6}
!124 = !{ptr @.str.88, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.90, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/afs/rotate.c", i32 498, i32 5}
!127 = !{ptr @afs_dump_edestaddrreq._entry.89, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @afs_dump_edestaddrreq._entry_ptr.91, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.93, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/afs/rotate.c", i32 502, i32 5}
!131 = !{ptr @afs_dump_edestaddrreq._entry.92, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @afs_dump_edestaddrreq._entry_ptr.94, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.96, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/afs/rotate.c", i32 505, i32 6}
!135 = !{ptr @afs_dump_edestaddrreq._entry.95, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @afs_dump_edestaddrreq._entry_ptr.97, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.99, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/afs/rotate.c", i32 510, i32 2}
!139 = !{ptr @afs_dump_edestaddrreq._entry.98, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @afs_dump_edestaddrreq._entry_ptr.100, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.101, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/afs/rotate.c", i32 78, i32 22}
!143 = !{ptr @.str.102, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/afs/rotate.c", i32 79, i32 24}
!145 = !{ptr @.str.103, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/afs/rotate.c", i32 80, i32 23}
!147 = !{ptr @.str.104, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/afs/rotate.c", i32 81, i32 16}
!149 = !{ptr @.str.105, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/afs/rotate.c", i32 84, i32 2}
!151 = !{ptr @.str.106, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @afs_busy._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @afs_busy._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = distinct !{null, !155, !"__warned", i1 false, i1 false}
!155 = !{!"../fs/afs/rotate.c", i32 30, i32 3}
!156 = !{ptr @.str.107, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/afs/rotate.c", i32 59, i32 3}
!158 = !{ptr @afs_start_fs_iteration._entry, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @afs_start_fs_iteration._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @afs_start_fs_iteration._entry.108, !157, !"_entry", i1 false, i1 false}
!161 = !{ptr @afs_start_fs_iteration._entry_ptr.109, !157, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @afs_start_fs_iteration._entry.110, !157, !"_entry", i1 false, i1 false}
!163 = !{ptr @afs_start_fs_iteration._entry_ptr.111, !157, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @afs_start_fs_iteration._entry.112, !157, !"_entry", i1 false, i1 false}
!165 = !{ptr @afs_start_fs_iteration._entry_ptr.113, !157, !"_entry_ptr", i1 false, i1 false}
!166 = distinct !{null, !167, !"__warned", i1 false, i1 false}
!167 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!168 = !{ptr @.str.114, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.115, !167, !"<string literal>", i1 false, i1 false}
!170 = distinct !{null, !171, !"__warned", i1 false, i1 false}
!171 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!172 = !{ptr @.str.116, !171, !"<string literal>", i1 false, i1 false}
!173 = !{!"sp"}
!174 = !{i32 1, !"wchar_size", i32 2}
!175 = !{i32 1, !"min_enum_size", i32 4}
!176 = !{i32 8, !"branch-target-enforcement", i32 0}
!177 = !{i32 8, !"sign-return-address", i32 0}
!178 = !{i32 8, !"sign-return-address-all", i32 0}
!179 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!180 = !{i32 7, !"uwtable", i32 1}
!181 = !{i32 7, !"frame-pointer", i32 2}
!182 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!183 = !{!"auto-init"}
!184 = !{!"branch_weights", i32 2000, i32 1}
!185 = !{i64 2148222641, i64 2148222673, i64 2148222702, i64 2148222736, i64 2148222767, i64 2148222790}
!186 = !{!"branch_weights", i32 1, i32 2000}
!187 = !{i64 2149771627}
!188 = !{i64 2157793583, i64 2157794062, i64 2157793620, i64 2157793676, i64 2157793710, i64 2157793734, i64 2157793775, i64 2157793796, i64 2157793824, i64 2157793858}
!189 = !{i64 2149771952}
!190 = !{i64 2157837805, i64 2157838285, i64 2157837842, i64 2157837898, i64 2157837932, i64 2157837956, i64 2157837997, i64 2157838018, i64 2157838046, i64 2157838080}
!191 = !{i64 2157845065, i64 2157845545, i64 2157845102, i64 2157845158, i64 2157845192, i64 2157845216, i64 2157845257, i64 2157845278, i64 2157845306, i64 2157845340}
!192 = !{i64 2149928774}
!193 = !{i8 0, i8 2}
!194 = !{i64 2149929040}
