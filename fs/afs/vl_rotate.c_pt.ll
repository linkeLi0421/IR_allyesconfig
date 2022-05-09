; ModuleID = '/llk/IR_all_yes/fs/afs/vl_rotate.c_pt.bc'
source_filename = "../fs/afs/vl_rotate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.afs_vl_cursor = type { %struct.afs_addr_cursor, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16 }
%struct.afs_addr_cursor = type { ptr, i32, i8, i8, i16, i16, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.32 }
%struct.llist_node = type { ptr }
%union.anon.32 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.34 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
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
%union.anon.56 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.afs_error = type { i16, i8 }
%struct.afs_cell = type { %union.anon.1, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.hlist_node, i64, i64, %struct.atomic_t, %struct.atomic_t, i32, i32, i16, i16, i32, i32, %struct.rb_root, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.seqlock_t, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.rwlock_t, ptr, i8, ptr }
%union.anon.1 = type { %struct.rb_node }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_head = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.afs_vlserver_list = type <{ %struct.callback_head, %struct.atomic_t, i8, i8, i8, i16, [3 x i8], %struct.rwlock_t, [0 x %struct.afs_vlserver_entry] }>
%struct.afs_vlserver_entry = type { i16, i16, i16, ptr }
%struct.afs_vlserver = type { %struct.callback_head, ptr, i32, %struct.rwlock_t, %struct.atomic_t, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.146, i16, i16, [0 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.146 = type { i32, i32, i16, i16 }
%struct.afs_addr_list = type { %struct.callback_head, %struct.refcount_struct, i32, i8, i8, i8, i8, i16, i32, i32, [0 x %struct.sockaddr_rxrpc] }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon }
%union.anon = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.0 }
%union.anon.0 = type { [4 x i32] }

@afs_debug = external dso_local local_unnamed_addr global i32, align 4
@afs_select_vlserver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[%-6.6s] ==> %s(%lx[%d],%lx[%d],%d,%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afs_select_vlserver\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/afs/vl_rotate.c\00", [45 x i8] zeroinitializer }, align 32
@afs_select_vlserver._entry_ptr = internal global ptr @afs_select_vlserver._entry, section ".printk_index", align 4
@afs_select_vlserver._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s] <== %s() = f [stopped]\0A\00", [63 x i8] zeroinitializer }, align 32
@afs_select_vlserver._entry_ptr.5 = internal global ptr @afs_select_vlserver._entry.3, section ".printk_index", align 4
@afs_select_vlserver._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[%-6.6s] <== %s() = f [okay/local %d]\0A\00", [57 x i8] zeroinitializer }, align 32
@afs_select_vlserver._entry_ptr.8 = internal global ptr @afs_select_vlserver._entry.6, section ".printk_index", align 4
@afs_select_vlserver._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s]     no conn %d\0A\00", [39 x i8] zeroinitializer }, align 32
@afs_select_vlserver._entry_ptr.11 = internal global ptr @afs_select_vlserver._entry.9, section ".printk_index", align 4
@afs_select_vlserver._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s]     call reset\0A\00", [39 x i8] zeroinitializer }, align 32
@afs_select_vlserver._entry_ptr.14 = internal global ptr @afs_select_vlserver._entry.12, section ".printk_index", align 4
@afs_select_vlserver._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%-6.6s]     notsupp\0A\00", [42 x i8] zeroinitializer }, align 32
@afs_select_vlserver._entry_ptr.17 = internal global ptr @afs_select_vlserver._entry.15, section ".printk_index", align 4
@afs_select_vlserver._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%-6.6s]     restart\0A\00", [42 x i8] zeroinitializer }, align 32
@afs_select_vlserver._entry_ptr.20 = internal global ptr @afs_select_vlserver._entry.18, section ".printk_index", align 4
@afs_select_vlserver._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[%-6.6s]     start\0A\00", [44 x i8] zeroinitializer }, align 32
@afs_select_vlserver._entry_ptr.23 = internal global ptr @afs_select_vlserver._entry.21, section ".printk_index", align 4
@afs_select_vlserver._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s]     pick [%lx]\0A\00", [39 x i8] zeroinitializer }, align 32
@afs_select_vlserver._entry_ptr.26 = internal global ptr @afs_select_vlserver._entry.24, section ".printk_index", align 4
@afs_select_vlserver._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s]     use %d\0A\00", [43 x i8] zeroinitializer }, align 32
@afs_select_vlserver._entry_ptr.29 = internal global ptr @afs_select_vlserver._entry.27, section ".printk_index", align 4
@afs_select_vlserver._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\013\0A\00", [28 x i8] zeroinitializer }, align 32
@afs_select_vlserver._entry_ptr.32 = internal global ptr @afs_select_vlserver._entry.30, section ".printk_index", align 4
@afs_select_vlserver._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013AFS: Assertion failed\0A\00", [39 x i8] zeroinitializer }, align 32
@afs_select_vlserver._entry_ptr.35 = internal global ptr @afs_select_vlserver._entry.33, section ".printk_index", align 4
@afs_select_vlserver._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.1, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%lu == %lu is false\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_select_vlserver._entry_ptr.38 = internal global ptr @afs_select_vlserver._entry.36, section ".printk_index", align 4
@afs_select_vlserver._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.1, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0130x%lx == 0x%lx is false\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_select_vlserver._entry_ptr.41 = internal global ptr @afs_select_vlserver._entry.39, section ".printk_index", align 4
@afs_select_vlserver._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.1, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s]     USING VLSERVER: %s\0A\00", [63 x i8] zeroinitializer }, align 32
@afs_select_vlserver._entry_ptr.44 = internal global ptr @afs_select_vlserver._entry.42, section ".printk_index", align 4
@afs_select_vlserver.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@afs_select_vlserver._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_select_vlserver._entry_ptr.47 = internal global ptr @afs_select_vlserver._entry.46, section ".printk_index", align 4
@afs_select_vlserver._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_select_vlserver._entry_ptr.49 = internal global ptr @afs_select_vlserver._entry.48, section ".printk_index", align 4
@afs_select_vlserver._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.1, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s]     VL address %d/%d\0A\00", [33 x i8] zeroinitializer }, align 32
@afs_select_vlserver._entry_ptr.52 = internal global ptr @afs_select_vlserver._entry.50, section ".printk_index", align 4
@afs_select_vlserver._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.1, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] <== %s() = t %pISpc\0A\00", [34 x i8] zeroinitializer }, align 32
@afs_select_vlserver._entry_ptr.55 = internal global ptr @afs_select_vlserver._entry.53, section ".printk_index", align 4
@afs_select_vlserver._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.1, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s]     next\0A\00", [45 x i8] zeroinitializer }, align 32
@afs_select_vlserver._entry_ptr.58 = internal global ptr @afs_select_vlserver._entry.56, section ".printk_index", align 4
@afs_select_vlserver._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.1, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%-6.6s] <== %s() = f [failed %d]\0A\00", [61 x i8] zeroinitializer }, align 32
@afs_select_vlserver._entry_ptr.61 = internal global ptr @afs_select_vlserver._entry.59, section ".printk_index", align 4
@afs_start_vl_iteration.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@afs_vl_dump_edestaddrreq.count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@afs_vl_dump_edestaddrreq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\015EDESTADDR occurred\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"afs_vl_dump_edestaddrreq\00", [39 x i8] zeroinitializer }, align 32
@afs_vl_dump_edestaddrreq._entry_ptr = internal global ptr @afs_vl_dump_edestaddrreq._entry, section ".printk_index", align 4
@afs_vl_dump_edestaddrreq._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015VC: ut=%lx ix=%u ni=%hu fl=%hx err=%hd\0A\00", [54 x i8] zeroinitializer }, align 32
@afs_vl_dump_edestaddrreq._entry_ptr.66 = internal global ptr @afs_vl_dump_edestaddrreq._entry.64, section ".printk_index", align 4
@afs_vl_dump_edestaddrreq._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\015VC: SL nr=%u ix=%u\0A\00", [42 x i8] zeroinitializer }, align 32
@afs_vl_dump_edestaddrreq._entry_ptr.69 = internal global ptr @afs_vl_dump_edestaddrreq._entry.67, section ".printk_index", align 4
@afs_vl_dump_edestaddrreq._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.63, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015VC: server %s+%hu fl=%lx E=%hd\0A\00", [62 x i8] zeroinitializer }, align 32
@afs_vl_dump_edestaddrreq._entry_ptr.72 = internal global ptr @afs_vl_dump_edestaddrreq._entry.70, section ".printk_index", align 4
@afs_vl_dump_edestaddrreq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.73 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@afs_vl_dump_edestaddrreq._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.63, ptr @.str.2, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\015VC:  - nr=%u/%u/%u pf=%u\0A\00", [36 x i8] zeroinitializer }, align 32
@afs_vl_dump_edestaddrreq._entry_ptr.76 = internal global ptr @afs_vl_dump_edestaddrreq._entry.74, section ".printk_index", align 4
@afs_vl_dump_edestaddrreq._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.63, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\015VC:  - R=%lx F=%lx\0A\00", [42 x i8] zeroinitializer }, align 32
@afs_vl_dump_edestaddrreq._entry_ptr.79 = internal global ptr @afs_vl_dump_edestaddrreq._entry.77, section ".printk_index", align 4
@afs_vl_dump_edestaddrreq._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.63, ptr @.str.2, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\015VC:  - current\0A\00", [46 x i8] zeroinitializer }, align 32
@afs_vl_dump_edestaddrreq._entry_ptr.82 = internal global ptr @afs_vl_dump_edestaddrreq._entry.80, section ".printk_index", align 4
@afs_vl_dump_edestaddrreq._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.63, ptr @.str.2, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015AC: t=%lx ax=%u ac=%d er=%d r=%u ni=%u\0A\00", [54 x i8] zeroinitializer }, align 32
@afs_vl_dump_edestaddrreq._entry_ptr.85 = internal global ptr @afs_vl_dump_edestaddrreq._entry.83, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.88 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 32767, i64 4294967164, i64 4294967183, i64 4294967184, i64 4294967185, i64 4294967186, i64 4294967192, i64 4294967193, i64 4294967195, i64 4294967197, i64 4294967201, i64 4294967234]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 32, i64 363521, i64 363542, i64 363547]
@__sancov_gen_cov_switch_values.90 = internal global [6 x i64] [i64 4, i64 16, i64 65423, i64 65435, i64 65437, i64 65447]
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 92, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 98, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 114, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 145, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 150, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 156, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 161, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 169, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 179, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 208, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 215, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 219, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 222, i32 10 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 237, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 244, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 246, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 250, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 279, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 288, i32 13 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 296, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 297, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 302, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 306, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 310, i32 6 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 311, i32 5 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 314, i32 5 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 317, i32 6 }
@___asan_gen_.271 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.275 = private constant [22 x i8] c"../fs/afs/vl_rotate.c\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 322, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 695, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 723, i32 2 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @afs_select_vlserver._entry, ptr @afs_select_vlserver._entry.12, ptr @afs_select_vlserver._entry.15, ptr @afs_select_vlserver._entry.18, ptr @afs_select_vlserver._entry.21, ptr @afs_select_vlserver._entry.24, ptr @afs_select_vlserver._entry.27, ptr @afs_select_vlserver._entry.3, ptr @afs_select_vlserver._entry.30, ptr @afs_select_vlserver._entry.33, ptr @afs_select_vlserver._entry.36, ptr @afs_select_vlserver._entry.39, ptr @afs_select_vlserver._entry.42, ptr @afs_select_vlserver._entry.46, ptr @afs_select_vlserver._entry.48, ptr @afs_select_vlserver._entry.50, ptr @afs_select_vlserver._entry.53, ptr @afs_select_vlserver._entry.56, ptr @afs_select_vlserver._entry.59, ptr @afs_select_vlserver._entry.6, ptr @afs_select_vlserver._entry.9, ptr @afs_select_vlserver._entry_ptr, ptr @afs_select_vlserver._entry_ptr.11, ptr @afs_select_vlserver._entry_ptr.14, ptr @afs_select_vlserver._entry_ptr.17, ptr @afs_select_vlserver._entry_ptr.20, ptr @afs_select_vlserver._entry_ptr.23, ptr @afs_select_vlserver._entry_ptr.26, ptr @afs_select_vlserver._entry_ptr.29, ptr @afs_select_vlserver._entry_ptr.32, ptr @afs_select_vlserver._entry_ptr.35, ptr @afs_select_vlserver._entry_ptr.38, ptr @afs_select_vlserver._entry_ptr.41, ptr @afs_select_vlserver._entry_ptr.44, ptr @afs_select_vlserver._entry_ptr.47, ptr @afs_select_vlserver._entry_ptr.49, ptr @afs_select_vlserver._entry_ptr.5, ptr @afs_select_vlserver._entry_ptr.52, ptr @afs_select_vlserver._entry_ptr.55, ptr @afs_select_vlserver._entry_ptr.58, ptr @afs_select_vlserver._entry_ptr.61, ptr @afs_select_vlserver._entry_ptr.8, ptr @afs_vl_dump_edestaddrreq._entry, ptr @afs_vl_dump_edestaddrreq._entry.64, ptr @afs_vl_dump_edestaddrreq._entry.67, ptr @afs_vl_dump_edestaddrreq._entry.70, ptr @afs_vl_dump_edestaddrreq._entry.74, ptr @afs_vl_dump_edestaddrreq._entry.77, ptr @afs_vl_dump_edestaddrreq._entry.80, ptr @afs_vl_dump_edestaddrreq._entry.83, ptr @afs_vl_dump_edestaddrreq._entry_ptr, ptr @afs_vl_dump_edestaddrreq._entry_ptr.66, ptr @afs_vl_dump_edestaddrreq._entry_ptr.69, ptr @afs_vl_dump_edestaddrreq._entry_ptr.72, ptr @afs_vl_dump_edestaddrreq._entry_ptr.76, ptr @afs_vl_dump_edestaddrreq._entry_ptr.79, ptr @afs_vl_dump_edestaddrreq._entry_ptr.82, ptr @afs_vl_dump_edestaddrreq._entry_ptr.85, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @afs_vl_dump_edestaddrreq.count, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.88], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_vlserver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_vlserver._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_vlserver._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_vlserver._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_vlserver._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_vlserver._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_vlserver._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_vlserver._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_vlserver._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_vlserver._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_vlserver._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_vlserver._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_vlserver._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_vlserver._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_vlserver._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_vlserver._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_vlserver._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_vlserver._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_vlserver._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_vlserver._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_select_vlserver._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_vl_dump_edestaddrreq.count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_vl_dump_edestaddrreq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_vl_dump_edestaddrreq._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_vl_dump_edestaddrreq._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_vl_dump_edestaddrreq._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_vl_dump_edestaddrreq._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_vl_dump_edestaddrreq._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_vl_dump_edestaddrreq._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_vl_dump_edestaddrreq._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @afs_begin_vlserver_operation(ptr nocapture noundef %vc, ptr noundef %cell, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %vc, i32 0, i32 48)
  %cell1 = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 1
  %1 = ptrtoint ptr %cell1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cell, ptr %cell1, align 4
  %key2 = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 4
  %2 = ptrtoint ptr %key2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %key, ptr %key2, align 4
  %error = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 7
  %3 = ptrtoint ptr %error to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -89, ptr %error, align 2
  %error3 = getelementptr inbounds %struct.afs_addr_cursor, ptr %vc, i32 0, i32 5
  %4 = ptrtoint ptr %error3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 32767, ptr %error3, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stack.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %13 = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %entry.if.then_crit_edge, !prof !140

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

signal_pending.exit:                              ; preds = %entry
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %10, align 4
  %and1.i.i.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not, label %signal_pending.exit.return_crit_edge, label %signal_pending.exit.if.then_crit_edge

signal_pending.exit.if.then_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

signal_pending.exit.return_crit_edge:             ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %signal_pending.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %16 = ptrtoint ptr %error to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -4, ptr %error, align 2
  %flags = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 8
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %flags, align 4
  %19 = or i16 %18, 1
  store i16 %19, ptr %flags, align 4
  br label %return

return:                                           ; preds = %if.then, %signal_pending.exit.return_crit_edge
  %tobool.not16 = phi i1 [ true, %signal_pending.exit.return_crit_edge ], [ false, %if.then ]
  ret i1 %tobool.not16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @afs_select_vlserver(ptr noundef %vc) local_unnamed_addr #1 align 64 {
entry:
  %__wbq_entry.i = alloca %struct.wait_bit_queue_entry, align 4
  %e = alloca %struct.afs_error, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e) #8
  %0 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %e, align 4, !annotation !141
  %error1 = getelementptr inbounds %struct.afs_addr_cursor, ptr %vc, i32 0, i32 5
  %1 = ptrtoint ptr %error1 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %error1, align 4
  %conv = sext i16 %2 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %3 = load i32, ptr @afs_debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.end, !prof !140

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i722 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i722 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %untried = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 5
  %8 = ptrtoint ptr %untried to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %untried, align 4
  %index = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 6
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %index, align 4
  %conv5 = sext i16 %11 to i32
  %tried = getelementptr inbounds %struct.afs_addr_cursor, ptr %vc, i32 0, i32 1
  %12 = ptrtoint ptr %tried to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tried, align 4
  %index8 = getelementptr inbounds %struct.afs_addr_cursor, ptr %vc, i32 0, i32 2
  %14 = ptrtoint ptr %index8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %index8, align 4
  %conv9 = sext i8 %15 to i32
  %abort_code = getelementptr inbounds %struct.afs_addr_cursor, ptr %vc, i32 0, i32 6
  %16 = ptrtoint ptr %abort_code to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %abort_code, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1, i32 noundef %9, i32 noundef %conv5, i32 noundef %13, i32 noundef %conv9, i32 noundef %conv, i32 noundef %17) #11
  br label %do.end13

do.end13:                                         ; preds = %do.end, %entry.do.end13_crit_edge
  %flags = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 8
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags, align 4
  %20 = and i16 %19, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool16.not = icmp eq i16 %20, 0
  br i1 %tobool16.not, label %if.end40, label %do.body18

do.body18:                                        ; preds = %do.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %21 = load i32, ptr @afs_debug, align 4
  %and19 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body18.cleanup612_crit_edge, label %do.end30, !prof !140

do.body18.cleanup612_crit_edge:                   ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup612

do.end30:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %22 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i723 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i723 to ptr
  %task33 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task33, align 8
  %comm34 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 101
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm34, ptr noundef nonnull @.str.1) #11
  br label %cleanup612

if.end40:                                         ; preds = %do.end13
  %nr_iterations = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 9
  %26 = ptrtoint ptr %nr_iterations to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %nr_iterations, align 2
  %inc = add i16 %27, 1
  store i16 %inc, ptr %nr_iterations, align 2
  %28 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv, label %sw.bb41 [
    i32 32767, label %if.end40.start_crit_edge
    i32 -95, label %do.body138
    i32 -103, label %sw.bb72
    i32 -132, label %if.end40.do.body84_crit_edge
    i32 -99, label %if.end40.do.body84_crit_edge760
    i32 -101, label %if.end40.do.body84_crit_edge761
    i32 -113, label %if.end40.do.body84_crit_edge762
    i32 -112, label %if.end40.do.body84_crit_edge763
    i32 -111, label %if.end40.do.body84_crit_edge764
    i32 -110, label %if.end40.do.body84_crit_edge765
    i32 -62, label %if.end40.do.body84_crit_edge766
    i32 -104, label %do.body109
  ]

if.end40.do.body84_crit_edge766:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body84

if.end40.do.body84_crit_edge765:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body84

if.end40.do.body84_crit_edge764:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body84

if.end40.do.body84_crit_edge763:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body84

if.end40.do.body84_crit_edge762:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body84

if.end40.do.body84_crit_edge761:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body84

if.end40.do.body84_crit_edge760:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body84

if.end40.do.body84_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body84

if.end40.start_crit_edge:                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %start

sw.bb41:                                          ; preds = %if.end40
  %error43 = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 7
  %29 = ptrtoint ptr %error43 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %2, ptr %error43, align 2
  %30 = or i16 %19, 1
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %flags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %32 = load i32, ptr @afs_debug, align 4
  %and48 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %sw.bb41.cleanup612_crit_edge, label %do.end59, !prof !140

sw.bb41.cleanup612_crit_edge:                     ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup612

do.end59:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #10
  %33 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i724 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i724 to ptr
  %task62 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task62 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task62, align 8
  %comm63 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 101
  %37 = ptrtoint ptr %error1 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %error1, align 4
  %conv67 = sext i16 %38 to i32
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm63, ptr noundef nonnull @.str.1, i32 noundef %conv67) #11
  br label %cleanup612

sw.bb72:                                          ; preds = %if.end40
  %abort_code74 = getelementptr inbounds %struct.afs_addr_cursor, ptr %vc, i32 0, i32 6
  %39 = ptrtoint ptr %abort_code74 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %abort_code74, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %40, label %sw.default77 [
    i32 363521, label %sw.bb72.sw.bb75_crit_edge
    i32 363542, label %sw.bb72.sw.bb75_crit_edge767
    i32 363547, label %sw.bb72.sw.bb75_crit_edge768
  ]

sw.bb72.sw.bb75_crit_edge768:                     ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb75

sw.bb72.sw.bb75_crit_edge767:                     ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb75

sw.bb72.sw.bb75_crit_edge:                        ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb75

sw.bb75:                                          ; preds = %sw.bb72.sw.bb75_crit_edge, %sw.bb72.sw.bb75_crit_edge767, %sw.bb72.sw.bb75_crit_edge768
  %error76 = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 7
  %42 = ptrtoint ptr %error76 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 -121, ptr %error76, align 2
  br label %do.body517

sw.default77:                                     ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #10
  %call80 = tail call i32 @afs_abort_to_error(i32 noundef %40) #8
  %conv81 = trunc i32 %call80 to i16
  br label %failed.sink.split

do.body84:                                        ; preds = %if.end40.do.body84_crit_edge, %if.end40.do.body84_crit_edge760, %if.end40.do.body84_crit_edge761, %if.end40.do.body84_crit_edge762, %if.end40.do.body84_crit_edge763, %if.end40.do.body84_crit_edge764, %if.end40.do.body84_crit_edge765, %if.end40.do.body84_crit_edge766
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %43 = load i32, ptr @afs_debug, align 4
  %and85 = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %do.body84.do.end105_crit_edge, label %do.end96, !prof !140

do.body84.do.end105_crit_edge:                    ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end105

do.end96:                                         ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #10
  %44 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i725 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i725 to ptr
  %task99 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task99 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task99, align 8
  %comm100 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 101
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %comm100, i32 noundef %conv) #11
  br label %do.end105

do.end105:                                        ; preds = %do.end96, %do.body84.do.end105_crit_edge
  %error107 = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 7
  %48 = ptrtoint ptr %error107 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %2, ptr %error107, align 2
  %49 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr755 = load ptr, ptr %vc, align 4
  br label %do.body425

do.body109:                                       ; preds = %if.end40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %50 = load i32, ptr @afs_debug, align 4
  %and110 = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %do.body109.do.end130_crit_edge, label %do.end121, !prof !140

do.body109.do.end130_crit_edge:                   ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end130

do.end121:                                        ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #10
  %51 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i726 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i726 to ptr
  %task124 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task124 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task124, align 8
  %comm125 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 101
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %comm125) #11
  br label %do.end130

do.end130:                                        ; preds = %do.end121, %do.body109.do.end130_crit_edge
  %error132 = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 7
  %55 = ptrtoint ptr %error132 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %2, ptr %error132, align 2
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %flags, align 4
  %58 = or i16 %57, 2
  store i16 %58, ptr %flags, align 4
  br label %do.body517

do.body138:                                       ; preds = %if.end40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %59 = load i32, ptr @afs_debug, align 4
  %and139 = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %do.body138.do.body517_crit_edge, label %do.end150, !prof !140

do.body138.do.body517_crit_edge:                  ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body517

do.end150:                                        ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #10
  %60 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i727 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i727 to ptr
  %task153 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task153 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task153, align 8
  %comm154 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 101
  %call156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %comm154) #11
  br label %do.body517

do.end172:                                        ; preds = %if.then545
  call void @__sanitizer_cov_trace_pc() #10
  %64 = call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i728 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i728 to ptr
  %task175 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task175 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task175, align 8
  %comm176 = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 101
  %call178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %comm176) #11
  br label %do.end181

do.end181:                                        ; preds = %if.then545.do.end181_crit_edge, %do.end172
  %call183 = call i32 @afs_end_cursor(ptr noundef %vc) #8
  %cell = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 1
  %68 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cell, align 4
  %net = getelementptr inbounds %struct.afs_cell, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %net, align 4
  %72 = ptrtoint ptr %server_list250 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %server_list250, align 4
  call void @afs_put_vlserverlist(ptr noundef %71, ptr noundef %73) #8
  %74 = ptrtoint ptr %server_list250 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %server_list250, align 4
  %75 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %flags, align 4
  %77 = and i16 %76, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool188.not = icmp eq i16 %77, 0
  br i1 %tobool188.not, label %if.end190, label %do.end181.failed_crit_edge

do.end181.failed_crit_edge:                       ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

if.end190:                                        ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #10
  %or193 = or i16 %76, 4
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %or193, ptr %flags, align 4
  br label %start

start:                                            ; preds = %if.end190, %if.end40.start_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %79 = load i32, ptr @afs_debug, align 4
  %and196 = and i32 %79, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool197.not = icmp eq i32 %and196, 0
  br i1 %tobool197.not, label %start.do.end216_crit_edge, label %do.end207, !prof !140

start.do.end216_crit_edge:                        ; preds = %start
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end216

do.end207:                                        ; preds = %start
  call void @__sanitizer_cov_trace_pc() #10
  %80 = call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i729 = and i32 %80, -16384
  %81 = inttoptr i32 %and.i729 to ptr
  %task210 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %task210 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %task210, align 8
  %comm211 = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 101
  %call213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %comm211) #11
  br label %do.end216

do.end216:                                        ; preds = %do.end207, %start.do.end216_crit_edge
  %cell1.i = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 1
  %84 = ptrtoint ptr %cell1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cell1.i, align 4
  %dns_source.i = getelementptr inbounds %struct.afs_cell, ptr %85, i32 0, i32 14
  %86 = ptrtoint ptr %dns_source.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %bf.load.i = load i16, ptr %dns_source.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %bf.load.i)
  %cmp.i = icmp ult i16 %bf.load.i, 256
  br i1 %cmp.i, label %do.end216.if.then.i_crit_edge, label %lor.lhs.false.i

do.end216.if.then.i_crit_edge:                    ; preds = %do.end216
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %do.end216
  %dns_expiry.i = getelementptr inbounds %struct.afs_cell, ptr %85, i32 0, i32 7
  %87 = ptrtoint ptr %dns_expiry.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %dns_expiry.i, align 8
  %call.i = call i64 @ktime_get_real_seconds() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %88, i64 %call.i)
  %cmp2.not.i = icmp sgt i64 %88, %call.i
  br i1 %cmp2.not.i, label %lor.lhs.false.i.if.end67.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i.if.end67.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %do.end216.if.then.i_crit_edge
  %dns_lookup_count3.i = getelementptr inbounds %struct.afs_cell, ptr %85, i32 0, i32 15
  %89 = ptrtoint ptr %dns_lookup_count3.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %dns_lookup_count3.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !142
  %flags.i = getelementptr inbounds %struct.afs_cell, ptr %85, i32 0, i32 11
  call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #8
  call void @afs_queue_cell(ptr noundef %85, i32 noundef 2) #8
  %91 = ptrtoint ptr %dns_source.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %bf.load9.i = load i16, ptr %dns_source.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %bf.load9.i)
  %cmp12.i = icmp ult i16 %bf.load9.i, 256
  br i1 %cmp12.i, label %if.then13.i, label %if.then.i.if.end67.i_crit_edge

if.then.i.if.end67.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.i

if.then13.i:                                      ; preds = %if.then.i
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 54) #8
  %92 = ptrtoint ptr %dns_lookup_count3.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %dns_lookup_count3.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !143
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %90)
  %cmp30.not.i = icmp eq i32 %93, %90
  br i1 %cmp30.not.i, label %if.then31.i, label %if.then13.i.if.end58.i_crit_edge

if.then13.i.if.end58.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.then31.i:                                      ; preds = %if.then13.i
  %call33.i = call ptr @__var_waitqueue(ptr noundef %dns_lookup_count3.i) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__wbq_entry.i) #8
  %94 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry.i, i32 0, i32 1
  %95 = call ptr @memset(ptr %__wbq_entry.i, i32 255, i32 32)
  call void @init_wait_var_entry(ptr noundef nonnull %__wbq_entry.i, ptr noundef %dns_lookup_count3.i, i32 noundef 0) #8
  %call36132.i = call i32 @prepare_to_wait_event(ptr noundef %call33.i, ptr noundef %94, i32 noundef 1) #8
  %96 = ptrtoint ptr %dns_lookup_count3.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %dns_lookup_count3.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !144
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %90)
  %cmp47.not133.i = icmp eq i32 %97, %90
  br i1 %cmp47.not133.i, label %if.then31.i.if.end.i_crit_edge, label %if.then31.i.if.end53.thread126.i_crit_edge

if.then31.i.if.end53.thread126.i_crit_edge:       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.thread126.i

if.then31.i.if.end.i_crit_edge:                   ; preds = %if.then31.i
  br label %if.end.i

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %if.then31.i.if.end.i_crit_edge
  %call36134.i = phi i32 [ %call36.i, %cleanup.i.if.end.i_crit_edge ], [ %call36132.i, %if.then31.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36134.i)
  %tobool.not.i = icmp eq i32 %call36134.i, 0
  br i1 %tobool.not.i, label %cleanup.i, label %if.end53.i

cleanup.i:                                        ; preds = %if.end.i
  call void @schedule() #8
  %call36.i = call i32 @prepare_to_wait_event(ptr noundef %call33.i, ptr noundef %94, i32 noundef 1) #8
  %98 = ptrtoint ptr %dns_lookup_count3.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %dns_lookup_count3.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !144
  %cmp47.not.i = icmp eq i32 %99, %90
  br i1 %cmp47.not.i, label %cleanup.i.if.end.i_crit_edge, label %cleanup.i.if.end53.thread126.i_crit_edge

cleanup.i.if.end53.thread126.i_crit_edge:         ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.thread126.i

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end53.thread126.i:                             ; preds = %cleanup.i.if.end53.thread126.i_crit_edge, %if.then31.i.if.end53.thread126.i_crit_edge
  call void @finish_wait(ptr noundef %call33.i, ptr noundef %94) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__wbq_entry.i) #8
  br label %if.end58.i

if.end53.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__wbq_entry.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36134.i)
  %cmp55.i = icmp slt i32 %call36134.i, 0
  br i1 %cmp55.i, label %if.end53.i.failed.sink.split_crit_edge, label %if.end53.i.if.end58.i_crit_edge

if.end53.i.if.end58.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.end53.i.failed.sink.split_crit_edge:           ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed.sink.split

if.end58.i:                                       ; preds = %if.end53.i.if.end58.i_crit_edge, %if.end53.thread126.i, %if.then13.i.if.end58.i_crit_edge
  %100 = ptrtoint ptr %dns_source.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %bf.load60.pr.i = load i16, ptr %dns_source.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %bf.load60.pr.i)
  %cmp63.i = icmp ult i16 %bf.load60.pr.i, 256
  br i1 %cmp63.i, label %if.end58.i.failed.sink.split_crit_edge, label %if.end58.i.if.end67.i_crit_edge

if.end58.i.if.end67.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.i

if.end58.i.failed.sink.split_crit_edge:           ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed.sink.split

if.end67.i:                                       ; preds = %if.end58.i.if.end67.i_crit_edge, %if.then.i.if.end67.i_crit_edge, %lor.lhs.false.i.if.end67.i_crit_edge
  %vl_servers_lock.i = getelementptr inbounds %struct.afs_cell, ptr %85, i32 0, i32 25
  call void @_raw_read_lock(ptr noundef %vl_servers_lock.i) #8
  %dep_map.i = getelementptr inbounds %struct.afs_cell, ptr %85, i32 0, i32 25, i32 4
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool71.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool71.not.i, label %land.lhs.true.i, label %if.end67.i.do.end79.i_crit_edge

if.end67.i.do.end79.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end79.i

land.lhs.true.i:                                  ; preds = %if.end67.i
  %call72.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %tobool73.not.i = icmp eq i32 %call72.i, 0
  br i1 %tobool73.not.i, label %land.lhs.true.i.do.end79.i_crit_edge, label %land.lhs.true74.i

land.lhs.true.i.do.end79.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end79.i

land.lhs.true74.i:                                ; preds = %land.lhs.true.i
  %.b116.i = load i1, ptr @afs_start_vl_iteration.__warned, align 1
  br i1 %.b116.i, label %land.lhs.true74.i.do.end79.i_crit_edge, label %if.then76.i

land.lhs.true74.i.do.end79.i_crit_edge:           ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end79.i

if.then76.i:                                      ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @afs_start_vl_iteration.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 70, ptr noundef nonnull @.str.45) #8
  br label %do.end79.i

do.end79.i:                                       ; preds = %if.then76.i, %land.lhs.true74.i.do.end79.i_crit_edge, %land.lhs.true.i.do.end79.i_crit_edge, %if.end67.i.do.end79.i_crit_edge
  %vl_servers.i = getelementptr inbounds %struct.afs_cell, ptr %85, i32 0, i32 26
  %101 = ptrtoint ptr %vl_servers.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %vl_servers.i, align 8
  %tobool.not.i.i = icmp eq ptr %102, null
  br i1 %tobool.not.i.i, label %do.end79.i.afs_get_vlserverlist.exit.i_crit_edge, label %if.then.i.i

do.end79.i.afs_get_vlserverlist.exit.i_crit_edge: ; preds = %do.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %afs_get_vlserverlist.exit.i

if.then.i.i:                                      ; preds = %do.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  %usage.i.i = getelementptr inbounds %struct.afs_vlserver_list, ptr %102, i32 0, i32 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #8
  %103 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #8, !srcloc !145
  br label %afs_get_vlserverlist.exit.i

afs_get_vlserverlist.exit.i:                      ; preds = %if.then.i.i, %do.end79.i.afs_get_vlserverlist.exit.i_crit_edge
  %server_list.i = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 2
  %104 = ptrtoint ptr %server_list.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %102, ptr %server_list.i, align 4
  call void @_raw_read_unlock(ptr noundef %vl_servers_lock.i) #8
  %105 = ptrtoint ptr %server_list.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %server_list.i, align 4
  %nr_servers.i = getelementptr inbounds %struct.afs_vlserver_list, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %nr_servers.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %nr_servers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool84.not.i = icmp eq i8 %108, 0
  br i1 %tobool84.not.i, label %afs_get_vlserverlist.exit.i.failed_crit_edge, label %if.end219

afs_get_vlserverlist.exit.i.failed_crit_edge:     ; preds = %afs_get_vlserverlist.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

if.end219:                                        ; preds = %afs_get_vlserverlist.exit.i
  %conv.i = zext i8 %108 to i32
  %notmask.i = shl nsw i32 -1, %conv.i
  %sub.i = xor i32 %notmask.i, -1
  %untried.i = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 5
  %109 = ptrtoint ptr %untried.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %sub.i, ptr %untried.i, align 4
  %index.i = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 6
  %110 = ptrtoint ptr %index.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 -1, ptr %index.i, align 4
  %111 = ptrtoint ptr %cell1.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cell1.i, align 4
  %net221 = getelementptr inbounds %struct.afs_cell, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %net221 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %net221, align 4
  %key = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 4
  %115 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %key, align 4
  %117 = ptrtoint ptr %server_list.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %server_list.i, align 4
  %call223 = call i32 @afs_send_vl_probes(ptr noundef %114, ptr noundef %116, ptr noundef %118) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %cmp = icmp slt i32 %call223, 0
  br i1 %cmp, label %if.end219.failed_set_error_crit_edge, label %if.end219.pick_server_crit_edge

if.end219.pick_server_crit_edge:                  ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #10
  br label %pick_server

if.end219.failed_set_error_crit_edge:             ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed_set_error

pick_server:                                      ; preds = %do.end538, %if.end219.pick_server_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %119 = load i32, ptr @afs_debug, align 4
  %and228 = and i32 %119, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228)
  %tobool229.not = icmp eq i32 %and228, 0
  br i1 %tobool229.not, label %pick_server.do.end249_crit_edge, label %do.end239, !prof !140

pick_server.do.end249_crit_edge:                  ; preds = %pick_server
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end249

do.end239:                                        ; preds = %pick_server
  call void @__sanitizer_cov_trace_pc() #10
  %120 = call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i730 = and i32 %120, -16384
  %121 = inttoptr i32 %and.i730 to ptr
  %task242 = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %task242 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %task242, align 8
  %comm243 = getelementptr inbounds %struct.task_struct, ptr %123, i32 0, i32 101
  %untried245 = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 5
  %124 = ptrtoint ptr %untried245 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %untried245, align 4
  %call246 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %comm243, i32 noundef %125) #11
  br label %do.end249

do.end249:                                        ; preds = %do.end239, %pick_server.do.end249_crit_edge
  %server_list250 = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 2
  %126 = ptrtoint ptr %server_list250 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %server_list250, align 4
  %untried251 = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 5
  %128 = ptrtoint ptr %untried251 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %untried251, align 4
  %call252 = call i32 @afs_wait_for_vl_probes(ptr noundef %127, i32 noundef %129) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call252)
  %cmp253 = icmp slt i32 %call252, 0
  br i1 %cmp253, label %do.end249.failed_set_error_crit_edge, label %if.end256

do.end249.failed_set_error_crit_edge:             ; preds = %do.end249
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed_set_error

if.end256:                                        ; preds = %do.end249
  %130 = ptrtoint ptr %server_list250 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %server_list250, align 4
  %preferred = getelementptr inbounds %struct.afs_vlserver_list, ptr %131, i32 0, i32 4
  %132 = ptrtoint ptr %preferred to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %preferred, align 2
  %conv258 = zext i8 %133 to i16
  %index259 = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 6
  %134 = ptrtoint ptr %index259 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %conv258, ptr %index259, align 4
  %135 = zext i8 %133 to i32
  %div3.i = lshr i32 %135, 5
  %arrayidx.i = getelementptr i32, ptr %untried251, i32 %div3.i
  %136 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %135, 31
  %138 = shl nuw i32 1, %and.i
  %139 = and i32 %138, %137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool264.not = icmp eq i32 %139, 0
  br i1 %tobool264.not, label %if.end266, label %if.end256.do.body297_crit_edge

if.end256.do.body297_crit_edge:                   ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body297

if.end266:                                        ; preds = %if.end256
  %140 = ptrtoint ptr %index259 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 -1, ptr %index259, align 4
  %nr_servers = getelementptr inbounds %struct.afs_vlserver_list, ptr %131, i32 0, i32 2
  %141 = ptrtoint ptr %nr_servers to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %nr_servers, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %cmp270744.not = icmp eq i8 %142, 0
  br i1 %cmp270744.not, label %if.end266.no_more_servers_crit_edge, label %if.end266.for.body_crit_edge

if.end266.for.body_crit_edge:                     ; preds = %if.end266
  br label %for.body

if.end266.no_more_servers_crit_edge:              ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_more_servers

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end266.for.body_crit_edge
  %rtt.0747 = phi i32 [ %rtt.2, %cleanup.for.body_crit_edge ], [ -1, %if.end266.for.body_crit_edge ]
  %i.0745 = phi i32 [ %inc290, %cleanup.for.body_crit_edge ], [ 0, %if.end266.for.body_crit_edge ]
  %server = getelementptr %struct.afs_vlserver_list, ptr %131, i32 0, i32 8, i32 %i.0745, i32 3
  %143 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %server, align 4
  %div3.i712 = lshr i32 %i.0745, 5
  %arrayidx.i713 = getelementptr i32, ptr %untried251, i32 %div3.i712
  %145 = ptrtoint ptr %arrayidx.i713 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile i32, ptr %arrayidx.i713, align 4
  %and.i714 = and i32 %i.0745, 31
  %147 = shl nuw i32 1, %and.i714
  %148 = and i32 %146, %147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool275.not = icmp eq i32 %148, 0
  br i1 %tobool275.not, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %flags276 = getelementptr inbounds %struct.afs_vlserver, ptr %144, i32 0, i32 2
  %149 = ptrtoint ptr %flags276 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile i32, ptr %flags276, align 4
  %151 = and i32 %150, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool278.not = icmp eq i32 %151, 0
  br i1 %tobool278.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end280

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end280:                                        ; preds = %lor.lhs.false
  %probe = getelementptr inbounds %struct.afs_vlserver, ptr %144, i32 0, i32 9
  %152 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %probe, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %153, i32 %rtt.0747)
  %cmp282 = icmp ult i32 %153, %rtt.0747
  br i1 %cmp282, label %if.then284, label %if.end280.cleanup_crit_edge

if.end280.cleanup_crit_edge:                      ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then284:                                       ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #10
  %conv285 = trunc i32 %i.0745 to i16
  %154 = ptrtoint ptr %index259 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %conv285, ptr %index259, align 4
  %155 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %probe, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then284, %if.end280.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %rtt.2 = phi i32 [ %rtt.0747, %lor.lhs.false.cleanup_crit_edge ], [ %rtt.0747, %for.body.cleanup_crit_edge ], [ %156, %if.then284 ], [ %rtt.0747, %if.end280.cleanup_crit_edge ]
  %inc290 = add nuw nsw i32 %i.0745, 1
  %157 = ptrtoint ptr %nr_servers to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %nr_servers, align 4
  %conv269 = zext i8 %158 to i32
  %cmp270 = icmp ult i32 %inc290, %conv269
  br i1 %cmp270, label %cleanup.for.body_crit_edge, label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup
  %159 = ptrtoint ptr %index259 to i32
  call void @__asan_load2_noabort(i32 %159)
  %.pr = load i16, ptr %index259, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %.pr)
  %cmp293 = icmp eq i16 %.pr, -1
  br i1 %cmp293, label %for.end.no_more_servers_crit_edge, label %for.end.do.body297_crit_edge

for.end.do.body297_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body297

for.end.no_more_servers_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_more_servers

do.body297:                                       ; preds = %for.end.do.body297_crit_edge, %if.end256.do.body297_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %160 = load i32, ptr @afs_debug, align 4
  %and298 = and i32 %160, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and298)
  %tobool299.not = icmp eq i32 %and298, 0
  br i1 %tobool299.not, label %do.body297.do.end320_crit_edge, label %do.end309, !prof !140

do.body297.do.end320_crit_edge:                   ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end320

do.end309:                                        ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #10
  %161 = call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i731 = and i32 %161, -16384
  %162 = inttoptr i32 %and.i731 to ptr
  %task312 = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 2
  %163 = ptrtoint ptr %task312 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %task312, align 8
  %comm313 = getelementptr inbounds %struct.task_struct, ptr %164, i32 0, i32 101
  %165 = ptrtoint ptr %index259 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %index259, align 4
  %conv316 = sext i16 %166 to i32
  %call317 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %comm313, i32 noundef %conv316) #11
  br label %do.end320

do.end320:                                        ; preds = %do.end309, %do.body297.do.end320_crit_edge
  %167 = ptrtoint ptr %index259 to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %index259, align 4
  %conv322 = sext i16 %168 to i32
  %rem.i = and i32 %conv322, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv322, 5
  %add.ptr.i = getelementptr i32, ptr %untried251, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %169 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %add.ptr.i, align 4
  %and.i719 = and i32 %170, %neg.i
  store i32 %and.i719, ptr %add.ptr.i, align 4
  %171 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %vc, align 4
  %cmp327.not = icmp eq ptr %172, null
  br i1 %cmp327.not, label %do.end370, label %do.end340, !prof !140

do.end340:                                        ; preds = %do.end320
  call void @__sanitizer_cov_trace_pc() #10
  %call342 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #11
  %call347 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #11
  %173 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %vc, align 4
  %175 = ptrtoint ptr %174 to i32
  %call354 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %175, i32 noundef 0) #11
  %176 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %vc, align 4
  %178 = ptrtoint ptr %177 to i32
  %call361 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %178, i32 noundef 0) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/vl_rotate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 215, 0\0A.popsection", ""() #8, !srcloc !146
  unreachable

do.end370:                                        ; preds = %do.end320
  %179 = ptrtoint ptr %server_list250 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %server_list250, align 4
  %181 = ptrtoint ptr %index259 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %index259, align 4
  %idxprom = sext i16 %182 to i32
  %server375 = getelementptr %struct.afs_vlserver_list, ptr %180, i32 0, i32 8, i32 %idxprom, i32 3
  %183 = ptrtoint ptr %server375 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %server375, align 4
  %server376 = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 3
  %185 = ptrtoint ptr %server376 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %184, ptr %server376, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %186 = load i32, ptr @afs_debug, align 4
  %and378 = and i32 %186, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and378)
  %tobool379.not = icmp eq i32 %and378, 0
  br i1 %tobool379.not, label %do.end370.do.end399_crit_edge, label %do.end389, !prof !140

do.end370.do.end399_crit_edge:                    ; preds = %do.end370
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end399

do.end389:                                        ; preds = %do.end370
  call void @__sanitizer_cov_trace_pc() #10
  %187 = call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i732 = and i32 %187, -16384
  %188 = inttoptr i32 %and.i732 to ptr
  %task392 = getelementptr inbounds %struct.thread_info, ptr %188, i32 0, i32 2
  %189 = ptrtoint ptr %task392 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %task392, align 8
  %comm393 = getelementptr inbounds %struct.task_struct, ptr %190, i32 0, i32 101
  %name = getelementptr inbounds %struct.afs_vlserver, ptr %184, i32 0, i32 12
  %call396 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm393, ptr noundef %name) #11
  br label %do.end399

do.end399:                                        ; preds = %do.end389, %do.end370.do.end399_crit_edge
  %lock = getelementptr inbounds %struct.afs_vlserver, ptr %184, i32 0, i32 3
  call void @_raw_read_lock(ptr noundef %lock) #8
  %dep_map = getelementptr inbounds %struct.afs_vlserver, ptr %184, i32 0, i32 3, i32 4
  %call.i733 = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i733)
  %tobool403.not = icmp eq i32 %call.i733, 0
  br i1 %tobool403.not, label %land.lhs.true, label %do.end399.do.end411_crit_edge

do.end399.do.end411_crit_edge:                    ; preds = %do.end399
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end411

land.lhs.true:                                    ; preds = %do.end399
  %call404 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call404)
  %tobool405.not = icmp eq i32 %call404, 0
  br i1 %tobool405.not, label %land.lhs.true.do.end411_crit_edge, label %land.lhs.true406

land.lhs.true.do.end411_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end411

land.lhs.true406:                                 ; preds = %land.lhs.true
  %.b711 = load i1, ptr @afs_select_vlserver.__warned, align 1
  br i1 %.b711, label %land.lhs.true406.do.end411_crit_edge, label %if.then408

land.lhs.true406.do.end411_crit_edge:             ; preds = %land.lhs.true406
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end411

if.then408:                                       ; preds = %land.lhs.true406
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @afs_select_vlserver.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 223, ptr noundef nonnull @.str.45) #8
  br label %do.end411

do.end411:                                        ; preds = %if.then408, %land.lhs.true406.do.end411_crit_edge, %land.lhs.true.do.end411_crit_edge, %do.end399.do.end411_crit_edge
  %addresses = getelementptr inbounds %struct.afs_vlserver, ptr %184, i32 0, i32 1
  %191 = ptrtoint ptr %addresses to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %addresses, align 4
  %tobool.not.i734 = icmp eq ptr %192, null
  br i1 %tobool.not.i734, label %do.end411.if.end422_crit_edge, label %if.then.i735

do.end411.if.end422_crit_edge:                    ; preds = %do.end411
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end422

if.then.i735:                                     ; preds = %do.end411
  %usage.i = getelementptr inbounds %struct.afs_addr_list, ptr %192, i32 0, i32 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #8
  %193 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #8, !srcloc !147
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %193, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i735.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !148

if.then.i735.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i735
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i735
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %194 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %194)
  %.not.i.i.i.i = icmp sgt i32 %194, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end422_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !140

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end422_crit_edge:              ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end422

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i735.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i735.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #8
  br label %if.end422

if.end422:                                        ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end422_crit_edge, %do.end411.if.end422_crit_edge
  call void @_raw_read_unlock(ptr noundef %lock) #8
  %195 = getelementptr inbounds i8, ptr %vc, i32 4
  %196 = call ptr @memset(ptr %195, i32 0, i32 16)
  %197 = ptrtoint ptr %vc to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %192, ptr %vc, align 4
  %index424 = getelementptr inbounds %struct.afs_addr_cursor, ptr %vc, i32 0, i32 2
  %198 = ptrtoint ptr %index424 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 -1, ptr %index424, align 4
  br label %do.body425

do.body425:                                       ; preds = %if.end422, %do.end105
  %199 = phi ptr [ %.pr755, %do.end105 ], [ %192, %if.end422 ]
  %tobool428.not = icmp eq ptr %199, null
  br i1 %tobool428.not, label %do.end440, label %do.end456, !prof !148

do.end440:                                        ; preds = %do.body425
  call void @__sanitizer_cov_trace_pc() #10
  %call442 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #11
  %call447 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/vl_rotate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 237, 0\0A.popsection", ""() #8, !srcloc !149
  unreachable

do.end456:                                        ; preds = %do.body425
  %call458 = call zeroext i1 @afs_iterate_addresses(ptr noundef %vc) #8
  br i1 %call458, label %do.body461, label %do.end456.do.body517_crit_edge

do.end456.do.body517_crit_edge:                   ; preds = %do.end456
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body517

do.body461:                                       ; preds = %do.end456
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %200 = load i32, ptr @afs_debug, align 4
  %and462 = and i32 %200, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and462)
  %tobool463.not = icmp eq i32 %and462, 0
  br i1 %tobool463.not, label %do.body461.do.body489_crit_edge, label %do.end473, !prof !140

do.body461.do.body489_crit_edge:                  ; preds = %do.body461
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body489

do.end473:                                        ; preds = %do.body461
  call void @__sanitizer_cov_trace_pc() #10
  %201 = call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i737 = and i32 %201, -16384
  %202 = inttoptr i32 %and.i737 to ptr
  %task476 = getelementptr inbounds %struct.thread_info, ptr %202, i32 0, i32 2
  %203 = ptrtoint ptr %task476 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %task476, align 8
  %comm477 = getelementptr inbounds %struct.task_struct, ptr %204, i32 0, i32 101
  %index480 = getelementptr inbounds %struct.afs_addr_cursor, ptr %vc, i32 0, i32 2
  %205 = ptrtoint ptr %index480 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %index480, align 4
  %conv481 = sext i8 %206 to i32
  %207 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %vc, align 4
  %nr_addrs = getelementptr inbounds %struct.afs_addr_list, ptr %208, i32 0, i32 4
  %209 = ptrtoint ptr %nr_addrs to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %nr_addrs, align 1
  %conv484 = zext i8 %210 to i32
  %call485 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %comm477, i32 noundef %conv481, i32 noundef %conv484) #11
  br label %do.body489

do.body489:                                       ; preds = %do.end473, %do.body461.do.body489_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %211 = load i32, ptr @afs_debug, align 4
  %and490 = and i32 %211, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and490)
  %tobool491.not = icmp eq i32 %and490, 0
  br i1 %tobool491.not, label %do.body489.cleanup612_crit_edge, label %do.end501, !prof !140

do.body489.cleanup612_crit_edge:                  ; preds = %do.body489
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup612

do.end501:                                        ; preds = %do.body489
  call void @__sanitizer_cov_trace_pc() #10
  %212 = call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i738 = and i32 %212, -16384
  %213 = inttoptr i32 %and.i738 to ptr
  %task504 = getelementptr inbounds %struct.thread_info, ptr %213, i32 0, i32 2
  %214 = ptrtoint ptr %task504 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %task504, align 8
  %comm505 = getelementptr inbounds %struct.task_struct, ptr %215, i32 0, i32 101
  %216 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %vc, align 4
  %index510 = getelementptr inbounds %struct.afs_addr_cursor, ptr %vc, i32 0, i32 2
  %218 = ptrtoint ptr %index510 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %index510, align 4
  %idxprom511 = sext i8 %219 to i32
  %transport = getelementptr %struct.afs_addr_list, ptr %217, i32 0, i32 10, i32 %idxprom511, i32 4
  %call513 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %comm505, ptr noundef nonnull @.str.1, ptr noundef %transport) #11
  br label %cleanup612

do.body517:                                       ; preds = %do.end456.do.body517_crit_edge, %do.end150, %do.body138.do.body517_crit_edge, %do.end130, %sw.bb75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %220 = load i32, ptr @afs_debug, align 4
  %and518 = and i32 %220, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and518)
  %tobool519.not = icmp eq i32 %and518, 0
  br i1 %tobool519.not, label %do.body517.do.end538_crit_edge, label %do.end529, !prof !140

do.body517.do.end538_crit_edge:                   ; preds = %do.body517
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end538

do.end529:                                        ; preds = %do.body517
  call void @__sanitizer_cov_trace_pc() #10
  %221 = call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i739 = and i32 %221, -16384
  %222 = inttoptr i32 %and.i739 to ptr
  %task532 = getelementptr inbounds %struct.thread_info, ptr %222, i32 0, i32 2
  %223 = ptrtoint ptr %task532 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %task532, align 8
  %comm533 = getelementptr inbounds %struct.task_struct, ptr %224, i32 0, i32 101
  %call535 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %comm533) #11
  br label %do.end538

do.end538:                                        ; preds = %do.end529, %do.body517.do.end538_crit_edge
  %call540 = call i32 @afs_end_cursor(ptr noundef %vc) #8
  br label %pick_server

no_more_servers:                                  ; preds = %for.end.no_more_servers_crit_edge, %if.end266.no_more_servers_crit_edge
  %225 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %flags, align 4
  %227 = and i16 %226, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %227)
  %tobool544.not = icmp eq i16 %227, 0
  br i1 %tobool544.not, label %if.end546, label %if.then545

if.then545:                                       ; preds = %no_more_servers
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %228 = load i32, ptr @afs_debug, align 4
  %and161 = and i32 %228, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %if.then545.do.end181_crit_edge, label %do.end172, !prof !140

if.then545.do.end181_crit_edge:                   ; preds = %if.then545
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end181

if.end546:                                        ; preds = %no_more_servers
  %229 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 -89, ptr %e, align 4
  %responded = getelementptr inbounds %struct.afs_error, ptr %e, i32 0, i32 1
  %230 = ptrtoint ptr %responded to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 0, ptr %responded, align 2
  %231 = ptrtoint ptr %server_list250 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %server_list250, align 4
  %nr_servers550748 = getelementptr inbounds %struct.afs_vlserver_list, ptr %232, i32 0, i32 2
  %233 = ptrtoint ptr %nr_servers550748 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %nr_servers550748, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %234)
  %cmp552750.not = icmp eq i8 %234, 0
  br i1 %cmp552750.not, label %if.end546.for.end577_crit_edge, label %if.end546.for.body554_crit_edge

if.end546.for.body554_crit_edge:                  ; preds = %if.end546
  br label %for.body554

if.end546.for.end577_crit_edge:                   ; preds = %if.end546
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end577

for.body554:                                      ; preds = %do.end568.for.body554_crit_edge, %if.end546.for.body554_crit_edge
  %235 = phi ptr [ %247, %do.end568.for.body554_crit_edge ], [ %232, %if.end546.for.body554_crit_edge ]
  %i.1751 = phi i32 [ %inc576, %do.end568.for.body554_crit_edge ], [ 0, %if.end546.for.body554_crit_edge ]
  %server559 = getelementptr %struct.afs_vlserver_list, ptr %235, i32 0, i32 8, i32 %i.1751, i32 3
  %236 = ptrtoint ptr %server559 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %server559, align 4
  %flags560 = getelementptr inbounds %struct.afs_vlserver, ptr %237, i32 0, i32 2
  %238 = ptrtoint ptr %flags560 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load volatile i32, ptr %flags560, align 4
  %240 = and i32 %239, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %tobool562.not = icmp eq i32 %240, 0
  br i1 %tobool562.not, label %for.body554.do.end568_crit_edge, label %if.then563

for.body554.do.end568_crit_edge:                  ; preds = %for.body554
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end568

if.then563:                                       ; preds = %for.body554
  call void @__sanitizer_cov_trace_pc() #10
  %241 = ptrtoint ptr %responded to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 1, ptr %responded, align 2
  br label %do.end568

do.end568:                                        ; preds = %if.then563, %for.body554.do.end568_crit_edge
  %error571 = getelementptr inbounds %struct.afs_vlserver, ptr %237, i32 0, i32 9, i32 2
  %242 = ptrtoint ptr %error571 to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load volatile i16, ptr %error571, align 4
  %conv572 = sext i16 %243 to i32
  %abort_code574 = getelementptr inbounds %struct.afs_vlserver, ptr %237, i32 0, i32 9, i32 1
  %244 = ptrtoint ptr %abort_code574 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %abort_code574, align 4
  call void @afs_prioritise_error(ptr noundef nonnull %e, i32 noundef %conv572, i32 noundef %245) #8
  %inc576 = add nuw nsw i32 %i.1751, 1
  %246 = ptrtoint ptr %server_list250 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %server_list250, align 4
  %nr_servers550 = getelementptr inbounds %struct.afs_vlserver_list, ptr %247, i32 0, i32 2
  %248 = ptrtoint ptr %nr_servers550 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %nr_servers550, align 4
  %conv551 = zext i8 %249 to i32
  %cmp552 = icmp ult i32 %inc576, %conv551
  br i1 %cmp552, label %do.end568.for.body554_crit_edge, label %do.end568.for.end577_crit_edge

do.end568.for.end577_crit_edge:                   ; preds = %do.end568
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end577

do.end568.for.body554_crit_edge:                  ; preds = %do.end568
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body554

for.end577:                                       ; preds = %do.end568.for.end577_crit_edge, %if.end546.for.end577_crit_edge
  %250 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %e, align 4
  %conv579753 = zext i16 %251 to i32
  br label %failed_set_error

failed_set_error:                                 ; preds = %for.end577, %do.end249.failed_set_error_crit_edge, %if.end219.failed_set_error_crit_edge
  %error.0 = phi i32 [ %call252, %do.end249.failed_set_error_crit_edge ], [ %call223, %if.end219.failed_set_error_crit_edge ], [ %conv579753, %for.end577 ]
  %conv580 = trunc i32 %error.0 to i16
  br label %failed.sink.split

failed.sink.split:                                ; preds = %failed_set_error, %if.end58.i.failed.sink.split_crit_edge, %if.end53.i.failed.sink.split_crit_edge, %sw.default77
  %.sink = phi i16 [ %conv580, %failed_set_error ], [ %conv81, %sw.default77 ], [ -512, %if.end53.i.failed.sink.split_crit_edge ], [ -89, %if.end58.i.failed.sink.split_crit_edge ]
  %error65.i = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 7
  %252 = ptrtoint ptr %error65.i to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 %.sink, ptr %error65.i, align 2
  br label %failed

failed:                                           ; preds = %failed.sink.split, %afs_get_vlserverlist.exit.i.failed_crit_edge, %do.end181.failed_crit_edge
  %253 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %flags, align 4
  %255 = or i16 %254, 1
  store i16 %255, ptr %flags, align 4
  %call587 = call i32 @afs_end_cursor(ptr noundef %vc) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %256 = load i32, ptr @afs_debug, align 4
  %and589 = and i32 %256, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and589)
  %tobool590.not = icmp eq i32 %and589, 0
  br i1 %tobool590.not, label %failed.cleanup612_crit_edge, label %do.end600, !prof !140

failed.cleanup612_crit_edge:                      ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup612

do.end600:                                        ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #10
  %257 = call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i740 = and i32 %257, -16384
  %258 = inttoptr i32 %and.i740 to ptr
  %task603 = getelementptr inbounds %struct.thread_info, ptr %258, i32 0, i32 2
  %259 = ptrtoint ptr %task603 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %task603, align 8
  %comm604 = getelementptr inbounds %struct.task_struct, ptr %260, i32 0, i32 101
  %error606 = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 7
  %261 = ptrtoint ptr %error606 to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %error606, align 2
  %conv607 = sext i16 %262 to i32
  %call608 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %comm604, ptr noundef nonnull @.str.1, i32 noundef %conv607) #11
  br label %cleanup612

cleanup612:                                       ; preds = %do.end600, %failed.cleanup612_crit_edge, %do.end501, %do.body489.cleanup612_crit_edge, %do.end59, %sw.bb41.cleanup612_crit_edge, %do.end30, %do.body18.cleanup612_crit_edge
  %retval.0 = phi i1 [ false, %do.end30 ], [ false, %do.body18.cleanup612_crit_edge ], [ false, %do.end59 ], [ false, %sw.bb41.cleanup612_crit_edge ], [ true, %do.end501 ], [ true, %do.body489.cleanup612_crit_edge ], [ false, %do.end600 ], [ false, %failed.cleanup612_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e) #8
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_abort_to_error(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_end_cursor(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_put_vlserverlist(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_send_vl_probes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_wait_for_vl_probes(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @afs_iterate_addresses(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_prioritise_error(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_end_vlserver_operation(ptr noundef %vc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cell = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 1
  %0 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cell, align 4
  %net1 = getelementptr inbounds %struct.afs_cell, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net1, align 4
  %error = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 7
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %error, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.90)
  switch i16 %5, label %entry.if.end_crit_edge [
    i16 -89, label %entry.if.then_crit_edge
    i16 -99, label %entry.if.then_crit_edge40
    i16 -101, label %entry.if.then_crit_edge41
    i16 -113, label %entry.if.then_crit_edge42
  ]

entry.if.then_crit_edge42:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge41:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge40:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge40, %entry.if.then_crit_edge41, %entry.if.then_crit_edge42
  %7 = load i32, ptr @afs_vl_dump_edestaddrreq.count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.i = icmp sgt i32 %7, 3
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %inc.i = add nsw i32 %7, 1
  store i32 %inc.i, ptr @afs_vl_dump_edestaddrreq.count, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !150
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.86, i32 noundef 696, ptr noundef nonnull @.str.87) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #11
  %untried.i = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 5
  %12 = ptrtoint ptr %untried.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %untried.i, align 4
  %index.i = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 6
  %14 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %index.i, align 4
  %conv.i = sext i16 %15 to i32
  %nr_iterations.i = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 9
  %16 = ptrtoint ptr %nr_iterations.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %nr_iterations.i, align 2
  %conv5.i = zext i16 %17 to i32
  %flags.i = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 8
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags.i, align 4
  %conv6.i = zext i16 %19 to i32
  %20 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %error, align 2
  %conv7.i = sext i16 %21 to i32
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %13, i32 noundef %conv.i, i32 noundef %conv5.i, i32 noundef %conv6.i, i32 noundef %conv7.i) #11
  %server_list.i = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 2
  %22 = ptrtoint ptr %server_list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %server_list.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %rcu_read_lock.exit.i.do.end79.i_crit_edge, label %if.then9.i

rcu_read_lock.exit.i.do.end79.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end79.i

if.then9.i:                                       ; preds = %rcu_read_lock.exit.i
  %nr_servers.i = getelementptr inbounds %struct.afs_vlserver_list, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %nr_servers.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %nr_servers.i, align 4
  %conv15.i = zext i8 %25 to i32
  %index16.i = getelementptr inbounds %struct.afs_vlserver_list, ptr %23, i32 0, i32 3
  %26 = ptrtoint ptr %index16.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %index16.i, align 1
  %conv17.i = zext i8 %27 to i32
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %conv15.i, i32 noundef %conv17.i) #11
  %28 = ptrtoint ptr %nr_servers.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nr_servers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp21138.not.i = icmp eq i8 %29, 0
  br i1 %cmp21138.not.i, label %if.then9.i.do.end79.i_crit_edge, label %if.then9.i.for.body.i_crit_edge

if.then9.i.for.body.i_crit_edge:                  ; preds = %if.then9.i
  br label %for.body.i

if.then9.i.do.end79.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end79.i

for.body.i:                                       ; preds = %if.end74.i.for.body.i_crit_edge, %if.then9.i.for.body.i_crit_edge
  %i.0139.i = phi i32 [ %inc75.i, %if.end74.i.for.body.i_crit_edge ], [ 0, %if.then9.i.for.body.i_crit_edge ]
  %server.i = getelementptr %struct.afs_vlserver_list, ptr %23, i32 0, i32 8, i32 %i.0139.i, i32 3
  %30 = ptrtoint ptr %server.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %server.i, align 4
  %name.i = getelementptr inbounds %struct.afs_vlserver, ptr %31, i32 0, i32 12
  %port.i = getelementptr inbounds %struct.afs_vlserver, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %port.i, align 4
  %conv27.i = zext i16 %33 to i32
  %flags28.i = getelementptr inbounds %struct.afs_vlserver, ptr %31, i32 0, i32 2
  %34 = ptrtoint ptr %flags28.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags28.i, align 4
  %error29.i = getelementptr inbounds %struct.afs_vlserver, ptr %31, i32 0, i32 9, i32 2
  %36 = ptrtoint ptr %error29.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %error29.i, align 4
  %conv30.i = sext i16 %37 to i32
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name.i, i32 noundef %conv27.i, i32 noundef %35, i32 noundef %conv30.i) #11
  %addresses.i = getelementptr inbounds %struct.afs_vlserver, ptr %31, i32 0, i32 1
  %38 = ptrtoint ptr %addresses.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %addresses.i, align 4
  %tobool32.not.i = icmp eq ptr %39, null
  br i1 %tobool32.not.i, label %for.body.i.if.end74.i_crit_edge, label %if.then33.i

for.body.i.if.end74.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74.i

if.then33.i:                                      ; preds = %for.body.i
  %40 = ptrtoint ptr %addresses.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %addresses.i, align 4
  %call40.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %land.lhs.true.i, label %if.then33.i.do.end49.i_crit_edge

if.then33.i.do.end49.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end49.i

land.lhs.true.i:                                  ; preds = %if.then33.i
  %call42.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %land.lhs.true.i.do.end49.i_crit_edge, label %land.lhs.true44.i

land.lhs.true.i.do.end49.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end49.i

land.lhs.true44.i:                                ; preds = %land.lhs.true.i
  %.b127.i = load i1, ptr @afs_vl_dump_edestaddrreq.__warned, align 1
  br i1 %.b127.i, label %land.lhs.true44.i.do.end49.i_crit_edge, label %if.then46.i

land.lhs.true44.i.do.end49.i_crit_edge:           ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end49.i

if.then46.i:                                      ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @afs_vl_dump_edestaddrreq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 310, ptr noundef nonnull @.str.73) #8
  br label %do.end49.i

do.end49.i:                                       ; preds = %if.then46.i, %land.lhs.true44.i.do.end49.i_crit_edge, %land.lhs.true.i.do.end49.i_crit_edge, %if.then33.i.do.end49.i_crit_edge
  %nr_ipv4.i = getelementptr inbounds %struct.afs_addr_list, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %nr_ipv4.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %nr_ipv4.i, align 1
  %conv55.i = zext i8 %43 to i32
  %nr_addrs.i = getelementptr inbounds %struct.afs_addr_list, ptr %41, i32 0, i32 4
  %44 = ptrtoint ptr %nr_addrs.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %nr_addrs.i, align 1
  %conv56.i = zext i8 %45 to i32
  %max_addrs.i = getelementptr inbounds %struct.afs_addr_list, ptr %41, i32 0, i32 3
  %46 = ptrtoint ptr %max_addrs.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %max_addrs.i, align 4
  %conv57.i = zext i8 %47 to i32
  %preferred.i = getelementptr inbounds %struct.afs_addr_list, ptr %41, i32 0, i32 5
  %48 = ptrtoint ptr %preferred.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %preferred.i, align 2
  %conv58.i = zext i8 %49 to i32
  %call59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %conv55.i, i32 noundef %conv56.i, i32 noundef %conv57.i, i32 noundef %conv58.i) #11
  %responded.i = getelementptr inbounds %struct.afs_addr_list, ptr %41, i32 0, i32 9
  %50 = ptrtoint ptr %responded.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %responded.i, align 4
  %failed.i = getelementptr inbounds %struct.afs_addr_list, ptr %41, i32 0, i32 8
  %52 = ptrtoint ptr %failed.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %failed.i, align 4
  %call64.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %51, i32 noundef %53) #11
  %54 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vc, align 4
  %cmp65.i = icmp eq ptr %41, %55
  br i1 %cmp65.i, label %do.end70.i, label %do.end49.i.if.end74.i_crit_edge

do.end49.i.if.end74.i_crit_edge:                  ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74.i

do.end70.i:                                       ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  %call72.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #11
  br label %if.end74.i

if.end74.i:                                       ; preds = %do.end70.i, %do.end49.i.if.end74.i_crit_edge, %for.body.i.if.end74.i_crit_edge
  %inc75.i = add nuw nsw i32 %i.0139.i, 1
  %56 = ptrtoint ptr %nr_servers.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %nr_servers.i, align 4
  %conv20.i = zext i8 %57 to i32
  %cmp21.i = icmp ult i32 %inc75.i, %conv20.i
  br i1 %cmp21.i, label %if.end74.i.for.body.i_crit_edge, label %if.end74.i.do.end79.i_crit_edge

if.end74.i.do.end79.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end79.i

if.end74.i.for.body.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.end79.i:                                       ; preds = %if.end74.i.do.end79.i_crit_edge, %if.then9.i.do.end79.i_crit_edge, %rcu_read_lock.exit.i.do.end79.i_crit_edge
  %tried.i = getelementptr inbounds %struct.afs_addr_cursor, ptr %vc, i32 0, i32 1
  %58 = ptrtoint ptr %tried.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tried.i, align 4
  %index83.i = getelementptr inbounds %struct.afs_addr_cursor, ptr %vc, i32 0, i32 2
  %60 = ptrtoint ptr %index83.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %index83.i, align 4
  %conv84.i = sext i8 %61 to i32
  %abort_code.i = getelementptr inbounds %struct.afs_addr_cursor, ptr %vc, i32 0, i32 6
  %62 = ptrtoint ptr %abort_code.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %abort_code.i, align 4
  %error87.i = getelementptr inbounds %struct.afs_addr_cursor, ptr %vc, i32 0, i32 5
  %64 = ptrtoint ptr %error87.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %error87.i, align 4
  %conv88.i = sext i16 %65 to i32
  %responded90.i = getelementptr inbounds %struct.afs_addr_cursor, ptr %vc, i32 0, i32 3
  %66 = ptrtoint ptr %responded90.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %responded90.i, align 1, !range !151
  %68 = zext i8 %67 to i32
  %nr_iterations94.i = getelementptr inbounds %struct.afs_addr_cursor, ptr %vc, i32 0, i32 4
  %69 = ptrtoint ptr %nr_iterations94.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %nr_iterations94.i, align 2
  %conv95.i = zext i16 %70 to i32
  %call96.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %59, i32 noundef %conv84.i, i32 noundef %63, i32 noundef %conv88.i, i32 noundef %68, i32 noundef %conv95.i) #11
  %call.i128.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i128.i, label %do.end79.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i131.i

do.end79.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %do.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true.i131.i:                             ; preds = %do.end79.i
  %call1.i129.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i129.i)
  %tobool.not.i130.i = icmp eq i32 %call1.i129.i, 0
  br i1 %tobool.not.i130.i, label %land.lhs.true.i131.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i133.i

land.lhs.true.i131.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i131.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i133.i:                            ; preds = %land.lhs.true.i131.i
  %.b4.i132.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i132.i, label %land.lhs.true2.i133.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i134.i

land.lhs.true2.i133.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i133.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

if.then.i134.i:                                   ; preds = %land.lhs.true2.i133.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.86, i32 noundef 724, ptr noundef nonnull @.str.88) #8
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i134.i, %land.lhs.true2.i133.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i131.i.rcu_read_unlock.exit.i_crit_edge, %do.end79.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !152
  %71 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i.i.i.i.i135.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i135.i to ptr
  %preempt_count.i.i.i.i136.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i.i.i136.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i.i.i136.i, align 4
  %sub.i.i.i.i = add i32 %74, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i136.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %if.end

if.end:                                           ; preds = %rcu_read_unlock.exit.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %call = tail call i32 @afs_end_cursor(ptr noundef %vc) #8
  %server_list = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 2
  %75 = ptrtoint ptr %server_list to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %server_list, align 4
  tail call void @afs_put_vlserverlist(ptr noundef %3, ptr noundef %76) #8
  %77 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %error, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -103, i16 %78)
  %cmp19 = icmp eq i16 %78, -103
  br i1 %cmp19, label %if.then21, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %abort_code = getelementptr inbounds %struct.afs_addr_cursor, ptr %vc, i32 0, i32 6
  %79 = ptrtoint ptr %abort_code to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %abort_code, align 4
  %call23 = tail call i32 @afs_abort_to_error(i32 noundef %80) #8
  %conv24 = trunc i32 %call23 to i16
  %81 = ptrtoint ptr %error to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv24, ptr %error, align 2
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end.if.end26_crit_edge
  %82 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %error, align 2
  %conv28 = sext i16 %83 to i32
  ret i32 %conv28
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_queue_cell(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__var_waitqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

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
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

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
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !57, !58, !59, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129}
!llvm.named.register.sp = !{!130}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/afs/vl_rotate.c", i32 92, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @afs_select_vlserver._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @afs_select_vlserver._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/afs/vl_rotate.c", i32 98, i32 3}
!8 = !{ptr @afs_select_vlserver._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @afs_select_vlserver._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/afs/vl_rotate.c", i32 114, i32 3}
!12 = !{ptr @afs_select_vlserver._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @afs_select_vlserver._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/afs/vl_rotate.c", i32 145, i32 3}
!16 = !{ptr @afs_select_vlserver._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @afs_select_vlserver._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/afs/vl_rotate.c", i32 150, i32 3}
!20 = !{ptr @afs_select_vlserver._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @afs_select_vlserver._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/afs/vl_rotate.c", i32 156, i32 3}
!24 = !{ptr @afs_select_vlserver._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @afs_select_vlserver._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/afs/vl_rotate.c", i32 161, i32 2}
!28 = !{ptr @afs_select_vlserver._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @afs_select_vlserver._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.22, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/afs/vl_rotate.c", i32 169, i32 2}
!32 = !{ptr @afs_select_vlserver._entry.21, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @afs_select_vlserver._entry_ptr.23, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.25, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/afs/vl_rotate.c", i32 179, i32 2}
!36 = !{ptr @afs_select_vlserver._entry.24, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @afs_select_vlserver._entry_ptr.26, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.28, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/afs/vl_rotate.c", i32 208, i32 2}
!40 = !{ptr @afs_select_vlserver._entry.27, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @afs_select_vlserver._entry_ptr.29, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.31, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/afs/vl_rotate.c", i32 215, i32 2}
!44 = !{ptr @afs_select_vlserver._entry.30, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @afs_select_vlserver._entry_ptr.32, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.34, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @afs_select_vlserver._entry.33, !43, !"_entry", i1 false, i1 false}
!48 = !{ptr @afs_select_vlserver._entry_ptr.35, !43, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.37, !43, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @afs_select_vlserver._entry.36, !43, !"_entry", i1 false, i1 false}
!51 = !{ptr @afs_select_vlserver._entry_ptr.38, !43, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.40, !43, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @afs_select_vlserver._entry.39, !43, !"_entry", i1 false, i1 false}
!54 = !{ptr @afs_select_vlserver._entry_ptr.41, !43, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.43, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/afs/vl_rotate.c", i32 219, i32 2}
!57 = !{ptr @afs_select_vlserver._entry.42, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @afs_select_vlserver._entry_ptr.44, !56, !"_entry_ptr", i1 false, i1 false}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../fs/afs/vl_rotate.c", i32 222, i32 10}
!61 = !{ptr @.str.45, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @afs_select_vlserver._entry.46, !63, !"_entry", i1 false, i1 false}
!63 = !{!"../fs/afs/vl_rotate.c", i32 237, i32 2}
!64 = !{ptr @afs_select_vlserver._entry_ptr.47, !63, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @afs_select_vlserver._entry.48, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @afs_select_vlserver._entry_ptr.49, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.51, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/afs/vl_rotate.c", i32 244, i32 2}
!69 = !{ptr @afs_select_vlserver._entry.50, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @afs_select_vlserver._entry_ptr.52, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.54, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/afs/vl_rotate.c", i32 246, i32 2}
!73 = !{ptr @afs_select_vlserver._entry.53, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @afs_select_vlserver._entry_ptr.55, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.57, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/afs/vl_rotate.c", i32 250, i32 2}
!77 = !{ptr @afs_select_vlserver._entry.56, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @afs_select_vlserver._entry_ptr.58, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.60, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/afs/vl_rotate.c", i32 279, i32 2}
!81 = !{ptr @afs_select_vlserver._entry.59, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @afs_select_vlserver._entry_ptr.61, !80, !"_entry_ptr", i1 false, i1 false}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../fs/afs/vl_rotate.c", i32 69, i32 3}
!85 = !{ptr @afs_vl_dump_edestaddrreq.count, !86, !"count", i1 false, i1 false}
!86 = !{!"../fs/afs/vl_rotate.c", i32 288, i32 13}
!87 = !{ptr @.str.62, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/afs/vl_rotate.c", i32 296, i32 2}
!89 = !{ptr @.str.63, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @afs_vl_dump_edestaddrreq._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @afs_vl_dump_edestaddrreq._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.65, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/afs/vl_rotate.c", i32 297, i32 2}
!94 = !{ptr @afs_vl_dump_edestaddrreq._entry.64, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @afs_vl_dump_edestaddrreq._entry_ptr.66, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.68, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/afs/vl_rotate.c", i32 302, i32 3}
!98 = !{ptr @afs_vl_dump_edestaddrreq._entry.67, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @afs_vl_dump_edestaddrreq._entry_ptr.69, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.71, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/afs/vl_rotate.c", i32 306, i32 4}
!102 = !{ptr @afs_vl_dump_edestaddrreq._entry.70, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @afs_vl_dump_edestaddrreq._entry_ptr.72, !101, !"_entry_ptr", i1 false, i1 false}
!104 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!105 = !{!"../fs/afs/vl_rotate.c", i32 310, i32 6}
!106 = !{ptr @.str.73, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.75, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/afs/vl_rotate.c", i32 311, i32 5}
!109 = !{ptr @afs_vl_dump_edestaddrreq._entry.74, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @afs_vl_dump_edestaddrreq._entry_ptr.76, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.78, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/afs/vl_rotate.c", i32 314, i32 5}
!113 = !{ptr @afs_vl_dump_edestaddrreq._entry.77, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @afs_vl_dump_edestaddrreq._entry_ptr.79, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.81, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/afs/vl_rotate.c", i32 317, i32 6}
!117 = !{ptr @afs_vl_dump_edestaddrreq._entry.80, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @afs_vl_dump_edestaddrreq._entry_ptr.82, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.84, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/afs/vl_rotate.c", i32 322, i32 2}
!121 = !{ptr @afs_vl_dump_edestaddrreq._entry.83, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @afs_vl_dump_edestaddrreq._entry_ptr.85, !120, !"_entry_ptr", i1 false, i1 false}
!123 = distinct !{null, !124, !"__warned", i1 false, i1 false}
!124 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!125 = !{ptr @.str.86, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.87, !124, !"<string literal>", i1 false, i1 false}
!127 = distinct !{null, !128, !"__warned", i1 false, i1 false}
!128 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!129 = !{ptr @.str.88, !128, !"<string literal>", i1 false, i1 false}
!130 = !{!"sp"}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{!"branch_weights", i32 2000, i32 1}
!141 = !{!"auto-init"}
!142 = !{i64 2157781881}
!143 = !{i64 2157790575}
!144 = !{i64 2157798302}
!145 = !{i64 2148216477, i64 2148216503, i64 2148216532, i64 2148216566, i64 2148216597, i64 2148216620}
!146 = !{i64 2157824841, i64 2157825324, i64 2157824878, i64 2157824934, i64 2157824968, i64 2157824992, i64 2157825033, i64 2157825054, i64 2157825082, i64 2157825116}
!147 = !{i64 2148218007, i64 2148218039, i64 2148218068, i64 2148218102, i64 2148218133, i64 2148218156}
!148 = !{!"branch_weights", i32 1, i32 2000}
!149 = !{i64 2157832033, i64 2157832516, i64 2157832070, i64 2157832126, i64 2157832160, i64 2157832184, i64 2157832225, i64 2157832246, i64 2157832274, i64 2157832308}
!150 = !{i64 2149253533}
!151 = !{i8 0, i8 2}
!152 = !{i64 2149253799}
