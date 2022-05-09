; ModuleID = '/llk/IR_all_yes/fs/afs/volume.c_pt.bc'
source_filename = "../fs/afs/volume.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.65 }
%struct.atomic_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.afs_vl_cursor = type { %struct.afs_addr_cursor, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16 }
%struct.afs_addr_cursor = type { ptr, i32, i8, i8, i16, i16, i32 }
%struct.afs_fs_context = type { i8, i8, i8, i8, i32, i8, i32, ptr, ptr, ptr, ptr, ptr }
%struct.afs_vldb_entry = type { [3 x i64], i32, [13 x %struct.uuid_t], [13 x i32], [13 x i8], i16, i8, i8, [65 x i8] }
%struct.uuid_t = type { [16 x i8] }
%struct.afs_volume = type { %union.anon, %struct.atomic_t, i64, ptr, %struct.rb_node, %struct.hlist_node, ptr, i32, ptr, ptr, %struct.rwlock_t, i32, i32, %struct.rwlock_t, i8, i8, i8, [65 x i8] }
%union.anon = type { i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.afs_server_list = type { [3 x i64], %struct.refcount_struct, i8, i8, i16, i32, %struct.rwlock_t, [0 x %struct.afs_server_entry] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.afs_server_entry = type { ptr }
%struct.afs_cell = type { %union.anon.0, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.hlist_node, i64, i64, %struct.atomic_t, %struct.atomic_t, i32, i32, i16, i16, i32, i32, %struct.rb_root, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.seqlock_t, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.rwlock_t, ptr, i8, ptr }
%union.anon.0 = type { %struct.rb_node }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.55 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.afs_operation = type { ptr, ptr, ptr, ptr, ptr, [2 x %struct.afs_vnode_param], ptr, %struct.afs_volsync, ptr, ptr, %struct.timespec64, %struct.timespec64, i16, i16, i32, i32, i32, %union.anon.156, %struct.afs_addr_cursor, ptr, ptr, ptr, i32, i16, i16, i32 }
%struct.afs_vnode_param = type { ptr, %struct.afs_fid, %struct.afs_status_cb, i64, i32, i8, i8 }
%struct.afs_fid = type { i64, i64, i32, i32 }
%struct.afs_status_cb = type { %struct.afs_file_status, %struct.afs_callback, i8, i8, i8 }
%struct.afs_file_status = type { i64, i64, %struct.timespec64, %struct.timespec64, i64, i64, i64, i32, i32, i16, i32, i32, i32, i32 }
%struct.afs_callback = type { i64 }
%struct.afs_volsync = type { i64 }
%struct.timespec64 = type { i64, i32 }
%union.anon.156 = type { %struct.anon.167 }
%struct.anon.167 = type { %struct.afs_volume_status, ptr }
%struct.afs_volume_status = type { i64, i64, i8, i8, i8, i8, i32, i64, i64, i64, i64, i64, i64, i64 }

@afs_volume_gc_delay = dso_local local_unnamed_addr global i32 10, section ".data..read_mostly", align 4
@afs_volume_record_life = dso_local local_unnamed_addr global i32 3600, section ".data..read_mostly", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"afs,%s,%llx\00", [20 x i8] zeroinitializer }, align 32
@afs_activate_volume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013AFS: Cache volume key already in use (%s)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afs_activate_volume\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/afs/volume.c\00", [16 x i8] zeroinitializer }, align 32
@afs_activate_volume._entry_ptr = internal global ptr @afs_activate_volume._entry, section ".printk_index", align 4
@afs_debug = external dso_local local_unnamed_addr global i32, align 4
@afs_deactivate_volume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s] ==> %s(%s)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"afs_deactivate_volume\00", [42 x i8] zeroinitializer }, align 32
@afs_deactivate_volume._entry_ptr = internal global ptr @afs_deactivate_volume._entry, section ".printk_index", align 4
@afs_deactivate_volume._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.3, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] <== %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@afs_deactivate_volume._entry_ptr.8 = internal global ptr @afs_deactivate_volume._entry.6, section ".printk_index", align 4
@afs_check_volume_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"afs_check_volume_status\00", [40 x i8] zeroinitializer }, align 32
@afs_check_volume_status._entry_ptr = internal global ptr @afs_check_volume_status._entry, section ".printk_index", align 4
@afs_check_volume_status._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] <== %s() = 0\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_check_volume_status._entry_ptr.13 = internal global ptr @afs_check_volume_status._entry.11, section ".printk_index", align 4
@afs_check_volume_status._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.3, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_check_volume_status._entry_ptr.16 = internal global ptr @afs_check_volume_status._entry.14, section ".printk_index", align 4
@afs_check_volume_status._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.3, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s] <== %s() = 0 [no wait]\0A\00", [63 x i8] zeroinitializer }, align 32
@afs_check_volume_status._entry_ptr.19 = internal global ptr @afs_check_volume_status._entry.17, section ".printk_index", align 4
@afs_check_volume_status._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.3, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_check_volume_status._entry_ptr.21 = internal global ptr @afs_check_volume_status._entry.20, section ".printk_index", align 4
@afs_check_volume_status._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.10, ptr @.str.3, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] <== %s() = -ESTALE\0A\00", [35 x i8] zeroinitializer }, align 32
@afs_check_volume_status._entry_ptr.24 = internal global ptr @afs_check_volume_status._entry.22, section ".printk_index", align 4
@afs_alloc_volume.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&volume->servers_lock\00", [42 x i8] zeroinitializer }, align 32
@afs_alloc_volume.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&volume->cb_v_break_lock\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_afs_volume = external dso_local global %struct.tracepoint, align 4
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/afs.h\00", [37 x i8] zeroinitializer }, align 32
@trace_afs_volume.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@afs_destroy_volume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s] ==> %s(%p)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"afs_destroy_volume\00", [45 x i8] zeroinitializer }, align 32
@afs_destroy_volume._entry_ptr = internal global ptr @afs_destroy_volume._entry, section ".printk_index", align 4
@afs_destroy_volume._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\013\0A\00", [28 x i8] zeroinitializer }, align 32
@afs_destroy_volume._entry_ptr.35 = internal global ptr @afs_destroy_volume._entry.33, section ".printk_index", align 4
@afs_destroy_volume._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.3, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013AFS: Assertion failed\0A\00", [39 x i8] zeroinitializer }, align 32
@afs_destroy_volume._entry_ptr.38 = internal global ptr @afs_destroy_volume._entry.36, section ".printk_index", align 4
@afs_destroy_volume._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.3, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%lu == %lu is false\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_destroy_volume._entry_ptr.41 = internal global ptr @afs_destroy_volume._entry.39, section ".printk_index", align 4
@afs_destroy_volume._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.32, ptr @.str.3, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0130x%lx == 0x%lx is false\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_destroy_volume._entry_ptr.44 = internal global ptr @afs_destroy_volume._entry.42, section ".printk_index", align 4
@afs_destroy_volume._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.32, ptr @.str.3, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s] <== %s() [destroyed]\0A\00", [33 x i8] zeroinitializer }, align 32
@afs_destroy_volume._entry_ptr.47 = internal global ptr @afs_destroy_volume._entry.45, section ".printk_index", align 4
@afs_update_volume_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.48, ptr @.str.3, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"afs_update_volume_status\00", [39 x i8] zeroinitializer }, align 32
@afs_update_volume_status._entry_ptr = internal global ptr @afs_update_volume_status._entry, section ".printk_index", align 4
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%llu\00", [27 x i8] zeroinitializer }, align 32
@afs_update_volume_status.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.50 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@afs_update_volume_status._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.48, ptr @.str.3, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_update_volume_status._entry_ptr.52 = internal global ptr @afs_update_volume_status._entry.51, section ".printk_index", align 4
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 277, i32 31 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 288, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 302, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 310, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 384, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 392, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 404, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 410, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 418, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 424, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 93, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 94, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [30 x i8] c"../include/trace/events/afs.h\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1462, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 108, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 223, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 226, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 236, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 323, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 328, i32 24 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 355, i32 8 }
@___asan_gen_.192 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.193 = private constant [19 x i8] c"../fs/afs/volume.c\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 373, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 73, i32 2 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @afs_activate_volume._entry, ptr @afs_activate_volume._entry_ptr, ptr @afs_check_volume_status._entry, ptr @afs_check_volume_status._entry.11, ptr @afs_check_volume_status._entry.14, ptr @afs_check_volume_status._entry.17, ptr @afs_check_volume_status._entry.20, ptr @afs_check_volume_status._entry.22, ptr @afs_check_volume_status._entry_ptr, ptr @afs_check_volume_status._entry_ptr.13, ptr @afs_check_volume_status._entry_ptr.16, ptr @afs_check_volume_status._entry_ptr.19, ptr @afs_check_volume_status._entry_ptr.21, ptr @afs_check_volume_status._entry_ptr.24, ptr @afs_deactivate_volume._entry, ptr @afs_deactivate_volume._entry.6, ptr @afs_deactivate_volume._entry_ptr, ptr @afs_deactivate_volume._entry_ptr.8, ptr @afs_destroy_volume._entry, ptr @afs_destroy_volume._entry.33, ptr @afs_destroy_volume._entry.36, ptr @afs_destroy_volume._entry.39, ptr @afs_destroy_volume._entry.42, ptr @afs_destroy_volume._entry.45, ptr @afs_destroy_volume._entry_ptr, ptr @afs_destroy_volume._entry_ptr.35, ptr @afs_destroy_volume._entry_ptr.38, ptr @afs_destroy_volume._entry_ptr.41, ptr @afs_destroy_volume._entry_ptr.44, ptr @afs_destroy_volume._entry_ptr.47, ptr @afs_update_volume_status._entry, ptr @afs_update_volume_status._entry.51, ptr @afs_update_volume_status._entry_ptr, ptr @afs_update_volume_status._entry_ptr.52, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.23, ptr @afs_alloc_volume.__key, ptr @.str.25, ptr @afs_alloc_volume.__key.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.53], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_activate_volume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deactivate_volume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deactivate_volume._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_check_volume_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_check_volume_status._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_check_volume_status._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_check_volume_status._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_check_volume_status._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_check_volume_status._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_volume.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_volume.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_destroy_volume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_destroy_volume._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_destroy_volume._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_destroy_volume._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_destroy_volume._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_destroy_volume._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_update_volume_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_update_volume_status._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_create_volume(ptr nocapture noundef %params) local_unnamed_addr #0 align 64 {
entry:
  %vc.i = alloca %struct.afs_vl_cursor, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.afs_fs_context, ptr %params, i32 0, i32 5
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 4
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %cell = getelementptr inbounds %struct.afs_fs_context, ptr %params, i32 0, i32 9
  %2 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cell, align 4
  %key = getelementptr inbounds %struct.afs_fs_context, ptr %params, i32 0, i32 11
  %4 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %key, align 4
  %volname = getelementptr inbounds %struct.afs_fs_context, ptr %params, i32 0, i32 7
  %6 = ptrtoint ptr %volname to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %volname, align 4
  %volnamesz = getelementptr inbounds %struct.afs_fs_context, ptr %params, i32 0, i32 6
  %8 = ptrtoint ptr %volnamesz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %volnamesz, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %vc.i) #11
  %10 = call ptr @memset(ptr %vc.i, i32 255, i32 48)
  %call1.i = call zeroext i1 @afs_begin_vlserver_operation(ptr noundef nonnull %vc.i, ptr noundef %3, ptr noundef %5) #11
  br i1 %call1.i, label %while.cond.preheader.i, label %afs_vl_lookup_vldb.exit.thread

afs_vl_lookup_vldb.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %vc.i) #11
  br label %cleanup

while.cond.preheader.i:                           ; preds = %entry
  %call310.i = call zeroext i1 @afs_select_vlserver(ptr noundef nonnull %vc.i) #11
  br i1 %call310.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.afs_vl_lookup_vldb.exit_crit_edge

while.cond.preheader.i.afs_vl_lookup_vldb.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %afs_vl_lookup_vldb.exit

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %call4.i = call ptr @afs_vl_get_entry_by_name_u(ptr noundef nonnull %vc.i, ptr noundef %7, i32 noundef %9) #11
  %call3.i = call zeroext i1 @afs_select_vlserver(ptr noundef nonnull %vc.i) #11
  br i1 %call3.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.afs_vl_lookup_vldb.exit_crit_edge

while.body.i.afs_vl_lookup_vldb.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %afs_vl_lookup_vldb.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

afs_vl_lookup_vldb.exit:                          ; preds = %while.body.i.afs_vl_lookup_vldb.exit_crit_edge, %while.cond.preheader.i.afs_vl_lookup_vldb.exit_crit_edge
  %vldb.0.lcssa.i = phi ptr [ inttoptr (i32 -89 to ptr), %while.cond.preheader.i.afs_vl_lookup_vldb.exit_crit_edge ], [ %call4.i, %while.body.i.afs_vl_lookup_vldb.exit_crit_edge ]
  %call5.i = call i32 @afs_end_vlserver_operation(ptr noundef nonnull %vc.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  %11 = inttoptr i32 %call5.i to ptr
  %spec.select.i = select i1 %cmp.i, ptr %11, ptr %vldb.0.lcssa.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %vc.i) #11
  %cmp.i58 = icmp ugt ptr %spec.select.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i58, label %afs_vl_lookup_vldb.exit.cleanup_crit_edge, label %if.end

afs_vl_lookup_vldb.exit.cleanup_crit_edge:        ; preds = %afs_vl_lookup_vldb.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %afs_vl_lookup_vldb.exit
  %flags = getelementptr inbounds %struct.afs_vldb_entry, ptr %spec.select.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %error = getelementptr inbounds %struct.afs_vldb_entry, ptr %spec.select.i, i32 0, i32 5
  %15 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %error, align 2
  %conv5 = sext i16 %16 to i32
  %17 = inttoptr i32 %conv5 to ptr
  br label %error34

if.end7:                                          ; preds = %if.end
  %18 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %params, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool9.not = icmp eq i8 %19, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end7
  %and = and i32 %13, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.then10.error34_crit_edge, label %if.then10.if.end29_crit_edge

if.then10.if.end29_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then10.error34_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %error34

if.else:                                          ; preds = %if.end7
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags, align 4
  %22 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool17.not = icmp eq i32 %22, 0
  br i1 %tobool17.not, label %if.else20, label %if.else.if.end29.sink.split_crit_edge

if.else.if.end29.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.sink.split

if.else20:                                        ; preds = %if.else
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags, align 4
  %and1.i57 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i57)
  %tobool23.not = icmp eq i32 %and1.i57, 0
  br i1 %tobool23.not, label %if.else20.error34_crit_edge, label %if.else20.if.end29.sink.split_crit_edge

if.else20.if.end29.sink.split_crit_edge:          ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.sink.split

if.else20.error34_crit_edge:                      ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #13
  br label %error34

if.end29.sink.split:                              ; preds = %if.else20.if.end29.sink.split_crit_edge, %if.else.if.end29.sink.split_crit_edge
  %.sink = phi i8 [ 1, %if.else.if.end29.sink.split_crit_edge ], [ 0, %if.else20.if.end29.sink.split_crit_edge ]
  %25 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %.sink, ptr %type, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end29.sink.split, %if.then10.if.end29_crit_edge
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %type, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 232) #14
  %tobool5.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool5.not.i.i, label %if.end29.error34_crit_edge, label %if.end7.i.i

if.end29.error34_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %error34

if.end7.i.i:                                      ; preds = %if.end29
  %conv31 = zext i8 %27 to i32
  %shl32 = shl nuw i32 1, %conv31
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %type, align 4
  %idxprom.i.i = zext i8 %30 to i32
  %arrayidx8.i.i = getelementptr [3 x i64], ptr %spec.select.i, i32 0, i32 %idxprom.i.i
  %31 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx8.i.i, align 8
  %33 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %call7.i.i.i.i, align 8
  %call9.i.i = call i64 @ktime_get_real_seconds() #11
  %34 = load i32, ptr @afs_volume_record_life, align 4
  %conv10.i.i = zext i32 %34 to i64
  %add.i.i = add i64 %call9.i.i, %conv10.i.i
  %update_at.i.i = getelementptr inbounds %struct.afs_volume, ptr %call7.i.i.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %update_at.i.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %add.i.i, ptr %update_at.i.i, align 8
  %36 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cell, align 4
  %call11.i.i = call ptr @afs_get_cell(ptr noundef %37, i32 noundef 5) #11
  %cell12.i.i = getelementptr inbounds %struct.afs_volume, ptr %call7.i.i.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %cell12.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call11.i.i, ptr %cell12.i.i, align 8
  %39 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %type, align 4
  %type14.i.i = getelementptr inbounds %struct.afs_volume, ptr %call7.i.i.i.i, i32 0, i32 14
  %41 = ptrtoint ptr %type14.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %type14.i.i, align 8
  %42 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %params, align 4, !range !105
  %type_force.i.i = getelementptr inbounds %struct.afs_volume, ptr %call7.i.i.i.i, i32 0, i32 15
  %44 = ptrtoint ptr %type_force.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %type_force.i.i, align 1
  %name_len.i.i = getelementptr inbounds %struct.afs_vldb_entry, ptr %spec.select.i, i32 0, i32 7
  %45 = ptrtoint ptr %name_len.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %name_len.i.i, align 1
  %name_len17.i.i = getelementptr inbounds %struct.afs_volume, ptr %call7.i.i.i.i, i32 0, i32 16
  %47 = ptrtoint ptr %name_len17.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %name_len17.i.i, align 2
  %usage.i.i = getelementptr inbounds %struct.afs_volume, ptr %call7.i.i.i.i, i32 0, i32 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #11
  %48 = ptrtoint ptr %usage.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 1, ptr %usage.i.i, align 8
  %proc_link.i.i = getelementptr inbounds %struct.afs_volume, ptr %call7.i.i.i.i, i32 0, i32 5
  %49 = ptrtoint ptr %proc_link.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %proc_link.i.i, align 8
  %pprev.i.i.i = getelementptr inbounds %struct.afs_volume, ptr %call7.i.i.i.i, i32 0, i32 5, i32 1
  %50 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %pprev.i.i.i, align 4
  %servers_lock.i.i = getelementptr inbounds %struct.afs_volume, ptr %call7.i.i.i.i, i32 0, i32 10
  call void @__rwlock_init(ptr noundef %servers_lock.i.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @afs_alloc_volume.__key) #11
  %cb_v_break_lock.i.i = getelementptr inbounds %struct.afs_volume, ptr %call7.i.i.i.i, i32 0, i32 13
  call void @__rwlock_init(ptr noundef %cb_v_break_lock.i.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @afs_alloc_volume.__key.26) #11
  %name.i.i = getelementptr inbounds %struct.afs_volume, ptr %call7.i.i.i.i, i32 0, i32 17
  %name21.i.i = getelementptr inbounds %struct.afs_vldb_entry, ptr %spec.select.i, i32 0, i32 8
  %51 = ptrtoint ptr %name_len.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %name_len.i.i, align 1
  %conv24.i.i = zext i8 %52 to i32
  %add25.i.i = add nuw nsw i32 %conv24.i.i, 1
  %53 = call ptr @memcpy(ptr %name.i.i, ptr %name21.i.i, i32 %add25.i.i)
  %54 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cell, align 4
  %56 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %key, align 4
  %conv27.i.i = trunc i32 %shl32 to i8
  %call28.i.i = call ptr @afs_alloc_server_list(ptr noundef %55, ptr noundef %57, ptr noundef %spec.select.i, i8 noundef zeroext %conv27.i.i) #11
  %cmp.i.i.i = icmp ugt ptr %call28.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then30.i.i, label %if.end32.i.i

if.then30.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %cell12.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cell12.i.i, align 8
  call void @afs_put_cell(ptr noundef %59, i32 noundef 12) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  br label %afs_alloc_volume.exit.i

if.end32.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %usage33.i.i = getelementptr inbounds %struct.afs_server_list, ptr %call28.i.i, i32 0, i32 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage33.i.i, i32 noundef 4) #11
  %60 = ptrtoint ptr %usage33.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 1, ptr %usage33.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %servers60.i.i = getelementptr inbounds %struct.afs_volume, ptr %call7.i.i.i.i, i32 0, i32 9
  %61 = ptrtoint ptr %servers60.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %call28.i.i, ptr %servers60.i.i, align 4
  %62 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %call7.i.i.i.i, align 8
  call fastcc void @trace_afs_volume(i64 noundef %63, i32 noundef 1, i32 noundef 0) #11
  br label %afs_alloc_volume.exit.i

afs_alloc_volume.exit.i:                          ; preds = %if.end32.i.i, %if.then30.i.i
  %retval.0.i.i = phi ptr [ %call7.i.i.i.i, %if.end32.i.i ], [ %call28.i.i, %if.then30.i.i ]
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %afs_alloc_volume.exit.i.error34_crit_edge, label %if.end.i

afs_alloc_volume.exit.i.error34_crit_edge:        ; preds = %afs_alloc_volume.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error34

if.end.i:                                         ; preds = %afs_alloc_volume.exit.i
  %64 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cell, align 4
  %volume_lock.i.i = getelementptr inbounds %struct.afs_cell, ptr %65, i32 0, i32 19
  %lock.i.i.i = getelementptr inbounds %struct.afs_cell, ptr %65, i32 0, i32 19, i32 1
  call void @_raw_spin_lock(ptr noundef %lock.i.i.i) #11
  %66 = ptrtoint ptr %volume_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %volume_lock.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %67, 1
  store i32 %inc.i.i.i.i.i.i, ptr %volume_lock.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !107
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.afs_cell, ptr %65, i32 0, i32 19, i32 0, i32 0, i32 1
  %68 = call ptr @llvm.returnaddress(i32 0) #11
  %69 = ptrtoint ptr %68 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %69) #11
  %volumes.i.i = getelementptr inbounds %struct.afs_cell, ptr %65, i32 0, i32 17
  %70 = ptrtoint ptr %volumes.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %volumes.i.i, align 4
  %tobool.not31.i.i = icmp eq ptr %71, null
  br i1 %tobool.not31.i.i, label %if.end.i.while.end.i.i_crit_edge, label %while.body.lr.ph.i.i

if.end.i.while.end.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

while.body.lr.ph.i.i:                             ; preds = %if.end.i
  %72 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %retval.0.i.i, align 8
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end4.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %74 = phi ptr [ %71, %while.body.lr.ph.i.i ], [ %81, %if.end4.i.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %74, i32 -28
  %75 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %76, i64 %73)
  %cmp.i13.i = icmp ult i64 %76, %73
  br i1 %cmp.i13.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %74, i32 0, i32 2
  br label %if.end4.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %76, i64 %73)
  %cmp1.i.i = icmp ugt i64 %76, %73
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.else3.i.i

if.then2.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %74, i32 0, i32 1
  br label %if.end4.i.i

if.else3.i.i:                                     ; preds = %if.else.i.i
  %add.ptr.i.i.le = getelementptr i8, ptr %74, i32 -28
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.le, null
  br i1 %tobool.not.i.i.i, label %if.else3.i.i.afs_insert_volume_into_cell.exit.i_crit_edge, label %if.then.i.i.i

if.else3.i.i.afs_insert_volume_into_cell.exit.i_crit_edge: ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %afs_insert_volume_into_cell.exit.i

if.then.i.i.i:                                    ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %usage.i.i.i = getelementptr i8, ptr %74, i32 -20
  %call.i.i.i.i14.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !108
  call void @llvm.prefetch.p0(ptr %usage.i.i.i, i32 1, i32 3, i32 1) #11
  %77 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i.i, ptr %usage.i.i.i, i32 1, ptr elementtype(i32) %usage.i.i.i) #11, !srcloc !109
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %77, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !110
  %78 = ptrtoint ptr %add.ptr.i.i.le to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %add.ptr.i.i.le, align 8
  call fastcc void @trace_afs_volume(i64 noundef %79, i32 noundef %asmresult.i.i.i.i.i.i.i, i32 noundef 3) #11
  br label %afs_insert_volume_into_cell.exit.i

if.end4.i.i:                                      ; preds = %if.then2.i.i, %if.then.i.i
  %pp.1.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then2.i.i ]
  %80 = ptrtoint ptr %pp.1.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pp.1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %81, null
  br i1 %tobool.not.i.i, label %while.cond.while.end_crit_edge.i.i, label %if.end4.i.i.while.body.i.i_crit_edge

if.end4.i.i.while.body.i.i_crit_edge:             ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast.le.i.i = ptrtoint ptr %74 to i32
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.while.end_crit_edge.i.i, %if.end.i.while.end.i.i_crit_edge
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %if.end.i.while.end.i.i_crit_edge ]
  %pp.0.lcssa.i.i = phi ptr [ %pp.1.i.i, %while.cond.while.end_crit_edge.i.i ], [ %volumes.i.i, %if.end.i.while.end.i.i_crit_edge ]
  %cell_node.i.i = getelementptr inbounds %struct.afs_volume, ptr %retval.0.i.i, i32 0, i32 4
  %82 = ptrtoint ptr %cell_node.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %parent.0.lcssa.i.i, ptr %cell_node.i.i, align 4
  %rb_right.i.i.i = getelementptr inbounds %struct.afs_volume, ptr %retval.0.i.i, i32 0, i32 4, i32 1
  %83 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.afs_volume, ptr %retval.0.i.i, i32 0, i32 4, i32 2
  %84 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %rb_left.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !111
  %85 = ptrtoint ptr %pp.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %cell_node.i.i, ptr %pp.0.lcssa.i.i, align 4
  call void @rb_insert_color(ptr noundef %cell_node.i.i, ptr noundef %volumes.i.i) #11
  %proc_link.i15.i = getelementptr inbounds %struct.afs_volume, ptr %retval.0.i.i, i32 0, i32 5
  %proc_volumes.i.i = getelementptr inbounds %struct.afs_cell, ptr %65, i32 0, i32 18
  %86 = ptrtoint ptr %proc_volumes.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %proc_volumes.i.i, align 4
  %88 = ptrtoint ptr %proc_link.i15.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %proc_link.i15.i, align 4
  %pprev.i.i16.i = getelementptr inbounds %struct.afs_volume, ptr %retval.0.i.i, i32 0, i32 5, i32 1
  %89 = ptrtoint ptr %pprev.i.i16.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %proc_volumes.i.i, ptr %pprev.i.i16.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !112
  %90 = ptrtoint ptr %proc_volumes.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %proc_link.i15.i, ptr %proc_volumes.i.i, align 4
  %tobool.not.i26.i.i = icmp eq ptr %87, null
  br i1 %tobool.not.i26.i.i, label %while.end.i.i.afs_insert_volume_into_cell.exit.i_crit_edge, label %do.body49.i.i.i

while.end.i.i.afs_insert_volume_into_cell.exit.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %afs_insert_volume_into_cell.exit.i

do.body49.i.i.i:                                  ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev51.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %87, i32 0, i32 1
  %91 = ptrtoint ptr %pprev51.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %proc_link.i15.i, ptr %pprev51.i.i.i, align 4
  br label %afs_insert_volume_into_cell.exit.i

afs_insert_volume_into_cell.exit.i:               ; preds = %do.body49.i.i.i, %while.end.i.i.afs_insert_volume_into_cell.exit.i_crit_edge, %if.then.i.i.i, %if.else3.i.i.afs_insert_volume_into_cell.exit.i_crit_edge
  %volume.addr.0.i.i = phi ptr [ null, %if.else3.i.i.afs_insert_volume_into_cell.exit.i_crit_edge ], [ %add.ptr.i.i.le, %if.then.i.i.i ], [ %retval.0.i.i, %while.end.i.i.afs_insert_volume_into_cell.exit.i_crit_edge ], [ %retval.0.i.i, %do.body49.i.i.i ]
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %69) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !113
  %92 = ptrtoint ptr %volume_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %volume_lock.i.i, align 4
  %inc.i.i.i.i.i = add i32 %93, 1
  store i32 %inc.i.i.i.i.i, ptr %volume_lock.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i.i.i) #11
  %cmp.not.i = icmp eq ptr %volume.addr.0.i.i, %retval.0.i.i
  br i1 %cmp.not.i, label %afs_insert_volume_into_cell.exit.i.error34_crit_edge, label %if.then3.i

afs_insert_volume_into_cell.exit.i.error34_crit_edge: ; preds = %afs_insert_volume_into_cell.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error34

if.then3.i:                                       ; preds = %afs_insert_volume_into_cell.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i = getelementptr inbounds %struct.afs_fs_context, ptr %params, i32 0, i32 8
  %94 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %net.i, align 4
  call void @afs_put_volume(ptr noundef %95, ptr noundef nonnull %retval.0.i.i, i32 noundef 6) #11
  br label %error34

error34:                                          ; preds = %if.then3.i, %afs_insert_volume_into_cell.exit.i.error34_crit_edge, %afs_alloc_volume.exit.i.error34_crit_edge, %if.end29.error34_crit_edge, %if.else20.error34_crit_edge, %if.then10.error34_crit_edge, %if.then4
  %volume.0 = phi ptr [ %17, %if.then4 ], [ inttoptr (i32 -123 to ptr), %if.then10.error34_crit_edge ], [ inttoptr (i32 -123 to ptr), %if.else20.error34_crit_edge ], [ %retval.0.i.i, %afs_alloc_volume.exit.i.error34_crit_edge ], [ %volume.addr.0.i.i, %if.then3.i ], [ %retval.0.i.i, %afs_insert_volume_into_cell.exit.i.error34_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end29.error34_crit_edge ]
  call void @kfree(ptr noundef %spec.select.i) #11
  br label %cleanup

cleanup:                                          ; preds = %error34, %afs_vl_lookup_vldb.exit.cleanup_crit_edge, %afs_vl_lookup_vldb.exit.thread
  %retval.0 = phi ptr [ %volume.0, %error34 ], [ inttoptr (i32 -512 to ptr), %afs_vl_lookup_vldb.exit.thread ], [ %spec.select.i, %afs_vl_lookup_vldb.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_get_volume(ptr noundef returned %volume, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %volume, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %usage = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #11, !srcloc !109
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !110
  %1 = ptrtoint ptr %volume to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %volume, align 8
  tail call fastcc void @trace_afs_volume(i64 noundef %2, i32 noundef %asmresult.i.i.i.i, i32 noundef %reason)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %volume
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_volume(i64 noundef %vid, i32 noundef %ref, i32 noundef %reason) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_volume, i32 0, i32 1), ptr blockaddress(@trace_afs_volume, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !114

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !95) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !115

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !95) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !116
  %call42 = tail call i32 @__traceiter_afs_volume(ptr noundef null, i64 noundef %vid, i32 noundef %ref, i32 noundef %reason) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !117
  %13 = tail call i32 @llvm.read_register.i32(metadata !95) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !95) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !115

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !95) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_volume, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_volume, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_afs_volume.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_afs_volume.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 1483, ptr noundef nonnull @.str.29) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !95) #11
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
define dso_local void @afs_put_volume(ptr noundef %net, ptr noundef %volume, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %volume, null
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %volume to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %volume, align 8
  %usage = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !120
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #11, !srcloc !121
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !122
  tail call fastcc void @trace_afs_volume(i64 noundef %1, i32 noundef %asmresult.i.i.i.i, i32 noundef %reason)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %if.then1, label %if.then.if.end2_crit_edge

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2

if.then1:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %3 = load i32, ptr @afs_debug, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then1.do.body6.i_crit_edge, label %do.end.i, !prof !115

if.then1.do.body6.i_crit_edge:                    ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6.i

do.end.i:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  %4 = tail call i32 @llvm.read_register.i32(metadata !95) #11
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %comm.i, ptr noundef nonnull @.str.32, ptr noundef nonnull %volume) #15
  br label %do.body6.i

do.body6.i:                                       ; preds = %do.end.i, %if.then1.do.body6.i_crit_edge
  %cache.i = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 8
  %8 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cache.i, align 8
  %cmp.not.i = icmp eq ptr %9, null
  br i1 %cmp.not.i, label %do.end39.i, label %do.end17.i, !prof !115

do.end17.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #13
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #15
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #15
  %10 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cache.i, align 8
  %12 = ptrtoint ptr %11 to i32
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %12, i32 noundef 0) #15
  %13 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cache.i, align 8
  %15 = ptrtoint ptr %14 to i32
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %15, i32 noundef 0) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/volume.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 226, 0\0A.popsection", ""() #11, !srcloc !123
  unreachable

do.end39.i:                                       ; preds = %do.body6.i
  %cell1.i.i = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 3
  %16 = ptrtoint ptr %cell1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cell1.i.i, align 8
  %pprev.i.i.i = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.not.i.i, label %do.end39.i.if.end51.i_crit_edge, label %if.then.i.i

do.end39.i.if.end51.i_crit_edge:                  ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51.i

if.then.i.i:                                      ; preds = %do.end39.i
  %proc_link.i.i = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 5
  %20 = ptrtoint ptr %volume to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %volume, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #11
  %22 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %usage, align 4
  tail call fastcc void @trace_afs_volume(i64 noundef %21, i32 noundef %23, i32 noundef 13) #11
  %volume_lock.i.i = getelementptr inbounds %struct.afs_cell, ptr %17, i32 0, i32 19
  %lock.i.i.i = getelementptr inbounds %struct.afs_cell, ptr %17, i32 0, i32 19, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i.i) #11
  %24 = ptrtoint ptr %volume_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %volume_lock.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %25, 1
  store i32 %inc.i.i.i.i.i.i, ptr %volume_lock.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !107
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.afs_cell, ptr %17, i32 0, i32 19, i32 0, i32 0, i32 1
  %26 = tail call ptr @llvm.returnaddress(i32 0) #11
  %27 = ptrtoint ptr %26 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %27) #11
  %28 = ptrtoint ptr %proc_link.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %proc_link.i.i, align 4
  %30 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pprev.i.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %29, ptr %31, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.hlist_del_rcu.exit.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.hlist_del_rcu.exit.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del_rcu.exit.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %29, i32 0, i32 1
  %33 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %pprev14.i.i.i.i, align 4
  br label %hlist_del_rcu.exit.i.i

hlist_del_rcu.exit.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.hlist_del_rcu.exit.i.i_crit_edge
  %34 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev.i.i.i, align 4
  %cell_node.i.i = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 4
  %volumes.i.i = getelementptr inbounds %struct.afs_cell, ptr %17, i32 0, i32 17
  tail call void @rb_erase(ptr noundef %cell_node.i.i, ptr noundef %volumes.i.i) #11
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %27) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !113
  %35 = ptrtoint ptr %volume_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %volume_lock.i.i, align 4
  %inc.i.i.i.i.i = add i32 %36, 1
  store i32 %inc.i.i.i.i.i, ptr %volume_lock.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i.i) #11
  br label %if.end51.i

if.end51.i:                                       ; preds = %hlist_del_rcu.exit.i.i, %do.end39.i.if.end51.i_crit_edge
  %servers.i = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 9
  %37 = ptrtoint ptr %servers.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %servers.i, align 4
  tail call void @afs_put_serverlist(ptr noundef %net, ptr noundef %38) #11
  %39 = ptrtoint ptr %cell1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cell1.i.i, align 8
  tail call void @afs_put_cell(ptr noundef %40, i32 noundef 12) #11
  %41 = ptrtoint ptr %volume to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %volume, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #11
  %43 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %usage, align 4
  tail call fastcc void @trace_afs_volume(i64 noundef %42, i32 noundef %44, i32 noundef 1) #11
  tail call void @kvfree_call_rcu(ptr noundef nonnull %volume, ptr noundef null) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %45 = load i32, ptr @afs_debug, align 4
  %and55.i = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %if.end51.i.if.end2_crit_edge, label %do.end66.i, !prof !115

if.end51.i.if.end2_crit_edge:                     ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2

do.end66.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  %46 = tail call i32 @llvm.read_register.i32(metadata !95) #11
  %and.i86.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i86.i to ptr
  %task69.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task69.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task69.i, align 8
  %comm70.i = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 101
  %call72.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %comm70.i, ptr noundef nonnull @.str.32) #15
  br label %if.end2

if.end2:                                          ; preds = %do.end66.i, %if.end51.i.if.end2_crit_edge, %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_activate_volume(ptr nocapture noundef %volume) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cell = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 3
  %0 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cell, align 8
  %name1 = getelementptr inbounds %struct.afs_cell, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name1, align 8
  %4 = ptrtoint ptr %volume to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %volume, align 8
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, ptr noundef %3, i64 noundef %5) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @__fscache_acquire_volume(ptr noundef nonnull %call, ptr noundef null, ptr noundef null, i32 noundef 0) #11
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then4:                                         ; preds = %if.end
  %cmp.not = icmp eq ptr %call.i, inttoptr (i32 -16 to ptr)
  br i1 %cmp.not, label %do.end, label %if.then6

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call) #11
  %6 = ptrtoint ptr %call.i to i32
  br label %cleanup

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %call) #15
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.end.if.end10_crit_edge
  %vcookie.0 = phi ptr [ null, %do.end ], [ %call.i, %if.end.if.end10_crit_edge ]
  %cache = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 8
  %7 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vcookie.0, ptr %cache, align 8
  tail call void @kfree(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then6 ], [ 0, %if.end10 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_deactivate_volume(ptr noundef %volume) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !115

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = tail call i32 @llvm.read_register.i32(metadata !95) #11
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %name = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 17
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm, ptr noundef nonnull @.str.5, ptr noundef %name) #15
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %cache = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 8
  %5 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cache, align 8
  %flags = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 7
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.end6.fscache_relinquish_volume.exit_crit_edge, label %if.then.i

do.end6.fscache_relinquish_volume.exit_crit_edge: ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %fscache_relinquish_volume.exit

if.then.i:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8 = icmp ne i32 %9, 0
  tail call void @__fscache_relinquish_volume(ptr noundef nonnull %6, ptr noundef null, i1 noundef zeroext %tobool8) #11
  br label %fscache_relinquish_volume.exit

fscache_relinquish_volume.exit:                   ; preds = %if.then.i, %do.end6.fscache_relinquish_volume.exit_crit_edge
  %10 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %cache, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %11 = load i32, ptr @afs_debug, align 4
  %and11 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %fscache_relinquish_volume.exit.do.end29_crit_edge, label %do.end21, !prof !115

fscache_relinquish_volume.exit.do.end29_crit_edge: ; preds = %fscache_relinquish_volume.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end29

do.end21:                                         ; preds = %fscache_relinquish_volume.exit
  call void @__sanitizer_cov_trace_pc() #13
  %12 = tail call i32 @llvm.read_register.i32(metadata !95) #11
  %and.i33 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i33 to ptr
  %task24 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task24, align 8
  %comm25 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 101
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm25, ptr noundef nonnull @.str.5) #15
  br label %do.end29

do.end29:                                         ; preds = %do.end21, %fscache_relinquish_volume.exit.do.end29_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_check_volume_status(ptr noundef %volume, ptr nocapture noundef readonly %op) local_unnamed_addr #0 align 64 {
entry:
  %vc.i.i = alloca %struct.afs_vl_cursor, align 4
  %idbuf.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !115

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = tail call i32 @llvm.read_register.i32(metadata !95) #11
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %comm, ptr noundef nonnull @.str.10) #15
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %flags = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 7
  %update_at = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 2
  %flags102 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  br label %retry

retry:                                            ; preds = %if.end130.retry_crit_edge, %do.end6
  %retries.0 = phi i32 [ 0, %do.end6 ], [ %inc, %if.end130.retry_crit_edge ]
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.end10, label %retry.wait_crit_edge

retry.wait_crit_edge:                             ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #13
  br label %wait

if.end10:                                         ; preds = %retry
  %8 = ptrtoint ptr %update_at to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %update_at, align 8
  %call11 = tail call i64 @ktime_get_real_seconds() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %call11)
  %cmp.not = icmp sgt i64 %9, %call11
  br i1 %cmp.not, label %lor.lhs.false, label %if.end10.update_crit_edge

if.end10.update_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %update

lor.lhs.false:                                    ; preds = %if.end10
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %and1.i175 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i175)
  %tobool14.not = icmp eq i32 %and1.i175, 0
  br i1 %tobool14.not, label %do.body17, label %lor.lhs.false.update_crit_edge

lor.lhs.false.update_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %update

do.body17:                                        ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %12 = load i32, ptr @afs_debug, align 4
  %and18 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body17.cleanup_crit_edge, label %do.end29, !prof !115

do.body17.cleanup_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end29:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  %13 = tail call i32 @llvm.read_register.i32(metadata !95) #11
  %and.i178 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i178 to ptr
  %task32 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task32, align 8
  %comm33 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 101
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %comm33, ptr noundef nonnull @.str.10) #15
  br label %cleanup

update:                                           ; preds = %lor.lhs.false.update_crit_edge, %if.end10.update_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags, i32 noundef 4) #11
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags, align 4
  %and.i.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %test_and_set_bit_lock.exit, label %update.wait_crit_edge

update.wait_crit_edge:                            ; preds = %update
  call void @__sanitizer_cov_trace_pc() #13
  br label %wait

test_and_set_bit_lock.exit:                       ; preds = %update
  tail call void @llvm.prefetch.p0(ptr %flags, i32 1, i32 3, i32 1) #11
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags, ptr %flags, i32 2, ptr elementtype(i32) %flags) #11, !srcloc !124
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !125
  %20 = and i32 %asmresult.i.i.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %phi.cmp.i.not = icmp eq i32 %20, 0
  br i1 %phi.cmp.i.not, label %if.then41, label %test_and_set_bit_lock.exit.wait_crit_edge

test_and_set_bit_lock.exit.wait_crit_edge:        ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %wait

if.then41:                                        ; preds = %test_and_set_bit_lock.exit
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #11
  %key = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %21 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %key, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %idbuf.i) #11
  %23 = call ptr @memset(ptr %idbuf.i, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %24 = load i32, ptr @afs_debug, align 4
  %and.i179 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i179)
  %tobool.not.i = icmp eq i32 %and.i179, 0
  br i1 %tobool.not.i, label %if.then41.do.end6.i_crit_edge, label %do.end.i, !prof !115

if.then41.do.end6.i_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6.i

do.end.i:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  %25 = tail call i32 @llvm.read_register.i32(metadata !95) #11
  %and.i.i180 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i180 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 101
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %comm.i, ptr noundef nonnull @.str.48) #15
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %if.then41.do.end6.i_crit_edge
  %29 = ptrtoint ptr %volume to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %volume, align 8
  %call8.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %idbuf.i, ptr noundef nonnull @.str.49, i64 noundef %30) #11
  %cell.i = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 3
  %31 = ptrtoint ptr %cell.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cell.i, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %vc.i.i) #11
  %33 = call ptr @memset(ptr %vc.i.i, i32 255, i32 48)
  %call1.i.i = call zeroext i1 @afs_begin_vlserver_operation(ptr noundef nonnull %vc.i.i, ptr noundef %32, ptr noundef %22) #11
  br i1 %call1.i.i, label %while.cond.preheader.i.i, label %afs_vl_lookup_vldb.exit.thread.i

afs_vl_lookup_vldb.exit.thread.i:                 ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %vc.i.i) #11
  br label %if.then12.i

while.cond.preheader.i.i:                         ; preds = %do.end6.i
  %call310.i.i = call zeroext i1 @afs_select_vlserver(ptr noundef nonnull %vc.i.i) #11
  br i1 %call310.i.i, label %while.cond.preheader.i.i.while.body.i.i_crit_edge, label %while.cond.preheader.i.i.afs_vl_lookup_vldb.exit.i_crit_edge

while.cond.preheader.i.i.afs_vl_lookup_vldb.exit.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %afs_vl_lookup_vldb.exit.i

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %call4.i.i = call ptr @afs_vl_get_entry_by_name_u(ptr noundef nonnull %vc.i.i, ptr noundef nonnull %idbuf.i, i32 noundef %call8.i) #11
  %call3.i.i = call zeroext i1 @afs_select_vlserver(ptr noundef nonnull %vc.i.i) #11
  br i1 %call3.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.afs_vl_lookup_vldb.exit.i_crit_edge

while.body.i.i.afs_vl_lookup_vldb.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %afs_vl_lookup_vldb.exit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

afs_vl_lookup_vldb.exit.i:                        ; preds = %while.body.i.i.afs_vl_lookup_vldb.exit.i_crit_edge, %while.cond.preheader.i.i.afs_vl_lookup_vldb.exit.i_crit_edge
  %vldb.0.lcssa.i.i = phi ptr [ inttoptr (i32 -89 to ptr), %while.cond.preheader.i.i.afs_vl_lookup_vldb.exit.i_crit_edge ], [ %call4.i.i, %while.body.i.i.afs_vl_lookup_vldb.exit.i_crit_edge ]
  %call5.i.i = call i32 @afs_end_vlserver_operation(ptr noundef nonnull %vc.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp.i.i = icmp slt i32 %call5.i.i, 0
  %34 = inttoptr i32 %call5.i.i to ptr
  %spec.select.i.i = select i1 %cmp.i.i, ptr %34, ptr %vldb.0.lcssa.i.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %vc.i.i) #11
  %cmp.i165.i = icmp ugt ptr %spec.select.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i165.i, label %afs_vl_lookup_vldb.exit.i.if.then12.i_crit_edge, label %if.end14.i

afs_vl_lookup_vldb.exit.i.if.then12.i_crit_edge:  ; preds = %afs_vl_lookup_vldb.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.i

if.then12.i:                                      ; preds = %afs_vl_lookup_vldb.exit.i.if.then12.i_crit_edge, %afs_vl_lookup_vldb.exit.thread.i
  %retval.0.i172.i = phi ptr [ inttoptr (i32 -512 to ptr), %afs_vl_lookup_vldb.exit.thread.i ], [ %spec.select.i.i, %afs_vl_lookup_vldb.exit.i.if.then12.i_crit_edge ]
  %35 = ptrtoint ptr %retval.0.i172.i to i32
  br label %do.body110.i

if.end14.i:                                       ; preds = %afs_vl_lookup_vldb.exit.i
  %name_len.i = getelementptr inbounds %struct.afs_vldb_entry, ptr %spec.select.i.i, i32 0, i32 7
  %36 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %name_len.i, align 1
  %name_len15.i = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 16
  %38 = ptrtoint ptr %name_len15.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %name_len15.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %39)
  %cmp.not.i = icmp eq i8 %37, %39
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end14.i.if.then26.i_crit_edge

if.end14.i.if.then26.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26.i

lor.lhs.false.i:                                  ; preds = %if.end14.i
  %conv.i = zext i8 %37 to i32
  %name.i = getelementptr inbounds %struct.afs_vldb_entry, ptr %spec.select.i.i, i32 0, i32 8
  %name19.i = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 17
  %bcmp.i = call i32 @bcmp(ptr %name.i, ptr %name19.i, i32 %conv.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp24.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp24.not.i, label %lor.lhs.false.i.if.end33.i_crit_edge, label %lor.lhs.false.i.if.then26.i_crit_edge

lor.lhs.false.i.if.then26.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26.i

lor.lhs.false.i.if.end33.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i

if.then26.i:                                      ; preds = %lor.lhs.false.i.if.then26.i_crit_edge, %if.end14.i.if.then26.i_crit_edge
  %name27.i = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 17
  %name29.i = getelementptr inbounds %struct.afs_vldb_entry, ptr %spec.select.i.i, i32 0, i32 8
  %40 = call ptr @memcpy(ptr %name27.i, ptr %name29.i, i32 64)
  %41 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %name_len.i, align 1
  %43 = ptrtoint ptr %name_len15.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %name_len15.i, align 2
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then26.i, %lor.lhs.false.i.if.end33.i_crit_edge
  %44 = ptrtoint ptr %cell.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cell.i, align 8
  %type.i = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 14
  %46 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %type.i, align 8
  %conv35.i = zext i8 %47 to i32
  %shl.i = shl nuw i32 1, %conv35.i
  %conv36.i = trunc i32 %shl.i to i8
  %call37.i = call ptr @afs_alloc_server_list(ptr noundef %45, ptr noundef %22, ptr noundef %spec.select.i.i, i8 noundef zeroext %conv36.i) #11
  %cmp.i166.i = icmp ugt ptr %call37.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166.i, label %if.then39.i, label %if.end41.i

if.then39.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %call37.i to i32
  br label %error_vldb.i

if.end41.i:                                       ; preds = %if.end33.i
  %servers_lock.i = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 10
  call void @_raw_write_lock(ptr noundef %servers_lock.i) #11
  %dep_map.i = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 10, i32 4
  %call.i.i181 = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i181)
  %tobool45.not.i = icmp eq i32 %call.i.i181, 0
  br i1 %tobool45.not.i, label %land.lhs.true.i, label %if.end41.i.do.end53.i_crit_edge

if.end41.i.do.end53.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end53.i

land.lhs.true.i:                                  ; preds = %if.end41.i
  %call46.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %land.lhs.true.i.do.end53.i_crit_edge, label %land.lhs.true48.i

land.lhs.true.i.do.end53.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end53.i

land.lhs.true48.i:                                ; preds = %land.lhs.true.i
  %.b164.i = load i1, ptr @afs_update_volume_status.__warned, align 1
  br i1 %.b164.i, label %land.lhs.true48.i.do.end53.i_crit_edge, label %if.then50.i

land.lhs.true48.i.do.end53.i_crit_edge:           ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end53.i

if.then50.i:                                      ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @afs_update_volume_status.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 356, ptr noundef nonnull @.str.50) #11
  br label %do.end53.i

do.end53.i:                                       ; preds = %if.then50.i, %land.lhs.true48.i.do.end53.i_crit_edge, %land.lhs.true.i.do.end53.i_crit_edge, %if.end41.i.do.end53.i_crit_edge
  %servers.i = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 9
  %49 = ptrtoint ptr %servers.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %servers.i, align 4
  %call55.i = call zeroext i1 @afs_annotate_server_list(ptr noundef %call37.i, ptr noundef %50) #11
  br i1 %call55.i, label %if.then56.i, label %do.end53.i.if.end104.i_crit_edge

do.end53.i.if.end104.i_crit_edge:                 ; preds = %do.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104.i

if.then56.i:                                      ; preds = %do.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  %servers_seq.i = getelementptr inbounds %struct.afs_volume, ptr %volume, i32 0, i32 11
  %51 = ptrtoint ptr %servers_seq.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %servers_seq.i, align 4
  %add.i = add i32 %52, 1
  %seq.i = getelementptr inbounds %struct.afs_server_list, ptr %call37.i, i32 0, i32 5
  %53 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add.i, ptr %seq.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  %54 = ptrtoint ptr %servers.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %call37.i, ptr %servers.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !127
  %55 = ptrtoint ptr %servers_seq.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %servers_seq.i, align 4
  %inc.i = add i32 %56, 1
  store i32 %inc.i, ptr %servers_seq.i, align 4
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then56.i, %do.end53.i.if.end104.i_crit_edge
  %discard.0.i = phi ptr [ %50, %if.then56.i ], [ %call37.i, %do.end53.i.if.end104.i_crit_edge ]
  %call105.i = call i64 @ktime_get_real_seconds() #11
  %57 = load i32, ptr @afs_volume_record_life, align 4
  %conv106.i = zext i32 %57 to i64
  %add107.i = add i64 %call105.i, %conv106.i
  %58 = ptrtoint ptr %update_at to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %add107.i, ptr %update_at, align 8
  call void @_raw_write_unlock(ptr noundef %servers_lock.i) #11
  %59 = ptrtoint ptr %cell.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cell.i, align 8
  %net.i = getelementptr inbounds %struct.afs_cell, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %net.i, align 4
  call void @afs_put_serverlist(ptr noundef %62, ptr noundef %discard.0.i) #11
  br label %error_vldb.i

error_vldb.i:                                     ; preds = %if.end104.i, %if.then39.i
  %ret.0.i = phi i32 [ %48, %if.then39.i ], [ 0, %if.end104.i ]
  call void @kfree(ptr noundef %spec.select.i.i) #11
  br label %do.body110.i

do.body110.i:                                     ; preds = %error_vldb.i, %if.then12.i
  %ret.1.i = phi i32 [ %35, %if.then12.i ], [ %ret.0.i, %error_vldb.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %63 = load i32, ptr @afs_debug, align 4
  %and111.i = and i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111.i)
  %tobool112.not.i = icmp eq i32 %and111.i, 0
  br i1 %tobool112.not.i, label %do.body110.i.afs_update_volume_status.exit_crit_edge, label %do.end122.i, !prof !115

do.body110.i.afs_update_volume_status.exit_crit_edge: ; preds = %do.body110.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %afs_update_volume_status.exit

do.end122.i:                                      ; preds = %do.body110.i
  call void @__sanitizer_cov_trace_pc() #13
  %64 = call i32 @llvm.read_register.i32(metadata !95) #11
  %and.i167.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i167.i to ptr
  %task125.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task125.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task125.i, align 8
  %comm126.i = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 101
  %call128.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %comm126.i, ptr noundef nonnull @.str.48, i32 noundef %ret.1.i) #15
  br label %afs_update_volume_status.exit

afs_update_volume_status.exit:                    ; preds = %do.end122.i, %do.body110.i.afs_update_volume_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %idbuf.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp44 = icmp slt i32 %ret.1.i, 0
  br i1 %cmp44, label %if.then45, label %afs_update_volume_status.exit.if.end47_crit_edge

afs_update_volume_status.exit.if.end47_crit_edge: ; preds = %afs_update_volume_status.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then45:                                        ; preds = %afs_update_volume_status.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 0, ptr noundef %flags) #11
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %afs_update_volume_status.exit.if.end47_crit_edge
  %call.i.i182 = call zeroext i1 @__kasan_check_write(ptr noundef %flags, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !128
  call void @llvm.prefetch.p0(ptr %flags, i32 1, i32 3, i32 1) #11
  %68 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags, ptr %flags, i32 4, ptr elementtype(i32) %flags) #11, !srcloc !129
  %call.i.i183 = call zeroext i1 @__kasan_check_write(ptr noundef %flags, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !128
  call void @llvm.prefetch.p0(ptr %flags, i32 1, i32 3, i32 1) #11
  %69 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags, ptr %flags, i32 2, ptr elementtype(i32) %flags) #11, !srcloc !129
  call void @wake_up_bit(ptr noundef %flags, i32 noundef 2) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %70 = load i32, ptr @afs_debug, align 4
  %and52 = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end47.cleanup_crit_edge, label %do.end63, !prof !115

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end63:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  %71 = call i32 @llvm.read_register.i32(metadata !95) #11
  %and.i184 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i184 to ptr
  %task66 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %task66 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %task66, align 8
  %comm67 = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 101
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %comm67, ptr noundef nonnull @.str.10, i32 noundef %ret.1.i) #15
  br label %cleanup

wait:                                             ; preds = %test_and_set_bit_lock.exit.wait_crit_edge, %update.wait_crit_edge, %retry.wait_crit_edge
  %75 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %flags, align 4
  %77 = and i32 %76, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool76.not = icmp eq i32 %77, 0
  br i1 %tobool76.not, label %do.body78, label %if.end100

do.body78:                                        ; preds = %wait
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %78 = load i32, ptr @afs_debug, align 4
  %and79 = and i32 %78, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %do.body78.cleanup_crit_edge, label %do.end90, !prof !115

do.body78.cleanup_crit_edge:                      ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end90:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #13
  %79 = tail call i32 @llvm.read_register.i32(metadata !95) #11
  %and.i185 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i185 to ptr
  %task93 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task93 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task93, align 8
  %comm94 = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 101
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %comm94, ptr noundef nonnull @.str.10) #15
  br label %cleanup

if.end100:                                        ; preds = %wait
  %83 = ptrtoint ptr %flags102 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags102, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.53, i32 noundef 73) #11
  %85 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %flags, align 4
  %87 = and i32 %86, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i186 = icmp eq i32 %87, 0
  br i1 %tobool.not.i186, label %if.end100.if.end130_crit_edge, label %wait_on_bit.exit

if.end100.if.end130_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

wait_on_bit.exit:                                 ; preds = %if.end100
  %and103 = and i32 %84, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  %cond = select i1 %tobool104.not, i32 1, i32 2
  %call3.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %flags, i32 noundef 2, ptr noundef nonnull @bit_wait, i32 noundef %cond) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call3.i)
  %cmp106 = icmp eq i32 %call3.i, -512
  br i1 %cmp106, label %do.body108, label %wait_on_bit.exit.if.end130_crit_edge

wait_on_bit.exit.if.end130_crit_edge:             ; preds = %wait_on_bit.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

do.body108:                                       ; preds = %wait_on_bit.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %88 = load i32, ptr @afs_debug, align 4
  %and109 = and i32 %88, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %do.body108.cleanup_crit_edge, label %do.end120, !prof !115

do.body108.cleanup_crit_edge:                     ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end120:                                        ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #13
  %89 = tail call i32 @llvm.read_register.i32(metadata !95) #11
  %and.i187 = and i32 %89, -16384
  %90 = inttoptr i32 %and.i187 to ptr
  %task123 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %task123 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %task123, align 8
  %comm124 = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 101
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %comm124, ptr noundef nonnull @.str.10, i32 noundef -512) #15
  br label %cleanup

if.end130:                                        ; preds = %wait_on_bit.exit.if.end130_crit_edge, %if.end100.if.end130_crit_edge
  %inc = add nuw nsw i32 %retries.0, 1
  %cmp131 = icmp eq i32 %inc, 4
  br i1 %cmp131, label %do.body133, label %if.end130.retry_crit_edge

if.end130.retry_crit_edge:                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry

do.body133:                                       ; preds = %if.end130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %93 = load i32, ptr @afs_debug, align 4
  %and134 = and i32 %93, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %do.body133.cleanup_crit_edge, label %do.end145, !prof !115

do.body133.cleanup_crit_edge:                     ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end145:                                        ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #13
  %94 = tail call i32 @llvm.read_register.i32(metadata !95) #11
  %and.i188 = and i32 %94, -16384
  %95 = inttoptr i32 %and.i188 to ptr
  %task148 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %task148 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %task148, align 8
  %comm149 = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 101
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %comm149, ptr noundef nonnull @.str.10) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end145, %do.body133.cleanup_crit_edge, %do.end120, %do.body108.cleanup_crit_edge, %do.end90, %do.body78.cleanup_crit_edge, %do.end63, %if.end47.cleanup_crit_edge, %do.end29, %do.body17.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end29 ], [ 0, %do.body17.cleanup_crit_edge ], [ %ret.1.i, %do.end63 ], [ %ret.1.i, %if.end47.cleanup_crit_edge ], [ 0, %do.end90 ], [ 0, %do.body78.cleanup_crit_edge ], [ -512, %do.end120 ], [ -512, %do.body108.cleanup_crit_edge ], [ -116, %do.end145 ], [ -116, %do.body133.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @afs_begin_vlserver_operation(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @afs_select_vlserver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_vl_get_entry_by_name_u(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_end_vlserver_operation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_get_cell(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_alloc_server_list(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_put_cell(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_volume(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_put_serverlist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__fscache_acquire_volume(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_relinquish_volume(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @afs_annotate_server_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48, !50, !51, !53, !54, !55, !56, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !89, !90, !92, !93}
!llvm.named.register.sp = !{!95}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @afs_volume_gc_delay, !1, !"afs_volume_gc_delay", i1 false, i1 false}
!1 = !{!"../fs/afs/volume.c", i32 12, i32 24}
!2 = !{ptr @afs_volume_record_life, !3, !"afs_volume_record_life", i1 false, i1 false}
!3 = !{!"../fs/afs/volume.c", i32 13, i32 24}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/afs/volume.c", i32 277, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/afs/volume.c", i32 288, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @afs_activate_volume._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @afs_activate_volume._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/afs/volume.c", i32 302, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @afs_deactivate_volume._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @afs_deactivate_volume._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/afs/volume.c", i32 310, i32 2}
!19 = !{ptr @afs_deactivate_volume._entry.6, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @afs_deactivate_volume._entry_ptr.8, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/afs/volume.c", i32 384, i32 2}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @afs_check_volume_status._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @afs_check_volume_status._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/afs/volume.c", i32 392, i32 2}
!28 = !{ptr @afs_check_volume_status._entry.11, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @afs_check_volume_status._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/afs/volume.c", i32 404, i32 3}
!32 = !{ptr @afs_check_volume_status._entry.14, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @afs_check_volume_status._entry_ptr.16, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/afs/volume.c", i32 410, i32 3}
!36 = !{ptr @afs_check_volume_status._entry.17, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @afs_check_volume_status._entry_ptr.19, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @afs_check_volume_status._entry.20, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../fs/afs/volume.c", i32 418, i32 3}
!40 = !{ptr @afs_check_volume_status._entry_ptr.21, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/afs/volume.c", i32 424, i32 3}
!43 = !{ptr @afs_check_volume_status._entry.22, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @afs_check_volume_status._entry_ptr.24, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @afs_alloc_volume.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../fs/afs/volume.c", i32 93, i32 2}
!47 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @afs_alloc_volume.__key.26, !49, !"__key", i1 false, i1 false}
!49 = !{!"../fs/afs/volume.c", i32 94, i32 2}
!50 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/trace/events/afs.h", i32 1462, i32 1}
!53 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!55 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!58 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/afs/volume.c", i32 223, i32 2}
!61 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @afs_destroy_volume._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @afs_destroy_volume._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/afs/volume.c", i32 226, i32 2}
!66 = !{ptr @afs_destroy_volume._entry.33, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @afs_destroy_volume._entry_ptr.35, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @afs_destroy_volume._entry.36, !65, !"_entry", i1 false, i1 false}
!70 = !{ptr @afs_destroy_volume._entry_ptr.38, !65, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.40, !65, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @afs_destroy_volume._entry.39, !65, !"_entry", i1 false, i1 false}
!73 = !{ptr @afs_destroy_volume._entry_ptr.41, !65, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.43, !65, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @afs_destroy_volume._entry.42, !65, !"_entry", i1 false, i1 false}
!76 = !{ptr @afs_destroy_volume._entry_ptr.44, !65, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.46, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/afs/volume.c", i32 236, i32 2}
!79 = !{ptr @afs_destroy_volume._entry.45, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @afs_destroy_volume._entry_ptr.47, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/afs/volume.c", i32 323, i32 2}
!83 = !{ptr @afs_update_volume_status._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @afs_update_volume_status._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.49, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/afs/volume.c", i32 328, i32 24}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../fs/afs/volume.c", i32 355, i32 8}
!89 = !{ptr @.str.50, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @afs_update_volume_status._entry.51, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../fs/afs/volume.c", i32 373, i32 2}
!92 = !{ptr @afs_update_volume_status._entry_ptr.52, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.53, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../include/linux/wait_bit.h", i32 73, i32 2}
!95 = !{!"sp"}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{i8 0, i8 2}
!106 = !{i64 2157784812}
!107 = !{i64 2149769077}
!108 = !{i64 2148303972}
!109 = !{i64 2148219281, i64 2148219313, i64 2148219342, i64 2148219376, i64 2148219407, i64 2148219430}
!110 = !{i64 2148304201}
!111 = !{i64 2149945135}
!112 = !{i64 2151509136}
!113 = !{i64 2149769402}
!114 = !{i64 2148700376, i64 2148700381, i64 2148700394, i64 2148700438, i64 2148700472, i64 2148700493}
!115 = !{!"branch_weights", i32 2000, i32 1}
!116 = !{i64 2157736072}
!117 = !{i64 2157736287}
!118 = !{i64 2149934783}
!119 = !{i64 2149935819}
!120 = !{i64 2148307013}
!121 = !{i64 2148221746, i64 2148221778, i64 2148221807, i64 2148221841, i64 2148221872, i64 2148221895}
!122 = !{i64 2148307242}
!123 = !{i64 2157795714, i64 2157796194, i64 2157795751, i64 2157795807, i64 2157795841, i64 2157795865, i64 2157795906, i64 2157795927, i64 2157795955, i64 2157795989}
!124 = !{i64 2148227419, i64 2148227451, i64 2148227480, i64 2148227514, i64 2148227545, i64 2148227568}
!125 = !{i64 2148316500}
!126 = !{i64 2157818173}
!127 = !{i64 2157820804}
!128 = !{i64 2148315387}
!129 = !{i64 2148225806, i64 2148225838, i64 2148225867, i64 2148225901, i64 2148225932, i64 2148225955}
