; ModuleID = '/llk/IR_all_yes/fs/afs/cell.c_pt.bc'
source_filename = "../fs/afs/cell.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.64 }
%union.anon.64 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.afs_net = type { ptr, %struct.afs_uuid, i8, ptr, ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.rb_root, ptr, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.rw_semaphore, %struct.mutex, %struct.mutex, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.seqlock_t, %struct.work_struct, %struct.timer_list, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, %struct.rwlock_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.afs_uuid = type { i32, i16, i16, i8, i8, [6 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.afs_cell = type { %union.anon, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.hlist_node, i64, i64, %struct.atomic_t, %struct.atomic_t, i32, i32, i16, i16, i32, i32, %struct.rb_root, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.seqlock_t, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.rwlock_t, ptr, i8, ptr }
%union.anon = type { %struct.rb_node }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.afs_vlserver_list = type <{ %struct.callback_head, %struct.atomic_t, i8, i8, i8, i16, [3 x i8], %struct.rwlock_t, [0 x %struct.afs_vlserver_entry] }>
%struct.afs_vlserver_entry = type { i16, i16, i16, ptr }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.5, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.6, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.7, %union.anon.11, ptr }
%union.anon.5 = type { %struct.rb_node }
%union.anon.6 = type { i64 }
%struct.kgid_t = type { i32 }
%union.anon.7 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.8, ptr, ptr, ptr }
%union.anon.8 = type { i32 }
%union.anon.11 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }

@afs_debug = external dso_local local_unnamed_addr global i32, align 4
@afs_lookup_cell._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] ==> %s(%s,%s)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"afs_lookup_cell\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/afs/cell.c\00", [18 x i8] zeroinitializer }, align 32
@afs_lookup_cell._entry_ptr = internal global ptr @afs_lookup_cell._entry, section ".printk_index", align 4
@afs_lookup_cell._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s] <== %s() = %ld\0A\00", [39 x i8] zeroinitializer }, align 32
@afs_lookup_cell._entry_ptr.5 = internal global ptr @afs_lookup_cell._entry.3, section ".printk_index", align 4
@afs_lookup_cell._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s]     wait_for_cell\0A\00", [36 x i8] zeroinitializer }, align 32
@afs_lookup_cell._entry_ptr.8 = internal global ptr @afs_lookup_cell._entry.6, section ".printk_index", align 4
@afs_lookup_cell._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s] <== %s() = %p [cell]\0A\00", [33 x i8] zeroinitializer }, align 32
@afs_lookup_cell._entry_ptr.11 = internal global ptr @afs_lookup_cell._entry.9, section ".printk_index", align 4
@afs_lookup_cell._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s]     cell exists\0A\00", [38 x i8] zeroinitializer }, align 32
@afs_lookup_cell._entry_ptr.14 = internal global ptr @afs_lookup_cell._entry.12, section ".printk_index", align 4
@afs_lookup_cell._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%-6.6s] <== %s() = %d [error]\0A\00", [32 x i8] zeroinitializer }, align 32
@afs_lookup_cell._entry_ptr.17 = internal global ptr @afs_lookup_cell._entry.15, section ".printk_index", align 4
@afs_cell_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"afs_cell_init\00", [18 x i8] zeroinitializer }, align 32
@afs_cell_init._entry_ptr = internal global ptr @afs_cell_init._entry, section ".printk_index", align 4
@afs_cell_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s] <== %s() = 0 [no root]\0A\00", [63 x i8] zeroinitializer }, align 32
@afs_cell_init._entry_ptr.22 = internal global ptr @afs_cell_init._entry.20, section ".printk_index", align 4
@afs_cell_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[%-6.6s]     kAFS: no VL server IP addresses specified\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_cell_init._entry_ptr.25 = internal global ptr @afs_cell_init._entry.23, section ".printk_index", align 4
@afs_cell_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.19, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_cell_init._entry_ptr.27 = internal global ptr @afs_cell_init._entry.26, section ".printk_index", align 4
@afs_cell_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.19, ptr @.str.2, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] <== %s() = 0\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_cell_init._entry_ptr.30 = internal global ptr @afs_cell_init._entry.28, section ".printk_index", align 4
@afs_cells_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.31, ptr @.str.2, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"afs_cells_timer\00", [16 x i8] zeroinitializer }, align 32
@afs_cells_timer._entry_ptr = internal global ptr @afs_cells_timer._entry, section ".printk_index", align 4
@afs_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cell active count %u > 0\0A\00", [38 x i8] zeroinitializer }, align 32
@afs_unuse_cell._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s] ==> %s(%s)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"afs_unuse_cell\00", [17 x i8] zeroinitializer }, align 32
@afs_unuse_cell._entry_ptr = internal global ptr @afs_unuse_cell._entry, section ".printk_index", align 4
@afs_manage_cells._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.35, ptr @.str.2, i32 854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"afs_manage_cells\00", [47 x i8] zeroinitializer }, align 32
@afs_manage_cells._entry_ptr = internal global ptr @afs_manage_cells._entry, section ".printk_index", align 4
@afs_manage_cells._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\013\0A\00", [28 x i8] zeroinitializer }, align 32
@afs_manage_cells._entry_ptr.38 = internal global ptr @afs_manage_cells._entry.36, section ".printk_index", align 4
@afs_manage_cells._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.2, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013AFS: Assertion failed\0A\00", [39 x i8] zeroinitializer }, align 32
@afs_manage_cells._entry_ptr.41 = internal global ptr @afs_manage_cells._entry.39, section ".printk_index", align 4
@afs_manage_cells._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.2, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%lu >= %lu is false\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_manage_cells._entry_ptr.44 = internal global ptr @afs_manage_cells._entry.42, section ".printk_index", align 4
@afs_manage_cells._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.35, ptr @.str.2, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0130x%lx >= 0x%lx is false\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_manage_cells._entry_ptr.47 = internal global ptr @afs_manage_cells._entry.45, section ".printk_index", align 4
@afs_manage_cells.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.48 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@afs_manage_cells._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.35, ptr @.str.2, i32 926, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() [%d]\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_manage_cells._entry_ptr.51 = internal global ptr @afs_manage_cells._entry.49, section ".printk_index", align 4
@afs_cell_purge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.52, ptr @.str.2, i32 936, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"afs_cell_purge\00", [17 x i8] zeroinitializer }, align 32
@afs_cell_purge._entry_ptr = internal global ptr @afs_cell_purge._entry, section ".printk_index", align 4
@afs_cell_purge._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 944, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s]     del timer\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_cell_purge._entry_ptr.55 = internal global ptr @afs_cell_purge._entry.53, section ".printk_index", align 4
@afs_cell_purge._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.2, i32 948, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s]     kick mgr\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_cell_purge._entry_ptr.58 = internal global ptr @afs_cell_purge._entry.56, section ".printk_index", align 4
@afs_cell_purge._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.52, ptr @.str.2, i32 951, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s]     wait\0A\00", [45 x i8] zeroinitializer }, align 32
@afs_cell_purge._entry_ptr.61 = internal global ptr @afs_cell_purge._entry.59, section ".printk_index", align 4
@afs_cell_purge._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.52, ptr @.str.2, i32 954, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] <== %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@afs_cell_purge._entry_ptr.64 = internal global ptr @afs_cell_purge._entry.62, section ".printk_index", align 4
@afs_find_cell_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] ==> %s(%*.*s)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"afs_find_cell_locked\00", [43 x i8] zeroinitializer }, align 32
@afs_find_cell_locked._entry_ptr = internal global ptr @afs_find_cell_locked._entry, section ".printk_index", align 4
@afs_alloc_cell._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.67, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"afs_alloc_cell\00", [17 x i8] zeroinitializer }, align 32
@afs_alloc_cell._entry_ptr = internal global ptr @afs_alloc_cell._entry, section ".printk_index", align 4
@afs_alloc_cell._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.67, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_alloc_cell._entry_ptr.69 = internal global ptr @afs_alloc_cell._entry.68, section ".printk_index", align 4
@afs_alloc_cell._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.67, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%-6.6s] <== %s() = -ENAMETOOLONG\0A\00", [61 x i8] zeroinitializer }, align 32
@afs_alloc_cell._entry_ptr.72 = internal global ptr @afs_alloc_cell._entry.70, section ".printk_index", align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@afs_alloc_cell._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.67, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s] ==> %s(%*.*s,%s)\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_alloc_cell._entry_ptr.75 = internal global ptr @afs_alloc_cell._entry.73, section ".printk_index", align 4
@afs_alloc_cell._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.67, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] <== %s() = -ENOMEM\0A\00", [35 x i8] zeroinitializer }, align 32
@afs_alloc_cell._entry_ptr.78 = internal global ptr @afs_alloc_cell._entry.76, section ".printk_index", align 4
@afs_alloc_cell.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.79 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&cell->manager)\00", [62 x i8] zeroinitializer }, align 32
@afs_alloc_cell.__key.80 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&cell->volume_lock)->lock\00", [36 x i8] zeroinitializer }, align 32
@afs_alloc_cell.__key.82 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&____s->seqcount\00", [47 x i8] zeroinitializer }, align 32
@afs_alloc_cell.__key.84 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&cell->fs_lock)->lock\00", [40 x i8] zeroinitializer }, align 32
@afs_alloc_cell.__key.86 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@afs_alloc_cell.__key.87 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.88 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&cell->fs_open_mmaps_lock\00", [38 x i8] zeroinitializer }, align 32
@afs_alloc_cell.__key.89 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&cell->vl_servers_lock\00", [41 x i8] zeroinitializer }, align 32
@cell_debug_id = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@afs_alloc_cell._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.67, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %p\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_alloc_cell._entry_ptr.93 = internal global ptr @afs_alloc_cell._entry.91, section ".printk_index", align 4
@afs_alloc_cell._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.67, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013kAFS: bad VL server IP address\0A\00", [62 x i8] zeroinitializer }, align 32
@afs_alloc_cell._entry_ptr.96 = internal global ptr @afs_alloc_cell._entry.94, section ".printk_index", align 4
@afs_alloc_cell._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.67, ptr @.str.2, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_alloc_cell._entry_ptr.99 = internal global ptr @afs_alloc_cell._entry.97, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@afs_manage_cell._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.100, ptr @.str.2, i32 731, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"afs_manage_cell\00", [16 x i8] zeroinitializer }, align 32
@afs_manage_cell._entry_ptr = internal global ptr @afs_manage_cell._entry, section ".printk_index", align 4
@afs_manage_cell._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.2, i32 734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s]     state %u\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_manage_cell._entry_ptr.103 = internal global ptr @afs_manage_cell._entry.101, section ".printk_index", align 4
@afs_manage_cell._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.100, ptr @.str.2, i32 798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s]     bad state %u\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_manage_cell._entry_ptr.106 = internal global ptr @afs_manage_cell._entry.104, section ".printk_index", align 4
@afs_manage_cell._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.100, ptr @.str.2, i32 812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%-6.6s] <== %s() [deact->act]\0A\00", [32 x i8] zeroinitializer }, align 32
@afs_manage_cell._entry_ptr.109 = internal global ptr @afs_manage_cell._entry.107, section ".printk_index", align 4
@afs_manage_cell._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.100, ptr @.str.2, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] <== %s() [done %u]\0A\00", [35 x i8] zeroinitializer }, align 32
@afs_manage_cell._entry_ptr.112 = internal global ptr @afs_manage_cell._entry.110, section ".printk_index", align 4
@afs_alloc_anon_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.2, i32 664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s]     anon key %p{%x}\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"afs_alloc_anon_key\00", [45 x i8] zeroinitializer }, align 32
@afs_alloc_anon_key._entry_ptr = internal global ptr @afs_alloc_anon_key._entry, section ".printk_index", align 4
@afs_cell_min_ttl = internal global i32 600, section ".data..read_mostly", align 4
@afs_cell_max_ttl = internal global i32 86400, section ".data..read_mostly", align 4
@afs_update_cell._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.116, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"afs_update_cell\00", [16 x i8] zeroinitializer }, align 32
@afs_update_cell._entry_ptr = internal global ptr @afs_update_cell._entry, section ".printk_index", align 4
@afs_update_cell._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s]     %s: fail %d\0A\00", [38 x i8] zeroinitializer }, align 32
@afs_update_cell._entry_ptr.119 = internal global ptr @afs_update_cell._entry.117, section ".printk_index", align 4
@afs_update_cell._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.116, ptr @.str.2, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s]     %s: got list %d %d\0A\00", [63 x i8] zeroinitializer }, align 32
@afs_update_cell._entry_ptr.122 = internal global ptr @afs_update_cell._entry.120, section ".printk_index", align 4
@afs_update_cell._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.116, ptr @.str.2, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s]     %s: status %d\0A\00", [36 x i8] zeroinitializer }, align 32
@afs_update_cell._entry_ptr.125 = internal global ptr @afs_update_cell._entry.123, section ".printk_index", align 4
@afs_update_cell._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.116, ptr @.str.2, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_update_cell._entry_ptr.127 = internal global ptr @afs_update_cell._entry.126, section ".printk_index", align 4
@afs_deactivate_cell._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.128, ptr @.str.2, i32 710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afs_deactivate_cell\00", [44 x i8] zeroinitializer }, align 32
@afs_deactivate_cell._entry_ptr = internal global ptr @afs_deactivate_cell._entry, section ".printk_index", align 4
@afs_deactivate_cell._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.128, ptr @.str.2, i32 719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_deactivate_cell._entry_ptr.130 = internal global ptr @afs_deactivate_cell._entry.129, section ".printk_index", align 4
@__tracepoint_afs_cell = external dso_local global %struct.tracepoint, align 4
@.str.131 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/afs.h\00", [37 x i8] zeroinitializer }, align 32
@trace_afs_cell.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.132 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.133 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@afs_cell_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.2, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s] ==> %s(%p{%s})\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"afs_cell_destroy\00", [47 x i8] zeroinitializer }, align 32
@afs_cell_destroy._entry_ptr = internal global ptr @afs_cell_destroy._entry, section ".printk_index", align 4
@afs_cell_destroy._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.135, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_cell_destroy._entry_ptr.137 = internal global ptr @afs_cell_destroy._entry.136, section ".printk_index", align 4
@afs_cell_destroy._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.135, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_cell_destroy._entry_ptr.139 = internal global ptr @afs_cell_destroy._entry.138, section ".printk_index", align 4
@afs_cell_destroy._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.135, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%lu == %lu is false\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_cell_destroy._entry_ptr.142 = internal global ptr @afs_cell_destroy._entry.140, section ".printk_index", align 4
@afs_cell_destroy._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.135, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0130x%lx == 0x%lx is false\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_cell_destroy._entry_ptr.145 = internal global ptr @afs_cell_destroy._entry.143, section ".printk_index", align 4
@afs_cell_destroy._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.135, ptr @.str.2, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s] <== %s() [destroyed]\0A\00", [33 x i8] zeroinitializer }, align 32
@afs_cell_destroy._entry_ptr.148 = internal global ptr @afs_cell_destroy._entry.146, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@afs_queue_cell_manager._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.2, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s] ==> %s(%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"afs_queue_cell_manager\00", [41 x i8] zeroinitializer }, align 32
@afs_queue_cell_manager._entry_ptr = internal global ptr @afs_queue_cell_manager._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.153 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 243, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 260, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 300, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 313, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 317, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 334, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 349, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 355, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 361, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 372, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 387, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 532, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 566, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 601, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 854, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 872, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 887, i32 13 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 926, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 936, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 944, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 948, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 951, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 954, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 59, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 122, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 126, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 141, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 145, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 163, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 166, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 168, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 170, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 171, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant [14 x i8] c"cell_debug_id\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 21, i32 17 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 208, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 213, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 217, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 731, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 734, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 798, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 812, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 816, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 663, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 402, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 408, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 432, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 443, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 482, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 710, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 719, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant [30 x i8] c"../include/trace/events/afs.h\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1485, i32 1 }
@___asan_gen_.492 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 108, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 495, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 498, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 508, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.533 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.534 = private constant [17 x i8] c"../fs/afs/cell.c\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 518, i32 2 }
@llvm.compiler.used = appending global [180 x ptr] [ptr @afs_alloc_anon_key._entry, ptr @afs_alloc_anon_key._entry_ptr, ptr @afs_alloc_cell._entry, ptr @afs_alloc_cell._entry.68, ptr @afs_alloc_cell._entry.70, ptr @afs_alloc_cell._entry.73, ptr @afs_alloc_cell._entry.76, ptr @afs_alloc_cell._entry.91, ptr @afs_alloc_cell._entry.94, ptr @afs_alloc_cell._entry.97, ptr @afs_alloc_cell._entry_ptr, ptr @afs_alloc_cell._entry_ptr.69, ptr @afs_alloc_cell._entry_ptr.72, ptr @afs_alloc_cell._entry_ptr.75, ptr @afs_alloc_cell._entry_ptr.78, ptr @afs_alloc_cell._entry_ptr.93, ptr @afs_alloc_cell._entry_ptr.96, ptr @afs_alloc_cell._entry_ptr.99, ptr @afs_cell_destroy._entry, ptr @afs_cell_destroy._entry.136, ptr @afs_cell_destroy._entry.138, ptr @afs_cell_destroy._entry.140, ptr @afs_cell_destroy._entry.143, ptr @afs_cell_destroy._entry.146, ptr @afs_cell_destroy._entry_ptr, ptr @afs_cell_destroy._entry_ptr.137, ptr @afs_cell_destroy._entry_ptr.139, ptr @afs_cell_destroy._entry_ptr.142, ptr @afs_cell_destroy._entry_ptr.145, ptr @afs_cell_destroy._entry_ptr.148, ptr @afs_cell_init._entry, ptr @afs_cell_init._entry.20, ptr @afs_cell_init._entry.23, ptr @afs_cell_init._entry.26, ptr @afs_cell_init._entry.28, ptr @afs_cell_init._entry_ptr, ptr @afs_cell_init._entry_ptr.22, ptr @afs_cell_init._entry_ptr.25, ptr @afs_cell_init._entry_ptr.27, ptr @afs_cell_init._entry_ptr.30, ptr @afs_cell_purge._entry, ptr @afs_cell_purge._entry.53, ptr @afs_cell_purge._entry.56, ptr @afs_cell_purge._entry.59, ptr @afs_cell_purge._entry.62, ptr @afs_cell_purge._entry_ptr, ptr @afs_cell_purge._entry_ptr.55, ptr @afs_cell_purge._entry_ptr.58, ptr @afs_cell_purge._entry_ptr.61, ptr @afs_cell_purge._entry_ptr.64, ptr @afs_cells_timer._entry, ptr @afs_cells_timer._entry_ptr, ptr @afs_deactivate_cell._entry, ptr @afs_deactivate_cell._entry.129, ptr @afs_deactivate_cell._entry_ptr, ptr @afs_deactivate_cell._entry_ptr.130, ptr @afs_find_cell_locked._entry, ptr @afs_find_cell_locked._entry_ptr, ptr @afs_lookup_cell._entry, ptr @afs_lookup_cell._entry.12, ptr @afs_lookup_cell._entry.15, ptr @afs_lookup_cell._entry.3, ptr @afs_lookup_cell._entry.6, ptr @afs_lookup_cell._entry.9, ptr @afs_lookup_cell._entry_ptr, ptr @afs_lookup_cell._entry_ptr.11, ptr @afs_lookup_cell._entry_ptr.14, ptr @afs_lookup_cell._entry_ptr.17, ptr @afs_lookup_cell._entry_ptr.5, ptr @afs_lookup_cell._entry_ptr.8, ptr @afs_manage_cell._entry, ptr @afs_manage_cell._entry.101, ptr @afs_manage_cell._entry.104, ptr @afs_manage_cell._entry.107, ptr @afs_manage_cell._entry.110, ptr @afs_manage_cell._entry_ptr, ptr @afs_manage_cell._entry_ptr.103, ptr @afs_manage_cell._entry_ptr.106, ptr @afs_manage_cell._entry_ptr.109, ptr @afs_manage_cell._entry_ptr.112, ptr @afs_manage_cells._entry, ptr @afs_manage_cells._entry.36, ptr @afs_manage_cells._entry.39, ptr @afs_manage_cells._entry.42, ptr @afs_manage_cells._entry.45, ptr @afs_manage_cells._entry.49, ptr @afs_manage_cells._entry_ptr, ptr @afs_manage_cells._entry_ptr.38, ptr @afs_manage_cells._entry_ptr.41, ptr @afs_manage_cells._entry_ptr.44, ptr @afs_manage_cells._entry_ptr.47, ptr @afs_manage_cells._entry_ptr.51, ptr @afs_queue_cell_manager._entry, ptr @afs_queue_cell_manager._entry_ptr, ptr @afs_unuse_cell._entry, ptr @afs_unuse_cell._entry_ptr, ptr @afs_update_cell._entry, ptr @afs_update_cell._entry.117, ptr @afs_update_cell._entry.120, ptr @afs_update_cell._entry.123, ptr @afs_update_cell._entry.126, ptr @afs_update_cell._entry_ptr, ptr @afs_update_cell._entry_ptr.119, ptr @afs_update_cell._entry_ptr.122, ptr @afs_update_cell._entry_ptr.125, ptr @afs_update_cell._entry_ptr.127, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @afs_alloc_cell.__key, ptr @.str.79, ptr @afs_alloc_cell.__key.80, ptr @.str.81, ptr @afs_alloc_cell.__key.82, ptr @.str.83, ptr @afs_alloc_cell.__key.84, ptr @.str.85, ptr @afs_alloc_cell.__key.86, ptr @afs_alloc_cell.__key.87, ptr @.str.88, ptr @afs_alloc_cell.__key.89, ptr @.str.90, ptr @cell_debug_id, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.128, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.141, ptr @.str.144, ptr @.str.147, ptr @.str.149, ptr @.str.150], section "llvm.metadata"
@0 = internal global [127 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lookup_cell._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lookup_cell._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lookup_cell._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lookup_cell._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lookup_cell._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lookup_cell._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_cell_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_cell_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_cell_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_cell_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_cell_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_cells_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_unuse_cell._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_manage_cells._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_manage_cells._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_manage_cells._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_manage_cells._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_manage_cells._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_manage_cells._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_cell_purge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_cell_purge._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_cell_purge._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_cell_purge._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_cell_purge._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_find_cell_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_cell._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_cell._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_cell._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_cell._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_cell._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_cell.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_cell.__key.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_cell.__key.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_cell.__key.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_cell.__key.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_cell.__key.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_cell.__key.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cell_debug_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_cell._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_cell._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_cell._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_manage_cell._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_manage_cell._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_manage_cell._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_manage_cell._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_manage_cell._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_anon_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_update_cell._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_update_cell._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_update_cell._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_update_cell._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_update_cell._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deactivate_cell._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deactivate_cell._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_cell_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_cell_destroy._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_cell_destroy._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_cell_destroy._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_cell_destroy._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_cell_destroy._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_queue_cell_manager._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_find_cell(ptr noundef %net, ptr noundef %name, i32 noundef %namesz, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cells_lock = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 14
  tail call void @down_read(ptr noundef %cells_lock) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end6.i_crit_edge, label %do.end.i, !prof !260

entry.do.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %comm.i, ptr noundef nonnull @.str.66, i32 noundef %namesz, i32 noundef %namesz, ptr noundef %name) #15
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %entry.do.end6.i_crit_edge
  %tobool7.not.i = icmp eq ptr %name, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %namesz)
  %cmp.i = icmp ne i32 %namesz, 0
  %5 = or i1 %tobool7.not.i, %cmp.i
  br i1 %5, label %if.end10.i, label %do.end6.i.afs_find_cell_locked.exit_crit_edge

do.end6.i.afs_find_cell_locked.exit_crit_edge:    ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_find_cell_locked.exit

if.end10.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %namesz)
  %cmp11.i = icmp ugt i32 %namesz, 256
  br i1 %cmp11.i, label %if.end10.i.afs_find_cell_locked.exit_crit_edge, label %if.end14.i

if.end10.i.afs_find_cell_locked.exit_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_find_cell_locked.exit

if.end14.i:                                       ; preds = %if.end10.i
  br i1 %tobool7.not.i, label %if.then16.i, label %if.end21.i

if.then16.i:                                      ; preds = %if.end14.i
  %ws_cell.i = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 10
  %6 = ptrtoint ptr %ws_cell.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ws_cell.i, align 4
  %tobool17.not.i = icmp eq ptr %7, null
  br i1 %tobool17.not.i, label %if.then16.i.afs_find_cell_locked.exit_crit_edge, label %if.then16.i.found.i_crit_edge

if.then16.i.found.i_crit_edge:                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %found.i

if.then16.i.afs_find_cell_locked.exit_crit_edge:  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_find_cell_locked.exit

if.end21.i:                                       ; preds = %if.end14.i
  %cells.i = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 9
  %8 = ptrtoint ptr %cells.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %p.069.i = load ptr, ptr %cells.i, align 4
  %tobool22.not70.i = icmp eq ptr %p.069.i, null
  br i1 %tobool22.not70.i, label %if.end21.i.afs_find_cell_locked.exit_crit_edge, label %if.end21.i.while.body.i_crit_edge

if.end21.i.while.body.i_crit_edge:                ; preds = %if.end21.i
  br label %while.body.i

if.end21.i.afs_find_cell_locked.exit_crit_edge:   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_find_cell_locked.exit

while.body.i:                                     ; preds = %if.end43.i.while.body.i_crit_edge, %if.end21.i.while.body.i_crit_edge
  %p.071.i = phi ptr [ %p.0.i, %if.end43.i.while.body.i_crit_edge ], [ %p.069.i, %if.end21.i.while.body.i_crit_edge ]
  %name24.i = getelementptr inbounds %struct.afs_cell, ptr %p.071.i, i32 0, i32 28
  %9 = ptrtoint ptr %name24.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name24.i, align 8
  %name_len.i = getelementptr inbounds %struct.afs_cell, ptr %p.071.i, i32 0, i32 27
  %11 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %name_len.i, align 4
  %conv.i = zext i8 %12 to i32
  %13 = tail call i32 @llvm.umin.i32(i32 %conv.i, i32 %namesz) #12
  %call28.i = tail call i32 @strncasecmp(ptr noundef %10, ptr noundef nonnull %name, i32 noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp eq i32 %call28.i, 0
  %sub.i = sub i32 %conv.i, %namesz
  %spec.select.i = select i1 %cmp29.i, i32 %sub.i, i32 %call28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp35.i = icmp slt i32 %spec.select.i, 0
  br i1 %cmp35.i, label %if.then37.i, label %if.else.i

if.then37.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %p.071.i, i32 0, i32 2
  br label %if.end43.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp38.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %cmp38.not.i, label %if.else.i.found.i_crit_edge, label %if.then40.i

if.else.i.found.i_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %found.i

if.then40.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %p.071.i, i32 0, i32 1
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then40.i, %if.then37.i
  %p.1.in.i = phi ptr [ %rb_left.i, %if.then37.i ], [ %rb_right.i, %if.then40.i ]
  %14 = ptrtoint ptr %p.1.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %p.0.i = load ptr, ptr %p.1.in.i, align 4
  %tobool22.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool22.not.i, label %if.end43.i.afs_find_cell_locked.exit_crit_edge, label %if.end43.i.while.body.i_crit_edge

if.end43.i.while.body.i_crit_edge:                ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end43.i.afs_find_cell_locked.exit_crit_edge:   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_find_cell_locked.exit

found.i:                                          ; preds = %if.else.i.found.i_crit_edge, %if.then16.i.found.i_crit_edge
  %cell.0.i = phi ptr [ %7, %if.then16.i.found.i_crit_edge ], [ %p.071.i, %if.else.i.found.i_crit_edge ]
  %ref.i.i = getelementptr inbounds %struct.afs_cell, ptr %cell.0.i, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i.i, i32 noundef 4) #12
  %15 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %ref.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i.i = icmp slt i32 %16, 1
  br i1 %cmp.i.i, label %do.body.i.i, label %afs_use_cell.exit.i

do.body.i.i:                                      ; preds = %found.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/cell.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 580, 0\0A.popsection", ""() #12, !srcloc !261
  unreachable

afs_use_cell.exit.i:                              ; preds = %found.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i11.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i.i, i32 noundef 4) #12
  %17 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %ref.i.i, align 4
  %active.i.i = getelementptr inbounds %struct.afs_cell, ptr %cell.0.i, i32 0, i32 10
  %call.i.i12.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !262
  tail call void @llvm.prefetch.p0(ptr %active.i.i, i32 1, i32 3, i32 1) #12
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active.i.i, ptr %active.i.i, i32 1, ptr elementtype(i32) %active.i.i) #12, !srcloc !263
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !264
  %debug_id.i.i = getelementptr inbounds %struct.afs_cell, ptr %cell.0.i, i32 0, i32 16
  %20 = ptrtoint ptr %debug_id.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %debug_id.i.i, align 8
  tail call fastcc void @trace_afs_cell(i32 noundef %21, i32 noundef %18, i32 noundef %asmresult.i.i.i.i.i.i, i32 noundef %reason) #12
  br label %afs_find_cell_locked.exit

afs_find_cell_locked.exit:                        ; preds = %afs_use_cell.exit.i, %if.end43.i.afs_find_cell_locked.exit_crit_edge, %if.end21.i.afs_find_cell_locked.exit_crit_edge, %if.then16.i.afs_find_cell_locked.exit_crit_edge, %if.end10.i.afs_find_cell_locked.exit_crit_edge, %do.end6.i.afs_find_cell_locked.exit_crit_edge
  %retval.0.i = phi ptr [ %cell.0.i, %afs_use_cell.exit.i ], [ inttoptr (i32 -22 to ptr), %do.end6.i.afs_find_cell_locked.exit_crit_edge ], [ inttoptr (i32 -36 to ptr), %if.end10.i.afs_find_cell_locked.exit_crit_edge ], [ inttoptr (i32 -89 to ptr), %if.then16.i.afs_find_cell_locked.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end21.i.afs_find_cell_locked.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end43.i.afs_find_cell_locked.exit_crit_edge ]
  tail call void @up_read(ptr noundef %cells_lock) #12
  ret ptr %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_lookup_cell(ptr noundef %net, ptr noundef %name, i32 noundef %namesz, ptr noundef %vllist, i1 noundef zeroext %excl) local_unnamed_addr #0 align 64 {
entry:
  %__wbq_entry = alloca %struct.wait_bit_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !260

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1, ptr noundef %name, ptr noundef %vllist) #15
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  br i1 %excl, label %do.end6.if.end13_crit_edge, label %if.then8

do.end6.if.end13_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then8:                                         ; preds = %do.end6
  %call9 = tail call ptr @afs_find_cell(ptr noundef %net, ptr noundef %name, i32 noundef %namesz, i32 noundef 31)
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8.if.end13_crit_edge, label %if.then8.wait_for_cell_crit_edge

if.then8.wait_for_cell_crit_edge:                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %wait_for_cell

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end13:                                         ; preds = %if.then8.if.end13_crit_edge, %do.end6.if.end13_crit_edge
  %tobool.not.i = icmp eq ptr %name, null
  br i1 %tobool.not.i, label %do.end.i, label %do.end17.i, !prof !265

do.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #15
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/cell.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 122, 0\0A.popsection", ""() #12, !srcloc !266
  unreachable

do.end17.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %namesz)
  %cmp.i302 = icmp eq i32 %namesz, 0
  br i1 %cmp.i302, label %do.end17.i.do.body17_crit_edge, label %if.end20.i

do.end17.i.do.body17_crit_edge:                   ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body17

if.end20.i:                                       ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %namesz)
  %cmp21.i = icmp ugt i32 %namesz, 256
  br i1 %cmp21.i, label %do.body23.i, label %if.end42.i

do.body23.i:                                      ; preds = %if.end20.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %5 = load i32, ptr @afs_debug, align 4
  %and.i303 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i303)
  %tobool24.not.i = icmp eq i32 %and.i303, 0
  br i1 %tobool24.not.i, label %do.body23.i.do.body17_crit_edge, label %do.end34.i, !prof !260

do.body23.i.do.body17_crit_edge:                  ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body17

do.end34.i:                                       ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #14
  %6 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 101
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %comm.i, ptr noundef nonnull @.str.67) #15
  br label %do.body17

if.end42.i:                                       ; preds = %if.end20.i
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %11)
  %cmp43.i = icmp eq i8 %11, 46
  br i1 %cmp43.i, label %if.end42.i.do.body17_crit_edge, label %if.end42.i.for.body.i_crit_edge

if.end42.i.for.body.i_crit_edge:                  ; preds = %if.end42.i
  br label %for.body.i

if.end42.i.do.body17_crit_edge:                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body17

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.0446.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %namesz
  br i1 %exitcond.not.i, label %do.body67.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end42.i.for.body.i_crit_edge
  %i.0446.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end42.i.for.body.i_crit_edge ]
  %arrayidx50.i = getelementptr i8, ptr %name, i32 %i.0446.i
  %12 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx50.i, align 1
  %conv51.i = zext i8 %13 to i32
  %arrayidx52.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv51.i
  %14 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx52.i, align 1
  %16 = and i8 %15, -105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp55.not.i = icmp eq i8 %16, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %13)
  %cmp58.i = icmp eq i8 %13, 47
  %or.cond.i = select i1 %cmp55.not.i, i1 true, i1 %cmp58.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %13)
  %cmp62.i = icmp eq i8 %13, 64
  %or.cond432.i = select i1 %or.cond.i, i1 true, i1 %cmp62.i
  br i1 %or.cond432.i, label %for.body.i.do.body17_crit_edge, label %for.cond.i

for.body.i.do.body17_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body17

do.body67.i:                                      ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %17 = load i32, ptr @afs_debug, align 4
  %and68.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i)
  %tobool69.not.i = icmp eq i32 %and68.i, 0
  br i1 %tobool69.not.i, label %do.body67.i.do.end88.i_crit_edge, label %do.end79.i, !prof !260

do.body67.i.do.end88.i_crit_edge:                 ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end88.i

do.end79.i:                                       ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i436.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i436.i to ptr
  %task82.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task82.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task82.i, align 8
  %comm83.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 101
  %call85.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %comm83.i, ptr noundef nonnull @.str.67, i32 noundef %namesz, i32 noundef %namesz, ptr noundef nonnull %name, ptr noundef %vllist) #15
  br label %do.end88.i

do.end88.i:                                       ; preds = %do.end79.i, %do.body67.i.do.end88.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 464) #16
  %tobool90.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool90.not.i, label %do.body92.i, label %if.end8.i.i

do.body92.i:                                      ; preds = %do.end88.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %23 = load i32, ptr @afs_debug, align 4
  %and93.i = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93.i)
  %tobool94.not.i = icmp eq i32 %and93.i, 0
  br i1 %tobool94.not.i, label %do.body92.i.do.body17_crit_edge, label %do.end104.i, !prof !260

do.body92.i.do.body17_crit_edge:                  ; preds = %do.body92.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body17

do.end104.i:                                      ; preds = %do.body92.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i437.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i437.i to ptr
  %task107.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task107.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task107.i, align 8
  %comm108.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 101
  %call110.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %comm108.i, ptr noundef nonnull @.str.67) #15
  br label %do.body17

if.end8.i.i:                                      ; preds = %do.end88.i
  %add.i = add i32 %namesz, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #17
  %name117.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 28
  %28 = ptrtoint ptr %name117.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call9.i.i, ptr %name117.i, align 8
  %tobool119.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool119.not.i, label %if.then120.i, label %for.body128.preheader.i

if.then120.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %do.body17

for.body128.preheader.i:                          ; preds = %if.end8.i.i
  %net123.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %net123.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %net, ptr %net123.i, align 4
  %conv124.i = trunc i32 %namesz to i8
  %name_len.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 27
  %30 = ptrtoint ptr %name_len.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv124.i, ptr %name_len.i, align 4
  %umax.i = tail call i32 @llvm.umax.i32(i32 %namesz, i32 1) #12
  br label %for.body128.i

for.body128.i:                                    ; preds = %for.body128.i.for.body128.i_crit_edge, %for.body128.preheader.i
  %i.1448.i = phi i32 [ %inc134.i, %for.body128.i.for.body128.i_crit_edge ], [ 0, %for.body128.preheader.i ]
  %arrayidx129.i = getelementptr i8, ptr %name, i32 %i.1448.i
  %31 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx129.i, align 1
  %conv.i.i = zext i8 %32 to i32
  %arrayidx.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.i, align 1
  %35 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp.not.i.i = icmp eq i8 %35, 0
  %sub.i.i = add i8 %32, 32
  %spec.select.i.i = select i1 %cmp.not.i.i, i8 %32, i8 %sub.i.i
  %36 = ptrtoint ptr %name117.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name117.i, align 8
  %arrayidx132.i = getelementptr i8, ptr %37, i32 %i.1448.i
  %38 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %spec.select.i.i, ptr %arrayidx132.i, align 1
  %inc134.i = add nuw i32 %i.1448.i, 1
  %exitcond449.not.i = icmp eq i32 %inc134.i, %umax.i
  br i1 %exitcond449.not.i, label %for.end135.i, label %for.body128.i.for.body128.i_crit_edge

for.body128.i.for.body128.i_crit_edge:            ; preds = %for.body128.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body128.i

for.end135.i:                                     ; preds = %for.body128.i
  %39 = ptrtoint ptr %name117.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name117.i, align 8
  %arrayidx137.i = getelementptr i8, ptr %40, i32 %umax.i
  %41 = ptrtoint ptr %arrayidx137.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx137.i, align 1
  %ref.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #12
  %42 = ptrtoint ptr %ref.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 1, ptr %ref.i, align 8
  %active.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 10
  %call.i.i433.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i, i32 noundef 4) #12
  %43 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 0, ptr %active.i, align 4
  %manager.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %manager.i, i32 noundef 0) #12
  %44 = ptrtoint ptr %manager.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -64, ptr %manager.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.79, ptr noundef nonnull @afs_alloc_cell.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry142.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %45 = ptrtoint ptr %entry142.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %entry142.i, ptr %entry142.i, align 8
  %prev.i.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 5, i32 1, i32 1
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %entry142.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 5, i32 2
  %47 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @afs_manage_cell_work, ptr %func.i, align 8
  %volumes.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 17
  %48 = ptrtoint ptr %volumes.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %volumes.i, align 4
  %proc_volumes.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 18
  %49 = ptrtoint ptr %proc_volumes.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %proc_volumes.i, align 8
  %volume_lock.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 19
  %lock.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 19, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @afs_alloc_cell.__key.80, i16 noundef signext 3) #12
  %dep_map.i.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 19, i32 0, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i.i, ptr noundef nonnull @.str.83, ptr noundef nonnull @afs_alloc_cell.__key.82, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %50 = ptrtoint ptr %volume_lock.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %volume_lock.i, align 4
  %lock160.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 19, i32 0, i32 1
  %51 = ptrtoint ptr %lock160.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %lock.i, ptr %lock160.i, align 4
  %fs_servers.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 20
  %52 = ptrtoint ptr %fs_servers.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %fs_servers.i, align 4
  %fs_lock.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 21
  %lock169.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 21, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock169.i, ptr noundef nonnull @.str.85, ptr noundef nonnull @afs_alloc_cell.__key.84, i16 noundef signext 3) #12
  %dep_map.i438.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 21, i32 0, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i438.i, ptr noundef nonnull @.str.83, ptr noundef nonnull @afs_alloc_cell.__key.86, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %53 = ptrtoint ptr %fs_lock.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %fs_lock.i, align 8
  %lock183.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 21, i32 0, i32 1
  %54 = ptrtoint ptr %lock183.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %lock169.i, ptr %lock183.i, align 8
  %fs_open_mmaps.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 23
  %55 = ptrtoint ptr %fs_open_mmaps.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %fs_open_mmaps.i, ptr %fs_open_mmaps.i, align 8
  %prev.i439.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 23, i32 1
  %56 = ptrtoint ptr %prev.i439.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %fs_open_mmaps.i, ptr %prev.i439.i, align 4
  %fs_open_mmaps_lock.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 22
  tail call void @__init_rwsem(ptr noundef %fs_open_mmaps_lock.i, ptr noundef nonnull @.str.88, ptr noundef nonnull @afs_alloc_cell.__key.87) #12
  %vl_servers_lock.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 25
  tail call void @__rwlock_init(ptr noundef %vl_servers_lock.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @afs_alloc_cell.__key.89) #12
  %flags.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 11
  %57 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 4, ptr %flags.i, align 8
  %tobool194.not.i = icmp eq ptr %vllist, null
  br i1 %tobool194.not.i, label %if.else.i, label %if.then195.i

if.then195.i:                                     ; preds = %for.end135.i
  %call196.i = tail call i32 @strlen(ptr noundef nonnull %vllist) #18
  %call197.i = tail call ptr @afs_parse_text_addrs(ptr noundef %net, ptr noundef nonnull %vllist, i32 noundef %call196.i, i8 noundef zeroext 58, i16 noundef zeroext 52, i16 noundef zeroext 7003) #12
  %cmp.i.i = icmp ugt ptr %call197.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then199.i, label %if.end201.i

if.then199.i:                                     ; preds = %if.then195.i
  %58 = ptrtoint ptr %call197.i to i32
  %cmp318.i = icmp eq ptr %call197.i, inttoptr (i32 -22 to ptr)
  br i1 %cmp318.i, label %do.end323.i, label %if.then199.i.error.i_crit_edge

if.then199.i.error.i_crit_edge:                   ; preds = %if.then199.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error.i

if.end201.i:                                      ; preds = %if.then195.i
  call void @__sanitizer_cov_trace_pc() #14
  %source.i = getelementptr inbounds %struct.afs_vlserver_list, ptr %call197.i, i32 0, i32 5
  %59 = ptrtoint ptr %source.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 256, ptr %source.i, align 1
  br label %do.body220.i

if.else.i:                                        ; preds = %for.end135.i
  %call205.i = tail call ptr @afs_alloc_vlserver_list(i32 noundef 0) #12
  %tobool206.not.i = icmp eq ptr %call205.i, null
  br i1 %tobool206.not.i, label %if.else.i.error.i_crit_edge, label %if.end208.i

if.else.i.error.i_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error.i

if.end208.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %source209.i = getelementptr inbounds %struct.afs_vlserver_list, ptr %call205.i, i32 0, i32 5
  %60 = ptrtoint ptr %source209.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 0, ptr %source209.i, align 1
  %call217.i = tail call i64 @ktime_get_real_seconds() #12
  br label %do.body220.i

do.body220.i:                                     ; preds = %if.end208.i, %if.end201.i
  %.sink.i = phi i64 [ 9223372036854775807, %if.end201.i ], [ %call217.i, %if.end208.i ]
  %vllist.0.i = phi ptr [ %call197.i, %if.end201.i ], [ %call205.i, %if.end208.i ]
  %dns_expiry.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 7
  %61 = ptrtoint ptr %dns_expiry.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %.sink.i, ptr %dns_expiry.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !267
  %vl_servers247.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 26
  %62 = ptrtoint ptr %vl_servers247.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %vllist.0.i, ptr %vl_servers247.i, align 8
  %source259.i = getelementptr inbounds %struct.afs_vlserver_list, ptr %vllist.0.i, i32 0, i32 5
  %63 = ptrtoint ptr %source259.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %bf.load260.i = load i16, ptr %source259.i, align 1
  %bf.lshr.i = and i16 %bf.load260.i, -256
  %dns_source.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 14
  %64 = ptrtoint ptr %dns_source.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %bf.load261.i = load i16, ptr %dns_source.i, align 2
  %bf.clear262.i = and i16 %bf.load261.i, 255
  %bf.set263.i = or i16 %bf.clear262.i, %bf.lshr.i
  store i16 %bf.set263.i, ptr %dns_source.i, align 2
  %bf.load265.i = load i16, ptr %source259.i, align 1
  %bf.clear266.i = and i16 %bf.load265.i, 255
  %bf.set271.i = or i16 %bf.clear266.i, %bf.lshr.i
  store i16 %bf.set271.i, ptr %dns_source.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !268
  %dns_lookup_count.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 15
  %65 = ptrtoint ptr %dns_lookup_count.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 1, ptr %dns_lookup_count.i, align 4
  %cells_outstanding.i = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 13
  %call.i.i434.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cells_outstanding.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %cells_outstanding.i, i32 1, i32 3, i32 1) #12
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cells_outstanding.i, ptr %cells_outstanding.i, i32 1, ptr elementtype(i32) %cells_outstanding.i) #12, !srcloc !269
  %call.i.i435.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @cell_debug_id, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !262
  tail call void @llvm.prefetch.p0(ptr nonnull @cell_debug_id, i32 1, i32 3, i32 1) #12
  %67 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @cell_debug_id, ptr nonnull @cell_debug_id, i32 1, ptr nonnull elementtype(i32) @cell_debug_id) #12, !srcloc !263
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %67, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !264
  %debug_id.i = getelementptr inbounds %struct.afs_cell, ptr %call7.i.i.i, i32 0, i32 16
  %68 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %asmresult.i.i.i.i.i, ptr %debug_id.i, align 8
  tail call fastcc void @trace_afs_cell(i32 noundef %asmresult.i.i.i.i.i, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %69 = load i32, ptr @afs_debug, align 4
  %and297.i = and i32 %69, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and297.i)
  %tobool298.not.i = icmp eq i32 %and297.i, 0
  br i1 %tobool298.not.i, label %do.body220.i.afs_alloc_cell.exit_crit_edge, label %do.end308.i, !prof !260

do.body220.i.afs_alloc_cell.exit_crit_edge:       ; preds = %do.body220.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_alloc_cell.exit

do.end308.i:                                      ; preds = %do.body220.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i440.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i440.i to ptr
  %task311.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %task311.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task311.i, align 8
  %comm312.i = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 101
  %call314.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %comm312.i, ptr noundef nonnull @.str.67, ptr noundef nonnull %call7.i.i.i) #15
  br label %afs_alloc_cell.exit

do.end323.i:                                      ; preds = %if.then199.i
  call void @__sanitizer_cov_trace_pc() #14
  %call325.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #15
  br label %error.i

error.i:                                          ; preds = %do.end323.i, %if.else.i.error.i_crit_edge, %if.then199.i.error.i_crit_edge
  %ret.0.i = phi i32 [ -22, %do.end323.i ], [ %58, %if.then199.i.error.i_crit_edge ], [ -12, %if.else.i.error.i_crit_edge ]
  %74 = ptrtoint ptr %name117.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %name117.i, align 8
  tail call void @kfree(ptr noundef %75) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %76 = load i32, ptr @afs_debug, align 4
  %and329.i = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and329.i)
  %tobool330.not.i = icmp eq i32 %and329.i, 0
  br i1 %tobool330.not.i, label %error.i.do.end349.i_crit_edge, label %do.end340.i, !prof !260

error.i.do.end349.i_crit_edge:                    ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end349.i

do.end340.i:                                      ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #14
  %77 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i441.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i441.i to ptr
  %task343.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task343.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task343.i, align 8
  %comm344.i = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 101
  %call346.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %comm344.i, ptr noundef nonnull @.str.67, i32 noundef %ret.0.i) #15
  br label %do.end349.i

do.end349.i:                                      ; preds = %do.end340.i, %error.i.do.end349.i_crit_edge
  %81 = inttoptr i32 %ret.0.i to ptr
  br label %afs_alloc_cell.exit

afs_alloc_cell.exit:                              ; preds = %do.end349.i, %do.end308.i, %do.body220.i.afs_alloc_cell.exit_crit_edge
  %retval.2.i = phi ptr [ %81, %do.end349.i ], [ %call7.i.i.i, %do.end308.i ], [ %call7.i.i.i, %do.body220.i.afs_alloc_cell.exit_crit_edge ]
  %cmp.i304 = icmp ugt ptr %retval.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i304, label %afs_alloc_cell.exit.do.body17_crit_edge, label %if.end40

afs_alloc_cell.exit.do.body17_crit_edge:          ; preds = %afs_alloc_cell.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body17

do.body17:                                        ; preds = %afs_alloc_cell.exit.do.body17_crit_edge, %if.then120.i, %do.end104.i, %do.body92.i.do.body17_crit_edge, %for.body.i.do.body17_crit_edge, %if.end42.i.do.body17_crit_edge, %do.end34.i, %do.body23.i.do.body17_crit_edge, %do.end17.i.do.body17_crit_edge
  %retval.2.i318 = phi ptr [ %retval.2.i, %afs_alloc_cell.exit.do.body17_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.body92.i.do.body17_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.end104.i ], [ inttoptr (i32 -22 to ptr), %if.end42.i.do.body17_crit_edge ], [ inttoptr (i32 -36 to ptr), %do.body23.i.do.body17_crit_edge ], [ inttoptr (i32 -36 to ptr), %do.end34.i ], [ inttoptr (i32 -22 to ptr), %do.end17.i.do.body17_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then120.i ], [ inttoptr (i32 -22 to ptr), %for.body.i.do.body17_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %82 = load i32, ptr @afs_debug, align 4
  %and18 = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body17.cleanup231_crit_edge, label %do.end29, !prof !260

do.body17.cleanup231_crit_edge:                   ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup231

do.end29:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  %83 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i305 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i305 to ptr
  %task32 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %task32 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task32, align 8
  %comm33 = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 101
  %87 = ptrtoint ptr %retval.2.i318 to i32
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm33, ptr noundef nonnull @.str.1, i32 noundef %87) #15
  br label %cleanup231

if.end40:                                         ; preds = %afs_alloc_cell.exit
  %cells_lock = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 14
  tail call void @down_write(ptr noundef %cells_lock) #12
  %cells = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 9
  %88 = ptrtoint ptr %cells to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cells, align 4
  %tobool41.not325 = icmp eq ptr %89, null
  br i1 %tobool41.not325, label %if.end40.while.end_crit_edge, label %if.end40.while.body_crit_edge

if.end40.while.body_crit_edge:                    ; preds = %if.end40
  br label %while.body

if.end40.while.end_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %if.end61.while.body_crit_edge, %if.end40.while.body_crit_edge
  %90 = phi ptr [ %97, %if.end61.while.body_crit_edge ], [ %89, %if.end40.while.body_crit_edge ]
  %name43 = getelementptr inbounds %struct.afs_cell, ptr %90, i32 0, i32 28
  %91 = ptrtoint ptr %name43 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %name43, align 8
  %name_len = getelementptr inbounds %struct.afs_cell, ptr %90, i32 0, i32 27
  %93 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %name_len, align 4
  %conv = zext i8 %94 to i32
  %95 = tail call i32 @llvm.umin.i32(i32 %conv, i32 %namesz)
  %call46 = tail call i32 @strncasecmp(ptr noundef %92, ptr noundef nonnull %name, i32 noundef %95)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp eq i32 %call46, 0
  %sub = sub i32 %conv, %namesz
  %spec.select = select i1 %cmp47, i32 %sub, i32 %call46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp53 = icmp slt i32 %spec.select, 0
  br i1 %cmp53, label %if.then55, label %if.else

if.then55:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %90, i32 0, i32 2
  br label %if.end61

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp56.not = icmp eq i32 %spec.select, 0
  br i1 %cmp56.not, label %do.body172, label %if.then58

if.then58:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %90, i32 0, i32 1
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.then55
  %pp.1 = phi ptr [ %rb_left, %if.then55 ], [ %rb_right, %if.then58 ]
  %96 = ptrtoint ptr %pp.1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pp.1, align 4
  %tobool41.not = icmp eq ptr %97, null
  br i1 %tobool41.not, label %while.cond.while.end_crit_edge, label %if.end61.while.body_crit_edge

if.end61.while.body_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast.le = ptrtoint ptr %90 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end40.while.end_crit_edge
  %pp.0.lcssa = phi ptr [ %pp.1, %while.cond.while.end_crit_edge ], [ %cells, %if.end40.while.end_crit_edge ]
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %if.end40.while.end_crit_edge ]
  %active = getelementptr inbounds %struct.afs_cell, ptr %retval.2.i, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active, i32 noundef 4) #12
  %98 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile i32 2, ptr %active, align 4
  %debug_id = getelementptr inbounds %struct.afs_cell, ptr %retval.2.i, i32 0, i32 16
  %99 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %debug_id, align 8
  %ref = getelementptr inbounds %struct.afs_cell, ptr %retval.2.i, i32 0, i32 9
  %call.i.i299 = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #12
  %101 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %ref, align 4
  tail call fastcc void @trace_afs_cell(i32 noundef %100, i32 noundef %102, i32 noundef 2, i32 noundef 6)
  %103 = ptrtoint ptr %retval.2.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %parent.0.lcssa, ptr %retval.2.i, align 4
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %retval.2.i, i32 0, i32 1
  %104 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %retval.2.i, i32 0, i32 2
  %105 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %rb_left.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !270
  %106 = ptrtoint ptr %pp.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %retval.2.i, ptr %pp.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %retval.2.i, ptr noundef %cells) #12
  tail call void @up_write(ptr noundef %cells_lock) #12
  tail call void @afs_queue_cell(ptr noundef %retval.2.i, i32 noundef 4)
  br label %wait_for_cell

wait_for_cell:                                    ; preds = %if.end202.wait_for_cell_crit_edge, %while.end, %if.then8.wait_for_cell_crit_edge
  %cell.0 = phi ptr [ %90, %if.end202.wait_for_cell_crit_edge ], [ %retval.2.i, %while.end ], [ %call9, %if.then8.wait_for_cell_crit_edge ]
  %debug_id65 = getelementptr inbounds %struct.afs_cell, ptr %cell.0, i32 0, i32 16
  %107 = ptrtoint ptr %debug_id65 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %debug_id65, align 8
  %ref66 = getelementptr inbounds %struct.afs_cell, ptr %cell.0, i32 0, i32 9
  %call.i.i300 = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref66, i32 noundef 4) #12
  %109 = ptrtoint ptr %ref66 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %ref66, align 4
  %active68 = getelementptr inbounds %struct.afs_cell, ptr %cell.0, i32 0, i32 10
  %call.i.i301 = tail call zeroext i1 @__kasan_check_read(ptr noundef %active68, i32 noundef 4) #12
  %111 = ptrtoint ptr %active68 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %active68, align 4
  tail call fastcc void @trace_afs_cell(i32 noundef %108, i32 noundef %110, i32 noundef %112, i32 noundef 36)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %113 = load i32, ptr @afs_debug, align 4
  %and71 = and i32 %113, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %wait_for_cell.do.body93_crit_edge, label %do.end82, !prof !260

wait_for_cell.do.body93_crit_edge:                ; preds = %wait_for_cell
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body93

do.end82:                                         ; preds = %wait_for_cell
  call void @__sanitizer_cov_trace_pc() #14
  %114 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i306 = and i32 %114, -16384
  %115 = inttoptr i32 %and.i306 to ptr
  %task85 = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %task85 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %task85, align 8
  %comm86 = getelementptr inbounds %struct.task_struct, ptr %117, i32 0, i32 101
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm86) #15
  br label %do.body93

do.body93:                                        ; preds = %do.end82, %wait_for_cell.do.body93_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 305) #12
  %state103 = getelementptr inbounds %struct.afs_cell, ptr %cell.0, i32 0, i32 12
  %118 = ptrtoint ptr %state103 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %state103, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !271
  %120 = zext i32 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values)
  switch i32 %119, label %if.end115 [
    i32 6, label %do.body93.do.end144_crit_edge
    i32 2, label %do.body93.do.end144_crit_edge338
  ]

do.body93.do.end144_crit_edge338:                 ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end144

do.body93.do.end144_crit_edge:                    ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end144

if.end115:                                        ; preds = %do.body93
  %call117 = tail call ptr @__var_waitqueue(ptr noundef %state103) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__wbq_entry) #12
  %121 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry, i32 0, i32 1
  %122 = call ptr @memset(ptr %__wbq_entry, i32 255, i32 32)
  call void @init_wait_var_entry(ptr noundef nonnull %__wbq_entry, ptr noundef %state103, i32 noundef 0) #12
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.end115
  %call119 = call i32 @prepare_to_wait_event(ptr noundef %call117, ptr noundef %121, i32 noundef 2) #12
  %123 = ptrtoint ptr %state103 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %state103, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !272
  %125 = zext i32 %124 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %124, label %cleanup [
    i32 6, label %for.cond.for.end_crit_edge
    i32 2, label %for.cond.for.end_crit_edge339
  ]

for.cond.for.end_crit_edge339:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  call void @schedule() #12
  br label %for.cond

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.for.end_crit_edge339
  call void @finish_wait(ptr noundef %call117, ptr noundef %121) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__wbq_entry) #12
  br label %do.end144

do.end144:                                        ; preds = %for.end, %do.body93.do.end144_crit_edge, %do.body93.do.end144_crit_edge338
  %state.0 = phi i32 [ %119, %do.body93.do.end144_crit_edge ], [ %124, %for.end ], [ %119, %do.body93.do.end144_crit_edge338 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %state.0)
  %cmp145 = icmp eq i32 %state.0, 6
  br i1 %cmp145, label %if.then147, label %do.body150

if.then147:                                       ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #14
  %error = getelementptr inbounds %struct.afs_cell, ptr %cell.0, i32 0, i32 13
  %126 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %error, align 8
  %conv148 = sext i16 %127 to i32
  call void @afs_unuse_cell(ptr noundef %net, ptr noundef %cell.0, i32 noundef 19)
  br label %do.body208

do.body150:                                       ; preds = %do.end144
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %128 = load i32, ptr @afs_debug, align 4
  %and151 = and i32 %128, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %do.body150.cleanup231_crit_edge, label %do.end162, !prof !260

do.body150.cleanup231_crit_edge:                  ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup231

do.end162:                                        ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #14
  %129 = call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i307 = and i32 %129, -16384
  %130 = inttoptr i32 %and.i307 to ptr
  %task165 = getelementptr inbounds %struct.thread_info, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %task165 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %task165, align 8
  %comm166 = getelementptr inbounds %struct.task_struct, ptr %132, i32 0, i32 101
  %call168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %comm166, ptr noundef nonnull @.str.1, ptr noundef %cell.0) #15
  br label %cleanup231

do.body172:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %133 = load i32, ptr @afs_debug, align 4
  %and173 = and i32 %133, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %do.body172.do.end193_crit_edge, label %do.end184, !prof !260

do.body172.do.end193_crit_edge:                   ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end193

do.end184:                                        ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #14
  %134 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i308 = and i32 %134, -16384
  %135 = inttoptr i32 %and.i308 to ptr
  %task187 = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %task187 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %task187, align 8
  %comm188 = getelementptr inbounds %struct.task_struct, ptr %137, i32 0, i32 101
  %call190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %comm188) #15
  br label %do.end193

do.end193:                                        ; preds = %do.end184, %do.body172.do.end193_crit_edge
  br i1 %excl, label %do.end193.if.end198_crit_edge, label %if.else196

do.end193.if.end198_crit_edge:                    ; preds = %do.end193
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end198

if.else196:                                       ; preds = %do.end193
  %ref.i309 = getelementptr inbounds %struct.afs_cell, ptr %90, i32 0, i32 9
  %call.i.i.i310 = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i309, i32 noundef 4) #12
  %138 = ptrtoint ptr %ref.i309 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %ref.i309, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %139)
  %cmp.i311 = icmp slt i32 %139, 1
  br i1 %cmp.i311, label %do.body.i, label %afs_use_cell.exit

do.body.i:                                        ; preds = %if.else196
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/cell.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 580, 0\0A.popsection", ""() #12, !srcloc !261
  unreachable

afs_use_cell.exit:                                ; preds = %if.else196
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i11.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i309, i32 noundef 4) #12
  %140 = ptrtoint ptr %ref.i309 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile i32, ptr %ref.i309, align 4
  %active.i312 = getelementptr inbounds %struct.afs_cell, ptr %90, i32 0, i32 10
  %call.i.i12.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i312, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !262
  tail call void @llvm.prefetch.p0(ptr %active.i312, i32 1, i32 3, i32 1) #12
  %142 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active.i312, ptr %active.i312, i32 1, ptr elementtype(i32) %active.i312) #12, !srcloc !263
  %asmresult.i.i.i.i.i313 = extractvalue { i32, i32 } %142, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !264
  %debug_id.i314 = getelementptr inbounds %struct.afs_cell, ptr %90, i32 0, i32 16
  %143 = ptrtoint ptr %debug_id.i314 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %debug_id.i314, align 8
  tail call fastcc void @trace_afs_cell(i32 noundef %144, i32 noundef %141, i32 noundef %asmresult.i.i.i.i.i313, i32 noundef 31) #12
  br label %if.end198

if.end198:                                        ; preds = %afs_use_cell.exit, %do.end193.if.end198_crit_edge
  %ret.0 = phi i32 [ 0, %afs_use_cell.exit ], [ -17, %do.end193.if.end198_crit_edge ]
  tail call void @up_write(ptr noundef %cells_lock) #12
  %tobool200.not = icmp eq ptr %retval.2.i, null
  br i1 %tobool200.not, label %if.end198.if.end202_crit_edge, label %if.then201

if.end198.if.end202_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end202

if.then201:                                       ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @afs_put_cell(ptr noundef nonnull %retval.2.i, i32 noundef 8)
  br label %if.end202

if.end202:                                        ; preds = %if.then201, %if.end198.if.end202_crit_edge
  br i1 %excl, label %if.end202.do.body208_crit_edge, label %if.end202.wait_for_cell_crit_edge

if.end202.wait_for_cell_crit_edge:                ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #14
  br label %wait_for_cell

if.end202.do.body208_crit_edge:                   ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body208

do.body208:                                       ; preds = %if.end202.do.body208_crit_edge, %if.then147
  %ret.1 = phi i32 [ %conv148, %if.then147 ], [ %ret.0, %if.end202.do.body208_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %145 = load i32, ptr @afs_debug, align 4
  %and209 = and i32 %145, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209)
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %do.body208.do.end229_crit_edge, label %do.end220, !prof !260

do.body208.do.end229_crit_edge:                   ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end229

do.end220:                                        ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #14
  %146 = call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i315 = and i32 %146, -16384
  %147 = inttoptr i32 %and.i315 to ptr
  %task223 = getelementptr inbounds %struct.thread_info, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %task223 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %task223, align 8
  %comm224 = getelementptr inbounds %struct.task_struct, ptr %149, i32 0, i32 101
  %call226 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %comm224, ptr noundef nonnull @.str.1, i32 noundef %ret.1) #15
  br label %do.end229

do.end229:                                        ; preds = %do.end220, %do.body208.do.end229_crit_edge
  %150 = inttoptr i32 %ret.1 to ptr
  br label %cleanup231

cleanup231:                                       ; preds = %do.end229, %do.end162, %do.body150.cleanup231_crit_edge, %do.end29, %do.body17.cleanup231_crit_edge
  %retval.0 = phi ptr [ %150, %do.end229 ], [ %retval.2.i318, %do.end29 ], [ %retval.2.i318, %do.body17.cleanup231_crit_edge ], [ %cell.0, %do.end162 ], [ %cell.0, %do.body150.cleanup231_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_cell(i32 noundef %cell_debug_id, i32 noundef %usage, i32 noundef %active, i32 noundef %reason) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_cell, i32 0, i32 1), ptr blockaddress(@trace_afs_cell, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !273

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !250) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !260

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.133, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !274
  %call42 = tail call i32 @__traceiter_afs_cell(ptr noundef null, i32 noundef %cell_debug_id, i32 noundef %usage, i32 noundef %active, i32 noundef %reason) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !275
  %13 = tail call i32 @llvm.read_register.i32(metadata !250) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !250) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !260

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.133, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !276
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_cell, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_cell, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_afs_cell.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_afs_cell.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.131, i32 noundef 1510, ptr noundef nonnull @.str.132) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !277
  %31 = tail call i32 @llvm.read_register.i32(metadata !250) #12
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
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_queue_cell(ptr noundef %cell, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ref.i = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #12
  %0 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %do.body.i, label %afs_get_cell.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/cell.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 545, 0\0A.popsection", ""() #12, !srcloc !278
  unreachable

afs_get_cell.exit:                                ; preds = %entry
  %call.i.i11.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !262
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #12, !srcloc !263
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !264
  %debug_id.i = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 16
  %3 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_id.i, align 8
  %active.i = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 10
  %call.i.i12.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active.i, i32 noundef 4) #12
  %5 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %active.i, align 4
  tail call fastcc void @trace_afs_cell(i32 noundef %4, i32 noundef %asmresult.i.i.i.i.i, i32 noundef %6, i32 noundef %reason) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_wq to i32))
  %7 = load ptr, ptr @afs_wq, align 4
  %manager = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 5
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %manager) #12
  br i1 %call.i, label %afs_get_cell.exit.if.end_crit_edge, label %if.then

afs_get_cell.exit.if.end_crit_edge:               ; preds = %afs_get_cell.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %afs_get_cell.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @afs_put_cell(ptr noundef %cell, i32 noundef 10)
  br label %if.end

if.end:                                           ; preds = %if.then, %afs_get_cell.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__var_waitqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_use_cell(ptr noundef returned %cell, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #12
  %0 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/cell.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 580, 0\0A.popsection", ""() #12, !srcloc !261
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i11 = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #12
  %2 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %ref, align 4
  %active = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 10
  %call.i.i12 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !262
  tail call void @llvm.prefetch.p0(ptr %active, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active, ptr %active, i32 1, ptr elementtype(i32) %active) #12, !srcloc !263
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !264
  %debug_id = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 16
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 8
  tail call fastcc void @trace_afs_cell(i32 noundef %6, i32 noundef %3, i32 noundef %asmresult.i.i.i.i, i32 noundef %reason)
  ret ptr %cell
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_put_cell(ptr noundef %cell, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cell, null
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %if.then

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then:                                          ; preds = %entry
  %debug_id1 = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 16
  %0 = ptrtoint ptr %debug_id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug_id1, align 8
  %active = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active, i32 noundef 4) #12
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %active, align 4
  %ref = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 9
  %call.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !279
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #12, !srcloc !280
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !281
  tail call fastcc void @trace_afs_cell(i32 noundef %1, i32 noundef %asmresult.i.i.i.i, i32 noundef %3, i32 noundef %reason)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %if.then3, label %if.then.if.end28_crit_edge

if.then.if.end28_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then3:                                         ; preds = %if.then
  %call.i.i39 = tail call zeroext i1 @__kasan_check_read(ptr noundef %active, i32 noundef 4) #12
  %5 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6.not = icmp eq i32 %6, 0
  br i1 %cmp6.not, label %if.then3.if.end_crit_edge, label %do.end, !prof !260

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 566, i32 noundef 9, ptr noundef nonnull @.str.32, i32 noundef %6) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then3.if.end_crit_edge
  tail call void @call_rcu(ptr noundef nonnull %cell, ptr noundef nonnull @afs_cell_destroy) #12
  br label %if.end28

if.end28:                                         ; preds = %if.end, %if.then.if.end28_crit_edge, %entry.if.end28_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_unuse_cell(ptr noundef %net, ptr noundef %cell, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cell, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end9_crit_edge, label %do.end, !prof !260

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %1 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %name = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 28
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %comm, ptr noundef nonnull @.str.34, ptr noundef %6) #15
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %call10 = tail call i64 @ktime_get_real_seconds() #12
  %last_inactive = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 8
  %7 = ptrtoint ptr %last_inactive to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %call10, ptr %last_inactive, align 8
  %vl_servers = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 26
  %8 = ptrtoint ptr %vl_servers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vl_servers, align 8
  %nr_servers = getelementptr inbounds %struct.afs_vlserver_list, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %nr_servers to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nr_servers, align 4
  %debug_id14 = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 16
  %12 = ptrtoint ptr %debug_id14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug_id14, align 8
  %ref = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #12
  %14 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %ref, align 4
  %active = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 10
  %call.i.i64 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !279
  tail call void @llvm.prefetch.p0(ptr %active, i32 1, i32 3, i32 1) #12
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active, ptr %active, i32 1, ptr elementtype(i32) %active) #12, !srcloc !280
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !281
  tail call fastcc void @trace_afs_cell(i32 noundef %13, i32 noundef %15, i32 noundef %asmresult.i.i.i.i, i32 noundef %reason)
  %17 = zext i32 %asmresult.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %asmresult.i.i.i.i, label %do.end9.cleanup_crit_edge [
    i32 0, label %do.end33
    i32 1, label %if.then49
  ], !prof !282

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end33:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 613, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.then49:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool11.not = icmp eq i8 %11, 0
  %spec.select = select i1 %tobool11.not, i64 0, i64 10
  tail call fastcc void @afs_set_cell_timer(ptr noundef %net, i64 noundef %spec.select)
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %do.end33, %do.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_cell_init(ptr noundef %net, ptr noundef %rootcell) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !260

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %comm, ptr noundef nonnull @.str.19) #15
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %tobool7.not = icmp eq ptr %rootcell, null
  br i1 %tobool7.not, label %do.body9, label %if.end31

do.body9:                                         ; preds = %do.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %5 = load i32, ptr @afs_debug, align 4
  %and10 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body9.cleanup_crit_edge, label %do.end21, !prof !260

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end21:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  %6 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i137 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i137 to ptr
  %task24 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task24, align 8
  %comm25 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 101
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %comm25, ptr noundef nonnull @.str.19) #15
  br label %cleanup

if.end31:                                         ; preds = %do.end6
  %call32 = tail call ptr @strchr(ptr noundef nonnull %rootcell, i32 noundef 58)
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %do.body35, label %if.else

do.body35:                                        ; preds = %if.end31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %10 = load i32, ptr @afs_debug, align 4
  %and36 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.body35.do.end56_crit_edge, label %do.end47, !prof !260

do.body35.do.end56_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end56

do.end47:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  %11 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i138 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i138 to ptr
  %task50 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task50 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task50, align 8
  %comm51 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 101
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %comm51) #15
  br label %do.end56

do.end56:                                         ; preds = %do.end47, %do.body35.do.end56_crit_edge
  %call57 = tail call i32 @strlen(ptr noundef nonnull %rootcell) #19
  br label %if.end58

if.else:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %call32, i32 1
  %sub.ptr.lhs.cast = ptrtoint ptr %call32 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %rootcell to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %if.end58

if.end58:                                         ; preds = %if.else, %do.end56
  %len.0 = phi i32 [ %sub.ptr.sub, %if.else ], [ %call57, %do.end56 ]
  %vllist.0 = phi ptr [ %add.ptr, %if.else ], [ null, %do.end56 ]
  %call59 = tail call ptr @afs_lookup_cell(ptr noundef %net, ptr noundef nonnull %rootcell, i32 noundef %len.0, ptr noundef %vllist.0, i1 noundef zeroext false)
  %cmp.i = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body62, label %if.end86

do.body62:                                        ; preds = %if.end58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %15 = load i32, ptr @afs_debug, align 4
  %and63 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %do.body62.do.end84_crit_edge, label %do.end74, !prof !260

do.body62.do.end84_crit_edge:                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #14
  %.pre = ptrtoint ptr %call59 to i32
  br label %cleanup

do.end74:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #14
  %16 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i139 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i139 to ptr
  %task77 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task77 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task77, align 8
  %comm78 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 101
  %20 = ptrtoint ptr %call59 to i32
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm78, ptr noundef nonnull @.str.19, i32 noundef %20) #15
  br label %cleanup

if.end86:                                         ; preds = %if.end58
  %flags = getelementptr inbounds %struct.afs_cell, ptr %call59, i32 0, i32 11
  %call87 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then89, label %if.end86.if.end91_crit_edge

if.end86.if.end91_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.then89:                                        ; preds = %if.end86
  %ref.i = getelementptr inbounds %struct.afs_cell, ptr %call59, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #12
  %21 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i140 = icmp slt i32 %22, 1
  br i1 %cmp.i140, label %do.body.i, label %afs_use_cell.exit

do.body.i:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/cell.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 580, 0\0A.popsection", ""() #12, !srcloc !261
  unreachable

afs_use_cell.exit:                                ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i11.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #12
  %23 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %ref.i, align 4
  %active.i = getelementptr inbounds %struct.afs_cell, ptr %call59, i32 0, i32 10
  %call.i.i12.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !262
  tail call void @llvm.prefetch.p0(ptr %active.i, i32 1, i32 3, i32 1) #12
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active.i, ptr %active.i, i32 1, ptr elementtype(i32) %active.i) #12, !srcloc !263
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !264
  %debug_id.i = getelementptr inbounds %struct.afs_cell, ptr %call59, i32 0, i32 16
  %26 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %debug_id.i, align 8
  tail call fastcc void @trace_afs_cell(i32 noundef %27, i32 noundef %24, i32 noundef %asmresult.i.i.i.i.i, i32 noundef 33) #12
  br label %if.end91

if.end91:                                         ; preds = %afs_use_cell.exit, %if.end86.if.end91_crit_edge
  %cells_lock = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 14
  tail call void @down_write(ptr noundef %cells_lock) #12
  %ref.i141 = getelementptr inbounds %struct.afs_cell, ptr %call59, i32 0, i32 9
  %call.i.i.i142 = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i141, i32 noundef 4) #12
  %28 = ptrtoint ptr %ref.i141 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %ref.i141, align 4
  %active.i143 = getelementptr inbounds %struct.afs_cell, ptr %call59, i32 0, i32 10
  %call.i.i4.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active.i143, i32 noundef 4) #12
  %30 = ptrtoint ptr %active.i143 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %active.i143, align 4
  %debug_id.i144 = getelementptr inbounds %struct.afs_cell, ptr %call59, i32 0, i32 16
  %32 = ptrtoint ptr %debug_id.i144 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %debug_id.i144, align 8
  tail call fastcc void @trace_afs_cell(i32 noundef %33, i32 noundef %29, i32 noundef %31, i32 noundef 14) #12
  %ws_cell = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 10
  %34 = ptrtoint ptr %ws_cell to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ws_cell, align 4
  store ptr %call59, ptr %ws_cell, align 4
  tail call void @up_write(ptr noundef %cells_lock) #12
  tail call void @afs_unuse_cell(ptr noundef %net, ptr noundef %35, i32 noundef 26)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %36 = load i32, ptr @afs_debug, align 4
  %and95 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end91.cleanup_crit_edge, label %do.end106, !prof !260

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end106:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  %37 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i145 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i145 to ptr
  %task109 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task109 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task109, align 8
  %comm110 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 101
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %comm110, ptr noundef nonnull @.str.19) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end106, %if.end91.cleanup_crit_edge, %do.end74, %do.body62.do.end84_crit_edge, %do.end21, %do.body9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end21 ], [ 0, %do.body9.cleanup_crit_edge ], [ 0, %do.end106 ], [ 0, %if.end91.cleanup_crit_edge ], [ %.pre, %do.body62.do.end84_crit_edge ], [ %20, %do.end74 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_see_cell(ptr noundef %cell, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #12
  %0 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ref, align 4
  %active = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 10
  %call.i.i4 = tail call zeroext i1 @__kasan_check_read(ptr noundef %active, i32 noundef 4) #12
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %active, align 4
  %debug_id = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 16
  %4 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug_id, align 8
  tail call fastcc void @trace_afs_cell(i32 noundef %5, i32 noundef %1, i32 noundef %3, i32 noundef %reason)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_cells_timer(ptr noundef %timer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !260

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %comm, ptr noundef nonnull @.str.31) #15
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_wq to i32))
  %5 = load ptr, ptr @afs_wq, align 4
  %cells_manager = getelementptr i8, ptr %timer, i32 -44
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %cells_manager) #12
  br i1 %call.i, label %do.end7.if.end10_crit_edge, label %if.then9

do.end7.if.end10_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then9:                                         ; preds = %do.end7
  %cells_outstanding.i = getelementptr i8, ptr %timer, i32 48
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cells_outstanding.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !279
  tail call void @llvm.prefetch.p0(ptr %cells_outstanding.i, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cells_outstanding.i, ptr %cells_outstanding.i, i32 1, ptr elementtype(i32) %cells_outstanding.i) #12, !srcloc !280
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !281
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.then9.if.end10_crit_edge

if.then9.if.end10_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wake_up_var(ptr noundef %cells_outstanding.i) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then.i, %if.then9.if.end10_crit_edge, %do.end7.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_get_cell(ptr noundef returned %cell, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #12
  %0 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/cell.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 545, 0\0A.popsection", ""() #12, !srcloc !278
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !262
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #12, !srcloc !263
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !264
  %debug_id = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 16
  %3 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_id, align 8
  %active = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 10
  %call.i.i12 = tail call zeroext i1 @__kasan_check_read(ptr noundef %active, i32 noundef 4) #12
  %5 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %active, align 4
  tail call fastcc void @trace_afs_cell(i32 noundef %4, i32 noundef %asmresult.i.i.i.i, i32 noundef %6, i32 noundef %reason)
  ret ptr %cell
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_cell_destroy(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %net1 = getelementptr inbounds %struct.afs_cell, ptr %rcu, i32 0, i32 1
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !260

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %name = getelementptr inbounds %struct.afs_cell, ptr %rcu, i32 0, i32 28
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %comm, ptr noundef nonnull @.str.135, ptr noundef %rcu, ptr noundef %8) #15
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %ref = getelementptr inbounds %struct.afs_cell, ptr %rcu, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #12
  %9 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %do.end48, label %do.end22, !prof !260

do.end22:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #15
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #15
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef %10, i32 noundef 0) #15
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i32 noundef %10, i32 noundef 0) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/cell.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 498, 0\0A.popsection", ""() #12, !srcloc !283
  unreachable

do.end48:                                         ; preds = %do.end8
  %debug_id = getelementptr inbounds %struct.afs_cell, ptr %rcu, i32 0, i32 16
  %11 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug_id, align 8
  %active = getelementptr inbounds %struct.afs_cell, ptr %rcu, i32 0, i32 10
  %call.i.i93 = tail call zeroext i1 @__kasan_check_read(ptr noundef %active, i32 noundef 4) #12
  %13 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %active, align 4
  tail call fastcc void @trace_afs_cell(i32 noundef %12, i32 noundef 0, i32 noundef %14, i32 noundef 1)
  %vl_servers = getelementptr inbounds %struct.afs_cell, ptr %rcu, i32 0, i32 26
  %15 = ptrtoint ptr %vl_servers to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %vl_servers, align 8
  tail call void @afs_put_vlserverlist(ptr noundef %1, ptr noundef %16) #12
  %alias_of = getelementptr inbounds %struct.afs_cell, ptr %rcu, i32 0, i32 2
  %17 = ptrtoint ptr %alias_of to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %alias_of, align 8
  tail call void @afs_unuse_cell(ptr noundef %1, ptr noundef %18, i32 noundef 15)
  %anonymous_key = getelementptr inbounds %struct.afs_cell, ptr %rcu, i32 0, i32 4
  %19 = ptrtoint ptr %anonymous_key to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %anonymous_key, align 8
  tail call void @key_put(ptr noundef %20) #12
  %name55 = getelementptr inbounds %struct.afs_cell, ptr %rcu, i32 0, i32 28
  %21 = ptrtoint ptr %name55 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name55, align 8
  tail call void @kfree(ptr noundef %22) #12
  tail call void @kfree(ptr noundef %rcu) #12
  %cells_outstanding.i = getelementptr inbounds %struct.afs_net, ptr %1, i32 0, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cells_outstanding.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !279
  tail call void @llvm.prefetch.p0(ptr %cells_outstanding.i, i32 1, i32 3, i32 1) #12
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cells_outstanding.i, ptr %cells_outstanding.i, i32 1, ptr elementtype(i32) %cells_outstanding.i) #12, !srcloc !280
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !281
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %do.end48.afs_dec_cells_outstanding.exit_crit_edge

do.end48.afs_dec_cells_outstanding.exit_crit_edge: ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_dec_cells_outstanding.exit

if.then.i:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wake_up_var(ptr noundef %cells_outstanding.i) #12
  br label %afs_dec_cells_outstanding.exit

afs_dec_cells_outstanding.exit:                   ; preds = %if.then.i, %do.end48.afs_dec_cells_outstanding.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %24 = load i32, ptr @afs_debug, align 4
  %and57 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %afs_dec_cells_outstanding.exit.do.end77_crit_edge, label %do.end68, !prof !260

afs_dec_cells_outstanding.exit.do.end77_crit_edge: ; preds = %afs_dec_cells_outstanding.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end77

do.end68:                                         ; preds = %afs_dec_cells_outstanding.exit
  call void @__sanitizer_cov_trace_pc() #14
  %25 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i94 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i94 to ptr
  %task71 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task71 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task71, align 8
  %comm72 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 101
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef %comm72, ptr noundef nonnull @.str.135) #15
  br label %do.end77

do.end77:                                         ; preds = %do.end68, %afs_dec_cells_outstanding.exit.do.end77_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @afs_set_cell_timer(ptr noundef %net, i64 noundef %delay) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %live = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 2
  %0 = ptrtoint ptr %live to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %live, align 4, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %cells_outstanding = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cells_outstanding, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %cells_outstanding, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cells_outstanding, ptr %cells_outstanding, i32 1, ptr elementtype(i32) %cells_outstanding) #12, !srcloc !269
  %cells_timer = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %4 = trunc i64 %delay to i32
  %5 = mul i32 %4, 100
  %conv1 = add i32 %3, %5
  %call = tail call i32 @timer_reduce(ptr noundef %cells_timer, i32 noundef %conv1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then3

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %if.then
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cells_outstanding, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !279
  tail call void @llvm.prefetch.p0(ptr %cells_outstanding, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cells_outstanding, ptr %cells_outstanding, i32 1, ptr elementtype(i32) %cells_outstanding) #12, !srcloc !280
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !281
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.then3.if.end4_crit_edge

if.then3.if.end4_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wake_up_var(ptr noundef %cells_outstanding) #12
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @afs_queue_cell_manager(ptr noundef %net)
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then.i, %if.then3.if.end4_crit_edge, %if.then.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_manage_cells(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -184
  %call = tail call i64 @ktime_get_real_seconds() #12
  %live = getelementptr i8, ptr %work, i32 -164
  %0 = ptrtoint ptr %live to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %live, align 4, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %entry.do.end10_crit_edge, label %do.end, !prof !260

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %comm, ptr noundef nonnull @.str.35) #15
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %cells_lock = getelementptr i8, ptr %work, i32 96
  tail call void @down_read(ptr noundef %cells_lock) #12
  %cells = getelementptr i8, ptr %work, i32 -8
  %call11 = tail call ptr @rb_first(ptr noundef %cells) #12
  %tobool12.not210 = icmp eq ptr %call11, null
  br i1 %tobool12.not210, label %for.end.thread, label %for.body.lr.ph

for.end.thread:                                   ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @up_read(ptr noundef %cells_lock) #12
  br label %if.end130

for.body.lr.ph:                                   ; preds = %do.end10
  %tobool.not.not = xor i1 %tobool.not, true
  br label %for.body

for.body:                                         ; preds = %if.end112.for.body_crit_edge, %for.body.lr.ph
  %cursor.0212 = phi ptr [ %call11, %for.body.lr.ph ], [ %call113, %if.end112.for.body_crit_edge ]
  %next_manage.0211 = phi i64 [ 9223372036854775807, %for.body.lr.ph ], [ %next_manage.2220, %if.end112.for.body_crit_edge ]
  %active16 = getelementptr inbounds %struct.afs_cell, ptr %cursor.0212, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active16, i32 noundef 4) #12
  %7 = ptrtoint ptr %active16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %active16, align 4
  %debug_id = getelementptr inbounds %struct.afs_cell, ptr %cursor.0212, i32 0, i32 16
  %9 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_id, align 8
  %ref = getelementptr inbounds %struct.afs_cell, ptr %cursor.0212, i32 0, i32 9
  %call.i.i200 = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #12
  %11 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %ref, align 4
  tail call fastcc void @trace_afs_cell(i32 noundef %10, i32 noundef %12, i32 noundef %8, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %do.end31, label %do.end57, !prof !265

do.end31:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #15
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #15
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef 0, i32 noundef 1) #15
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef 1) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/cell.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 872, 0\0A.popsection", ""() #12, !srcloc !285
  unreachable

do.end57:                                         ; preds = %for.body
  br i1 %tobool.not, label %if.then59, label %if.end69.thread

if.then59:                                        ; preds = %do.end57
  %flags = getelementptr inbounds %struct.afs_cell, ptr %cursor.0212, i32 0, i32 11
  %call60 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then59.if.end69_crit_edge, label %if.then62

if.then59.if.end69_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then62:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i201 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active16, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !279
  tail call void @llvm.prefetch.p0(ptr %active16, i32 1, i32 3, i32 1) #12
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active16, ptr %active16, i32 1, ptr elementtype(i32) %active16) #12, !srcloc !280
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !281
  %14 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug_id, align 8
  %call.i.i202 = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #12
  %16 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %ref, align 4
  tail call fastcc void @trace_afs_cell(i32 noundef %15, i32 noundef %17, i32 noundef %asmresult.i.i.i.i, i32 noundef 23)
  br label %if.end69

if.end69:                                         ; preds = %if.then62, %if.then59.if.end69_crit_edge
  %active.0 = phi i32 [ %asmresult.i.i.i.i, %if.then62 ], [ %8, %if.then59.if.end69_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %active.0)
  %cmp70 = icmp eq i32 %active.0, 1
  br i1 %cmp70, label %if.end69.if.then71_crit_edge, label %if.end69.if.end112_crit_edge

if.end69.if.end112_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112

if.end69.if.then71_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then71

if.end69.thread:                                  ; preds = %do.end57
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp70230 = icmp eq i32 %8, 1
  br i1 %cmp70230, label %if.end69.thread.if.then71_crit_edge, label %if.end69.thread.if.then103_crit_edge

if.end69.thread.if.then103_crit_edge:             ; preds = %if.end69.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then103

if.end69.thread.if.then71_crit_edge:              ; preds = %if.end69.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then71

if.then71:                                        ; preds = %if.end69.thread.if.then71_crit_edge, %if.end69.if.then71_crit_edge
  %last_inactive = getelementptr inbounds %struct.afs_cell, ptr %cursor.0212, i32 0, i32 8
  %18 = ptrtoint ptr %last_inactive to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %last_inactive, align 8
  %vl_servers_lock = getelementptr inbounds %struct.afs_cell, ptr %cursor.0212, i32 0, i32 25
  tail call void @_raw_read_lock(ptr noundef %vl_servers_lock) #12
  %dep_map = getelementptr inbounds %struct.afs_cell, ptr %cursor.0212, i32 0, i32 25, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool75.not = icmp eq i32 %call.i, 0
  br i1 %tobool75.not, label %land.lhs.true, label %if.then71.if.end101_crit_edge

if.then71.if.end101_crit_edge:                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

land.lhs.true:                                    ; preds = %if.then71
  %call76 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %land.lhs.true.if.end101_crit_edge, label %land.lhs.true78

land.lhs.true.if.end101_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

land.lhs.true78:                                  ; preds = %land.lhs.true
  %.b196 = load i1, ptr @afs_manage_cells.__warned, align 1
  br i1 %.b196, label %land.lhs.true78.if.end101_crit_edge, label %if.then80

land.lhs.true78.if.end101_crit_edge:              ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.then80:                                        ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @afs_manage_cells.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 889, ptr noundef nonnull @.str.48) #12
  br label %if.end101

if.end101:                                        ; preds = %if.then80, %land.lhs.true78.if.end101_crit_edge, %land.lhs.true.if.end101_crit_edge, %if.then71.if.end101_crit_edge
  %vl_servers = getelementptr inbounds %struct.afs_cell, ptr %cursor.0212, i32 0, i32 26
  %20 = ptrtoint ptr %vl_servers to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vl_servers, align 8
  %nr_servers = getelementptr inbounds %struct.afs_vlserver_list, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %nr_servers to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %nr_servers, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp85.not = icmp eq i8 %23, 0
  %add = add i64 %19, 10
  %spec.select = select i1 %cmp85.not, i64 %19, i64 %add
  tail call void @_raw_read_unlock(ptr noundef %vl_servers_lock) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %spec.select, i64 %call)
  %cmp93.not = icmp sgt i64 %spec.select, %call
  %or.cond = select i1 %tobool.not.not, i1 %cmp93.not, i1 false
  %24 = tail call i64 @llvm.smin.i64(i64 %spec.select, i64 %next_manage.0211)
  %not.or.cond = xor i1 %or.cond, true
  %spec.select208 = select i1 %or.cond, i64 %24, i64 %next_manage.0211
  br i1 %tobool.not, label %if.end109, label %if.end101.if.then103_crit_edge

if.end101.if.then103_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then103

if.then103:                                       ; preds = %if.end101.if.then103_crit_edge, %if.end69.thread.if.then103_crit_edge
  %next_manage.2222 = phi i64 [ %spec.select208, %if.end101.if.then103_crit_edge ], [ %next_manage.0211, %if.end69.thread.if.then103_crit_edge ]
  %sched_cell.1.off0219 = phi i1 [ %not.or.cond, %if.end101.if.then103_crit_edge ], [ false, %if.end69.thread.if.then103_crit_edge ]
  %flags104 = getelementptr inbounds %struct.afs_cell, ptr %cursor.0212, i32 0, i32 11
  %25 = ptrtoint ptr %flags104 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags104, align 4
  %27 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool106.not = icmp ne i32 %27, 0
  %spec.select198 = or i1 %sched_cell.1.off0219, %tobool106.not
  br i1 %spec.select198, label %if.then103.if.then111_crit_edge, label %if.then103.if.end112_crit_edge

if.then103.if.end112_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112

if.then103.if.then111_crit_edge:                  ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then111

if.end109:                                        ; preds = %if.end101
  br i1 %or.cond, label %if.end109.if.end112_crit_edge, label %if.end109.if.then111_crit_edge

if.end109.if.then111_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then111

if.end109.if.end112_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112

if.then111:                                       ; preds = %if.end109.if.then111_crit_edge, %if.then103.if.then111_crit_edge
  %next_manage.2221 = phi i64 [ %next_manage.2222, %if.then103.if.then111_crit_edge ], [ %spec.select208, %if.end109.if.then111_crit_edge ]
  tail call void @afs_queue_cell(ptr noundef nonnull %cursor.0212, i32 noundef 3)
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %if.end109.if.end112_crit_edge, %if.then103.if.end112_crit_edge, %if.end69.if.end112_crit_edge
  %next_manage.2220 = phi i64 [ %next_manage.2222, %if.then103.if.end112_crit_edge ], [ %next_manage.2221, %if.then111 ], [ %spec.select208, %if.end109.if.end112_crit_edge ], [ %next_manage.0211, %if.end69.if.end112_crit_edge ]
  %call113 = tail call ptr @rb_next(ptr noundef nonnull %cursor.0212) #12
  %tobool12.not = icmp eq ptr %call113, null
  br i1 %tobool12.not, label %for.end, label %if.end112.for.body_crit_edge

if.end112.for.body_crit_edge:                     ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end112
  tail call void @up_read(ptr noundef %cells_lock) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %next_manage.2220)
  %cmp117.not = icmp eq i64 %next_manage.2220, 9223372036854775807
  %or.cond199 = select i1 %tobool.not, i1 true, i1 %cmp117.not
  br i1 %or.cond199, label %for.end.if.end130_crit_edge, label %if.then119

for.end.if.end130_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130

if.then119:                                       ; preds = %for.end
  %call120 = tail call i64 @ktime_get_real_seconds() #12
  %sub = sub i64 %next_manage.2220, %call120
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub)
  %cmp121 = icmp slt i64 %sub, 1
  br i1 %cmp121, label %if.then123, label %if.else127

if.then123:                                       ; preds = %if.then119
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_wq to i32))
  %28 = load ptr, ptr @afs_wq, align 4
  %call.i205 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %work) #12
  br i1 %call.i205, label %if.then125, label %if.then123.if.end130_crit_edge

if.then123.if.end130_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130

if.then125:                                       ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #14
  %cells_outstanding = getelementptr i8, ptr %work, i32 92
  %call.i.i203 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cells_outstanding, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %cells_outstanding, i32 1, i32 3, i32 1) #12
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cells_outstanding, ptr %cells_outstanding, i32 1, ptr elementtype(i32) %cells_outstanding) #12, !srcloc !269
  br label %if.end130

if.else127:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @afs_set_cell_timer(ptr noundef %add.ptr, i64 noundef %sub)
  br label %if.end130

if.end130:                                        ; preds = %if.else127, %if.then125, %if.then123.if.end130_crit_edge, %for.end.if.end130_crit_edge, %for.end.thread
  %cells_outstanding.i = getelementptr i8, ptr %work, i32 92
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cells_outstanding.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !279
  tail call void @llvm.prefetch.p0(ptr %cells_outstanding.i, i32 1, i32 3, i32 1) #12
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cells_outstanding.i, ptr %cells_outstanding.i, i32 1, ptr elementtype(i32) %cells_outstanding.i) #12, !srcloc !280
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !281
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.end130.afs_dec_cells_outstanding.exit_crit_edge

if.end130.afs_dec_cells_outstanding.exit_crit_edge: ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_dec_cells_outstanding.exit

if.then.i:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wake_up_var(ptr noundef %cells_outstanding.i) #12
  br label %afs_dec_cells_outstanding.exit

afs_dec_cells_outstanding.exit:                   ; preds = %if.then.i, %if.end130.afs_dec_cells_outstanding.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %31 = load i32, ptr @afs_debug, align 4
  %and132 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %afs_dec_cells_outstanding.exit.do.end154_crit_edge, label %do.end143, !prof !260

afs_dec_cells_outstanding.exit.do.end154_crit_edge: ; preds = %afs_dec_cells_outstanding.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end154

do.end143:                                        ; preds = %afs_dec_cells_outstanding.exit
  call void @__sanitizer_cov_trace_pc() #14
  %32 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i206 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i206 to ptr
  %task146 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task146 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task146, align 8
  %comm147 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 101
  %call.i.i204 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cells_outstanding.i, i32 noundef 4) #12
  %36 = ptrtoint ptr %cells_outstanding.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %cells_outstanding.i, align 4
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %comm147, ptr noundef nonnull @.str.35, i32 noundef %37) #15
  br label %do.end154

do.end154:                                        ; preds = %do.end143, %afs_dec_cells_outstanding.exit.do.end154_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_cell_purge(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  %__wbq_entry = alloca %struct.wait_bit_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !260

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %comm, ptr noundef nonnull @.str.52) #15
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %cells_lock = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 14
  tail call void @down_write(ptr noundef %cells_lock) #12
  %ws_cell = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 10
  %5 = ptrtoint ptr %ws_cell to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ws_cell, align 4
  store ptr null, ptr %ws_cell, align 4
  tail call void @up_write(ptr noundef %cells_lock) #12
  tail call void @afs_unuse_cell(ptr noundef %net, ptr noundef %6, i32 noundef 26)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %7 = load i32, ptr @afs_debug, align 4
  %and10 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.end6.do.end30_crit_edge, label %do.end21, !prof !260

do.end6.do.end30_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

do.end21:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  %8 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i140 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i140 to ptr
  %task24 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task24, align 8
  %comm25 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 101
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %comm25) #15
  br label %do.end30

do.end30:                                         ; preds = %do.end21, %do.end6.do.end30_crit_edge
  %cells_timer = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 12
  %call31 = tail call i32 @del_timer_sync(ptr noundef %cells_timer) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.end30.do.body35_crit_edge, label %if.then33

do.end30.do.body35_crit_edge:                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

if.then33:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #14
  %cells_outstanding = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cells_outstanding, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %cells_outstanding, i32 1, i32 3, i32 1) #12
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cells_outstanding, ptr %cells_outstanding, i32 1, ptr elementtype(i32) %cells_outstanding) #12, !srcloc !286
  br label %do.body35

do.body35:                                        ; preds = %if.then33, %do.end30.do.body35_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %13 = load i32, ptr @afs_debug, align 4
  %and36 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.body35.do.end56_crit_edge, label %do.end47, !prof !260

do.body35.do.end56_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end56

do.end47:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  %14 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i141 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i141 to ptr
  %task50 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task50 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task50, align 8
  %comm51 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 101
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %comm51) #15
  br label %do.end56

do.end56:                                         ; preds = %do.end47, %do.body35.do.end56_crit_edge
  tail call fastcc void @afs_queue_cell_manager(ptr noundef %net)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %18 = load i32, ptr @afs_debug, align 4
  %and58 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %do.end56.do.body80_crit_edge, label %do.end69, !prof !260

do.end56.do.body80_crit_edge:                     ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body80

do.end69:                                         ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #14
  %19 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i142 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i142 to ptr
  %task72 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task72 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task72, align 8
  %comm73 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 101
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %comm73) #15
  br label %do.body80

do.body80:                                        ; preds = %do.end69, %do.end56.do.body80_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 953) #12
  %cells_outstanding86 = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 13
  %call.i.i138 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cells_outstanding86, i32 noundef 4) #12
  %23 = ptrtoint ptr %cells_outstanding86 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %cells_outstanding86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool88.not = icmp eq i32 %24, 0
  br i1 %tobool88.not, label %do.body80.do.body104_crit_edge, label %if.end90

do.body80.do.body104_crit_edge:                   ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body104

if.end90:                                         ; preds = %do.body80
  %call92 = tail call ptr @__var_waitqueue(ptr noundef %cells_outstanding86) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__wbq_entry) #12
  %25 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry, i32 0, i32 1
  %26 = call ptr @memset(ptr %__wbq_entry, i32 255, i32 32)
  call void @init_wait_var_entry(ptr noundef nonnull %__wbq_entry, ptr noundef %cells_outstanding86, i32 noundef 0) #12
  %call94146 = call i32 @prepare_to_wait_event(ptr noundef %call92, ptr noundef %25, i32 noundef 2) #12
  %call.i.i139147 = call zeroext i1 @__kasan_check_read(ptr noundef %cells_outstanding86, i32 noundef 4) #12
  %27 = ptrtoint ptr %cells_outstanding86 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %cells_outstanding86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool97.not148 = icmp eq i32 %28, 0
  br i1 %tobool97.not148, label %if.end90.for.end_crit_edge, label %if.end90.cleanup_crit_edge

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  br label %cleanup

if.end90.for.end_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end90.cleanup_crit_edge
  call void @schedule() #12
  %call94 = call i32 @prepare_to_wait_event(ptr noundef %call92, ptr noundef %25, i32 noundef 2) #12
  %call.i.i139 = call zeroext i1 @__kasan_check_read(ptr noundef %cells_outstanding86, i32 noundef 4) #12
  %29 = ptrtoint ptr %cells_outstanding86 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %cells_outstanding86, align 4
  %tobool97.not = icmp eq i32 %30, 0
  br i1 %tobool97.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end90.for.end_crit_edge
  call void @finish_wait(ptr noundef %call92, ptr noundef %25) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__wbq_entry) #12
  br label %do.body104

do.body104:                                       ; preds = %for.end, %do.body80.do.body104_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %31 = load i32, ptr @afs_debug, align 4
  %and105 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %do.body104.do.end125_crit_edge, label %do.end116, !prof !260

do.body104.do.end125_crit_edge:                   ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end125

do.end116:                                        ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #14
  %32 = call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i143 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i143 to ptr
  %task119 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task119 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task119, align 8
  %comm120 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 101
  %call122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %comm120, ptr noundef nonnull @.str.52) #15
  br label %do.end125

do.end125:                                        ; preds = %do.end116, %do.body104.do.end125_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @afs_queue_cell_manager(ptr noundef %net) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cells_outstanding = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cells_outstanding, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !262
  tail call void @llvm.prefetch.p0(ptr %cells_outstanding, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cells_outstanding, ptr %cells_outstanding, i32 1, ptr elementtype(i32) %cells_outstanding) #12, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !264
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %1 = load i32, ptr @afs_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !260

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  %2 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef %comm, ptr noundef nonnull @.str.150, i32 noundef %asmresult.i.i.i.i) #15
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_wq to i32))
  %6 = load ptr, ptr @afs_wq, align 4
  %cells_manager = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 11
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %cells_manager) #12
  br i1 %call.i, label %do.end7.if.end10_crit_edge, label %if.then9

do.end7.if.end10_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then9:                                         ; preds = %do.end7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cells_outstanding, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !279
  tail call void @llvm.prefetch.p0(ptr %cells_outstanding, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cells_outstanding, ptr %cells_outstanding, i32 1, ptr elementtype(i32) %cells_outstanding) #12, !srcloc !280
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !281
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.then9.if.end10_crit_edge

if.then9.if.end10_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wake_up_var(ptr noundef %cells_outstanding) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then.i, %if.then9.if.end10_crit_edge, %do.end7.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_manage_cell_work(ptr noundef %work) #0 align 64 {
entry:
  %expiry.i.i = alloca i64, align 8
  %keyname.i.i.i = alloca [261 x i8], align 4
  %active.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -28
  %net1.i = getelementptr i8, ptr %work, i32 -16
  %0 = ptrtoint ptr %net1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %active.i) #12
  %2 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %active.i, align 4, !annotation !287
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %3 = load i32, ptr @afs_debug, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end7.i_crit_edge, label %do.end.i, !prof !260

entry.do.end7.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %name.i = getelementptr i8, ptr %work, i32 428
  %8 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name.i, align 8
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %comm.i, ptr noundef nonnull @.str.100, ptr noundef %9) #15
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %entry.do.end7.i_crit_edge
  %state.i = getelementptr i8, ptr %work, i32 80
  %active180.i = getelementptr i8, ptr %work, i32 72
  %anonymous_key.i.i = getelementptr i8, ptr %work, i32 -4
  %10 = getelementptr inbounds i8, ptr %keyname.i.i.i, i32 4
  %name.i.i.i = getelementptr i8, ptr %work, i32 428
  %proc_cells_lock.i.i = getelementptr inbounds %struct.afs_net, ptr %1, i32 0, i32 16
  %proc_cells.i.i = getelementptr inbounds %struct.afs_net, ptr %1, i32 0, i32 17
  %proc_link.i.i = getelementptr i8, ptr %work, i32 44
  %pprev.i.i = getelementptr i8, ptr %work, i32 48
  %error240.i = getelementptr i8, ptr %work, i32 84
  %cells_lock.i = getelementptr inbounds %struct.afs_net, ptr %1, i32 0, i32 14
  %cells.i = getelementptr inbounds %struct.afs_net, ptr %1, i32 0, i32 9
  %debug_id.i = getelementptr i8, ptr %work, i32 92
  %ref.i = getelementptr i8, ptr %work, i32 68
  br label %again.i

again.i:                                          ; preds = %again.backedge.i, %do.end7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %11 = load i32, ptr @afs_debug, align 4
  %and9.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %again.i.do.end29.i_crit_edge, label %do.end20.i, !prof !260

again.i.do.end29.i_crit_edge:                     ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29.i

do.end20.i:                                       ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i387.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i387.i to ptr
  %task23.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task23.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task23.i, align 8
  %comm24.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 101
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i, align 4
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %comm24.i, i32 noundef %17) #15
  br label %do.end29.i

do.end29.i:                                       ; preds = %do.end20.i, %again.i.do.end29.i_crit_edge
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %19, label %do.body210.i [
    i32 4, label %do.end29.i.sw.bb.i_crit_edge
    i32 5, label %do.end29.i.sw.bb.i_crit_edge32
    i32 0, label %do.end98.i
    i32 1, label %sw.bb114.i
    i32 2, label %sw.bb142.i
    i32 3, label %sw.bb179.i
    i32 6, label %do.end29.i.do.body309.i_crit_edge
  ]

do.end29.i.do.body309.i_crit_edge:                ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body309.i

do.end29.i.sw.bb.i_crit_edge32:                   ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

do.end29.i.sw.bb.i_crit_edge:                     ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %do.end29.i.sw.bb.i_crit_edge, %do.end29.i.sw.bb.i_crit_edge32
  call void @down_write(ptr noundef %cells_lock.i) #12
  %21 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %active.i, align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %active180.i, i32 noundef 4) #12
  %call.i1.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %active.i, i32 noundef 4) #12
  %22 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %active.i, align 4
  call void @llvm.prefetch.p0(ptr %active180.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %sw.bb.i
  %24 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %active180.i, ptr %active180.i, i32 %23, i32 0, ptr elementtype(i32) %active180.i) #12, !srcloc !288
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %24, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i:           ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %24, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3.i.i.i.i, i32 %23)
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i, %23
  br i1 %cmp.not.i.i.i, label %if.then33.i, label %atomic_try_cmpxchg_relaxed.exit.i, !prof !260

atomic_try_cmpxchg_relaxed.exit.i:                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %asmresult3.i.i.i.i, ptr %active.i, align 4
  br label %if.end57.i

if.then33.i:                                      ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @rb_erase(ptr noundef %add.ptr, ptr noundef %cells.i) #12
  %26 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %debug_id.i, align 8
  %call.i.i384.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #12
  %28 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %ref.i, align 4
  call fastcc void @trace_afs_cell(i32 noundef %27, i32 noundef %29, i32 noundef 0, i32 noundef 17) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !289
  %30 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 6, ptr %state.i, align 4
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then33.i, %atomic_try_cmpxchg_relaxed.exit.i
  call void @up_write(ptr noundef %cells_lock.i) #12
  %31 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state.i, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %32, label %do.end74.i [
    i32 6, label %if.then60.i
    i32 5, label %if.end57.i.do.body309.i_crit_edge
  ]

if.end57.i.do.body309.i_crit_edge:                ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body309.i

if.then60.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @wake_up_var(ptr noundef %state.i) #12
  %34 = ptrtoint ptr %net1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %net1.i, align 4
  %root_volume.i = getelementptr i8, ptr %work, i32 -8
  %36 = ptrtoint ptr %root_volume.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %root_volume.i, align 4
  call void @afs_put_volume(ptr noundef %35, ptr noundef %37, i32 noundef 7) #12
  %38 = ptrtoint ptr %root_volume.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %root_volume.i, align 4
  call void @afs_put_cell(ptr noundef %add.ptr, i32 noundef 9) #12
  br label %afs_manage_cell.exit

do.end74.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !290
  br label %again.backedge.i

again.backedge.i:                                 ; preds = %activation_failed.i, %if.end185.i, %do.end163.i, %afs_activate_cell.exit.thread400.i, %do.end98.i, %do.end74.i
  %.sink.i = phi i32 [ 0, %do.end74.i ], [ 1, %do.end98.i ], [ 2, %afs_activate_cell.exit.thread400.i ], [ 3, %do.end163.i ], [ 4, %if.end185.i ], [ 5, %activation_failed.i ]
  %39 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 %.sink.i, ptr %state.i, align 4
  call void @wake_up_var(ptr noundef %state.i) #12
  br label %again.i

do.end98.i:                                       ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !291
  br label %again.backedge.i

sw.bb114.i:                                       ; preds = %do.end29.i
  %40 = ptrtoint ptr %anonymous_key.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %anonymous_key.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %sw.bb114.i.if.end2.i.i_crit_edge

sw.bb114.i.if.end2.i.i_crit_edge:                 ; preds = %sw.bb114.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.i.i

if.then.i.i:                                      ; preds = %sw.bb114.i
  call void @llvm.lifetime.start.p0(i64 261, ptr nonnull %keyname.i.i.i) #12
  %42 = call ptr @memset(ptr %10, i32 255, i32 257)
  %43 = ptrtoint ptr %keyname.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1634104128, ptr %keyname.i.i.i, align 4
  %44 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name.i.i.i, align 8
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.then.i.i
  %cp.0.i.i.i = phi ptr [ %45, %if.then.i.i ], [ %incdec.ptr2.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ]
  %dp.0.i.i.i = phi ptr [ %10, %if.then.i.i ], [ %incdec.ptr.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ]
  %46 = ptrtoint ptr %cp.0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %cp.0.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %47 to i32
  %arrayidx.i.i.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i.i.i
  %48 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %50 = and i8 %49, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp.not.i.i.i.i = icmp eq i8 %50, 0
  %sub.i.i.i.i = add i8 %47, 32
  %spec.select.i.i.i.i = select i1 %cmp.not.i.i.i.i, i8 %47, i8 %sub.i.i.i.i
  %incdec.ptr.i.i.i = getelementptr i8, ptr %dp.0.i.i.i, i32 1
  %51 = ptrtoint ptr %dp.0.i.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %spec.select.i.i.i.i, ptr %dp.0.i.i.i, align 1
  %incdec.ptr2.i.i.i = getelementptr i8, ptr %cp.0.i.i.i, i32 1
  %52 = ptrtoint ptr %cp.0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %cp.0.i.i.i, align 1
  %tobool.not.i.i.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  %call4.i.i.i = call ptr @rxrpc_get_null_key(ptr noundef nonnull %keyname.i.i.i) #12
  %cmp.i.i.i.i = icmp ugt ptr %call4.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %afs_alloc_anon_key.exit.i.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i
  %54 = ptrtoint ptr %anonymous_key.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call4.i.i.i, ptr %anonymous_key.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %55 = load i32, ptr @afs_debug, align 4
  %and.i.i.i = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %if.end.i.i.i.afs_alloc_anon_key.exit.thread.i.i_crit_edge, label %do.end14.i.i.i, !prof !260

if.end.i.i.i.afs_alloc_anon_key.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_alloc_anon_key.exit.thread.i.i

do.end14.i.i.i:                                   ; preds = %if.end.i.i.i
  %56 = call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i.i.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task.i.i.i, align 8
  %comm.i.i.i = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 101
  %tobool.not.i.i.i388.i = icmp eq ptr %call4.i.i.i, null
  br i1 %tobool.not.i.i.i388.i, label %do.end14.i.i.i.key_serial.exit.i.i.i_crit_edge, label %cond.true.i.i.i.i

do.end14.i.i.i.key_serial.exit.i.i.i_crit_edge:   ; preds = %do.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %key_serial.exit.i.i.i

cond.true.i.i.i.i:                                ; preds = %do.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %serial.i.i.i.i = getelementptr inbounds %struct.key, ptr %call4.i.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %serial.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %serial.i.i.i.i, align 4
  br label %key_serial.exit.i.i.i

key_serial.exit.i.i.i:                            ; preds = %cond.true.i.i.i.i, %do.end14.i.i.i.key_serial.exit.i.i.i_crit_edge
  %cond.i.i.i.i = phi i32 [ %61, %cond.true.i.i.i.i ], [ 0, %do.end14.i.i.i.key_serial.exit.i.i.i_crit_edge ]
  %call20.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %comm.i.i.i, ptr noundef %call4.i.i.i, i32 noundef %cond.i.i.i.i) #15
  br label %afs_alloc_anon_key.exit.thread.i.i

afs_alloc_anon_key.exit.thread.i.i:               ; preds = %key_serial.exit.i.i.i, %if.end.i.i.i.afs_alloc_anon_key.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 261, ptr nonnull %keyname.i.i.i) #12
  br label %if.end2.i.i

afs_alloc_anon_key.exit.i.i:                      ; preds = %do.end.i.i.i
  call void @llvm.lifetime.end.p0(i64 261, ptr nonnull %keyname.i.i.i) #12
  %cmp.i.i = icmp slt ptr %call4.i.i.i, null
  br i1 %cmp.i.i, label %afs_activate_cell.exit.i, label %afs_alloc_anon_key.exit.i.i.if.end2.i.i_crit_edge

afs_alloc_anon_key.exit.i.i.if.end2.i.i_crit_edge: ; preds = %afs_alloc_anon_key.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.i.i

if.end2.i.i:                                      ; preds = %afs_alloc_anon_key.exit.i.i.if.end2.i.i_crit_edge, %afs_alloc_anon_key.exit.thread.i.i, %sw.bb114.i.if.end2.i.i_crit_edge
  %call3.i.i = call i32 @afs_proc_cell_setup(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %if.end2.i.i.activation_failed.i_crit_edge, label %if.end6.i.i

if.end2.i.i.activation_failed.i_crit_edge:        ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %activation_failed.i

if.end6.i.i:                                      ; preds = %if.end2.i.i
  call void @mutex_lock_nested(ptr noundef %proc_cells_lock.i.i, i32 noundef 0) #12
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end6.i.i
  %p.0.i.i = phi ptr [ %proc_cells.i.i, %if.end6.i.i ], [ %63, %for.body.i.i.for.cond.i.i_crit_edge ]
  %62 = ptrtoint ptr %p.0.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %p.0.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %63, null
  br i1 %tobool7.not.i.i, label %for.cond.i.i.for.end.i.i_crit_edge, label %for.body.i.i

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %64 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %name.i.i.i, align 8
  %name8.i.i = getelementptr i8, ptr %63, i32 384
  %66 = ptrtoint ptr %name8.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %name8.i.i, align 8
  %call9.i.i = call i32 @strcmp(ptr noundef %65, ptr noundef %67) #18
  %cmp10.i.i = icmp slt i32 %call9.i.i, 0
  br i1 %cmp10.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.i.i.for.end.i.i_crit_edge
  %68 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %p.0.i.i, ptr %pprev.i.i, align 4
  %69 = ptrtoint ptr %p.0.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %p.0.i.i, align 4
  %71 = ptrtoint ptr %proc_link.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %proc_link.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !292
  %72 = ptrtoint ptr %p.0.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %proc_link.i.i, ptr %p.0.i.i, align 4
  %73 = ptrtoint ptr %proc_link.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %proc_link.i.i, align 8
  %tobool52.not.i.i = icmp eq ptr %74, null
  br i1 %tobool52.not.i.i, label %for.end.i.i.afs_activate_cell.exit.thread400.i_crit_edge, label %if.then53.i.i

for.end.i.i.afs_activate_cell.exit.thread400.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_activate_cell.exit.thread400.i

if.then53.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev58.i.i = getelementptr inbounds %struct.hlist_node, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %pprev58.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %proc_link.i.i, ptr %pprev58.i.i, align 4
  br label %afs_activate_cell.exit.thread400.i

afs_activate_cell.exit.thread400.i:               ; preds = %if.then53.i.i, %for.end.i.i.afs_activate_cell.exit.thread400.i_crit_edge
  %call60.i.i = call i32 @afs_dynroot_mkdir(ptr noundef %1, ptr noundef %add.ptr) #12
  call void @mutex_unlock(ptr noundef %proc_cells_lock.i.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !293
  br label %again.backedge.i

afs_activate_cell.exit.i:                         ; preds = %afs_alloc_anon_key.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %call4.i.i.i to i32
  br label %activation_failed.i

sw.bb142.i:                                       ; preds = %do.end29.i
  %call.i.i385.i = call zeroext i1 @__kasan_check_read(ptr noundef %active180.i, i32 noundef 4) #12
  %77 = ptrtoint ptr %active180.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %active180.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp145.i = icmp sgt i32 %78, 1
  br i1 %cmp145.i, label %if.then146.i, label %do.end163.i

if.then146.i:                                     ; preds = %sw.bb142.i
  %flags.i = getelementptr i8, ptr %work, i32 76
  %call147.i = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147.i)
  %tobool148.not.i = icmp eq i32 %call147.i, 0
  br i1 %tobool148.not.i, label %if.then146.i.do.body309.i_crit_edge, label %if.then149.i

if.then146.i.do.body309.i_crit_edge:              ; preds = %if.then146.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body309.i

if.then149.i:                                     ; preds = %if.then146.i
  %79 = load volatile i32, ptr @afs_cell_min_ttl, align 4
  %80 = load volatile i32, ptr @afs_cell_max_ttl, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %expiry.i.i) #12
  %81 = ptrtoint ptr %expiry.i.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 0, ptr %expiry.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %82 = load i32, ptr @afs_debug, align 4
  %and.i389.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i389.i)
  %tobool.not.i390.i = icmp eq i32 %and.i389.i, 0
  br i1 %tobool.not.i390.i, label %if.then149.i.do.end14.i.i_crit_edge, label %do.end10.i.i, !prof !260

if.then149.i.do.end14.i.i_crit_edge:              ; preds = %if.then149.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14.i.i

do.end10.i.i:                                     ; preds = %if.then149.i
  call void @__sanitizer_cov_trace_pc() #14
  %83 = call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i.i391.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i391.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task.i.i, align 8
  %comm.i.i = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 101
  %87 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %name.i.i.i, align 8
  %call12.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %comm.i.i, ptr noundef nonnull @.str.116, ptr noundef %88) #15
  br label %do.end14.i.i

do.end14.i.i:                                     ; preds = %do.end10.i.i, %if.then149.i.do.end14.i.i_crit_edge
  %call15.i.i = call ptr @afs_dns_query(ptr noundef %add.ptr, ptr noundef nonnull %expiry.i.i) #12
  %cmp.i.i.i = icmp ugt ptr %call15.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then17.i.i, label %do.end14.i.i.do.body58.i.i_crit_edge

do.end14.i.i.do.body58.i.i_crit_edge:             ; preds = %do.end14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body58.i.i

if.then17.i.i:                                    ; preds = %do.end14.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %89 = load i32, ptr @afs_debug, align 4
  %and20.i.i = and i32 %89, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i.i)
  %tobool21.not.i.i = icmp eq i32 %and20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.then17.i.i.do.end41.i.i_crit_edge, label %do.end31.i.i, !prof !260

if.then17.i.i.do.end41.i.i_crit_edge:             ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end41.i.i

do.end31.i.i:                                     ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %90 = ptrtoint ptr %call15.i.i to i32
  %91 = call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i314.i.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i314.i.i to ptr
  %task34.i.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %task34.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %task34.i.i, align 8
  %comm35.i.i = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 101
  %95 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %name.i.i.i, align 8
  %call38.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %comm35.i.i, ptr noundef %96, i32 noundef %90) #15
  br label %do.end41.i.i

do.end41.i.i:                                     ; preds = %do.end31.i.i, %if.then17.i.i.do.end41.i.i_crit_edge
  %cmp.i393.i = icmp eq ptr %call15.i.i, inttoptr (i32 -12 to ptr)
  br i1 %cmp.i393.i, label %do.end41.i.i.do.end228.i.i_crit_edge, label %if.end43.i.i

do.end41.i.i.do.end228.i.i_crit_edge:             ; preds = %do.end41.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end228.i.i

if.end43.i.i:                                     ; preds = %do.end41.i.i
  %call44.i.i = call ptr @afs_alloc_vlserver_list(i32 noundef 0) #12
  %tobool45.not.i.i = icmp eq ptr %call44.i.i, null
  br i1 %tobool45.not.i.i, label %if.end43.i.i.do.end228.i.i_crit_edge, label %sw.default.i.i

if.end43.i.i.do.end228.i.i_crit_edge:             ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end228.i.i

sw.default.i.i:                                   ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %status53.i.i = getelementptr inbounds %struct.afs_vlserver_list, ptr %call44.i.i, i32 0, i32 5
  %97 = ptrtoint ptr %status53.i.i to i32
  call void @__asan_loadN_noabort(i32 %97, i32 2)
  %bf.load54.i.i = load i16, ptr %status53.i.i, align 1
  %bf.clear55.i.i = and i16 %bf.load54.i.i, -256
  %bf.set56.i.i = or i16 %bf.clear55.i.i, 5
  store i16 %bf.set56.i.i, ptr %status53.i.i, align 1
  br label %do.body58.i.i

do.body58.i.i:                                    ; preds = %sw.default.i.i, %do.end14.i.i.do.body58.i.i_crit_edge
  %ret.0.i.i = phi i32 [ -12, %sw.default.i.i ], [ 0, %do.end14.i.i.do.body58.i.i_crit_edge ]
  %vllist.0.i.i = phi ptr [ %call44.i.i, %sw.default.i.i ], [ %call15.i.i, %do.end14.i.i.do.body58.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %98 = load i32, ptr @afs_debug, align 4
  %and59.i.i = and i32 %98, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i.i)
  %tobool60.not.i.i = icmp eq i32 %and59.i.i, 0
  br i1 %tobool60.not.i.i, label %do.body58.i.i.do.end85.i.i_crit_edge, label %do.end70.i.i, !prof !260

do.body58.i.i.do.end85.i.i_crit_edge:             ; preds = %do.body58.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end85.i.i

do.end70.i.i:                                     ; preds = %do.body58.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %99 = call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i315.i.i = and i32 %99, -16384
  %100 = inttoptr i32 %and.i315.i.i to ptr
  %task73.i.i = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %task73.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %task73.i.i, align 8
  %comm74.i.i = getelementptr inbounds %struct.task_struct, ptr %102, i32 0, i32 101
  %103 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %name.i.i.i, align 8
  %source.i.i = getelementptr inbounds %struct.afs_vlserver_list, ptr %vllist.0.i.i, i32 0, i32 5
  %105 = ptrtoint ptr %source.i.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 2)
  %bf.load77.i.i = load i16, ptr %source.i.i, align 1
  %bf.lshr.i.i = lshr i16 %bf.load77.i.i, 8
  %bf.cast.i.i = zext i16 %bf.lshr.i.i to i32
  %bf.clear80.i.i = and i16 %bf.load77.i.i, 255
  %bf.cast81.i.i = zext i16 %bf.clear80.i.i to i32
  %call82.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %comm74.i.i, ptr noundef %104, i32 noundef %bf.cast.i.i, i32 noundef %bf.cast81.i.i) #15
  br label %do.end85.i.i

do.end85.i.i:                                     ; preds = %do.end70.i.i, %do.body58.i.i.do.end85.i.i_crit_edge
  %status86.i.i = getelementptr inbounds %struct.afs_vlserver_list, ptr %vllist.0.i.i, i32 0, i32 5
  %106 = ptrtoint ptr %status86.i.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 2)
  %bf.load87.i.i = load i16, ptr %status86.i.i, align 1
  %bf.clear88.i.i = and i16 %bf.load87.i.i, 255
  %dns_status.i.i = getelementptr i8, ptr %work, i32 86
  %107 = ptrtoint ptr %dns_status.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %bf.load90.i.i = load i16, ptr %dns_status.i.i, align 2
  %bf.clear91.i.i = and i16 %bf.load90.i.i, -256
  %bf.set92.i.i = or i16 %bf.clear91.i.i, %bf.clear88.i.i
  store i16 %bf.set92.i.i, ptr %dns_status.i.i, align 2
  %call93.i.i = call i64 @ktime_get_real_seconds() #12
  %108 = ptrtoint ptr %expiry.i.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %expiry.i.i, align 8
  %conv.i.i = zext i32 %79 to i64
  %add.i.i = add i64 %call93.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %109, i64 %add.i.i)
  %cmp97.i.i = icmp slt i64 %109, %add.i.i
  br i1 %cmp97.i.i, label %if.then99.i.i, label %if.else.i.i

if.then99.i.i:                                    ; preds = %do.end85.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %110 = ptrtoint ptr %expiry.i.i to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %add.i.i, ptr %expiry.i.i, align 8
  br label %do.body111.i.i

if.else.i.i:                                      ; preds = %do.end85.i.i
  %111 = call i32 @llvm.umax.i32(i32 %79, i32 %80) #12
  %conv102.i.i = zext i32 %111 to i64
  %add103.i.i = add i64 %call93.i.i, %conv102.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %109, i64 %add103.i.i)
  %cmp104.i.i = icmp sgt i64 %109, %add103.i.i
  br i1 %cmp104.i.i, label %if.then106.i.i, label %if.else.i.i.do.body111.i.i_crit_edge

if.else.i.i.do.body111.i.i_crit_edge:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body111.i.i

if.then106.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %112 = ptrtoint ptr %expiry.i.i to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %add103.i.i, ptr %expiry.i.i, align 8
  br label %do.body111.i.i

do.body111.i.i:                                   ; preds = %if.then106.i.i, %if.else.i.i.do.body111.i.i_crit_edge, %if.then99.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %113 = load i32, ptr @afs_debug, align 4
  %and112.i.i = and i32 %113, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112.i.i)
  %tobool113.not.i.i = icmp eq i32 %and112.i.i, 0
  br i1 %tobool113.not.i.i, label %do.body111.i.i.do.end137.i.i_crit_edge, label %do.end123.i.i, !prof !260

do.body111.i.i.do.end137.i.i_crit_edge:           ; preds = %do.body111.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end137.i.i

do.end123.i.i:                                    ; preds = %do.body111.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %114 = call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i316.i.i = and i32 %114, -16384
  %115 = inttoptr i32 %and.i316.i.i to ptr
  %task126.i.i = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %task126.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %task126.i.i, align 8
  %comm127.i.i = getelementptr inbounds %struct.task_struct, ptr %117, i32 0, i32 101
  %118 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %name.i.i.i, align 8
  %120 = ptrtoint ptr %status86.i.i to i32
  call void @__asan_loadN_noabort(i32 %120, i32 2)
  %bf.load131.i.i = load i16, ptr %status86.i.i, align 1
  %bf.clear132.i.i = and i16 %bf.load131.i.i, 255
  %bf.cast133.i.i = zext i16 %bf.clear132.i.i to i32
  %call134.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %comm127.i.i, ptr noundef %119, i32 noundef %bf.cast133.i.i) #15
  br label %do.end137.i.i

do.end137.i.i:                                    ; preds = %do.end123.i.i, %do.body111.i.i.do.end137.i.i_crit_edge
  %121 = ptrtoint ptr %status86.i.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 2)
  %bf.load139.i.i = load i16, ptr %status86.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %bf.load139.i.i)
  %cmp142.i.i = icmp ult i16 %bf.load139.i.i, 256
  br i1 %cmp142.i.i, label %if.then144.i.i, label %if.else155.i.i

if.then144.i.i:                                   ; preds = %do.end137.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %bf.load139.i.i)
  %cond.i.i = icmp eq i16 %bf.load139.i.i, 4
  br i1 %cond.i.i, label %sw.bb149.i.i, label %sw.default151.i.i

sw.bb149.i.i:                                     ; preds = %if.then144.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %122 = ptrtoint ptr %expiry.i.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %expiry.i.i, align 8
  br label %if.end157.i.i

sw.default151.i.i:                                ; preds = %if.then144.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add152.i.i = add i64 %call93.i.i, 10
  br label %if.end157.i.i

if.else155.i.i:                                   ; preds = %do.end137.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %124 = ptrtoint ptr %expiry.i.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %expiry.i.i, align 8
  br label %if.end157.i.i

if.end157.i.i:                                    ; preds = %if.else155.i.i, %sw.default151.i.i, %sw.bb149.i.i
  %.sink.i.i = phi i64 [ %123, %sw.bb149.i.i ], [ %add152.i.i, %sw.default151.i.i ], [ %125, %if.else155.i.i ]
  %dns_expiry.i.i = getelementptr i8, ptr %work, i32 52
  %126 = ptrtoint ptr %dns_expiry.i.i to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %.sink.i.i, ptr %dns_expiry.i.i, align 8
  %vl_servers_lock.i.i = getelementptr i8, ptr %work, i32 376
  call void @_raw_write_lock(ptr noundef %vl_servers_lock.i.i) #12
  %vl_servers.i.i = getelementptr i8, ptr %work, i32 420
  %127 = ptrtoint ptr %vl_servers.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %vl_servers.i.i, align 8
  %nr_servers.i.i = getelementptr inbounds %struct.afs_vlserver_list, ptr %vllist.0.i.i, i32 0, i32 2
  %129 = ptrtoint ptr %nr_servers.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %nr_servers.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %cmp163.not.i.i = icmp eq i8 %130, 0
  br i1 %cmp163.not.i.i, label %lor.lhs.false.i.i, label %if.end157.i.i.do.body170.i.i_crit_edge

if.end157.i.i.do.body170.i.i_crit_edge:           ; preds = %if.end157.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body170.i.i

lor.lhs.false.i.i:                                ; preds = %if.end157.i.i
  %nr_servers165.i.i = getelementptr inbounds %struct.afs_vlserver_list, ptr %128, i32 0, i32 2
  %131 = ptrtoint ptr %nr_servers165.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %nr_servers165.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %cmp167.i.i = icmp eq i8 %132, 0
  br i1 %cmp167.i.i, label %lor.lhs.false.i.i.do.body170.i.i_crit_edge, label %lor.lhs.false.i.i.if.end219.i.i_crit_edge

lor.lhs.false.i.i.if.end219.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end219.i.i

lor.lhs.false.i.i.do.body170.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body170.i.i

do.body170.i.i:                                   ; preds = %lor.lhs.false.i.i.do.body170.i.i_crit_edge, %if.end157.i.i.do.body170.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !294
  %133 = ptrtoint ptr %vl_servers.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %vllist.0.i.i, ptr %vl_servers.i.i, align 8
  %134 = ptrtoint ptr %status86.i.i to i32
  call void @__asan_loadN_noabort(i32 %134, i32 2)
  %bf.load211.i.i = load i16, ptr %status86.i.i, align 1
  %bf.lshr212.i.i = and i16 %bf.load211.i.i, -256
  %135 = ptrtoint ptr %dns_status.i.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %bf.load214.i.i = load i16, ptr %dns_status.i.i, align 2
  %bf.clear216.i.i = and i16 %bf.load214.i.i, 255
  %bf.set217.i.i = or i16 %bf.clear216.i.i, %bf.lshr212.i.i
  store i16 %bf.set217.i.i, ptr %dns_status.i.i, align 2
  br label %if.end219.i.i

if.end219.i.i:                                    ; preds = %do.body170.i.i, %lor.lhs.false.i.i.if.end219.i.i_crit_edge
  %old.0.i.i = phi ptr [ %128, %do.body170.i.i ], [ null, %lor.lhs.false.i.i.if.end219.i.i_crit_edge ]
  call void @_raw_write_unlock(ptr noundef %vl_servers_lock.i.i) #12
  %136 = ptrtoint ptr %net1.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %net1.i, align 4
  call void @afs_put_vlserverlist(ptr noundef %137, ptr noundef %old.0.i.i) #12
  br label %do.end228.i.i

do.end228.i.i:                                    ; preds = %if.end219.i.i, %if.end43.i.i.do.end228.i.i_crit_edge, %do.end41.i.i.do.end228.i.i_crit_edge
  %ret.1.i.i = phi i32 [ -12, %do.end41.i.i.do.end228.i.i_crit_edge ], [ %ret.0.i.i, %if.end219.i.i ], [ -12, %if.end43.i.i.do.end228.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !295
  %dns_lookup_count.i.i = getelementptr i8, ptr %work, i32 88
  %138 = ptrtoint ptr %dns_lookup_count.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %dns_lookup_count.i.i, align 4
  %add234.i.i = add i32 %139, 1
  store volatile i32 %add234.i.i, ptr %dns_lookup_count.i.i, align 4
  call void @wake_up_var(ptr noundef %dns_lookup_count.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %140 = load i32, ptr @afs_debug, align 4
  %and246.i.i = and i32 %140, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and246.i.i)
  %tobool247.not.i.i = icmp eq i32 %and246.i.i, 0
  br i1 %tobool247.not.i.i, label %do.end228.i.i.afs_update_cell.exit.i_crit_edge, label %do.end257.i.i, !prof !260

do.end228.i.i.afs_update_cell.exit.i_crit_edge:   ; preds = %do.end228.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_update_cell.exit.i

do.end257.i.i:                                    ; preds = %do.end228.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %141 = call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i317.i.i = and i32 %141, -16384
  %142 = inttoptr i32 %and.i317.i.i to ptr
  %task260.i.i = getelementptr inbounds %struct.thread_info, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %task260.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %task260.i.i, align 8
  %comm261.i.i = getelementptr inbounds %struct.task_struct, ptr %144, i32 0, i32 101
  %call263.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %comm261.i.i, ptr noundef nonnull @.str.116, i32 noundef %ret.1.i.i) #15
  br label %afs_update_cell.exit.i

afs_update_cell.exit.i:                           ; preds = %do.end257.i.i, %do.end228.i.i.afs_update_cell.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %expiry.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.i)
  %cmp151.i = icmp slt i32 %ret.1.i.i, 0
  br i1 %cmp151.i, label %if.then152.i, label %afs_update_cell.exit.i.do.body309.i_crit_edge

afs_update_cell.exit.i.do.body309.i_crit_edge:    ; preds = %afs_update_cell.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body309.i

if.then152.i:                                     ; preds = %afs_update_cell.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = trunc i32 %ret.1.i.i to i16
  %145 = ptrtoint ptr %error240.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %conv.i, ptr %error240.i, align 8
  br label %do.body309.i

do.end163.i:                                      ; preds = %sw.bb142.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !296
  br label %again.backedge.i

sw.bb179.i:                                       ; preds = %do.end29.i
  %call.i.i386.i = call zeroext i1 @__kasan_check_read(ptr noundef %active180.i, i32 noundef 4) #12
  %146 = ptrtoint ptr %active180.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %active180.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %147)
  %cmp182.i = icmp sgt i32 %147, 1
  br i1 %cmp182.i, label %do.end271.i, label %if.end185.i

if.end185.i:                                      ; preds = %sw.bb179.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @afs_deactivate_cell(ptr noundef %1, ptr noundef %add.ptr) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !297
  br label %again.backedge.i

do.body210.i:                                     ; preds = %do.end29.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %148 = load i32, ptr @afs_debug, align 4
  %and211.i = and i32 %148, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211.i)
  %tobool212.not.i = icmp eq i32 %and211.i, 0
  br i1 %tobool212.not.i, label %do.body210.i.do.body233.i_crit_edge, label %do.end222.i, !prof !260

do.body210.i.do.body233.i_crit_edge:              ; preds = %do.body210.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body233.i

do.end222.i:                                      ; preds = %do.body210.i
  call void @__sanitizer_cov_trace_pc() #14
  %149 = call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i394.i = and i32 %149, -16384
  %150 = inttoptr i32 %and.i394.i to ptr
  %task225.i = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %task225.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %task225.i, align 8
  %comm226.i = getelementptr inbounds %struct.task_struct, ptr %152, i32 0, i32 101
  %call229.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %comm226.i, i32 noundef %19) #15
  br label %do.body233.i

do.body233.i:                                     ; preds = %do.end222.i, %do.body210.i.do.body233.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/cell.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 799, 0\0A.popsection", ""() #12, !srcloc !298
  unreachable

activation_failed.i:                              ; preds = %afs_activate_cell.exit.i, %if.end2.i.i.activation_failed.i_crit_edge
  %retval.0.i399.i = phi i32 [ %76, %afs_activate_cell.exit.i ], [ %call3.i.i, %if.end2.i.i.activation_failed.i_crit_edge ]
  %conv239.i = trunc i32 %retval.0.i399.i to i16
  %153 = ptrtoint ptr %error240.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %conv239.i, ptr %error240.i, align 8
  call fastcc void @afs_deactivate_cell(ptr noundef %1, ptr noundef %add.ptr) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !299
  br label %again.backedge.i

do.end271.i:                                      ; preds = %sw.bb179.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !300
  %154 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile i32 2, ptr %state.i, align 4
  call void @wake_up_var(ptr noundef %state.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %155 = load i32, ptr @afs_debug, align 4
  %and288.i = and i32 %155, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and288.i)
  %tobool289.not.i = icmp eq i32 %and288.i, 0
  br i1 %tobool289.not.i, label %do.end271.i.afs_manage_cell.exit_crit_edge, label %do.end299.i, !prof !260

do.end271.i.afs_manage_cell.exit_crit_edge:       ; preds = %do.end271.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_manage_cell.exit

do.end299.i:                                      ; preds = %do.end271.i
  call void @__sanitizer_cov_trace_pc() #14
  %156 = call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i395.i = and i32 %156, -16384
  %157 = inttoptr i32 %and.i395.i to ptr
  %task302.i = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 2
  %158 = ptrtoint ptr %task302.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %task302.i, align 8
  %comm303.i = getelementptr inbounds %struct.task_struct, ptr %159, i32 0, i32 101
  %call305.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %comm303.i, ptr noundef nonnull @.str.100) #15
  br label %afs_manage_cell.exit

do.body309.i:                                     ; preds = %if.then152.i, %afs_update_cell.exit.i.do.body309.i_crit_edge, %if.then146.i.do.body309.i_crit_edge, %if.end57.i.do.body309.i_crit_edge, %do.end29.i.do.body309.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %160 = load i32, ptr @afs_debug, align 4
  %and310.i = and i32 %160, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and310.i)
  %tobool311.not.i = icmp eq i32 %and310.i, 0
  br i1 %tobool311.not.i, label %do.body309.i.afs_manage_cell.exit_crit_edge, label %do.end321.i, !prof !260

do.body309.i.afs_manage_cell.exit_crit_edge:      ; preds = %do.body309.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_manage_cell.exit

do.end321.i:                                      ; preds = %do.body309.i
  call void @__sanitizer_cov_trace_pc() #14
  %161 = call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i396.i = and i32 %161, -16384
  %162 = inttoptr i32 %and.i396.i to ptr
  %task324.i = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 2
  %163 = ptrtoint ptr %task324.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %task324.i, align 8
  %comm325.i = getelementptr inbounds %struct.task_struct, ptr %164, i32 0, i32 101
  %165 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %state.i, align 4
  %call328.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %comm325.i, ptr noundef nonnull @.str.100, i32 noundef %166) #15
  br label %afs_manage_cell.exit

afs_manage_cell.exit:                             ; preds = %do.end321.i, %do.body309.i.afs_manage_cell.exit_crit_edge, %do.end299.i, %do.end271.i.afs_manage_cell.exit_crit_edge, %if.then60.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active.i) #12
  call void @afs_put_cell(ptr noundef %add.ptr, i32 noundef 11)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_parse_text_addrs(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_alloc_vlserver_list(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @afs_deactivate_cell(ptr noundef %net, ptr noundef %cell) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !260

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %name = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 28
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %comm, ptr noundef nonnull @.str.128, ptr noundef %6) #15
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  tail call void @afs_proc_cell_remove(ptr noundef %cell) #12
  %proc_cells_lock = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %proc_cells_lock, i32 noundef 0) #12
  %proc_link = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 6
  %7 = ptrtoint ptr %proc_link to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %proc_link, align 4
  %pprev2.i.i = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pprev2.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %8, ptr %10, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %do.end5.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

do.end5.hlist_del_rcu.exit_crit_edge:             ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %do.end5.hlist_del_rcu.exit_crit_edge
  %13 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call void @afs_dynroot_rmdir(ptr noundef %net, ptr noundef %cell) #12
  tail call void @mutex_unlock(ptr noundef %proc_cells_lock) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %14 = load i32, ptr @afs_debug, align 4
  %and8 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %hlist_del_rcu.exit.do.end26_crit_edge, label %do.end18, !prof !260

hlist_del_rcu.exit.do.end26_crit_edge:            ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26

do.end18:                                         ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  %15 = tail call i32 @llvm.read_register.i32(metadata !250) #12
  %and.i32 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i32 to ptr
  %task21 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task21, align 8
  %comm22 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 101
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %comm22, ptr noundef nonnull @.str.128) #15
  br label %do.end26

do.end26:                                         ; preds = %do.end18, %hlist_del_rcu.exit.do.end26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_put_volume(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_proc_cell_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_dynroot_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_get_null_key(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_dns_query(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_put_vlserverlist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_proc_cell_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_dynroot_rmdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_cell(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timer_reduce(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !178, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !201, !202, !204, !206, !208, !209, !210, !212, !213, !215, !217, !218, !219, !220, !222, !223, !225, !226, !227, !228, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !241, !242, !243, !245, !247, !248, !249}
!llvm.named.register.sp = !{!250}
!llvm.module.flags = !{!251, !252, !253, !254, !255, !256, !257, !258}
!llvm.ident = !{!259}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/afs/cell.c", i32 243, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @afs_lookup_cell._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @afs_lookup_cell._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/afs/cell.c", i32 260, i32 3}
!8 = !{ptr @afs_lookup_cell._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @afs_lookup_cell._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/afs/cell.c", i32 300, i32 2}
!12 = !{ptr @afs_lookup_cell._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @afs_lookup_cell._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/afs/cell.c", i32 313, i32 2}
!16 = !{ptr @afs_lookup_cell._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @afs_lookup_cell._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/afs/cell.c", i32 317, i32 2}
!20 = !{ptr @afs_lookup_cell._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @afs_lookup_cell._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/afs/cell.c", i32 334, i32 2}
!24 = !{ptr @afs_lookup_cell._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @afs_lookup_cell._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/afs/cell.c", i32 349, i32 2}
!28 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @afs_cell_init._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @afs_cell_init._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/afs/cell.c", i32 355, i32 3}
!33 = !{ptr @afs_cell_init._entry.20, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @afs_cell_init._entry_ptr.22, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/afs/cell.c", i32 361, i32 3}
!37 = !{ptr @afs_cell_init._entry.23, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @afs_cell_init._entry_ptr.25, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @afs_cell_init._entry.26, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../fs/afs/cell.c", i32 372, i32 3}
!41 = !{ptr @afs_cell_init._entry_ptr.27, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.29, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/afs/cell.c", i32 387, i32 2}
!44 = !{ptr @afs_cell_init._entry.28, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @afs_cell_init._entry_ptr.30, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.31, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/afs/cell.c", i32 532, i32 2}
!48 = !{ptr @afs_cells_timer._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @afs_cells_timer._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.32, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/afs/cell.c", i32 566, i32 4}
!52 = !{ptr @.str.33, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/afs/cell.c", i32 601, i32 2}
!54 = !{ptr @.str.34, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @afs_unuse_cell._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @afs_unuse_cell._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/afs/cell.c", i32 854, i32 2}
!59 = !{ptr @afs_manage_cells._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @afs_manage_cells._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.37, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/afs/cell.c", i32 872, i32 3}
!63 = !{ptr @afs_manage_cells._entry.36, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @afs_manage_cells._entry_ptr.38, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.40, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @afs_manage_cells._entry.39, !62, !"_entry", i1 false, i1 false}
!67 = !{ptr @afs_manage_cells._entry_ptr.41, !62, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.43, !62, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @afs_manage_cells._entry.42, !62, !"_entry", i1 false, i1 false}
!70 = !{ptr @afs_manage_cells._entry_ptr.44, !62, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.46, !62, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @afs_manage_cells._entry.45, !62, !"_entry", i1 false, i1 false}
!73 = !{ptr @afs_manage_cells._entry_ptr.47, !62, !"_entry_ptr", i1 false, i1 false}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../fs/afs/cell.c", i32 887, i32 13}
!76 = !{ptr @.str.48, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.50, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/afs/cell.c", i32 926, i32 2}
!79 = !{ptr @afs_manage_cells._entry.49, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @afs_manage_cells._entry_ptr.51, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.52, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/afs/cell.c", i32 936, i32 2}
!83 = !{ptr @afs_cell_purge._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @afs_cell_purge._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.54, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/afs/cell.c", i32 944, i32 2}
!87 = !{ptr @afs_cell_purge._entry.53, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @afs_cell_purge._entry_ptr.55, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.57, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/afs/cell.c", i32 948, i32 2}
!91 = !{ptr @afs_cell_purge._entry.56, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @afs_cell_purge._entry_ptr.58, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.60, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/afs/cell.c", i32 951, i32 2}
!95 = !{ptr @afs_cell_purge._entry.59, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @afs_cell_purge._entry_ptr.61, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.63, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/afs/cell.c", i32 954, i32 2}
!99 = !{ptr @afs_cell_purge._entry.62, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @afs_cell_purge._entry_ptr.64, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.65, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/afs/cell.c", i32 59, i32 2}
!103 = !{ptr @.str.66, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @afs_find_cell_locked._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @afs_find_cell_locked._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.67, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/afs/cell.c", i32 122, i32 2}
!108 = !{ptr @afs_alloc_cell._entry, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @afs_alloc_cell._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @afs_alloc_cell._entry.68, !107, !"_entry", i1 false, i1 false}
!111 = !{ptr @afs_alloc_cell._entry_ptr.69, !107, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.71, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/afs/cell.c", i32 126, i32 3}
!114 = !{ptr @afs_alloc_cell._entry.70, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @afs_alloc_cell._entry_ptr.72, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.74, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/afs/cell.c", i32 141, i32 2}
!118 = !{ptr @afs_alloc_cell._entry.73, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @afs_alloc_cell._entry_ptr.75, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.77, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/afs/cell.c", i32 145, i32 3}
!122 = !{ptr @afs_alloc_cell._entry.76, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @afs_alloc_cell._entry_ptr.78, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @afs_alloc_cell.__key, !125, !"__key", i1 false, i1 false}
!125 = !{!"../fs/afs/cell.c", i32 163, i32 2}
!126 = !{ptr @.str.79, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @afs_alloc_cell.__key.80, !128, !"__key", i1 false, i1 false}
!128 = !{!"../fs/afs/cell.c", i32 166, i32 2}
!129 = !{ptr @.str.81, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @afs_alloc_cell.__key.82, !128, !"__key", i1 false, i1 false}
!131 = !{ptr @.str.83, !128, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @afs_alloc_cell.__key.84, !133, !"__key", i1 false, i1 false}
!133 = !{!"../fs/afs/cell.c", i32 168, i32 2}
!134 = !{ptr @.str.85, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @afs_alloc_cell.__key.86, !133, !"__key", i1 false, i1 false}
!136 = !{ptr @afs_alloc_cell.__key.87, !137, !"__key", i1 false, i1 false}
!137 = !{!"../fs/afs/cell.c", i32 170, i32 2}
!138 = !{ptr @.str.88, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @afs_alloc_cell.__key.89, !140, !"__key", i1 false, i1 false}
!140 = !{!"../fs/afs/cell.c", i32 171, i32 2}
!141 = !{ptr @.str.90, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.92, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/afs/cell.c", i32 208, i32 2}
!144 = !{ptr @afs_alloc_cell._entry.91, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @afs_alloc_cell._entry_ptr.93, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.95, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/afs/cell.c", i32 213, i32 3}
!148 = !{ptr @afs_alloc_cell._entry.94, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @afs_alloc_cell._entry_ptr.96, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.98, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/afs/cell.c", i32 217, i32 2}
!152 = !{ptr @afs_alloc_cell._entry.97, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @afs_alloc_cell._entry_ptr.99, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.100, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/afs/cell.c", i32 731, i32 2}
!156 = !{ptr @afs_manage_cell._entry, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @afs_manage_cell._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.102, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/afs/cell.c", i32 734, i32 2}
!160 = !{ptr @afs_manage_cell._entry.101, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @afs_manage_cell._entry_ptr.103, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.105, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/afs/cell.c", i32 798, i32 2}
!164 = !{ptr @afs_manage_cell._entry.104, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @afs_manage_cell._entry_ptr.106, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.108, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/afs/cell.c", i32 812, i32 2}
!168 = !{ptr @afs_manage_cell._entry.107, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @afs_manage_cell._entry_ptr.109, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.111, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/afs/cell.c", i32 816, i32 2}
!172 = !{ptr @afs_manage_cell._entry.110, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @afs_manage_cell._entry_ptr.112, !171, !"_entry_ptr", i1 false, i1 false}
!174 = distinct !{null, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/afs/cell.c", i32 650, i32 18}
!176 = !{ptr @.str.114, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../fs/afs/cell.c", i32 663, i32 2}
!178 = !{ptr @.str.115, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @afs_alloc_anon_key._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @afs_alloc_anon_key._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.116, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/afs/cell.c", i32 402, i32 2}
!183 = !{ptr @afs_update_cell._entry, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @afs_update_cell._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.118, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../fs/afs/cell.c", i32 408, i32 3}
!187 = !{ptr @afs_update_cell._entry.117, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @afs_update_cell._entry_ptr.119, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.121, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../fs/afs/cell.c", i32 432, i32 2}
!191 = !{ptr @afs_update_cell._entry.120, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @afs_update_cell._entry_ptr.122, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.124, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../fs/afs/cell.c", i32 443, i32 2}
!195 = !{ptr @afs_update_cell._entry.123, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @afs_update_cell._entry_ptr.125, !194, !"_entry_ptr", i1 false, i1 false}
!197 = distinct !{null, !198, !"__warned", i1 false, i1 false}
!198 = !{!"../fs/afs/cell.c", i32 469, i32 6}
!199 = !{ptr @afs_update_cell._entry.126, !200, !"_entry", i1 false, i1 false}
!200 = !{!"../fs/afs/cell.c", i32 482, i32 2}
!201 = !{ptr @afs_update_cell._entry_ptr.127, !200, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @afs_cell_min_ttl, !203, !"afs_cell_min_ttl", i1 false, i1 false}
!203 = !{!"../fs/afs/cell.c", i32 19, i32 31}
!204 = !{ptr @afs_cell_max_ttl, !205, !"afs_cell_max_ttl", i1 false, i1 false}
!205 = !{!"../fs/afs/cell.c", i32 20, i32 31}
!206 = !{ptr @.str.128, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../fs/afs/cell.c", i32 710, i32 2}
!208 = !{ptr @afs_deactivate_cell._entry, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @afs_deactivate_cell._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @afs_deactivate_cell._entry.129, !211, !"_entry", i1 false, i1 false}
!211 = !{!"../fs/afs/cell.c", i32 719, i32 2}
!212 = !{ptr @afs_deactivate_cell._entry_ptr.130, !211, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @cell_debug_id, !214, !"cell_debug_id", i1 false, i1 false}
!214 = !{!"../fs/afs/cell.c", i32 21, i32 17}
!215 = distinct !{null, !216, !"__already_done", i1 false, i1 false}
!216 = !{!"../include/trace/events/afs.h", i32 1485, i32 1}
!217 = !{ptr @.str.131, !216, !"<string literal>", i1 false, i1 false}
!218 = distinct !{null, !216, !"__warned", i1 false, i1 false}
!219 = !{ptr @.str.132, !216, !"<string literal>", i1 false, i1 false}
!220 = distinct !{null, !221, !"__already_done", i1 false, i1 false}
!221 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!222 = !{ptr @.str.133, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.134, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../fs/afs/cell.c", i32 495, i32 2}
!225 = !{ptr @.str.135, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @afs_cell_destroy._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @afs_cell_destroy._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @afs_cell_destroy._entry.136, !229, !"_entry", i1 false, i1 false}
!229 = !{!"../fs/afs/cell.c", i32 498, i32 2}
!230 = !{ptr @afs_cell_destroy._entry_ptr.137, !229, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @afs_cell_destroy._entry.138, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @afs_cell_destroy._entry_ptr.139, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.141, !229, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @afs_cell_destroy._entry.140, !229, !"_entry", i1 false, i1 false}
!235 = !{ptr @afs_cell_destroy._entry_ptr.142, !229, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.144, !229, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @afs_cell_destroy._entry.143, !229, !"_entry", i1 false, i1 false}
!238 = !{ptr @afs_cell_destroy._entry_ptr.145, !229, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.147, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../fs/afs/cell.c", i32 508, i32 2}
!241 = !{ptr @afs_cell_destroy._entry.146, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @afs_cell_destroy._entry_ptr.148, !240, !"_entry_ptr", i1 false, i1 false}
!243 = distinct !{null, !244, !"afs_cell_gc_delay", i1 false, i1 false}
!244 = !{!"../fs/afs/cell.c", i32 18, i32 31}
!245 = !{ptr @.str.149, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../fs/afs/cell.c", i32 518, i32 2}
!247 = !{ptr @.str.150, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @afs_queue_cell_manager._entry, !246, !"_entry", i1 false, i1 false}
!249 = !{ptr @afs_queue_cell_manager._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!250 = !{!"sp"}
!251 = !{i32 1, !"wchar_size", i32 2}
!252 = !{i32 1, !"min_enum_size", i32 4}
!253 = !{i32 8, !"branch-target-enforcement", i32 0}
!254 = !{i32 8, !"sign-return-address", i32 0}
!255 = !{i32 8, !"sign-return-address-all", i32 0}
!256 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!257 = !{i32 7, !"uwtable", i32 1}
!258 = !{i32 7, !"frame-pointer", i32 2}
!259 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!260 = !{!"branch_weights", i32 2000, i32 1}
!261 = !{i64 2157933462, i64 2157933940, i64 2157933499, i64 2157933555, i64 2157933589, i64 2157933613, i64 2157933654, i64 2157933675, i64 2157933703, i64 2157933737}
!262 = !{i64 2148687952}
!263 = !{i64 2148603237, i64 2148603269, i64 2148603298, i64 2148603332, i64 2148603363, i64 2148603386}
!264 = !{i64 2148688181}
!265 = !{!"branch_weights", i32 1, i32 2000}
!266 = !{i64 2157810285, i64 2157810763, i64 2157810322, i64 2157810378, i64 2157810412, i64 2157810436, i64 2157810477, i64 2157810498, i64 2157810526, i64 2157810560}
!267 = !{i64 2157826133}
!268 = !{i64 2157830910}
!269 = !{i64 2148602517, i64 2148602543, i64 2148602572, i64 2148602606, i64 2148602637, i64 2148602660}
!270 = !{i64 2149958299}
!271 = !{i64 2157854911}
!272 = !{i64 2157862382}
!273 = !{i64 2148223243, i64 2148223248, i64 2148223261, i64 2148223305, i64 2148223339, i64 2148223360}
!274 = !{i64 2157777354}
!275 = !{i64 2157777605}
!276 = !{i64 2149947947}
!277 = !{i64 2149948983}
!278 = !{i64 2157931490, i64 2157931968, i64 2157931527, i64 2157931583, i64 2157931617, i64 2157931641, i64 2157931682, i64 2157931703, i64 2157931731, i64 2157931765}
!279 = !{i64 2148690993}
!280 = !{i64 2148605702, i64 2148605734, i64 2148605763, i64 2148605797, i64 2148605828, i64 2148605851}
!281 = !{i64 2148691222}
!282 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!283 = !{i64 2157919812, i64 2157920290, i64 2157919849, i64 2157919905, i64 2157919939, i64 2157919963, i64 2157920004, i64 2157920025, i64 2157920053, i64 2157920087}
!284 = !{i8 0, i8 2}
!285 = !{i64 2158007197, i64 2158007675, i64 2158007234, i64 2158007290, i64 2158007324, i64 2158007348, i64 2158007389, i64 2158007410, i64 2158007438, i64 2158007472}
!286 = !{i64 2148604982, i64 2148605008, i64 2148605037, i64 2148605071, i64 2148605102, i64 2148605125}
!287 = !{!"auto-init"}
!288 = !{i64 1088030, i64 1088054, i64 1088075, i64 1088092, i64 1088109}
!289 = !{i64 2157956290}
!290 = !{i64 2157960537}
!291 = !{i64 2157964790}
!292 = !{i64 2157944889}
!293 = !{i64 2157969045}
!294 = !{i64 2157897214}
!295 = !{i64 2157902088}
!296 = !{i64 2157973427}
!297 = !{i64 2157977690}
!298 = !{i64 2157981902, i64 2157982380, i64 2157981939, i64 2157981995, i64 2157982029, i64 2157982053, i64 2157982094, i64 2157982115, i64 2157982143, i64 2157982177}
!299 = !{i64 2157985221}
!300 = !{i64 2157989468}
