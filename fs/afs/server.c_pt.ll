; ModuleID = '/llk/IR_all_yes/fs/afs/server.c_pt.bc'
source_filename = "../fs/afs/server.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.67 }
%union.anon.67 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.afs_net = type { ptr, %struct.afs_uuid, i8, ptr, ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.rb_root, ptr, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.rw_semaphore, %struct.mutex, %struct.mutex, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.seqlock_t, %struct.work_struct, %struct.timer_list, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, %struct.rwlock_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.afs_uuid = type { i32, i16, i16, i8, i8, [6 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon.0 }
%union.anon.0 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.1 }
%union.anon.1 = type { [4 x i32] }
%struct.afs_server = type { %struct.callback_head, %union.anon, ptr, ptr, %struct.rb_node, ptr, ptr, %struct.list_head, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.work_struct, ptr, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, %struct.rwlock_t, i32, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.169 }
%struct.callback_head = type { ptr, ptr }
%union.anon = type { %struct.afs_uuid }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.169 = type { i32, i32, i16, i8 }
%struct.afs_addr_list = type { %struct.callback_head, %struct.refcount_struct, i32, i8, i8, i8, i8, i16, i32, i32, [0 x %struct.sockaddr_rxrpc] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.33 }
%struct.llist_node = type { ptr }
%union.anon.33 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.afs_cell = type { %union.anon.2, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.hlist_node, i64, i64, %struct.atomic_t, %struct.atomic_t, i32, i32, i16, i16, i32, i32, %struct.rb_root, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.seqlock_t, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.rwlock_t, ptr, i8, ptr }
%union.anon.2 = type { %struct.rb_node }
%struct.afs_vl_cursor = type { %struct.afs_addr_cursor, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16 }
%struct.afs_addr_cursor = type { ptr, i32, i8, i8, i16, i16, i32 }
%struct.afs_vlserver = type { %struct.callback_head, ptr, i32, %struct.rwlock_t, %struct.atomic_t, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.145, i16, i16, [0 x i8] }
%struct.anon.145 = type { i32, i32, i16, i16 }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.afs_operation = type { ptr, ptr, ptr, ptr, ptr, [2 x %struct.afs_vnode_param], ptr, %struct.afs_volsync, ptr, ptr, %struct.timespec64, %struct.timespec64, i16, i16, i32, i32, i32, %union.anon.155, %struct.afs_addr_cursor, ptr, ptr, ptr, i32, i16, i16, i32 }
%struct.afs_vnode_param = type { ptr, %struct.afs_fid, %struct.afs_status_cb, i64, i32, i8, i8 }
%struct.afs_fid = type { i64, i64, i32, i32 }
%struct.afs_status_cb = type { %struct.afs_file_status, %struct.afs_callback, i8, i8, i8 }
%struct.afs_file_status = type { i64, i64, %struct.timespec64, %struct.timespec64, i64, i64, i64, i32, i32, i16, i32, i32, i32, i32 }
%struct.afs_callback = type { i64 }
%struct.afs_volsync = type { i64 }
%struct.timespec64 = type { i64, i32 }
%union.anon.155 = type { %struct.anon.166 }
%struct.anon.166 = type { %struct.afs_volume_status, ptr }
%struct.afs_volume_status = type { i64, i64, i8, i8, i8, i8, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.afs_volume = type { %union.anon.148, %struct.atomic_t, i64, ptr, %struct.rb_node, %struct.hlist_node, ptr, i32, ptr, ptr, %struct.rwlock_t, i32, i32, %struct.rwlock_t, i8, i8, i8, [65 x i8] }
%union.anon.148 = type { i64 }

@afs_find_server.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/afs/server.c\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@afs_find_server.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@afs_find_server.__warned.4 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@afs_find_server.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@afs_debug = external dso_local local_unnamed_addr global i32, align 4
@afs_find_server_by_uuid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%-6.6s] ==> %s(%pU)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"afs_find_server_by_uuid\00", [40 x i8] zeroinitializer }, align 32
@afs_find_server_by_uuid._entry_ptr = internal global ptr @afs_find_server_by_uuid._entry, section ".printk_index", align 4
@afs_find_server_by_uuid._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %p\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_find_server_by_uuid._entry_ptr.10 = internal global ptr @afs_find_server_by_uuid._entry.8, section ".printk_index", align 4
@afs_lookup_server._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s] ==> %s(%p,%pU)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"afs_lookup_server\00", [46 x i8] zeroinitializer }, align 32
@afs_lookup_server._entry_ptr = internal global ptr @afs_lookup_server._entry, section ".printk_index", align 4
@afs_servers_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"afs_servers_timer\00", [46 x i8] zeroinitializer }, align 32
@afs_servers_timer._entry_ptr = internal global ptr @afs_servers_timer._entry, section ".printk_index", align 4
@afs_wq = external dso_local local_unnamed_addr global ptr, align 4
@afs_manage_servers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.15, ptr @.str, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"afs_manage_servers\00", [45 x i8] zeroinitializer }, align 32
@afs_manage_servers._entry_ptr = internal global ptr @afs_manage_servers._entry, section ".printk_index", align 4
@afs_manage_servers._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s]     manage %pU %u\0A\00", [36 x i8] zeroinitializer }, align 32
@afs_manage_servers._entry_ptr.18 = internal global ptr @afs_manage_servers._entry.16, section ".printk_index", align 4
@afs_manage_servers._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\015Can't purge s=%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@afs_manage_servers._entry_ptr.21 = internal global ptr @afs_manage_servers._entry.19, section ".printk_index", align 4
@afs_manage_servers._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str, i32 597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() [%d]\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_manage_servers._entry_ptr.24 = internal global ptr @afs_manage_servers._entry.22, section ".printk_index", align 4
@afs_purge_servers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.25, ptr @.str, i32 612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"afs_purge_servers\00", [46 x i8] zeroinitializer }, align 32
@afs_purge_servers._entry_ptr = internal global ptr @afs_purge_servers._entry, section ".printk_index", align 4
@afs_purge_servers._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s]     wait\0A\00", [45 x i8] zeroinitializer }, align 32
@afs_purge_servers._entry_ptr.28 = internal global ptr @afs_purge_servers._entry.26, section ".printk_index", align 4
@afs_purge_servers._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str, i32 623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] <== %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@afs_purge_servers._entry_ptr.31 = internal global ptr @afs_purge_servers._entry.29, section ".printk_index", align 4
@afs_check_server_record._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.32, ptr @.str, i32 676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"afs_check_server_record\00", [40 x i8] zeroinitializer }, align 32
@afs_check_server_record._entry_ptr = internal global ptr @afs_check_server_record._entry, section ".printk_index", align 4
@afs_check_server_record._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\013\0A\00", [28 x i8] zeroinitializer }, align 32
@afs_check_server_record._entry_ptr.35 = internal global ptr @afs_check_server_record._entry.33, section ".printk_index", align 4
@afs_check_server_record._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013AFS: Assertion failed\0A\00", [39 x i8] zeroinitializer }, align 32
@afs_check_server_record._entry_ptr.38 = internal global ptr @afs_check_server_record._entry.36, section ".printk_index", align 4
@afs_check_server_record._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] <== %s() = t [good]\0A\00", [34 x i8] zeroinitializer }, align 32
@afs_check_server_record._entry_ptr.41 = internal global ptr @afs_check_server_record._entry.39, section ".printk_index", align 4
@afs_check_server_record._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.32, ptr @.str, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_check_server_record._entry_ptr.44 = internal global ptr @afs_check_server_record._entry.42, section ".printk_index", align 4
@afs_check_server_record._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.32, ptr @.str, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] <== %s() = f [intr]\0A\00", [34 x i8] zeroinitializer }, align 32
@afs_check_server_record._entry_ptr.47 = internal global ptr @afs_check_server_record._entry.45, section ".printk_index", align 4
@afs_check_server_record._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.32, ptr @.str, i32 710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s] <== %s() = f [stale]\0A\00", [33 x i8] zeroinitializer }, align 32
@afs_check_server_record._entry_ptr.50 = internal global ptr @afs_check_server_record._entry.48, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.53 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@afs_alloc_server._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.54, ptr @.str, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"afs_alloc_server\00", [47 x i8] zeroinitializer }, align 32
@afs_alloc_server._entry_ptr = internal global ptr @afs_alloc_server._entry, section ".printk_index", align 4
@afs_server_debug_id = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@afs_alloc_server.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&server->fs_lock\00", [47 x i8] zeroinitializer }, align 32
@afs_alloc_server.__key.56 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&server->initcb_work)\00", [56 x i8] zeroinitializer }, align 32
@afs_alloc_server.__key.58 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&server->probe_wq\00", [46 x i8] zeroinitializer }, align 32
@afs_alloc_server.__key.60 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&server->probe_lock\00", [44 x i8] zeroinitializer }, align 32
@afs_alloc_server._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.54, ptr @.str, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_alloc_server._entry_ptr.63 = internal global ptr @afs_alloc_server._entry.62, section ".printk_index", align 4
@afs_alloc_server._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.54, ptr @.str, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%-6.6s] <== %s() = NULL [nomem]\0A\00", [62 x i8] zeroinitializer }, align 32
@afs_alloc_server._entry_ptr.66 = internal global ptr @afs_alloc_server._entry.64, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@afs_install_server._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s] ==> %s(%p)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"afs_install_server\00", [45 x i8] zeroinitializer }, align 32
@afs_install_server._entry_ptr = internal global ptr @afs_install_server._entry, section ".printk_index", align 4
@afs_install_server._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s]     - consider %p\0A\00", [36 x i8] zeroinitializer }, align 32
@afs_install_server._entry_ptr.71 = internal global ptr @afs_install_server._entry.69, section ".printk_index", align 4
@afs_install_server.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.72 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@afs_install_server.__warned.73 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_afs_server = external dso_local global %struct.tracepoint, align 4
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/afs.h\00", [37 x i8] zeroinitializer }, align 32
@trace_afs_server.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@afs_gc_servers.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@afs_update_server_record._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.76, ptr @.str, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"afs_update_server_record\00", [39 x i8] zeroinitializer }, align 32
@afs_update_server_record._entry_ptr = internal global ptr @afs_update_server_record._entry, section ".printk_index", align 4
@afs_update_server_record._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] <== %s() = t [intr]\0A\00", [34 x i8] zeroinitializer }, align 32
@afs_update_server_record._entry_ptr.79 = internal global ptr @afs_update_server_record._entry.77, section ".printk_index", align 4
@afs_update_server_record._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.76, ptr @.str, i32 649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s] <== %s() = f [%d]\0A\00", [36 x i8] zeroinitializer }, align 32
@afs_update_server_record._entry_ptr.82 = internal global ptr @afs_update_server_record._entry.80, section ".printk_index", align 4
@afs_update_server_record.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@afs_update_server_record._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.76, ptr @.str, i32 664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] <== %s() = t\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_update_server_record._entry_ptr.85 = internal global ptr @afs_update_server_record._entry.83, section ".printk_index", align 4
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294966784, i64 4294967292]
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 42, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 43, i32 13 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 95, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 128, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 289, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 344, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 541, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 553, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 559, i32 5 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 597, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 612, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 619, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 623, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 676, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 678, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 685, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 694, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 704, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 710, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 695, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 723, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 225, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [20 x i8] c"afs_server_debug_id\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 15, i32 17 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 237, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 238, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 239, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 241, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 247, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 251, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 146, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 155, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 170, i32 12 }
@___asan_gen_.283 = private unnamed_addr constant [30 x i8] c"../include/trace/events/afs.h\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1435, i32 1 }
@___asan_gen_.286 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 108, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 634, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 645, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 649, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.310 = private constant [19 x i8] c"../fs/afs/server.c\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 664, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.313 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 73, i32 2 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @afs_alloc_server._entry, ptr @afs_alloc_server._entry.62, ptr @afs_alloc_server._entry.64, ptr @afs_alloc_server._entry_ptr, ptr @afs_alloc_server._entry_ptr.63, ptr @afs_alloc_server._entry_ptr.66, ptr @afs_check_server_record._entry, ptr @afs_check_server_record._entry.33, ptr @afs_check_server_record._entry.36, ptr @afs_check_server_record._entry.39, ptr @afs_check_server_record._entry.42, ptr @afs_check_server_record._entry.45, ptr @afs_check_server_record._entry.48, ptr @afs_check_server_record._entry_ptr, ptr @afs_check_server_record._entry_ptr.35, ptr @afs_check_server_record._entry_ptr.38, ptr @afs_check_server_record._entry_ptr.41, ptr @afs_check_server_record._entry_ptr.44, ptr @afs_check_server_record._entry_ptr.47, ptr @afs_check_server_record._entry_ptr.50, ptr @afs_find_server_by_uuid._entry, ptr @afs_find_server_by_uuid._entry.8, ptr @afs_find_server_by_uuid._entry_ptr, ptr @afs_find_server_by_uuid._entry_ptr.10, ptr @afs_install_server._entry, ptr @afs_install_server._entry.69, ptr @afs_install_server._entry_ptr, ptr @afs_install_server._entry_ptr.71, ptr @afs_lookup_server._entry, ptr @afs_lookup_server._entry_ptr, ptr @afs_manage_servers._entry, ptr @afs_manage_servers._entry.16, ptr @afs_manage_servers._entry.19, ptr @afs_manage_servers._entry.22, ptr @afs_manage_servers._entry_ptr, ptr @afs_manage_servers._entry_ptr.18, ptr @afs_manage_servers._entry_ptr.21, ptr @afs_manage_servers._entry_ptr.24, ptr @afs_purge_servers._entry, ptr @afs_purge_servers._entry.26, ptr @afs_purge_servers._entry.29, ptr @afs_purge_servers._entry_ptr, ptr @afs_purge_servers._entry_ptr.28, ptr @afs_purge_servers._entry_ptr.31, ptr @afs_servers_timer._entry, ptr @afs_servers_timer._entry_ptr, ptr @afs_update_server_record._entry, ptr @afs_update_server_record._entry.77, ptr @afs_update_server_record._entry.80, ptr @afs_update_server_record._entry.83, ptr @afs_update_server_record._entry_ptr, ptr @afs_update_server_record._entry_ptr.79, ptr @afs_update_server_record._entry_ptr.82, ptr @afs_update_server_record._entry_ptr.85, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @afs_server_debug_id, ptr @afs_alloc_server.__key, ptr @.str.55, ptr @afs_alloc_server.__key.56, ptr @.str.57, ptr @afs_alloc_server.__key.58, ptr @.str.59, ptr @afs_alloc_server.__key.60, ptr @.str.61, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.86], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_find_server_by_uuid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_find_server_by_uuid._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_lookup_server._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_servers_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_manage_servers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_manage_servers._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_manage_servers._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_manage_servers._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_purge_servers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_purge_servers._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_purge_servers._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_check_server_record._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_check_server_record._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_check_server_record._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_check_server_record._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_check_server_record._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_check_server_record._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_check_server_record._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_server._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_server_debug_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_server.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_server.__key.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_server.__key.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_server.__key.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_server._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_server._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_install_server._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_install_server._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_update_server_record._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_update_server_record._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_update_server_record._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_update_server_record._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_find_server(ptr noundef %net, ptr nocapture noundef readonly %srx) local_unnamed_addr #0 align 64 {
entry:
  %seq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seq) #13
  %0 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %seq, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !172
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 696, ptr noundef nonnull @.str.52) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %fs_addr_lock = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 25
  %transport = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4
  %fs_addresses4 = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 23
  %sin_port = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 1
  %sin_addr = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 2
  %fs_addresses6 = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 24
  %sin6_addr = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %need_seqretry.exit.do.body_crit_edge, %rcu_read_lock.exit
  %server.0 = phi ptr [ null, %rcu_read_lock.exit ], [ %server.4, %need_seqretry.exit.do.body_crit_edge ]
  %tobool.not = icmp eq ptr %server.0, null
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %if.then

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @afs_unuse_server_notime(ptr noundef %net, ptr noundef nonnull %server.0, i32 noundef 15)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.if.end_crit_edge
  call fastcc void @read_seqbegin_or_lock(ptr noundef %fs_addr_lock, ptr noundef nonnull %seq)
  %5 = ptrtoint ptr %transport to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %transport, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %6)
  %cmp = icmp eq i16 %6, 10
  %call = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  br i1 %tobool5.not, label %land.lhs.true, label %if.then2.do.end_crit_edge

if.then2.do.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %if.then2
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true8

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b235 = load i1, ptr @afs_find_server.__warned, align 1
  br i1 %.b235, label %land.lhs.true8.do.end_crit_edge, label %if.then10

land.lhs.true8.do.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @afs_find_server.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 42, ptr noundef nonnull @.str.1) #13
  br label %do.end

do.end:                                           ; preds = %if.then10, %land.lhs.true8.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.then2.do.end_crit_edge
  %7 = ptrtoint ptr %fs_addresses6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %fs_addresses6, align 4
  %tobool17.not = icmp eq ptr %8, null
  %add.ptr = getelementptr i8, ptr %8, i32 -68
  %tobool19.not275286 = icmp eq ptr %add.ptr, null
  %tobool19.not275 = or i1 %tobool17.not, %tobool19.not275286
  br i1 %tobool19.not275, label %do.end.do.cond178_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.do.cond178_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond178

for.body:                                         ; preds = %for.inc57.for.body_crit_edge, %do.end.for.body_crit_edge
  %server.1276 = phi ptr [ %add.ptr69, %for.inc57.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %addresses = getelementptr inbounds %struct.afs_server, ptr %server.1276, i32 0, i32 2
  %9 = ptrtoint ptr %addresses to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %addresses, align 8
  %call25 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true27, label %for.body.do.end35_crit_edge

for.body.do.end35_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end35

land.lhs.true27:                                  ; preds = %for.body
  %call28 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true27.do.end35_crit_edge, label %land.lhs.true30

land.lhs.true27.do.end35_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end35

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %.b229234 = load i1, ptr @afs_find_server.__warned.2, align 1
  br i1 %.b229234, label %land.lhs.true30.do.end35_crit_edge, label %if.then32

land.lhs.true30.do.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end35

if.then32:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @afs_find_server.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 43, ptr noundef nonnull @.str.3) #13
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %land.lhs.true30.do.end35_crit_edge, %land.lhs.true27.do.end35_crit_edge, %for.body.do.end35_crit_edge
  %nr_ipv4 = getelementptr inbounds %struct.afs_addr_list, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %nr_ipv4 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %nr_ipv4, align 1
  %nr_addrs = getelementptr inbounds %struct.afs_addr_list, ptr %10, i32 0, i32 4
  %13 = ptrtoint ptr %nr_addrs to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nr_addrs, align 1
  %conv39 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp40273 = icmp ult i8 %12, %14
  br i1 %cmp40273, label %for.body42.lr.ph, label %do.end35.for.inc57_crit_edge

do.end35.for.inc57_crit_edge:                     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc57

for.body42.lr.ph:                                 ; preds = %do.end35
  %conv37 = zext i8 %12 to i32
  %15 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sin_port, align 2
  br label %for.body42

for.cond38:                                       ; preds = %if.end52.for.cond38_crit_edge, %for.body42.for.cond38_crit_edge
  %inc = add nuw nsw i32 %i.0274, 1
  %exitcond284.not = icmp eq i32 %inc, %conv39
  br i1 %exitcond284.not, label %for.cond38.for.inc57_crit_edge, label %for.cond38.for.body42_crit_edge

for.cond38.for.body42_crit_edge:                  ; preds = %for.cond38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body42

for.cond38.for.inc57_crit_edge:                   ; preds = %for.cond38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc57

for.body42:                                       ; preds = %for.cond38.for.body42_crit_edge, %for.body42.lr.ph
  %i.0274 = phi i32 [ %conv37, %for.body42.lr.ph ], [ %inc, %for.cond38.for.body42_crit_edge ]
  %transport43 = getelementptr %struct.afs_addr_list, ptr %10, i32 0, i32 10, i32 %i.0274, i32 4
  %sin6_port45 = getelementptr inbounds %struct.sockaddr_in6, ptr %transport43, i32 0, i32 1
  %17 = ptrtoint ptr %sin6_port45 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %sin6_port45, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %18)
  %cmp47 = icmp eq i16 %16, %18
  br i1 %cmp47, label %if.end52, label %for.body42.for.cond38_crit_edge

for.body42.for.cond38_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond38

if.end52:                                         ; preds = %for.body42
  %sin6_addr50 = getelementptr inbounds %struct.sockaddr_in6, ptr %transport43, i32 0, i32 3
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %sin6_addr, ptr noundef dereferenceable(16) %sin6_addr50, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp53 = icmp eq i32 %bcmp, 0
  br i1 %cmp53, label %if.end52.found_crit_edge, label %if.end52.for.cond38_crit_edge

if.end52.for.cond38_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond38

if.end52.found_crit_edge:                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %found

for.inc57:                                        ; preds = %for.cond38.for.inc57_crit_edge, %do.end35.for.inc57_crit_edge
  %addr6_link = getelementptr inbounds %struct.afs_server, ptr %server.1276, i32 0, i32 9
  %19 = ptrtoint ptr %addr6_link to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %addr6_link, align 4
  %tobool65.not = icmp eq ptr %20, null
  %add.ptr69 = getelementptr i8, ptr %20, i32 -68
  %tobool19.not298 = icmp eq ptr %add.ptr69, null
  %tobool19.not = or i1 %tobool65.not, %tobool19.not298
  br i1 %tobool19.not, label %for.inc57.do.cond178_crit_edge, label %for.inc57.for.body_crit_edge

for.inc57.for.body_crit_edge:                     ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc57.do.cond178_crit_edge:                   ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond178

if.else:                                          ; preds = %if.end
  br i1 %tobool5.not, label %land.lhs.true81, label %if.else.do.end89_crit_edge

if.else.do.end89_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end89

land.lhs.true81:                                  ; preds = %if.else
  %call82 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %land.lhs.true81.do.end89_crit_edge, label %land.lhs.true84

land.lhs.true81.do.end89_crit_edge:               ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end89

land.lhs.true84:                                  ; preds = %land.lhs.true81
  %.b230233 = load i1, ptr @afs_find_server.__warned.4, align 1
  br i1 %.b230233, label %land.lhs.true84.do.end89_crit_edge, label %if.then86

land.lhs.true84.do.end89_crit_edge:               ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end89

if.then86:                                        ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @afs_find_server.__warned.4, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 58, ptr noundef nonnull @.str.1) #13
  br label %do.end89

do.end89:                                         ; preds = %if.then86, %land.lhs.true84.do.end89_crit_edge, %land.lhs.true81.do.end89_crit_edge, %if.else.do.end89_crit_edge
  %21 = ptrtoint ptr %fs_addresses4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %fs_addresses4, align 4
  %tobool98.not = icmp eq ptr %22, null
  %add.ptr102 = getelementptr i8, ptr %22, i32 -60
  %tobool107.not270285 = icmp eq ptr %add.ptr102, null
  %tobool107.not270 = or i1 %tobool98.not, %tobool107.not270285
  br i1 %tobool107.not270, label %do.end89.do.cond178_crit_edge, label %do.end89.for.body108_crit_edge

do.end89.for.body108_crit_edge:                   ; preds = %do.end89
  br label %for.body108

do.end89.do.cond178_crit_edge:                    ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond178

for.body108:                                      ; preds = %for.inc154.for.body108_crit_edge, %do.end89.for.body108_crit_edge
  %server.2271 = phi ptr [ %add.ptr167, %for.inc154.for.body108_crit_edge ], [ %add.ptr102, %do.end89.for.body108_crit_edge ]
  %addresses113 = getelementptr inbounds %struct.afs_server, ptr %server.2271, i32 0, i32 2
  %23 = ptrtoint ptr %addresses113 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %addresses113, align 8
  %call115 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %land.lhs.true117, label %for.body108.do.end125_crit_edge

for.body108.do.end125_crit_edge:                  ; preds = %for.body108
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end125

land.lhs.true117:                                 ; preds = %for.body108
  %call118 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %land.lhs.true117.do.end125_crit_edge, label %land.lhs.true120

land.lhs.true117.do.end125_crit_edge:             ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end125

land.lhs.true120:                                 ; preds = %land.lhs.true117
  %.b231232 = load i1, ptr @afs_find_server.__warned.5, align 1
  br i1 %.b231232, label %land.lhs.true120.do.end125_crit_edge, label %if.then122

land.lhs.true120.do.end125_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end125

if.then122:                                       ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @afs_find_server.__warned.5, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 59, ptr noundef nonnull @.str.3) #13
  br label %do.end125

do.end125:                                        ; preds = %if.then122, %land.lhs.true120.do.end125_crit_edge, %land.lhs.true117.do.end125_crit_edge, %for.body108.do.end125_crit_edge
  %nr_ipv4128 = getelementptr inbounds %struct.afs_addr_list, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %nr_ipv4128 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %nr_ipv4128, align 1
  %conv129 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp130268.not = icmp eq i8 %26, 0
  br i1 %cmp130268.not, label %do.end125.for.inc154_crit_edge, label %for.body132.lr.ph

do.end125.for.inc154_crit_edge:                   ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc154

for.body132.lr.ph:                                ; preds = %do.end125
  %27 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %sin_port, align 2
  br label %for.body132

for.cond127:                                      ; preds = %if.end146.for.cond127_crit_edge, %for.body132.for.cond127_crit_edge
  %inc152 = add nuw nsw i32 %i.1269, 1
  %exitcond.not = icmp eq i32 %inc152, %conv129
  br i1 %exitcond.not, label %for.cond127.for.inc154_crit_edge, label %for.cond127.for.body132_crit_edge

for.cond127.for.body132_crit_edge:                ; preds = %for.cond127
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body132

for.cond127.for.inc154_crit_edge:                 ; preds = %for.cond127
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc154

for.body132:                                      ; preds = %for.cond127.for.body132_crit_edge, %for.body132.lr.ph
  %i.1269 = phi i32 [ 0, %for.body132.lr.ph ], [ %inc152, %for.cond127.for.body132_crit_edge ]
  %transport135 = getelementptr %struct.afs_addr_list, ptr %24, i32 0, i32 10, i32 %i.1269, i32 4
  %sin_port137 = getelementptr inbounds %struct.sockaddr_in, ptr %transport135, i32 0, i32 1
  %29 = ptrtoint ptr %sin_port137 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %sin_port137, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %30)
  %cmp140 = icmp eq i16 %28, %30
  br i1 %cmp140, label %if.end146, label %for.body132.for.cond127_crit_edge

for.body132.for.cond127_crit_edge:                ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond127

if.end146:                                        ; preds = %for.body132
  %31 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sin_addr, align 4
  %sin_addr143 = getelementptr inbounds %struct.sockaddr_in, ptr %transport135, i32 0, i32 2
  %33 = ptrtoint ptr %sin_addr143 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sin_addr143, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp147 = icmp eq i32 %32, %34
  br i1 %cmp147, label %if.end146.found_crit_edge, label %if.end146.for.cond127_crit_edge

if.end146.for.cond127_crit_edge:                  ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond127

if.end146.found_crit_edge:                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #15
  br label %found

for.inc154:                                       ; preds = %for.cond127.for.inc154_crit_edge, %do.end125.for.inc154_crit_edge
  %addr4_link = getelementptr inbounds %struct.afs_server, ptr %server.2271, i32 0, i32 8
  %35 = ptrtoint ptr %addr4_link to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %addr4_link, align 4
  %tobool163.not = icmp eq ptr %36, null
  %add.ptr167 = getelementptr i8, ptr %36, i32 -60
  %tobool107.not297 = icmp eq ptr %add.ptr167, null
  %tobool107.not = or i1 %tobool163.not, %tobool107.not297
  br i1 %tobool107.not, label %for.inc154.do.cond178_crit_edge, label %for.inc154.for.body108_crit_edge

for.inc154.for.body108_crit_edge:                 ; preds = %for.inc154
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body108

for.inc154.do.cond178_crit_edge:                  ; preds = %for.inc154
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond178

found:                                            ; preds = %if.end146.found_crit_edge, %if.end52.found_crit_edge
  %server.3 = phi ptr [ %server.1276, %if.end52.found_crit_edge ], [ %server.2271, %if.end146.found_crit_edge ]
  %ref.i = getelementptr inbounds %struct.afs_server, ptr %server.3, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #13
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 0, i32 1, ptr elementtype(i32) %ref.i) #13, !srcloc !174
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %found.do.cond178_crit_edge, label %if.end.i

found.do.cond178_crit_edge:                       ; preds = %found
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond178

if.end.i:                                         ; preds = %found
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !175
  %active.i = getelementptr inbounds %struct.afs_server, ptr %server.3, i32 0, i32 16
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %active.i, i32 1, i32 3, i32 1) #13
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active.i, ptr %active.i, i32 1, ptr elementtype(i32) %active.i) #13, !srcloc !177
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %38, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !178
  tail call fastcc void @trace_afs_server(ptr noundef nonnull %server.3, i32 noundef %asmresult.i.i.i, i32 noundef %asmresult.i.i.i.i.i, i32 noundef 5) #13
  br label %do.cond178

do.cond178:                                       ; preds = %if.end.i, %found.do.cond178_crit_edge, %for.inc154.do.cond178_crit_edge, %do.end89.do.cond178_crit_edge, %for.inc57.do.cond178_crit_edge, %do.end.do.cond178_crit_edge
  %server.4 = phi ptr [ %server.3, %if.end.i ], [ null, %found.do.cond178_crit_edge ], [ null, %do.end.do.cond178_crit_edge ], [ null, %do.end89.do.cond178_crit_edge ], [ null, %for.inc57.do.cond178_crit_edge ], [ null, %for.inc154.do.cond178_crit_edge ]
  %39 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %seq, align 4
  %and.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i239 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i239, label %need_seqretry.exit, label %if.then.i242

need_seqretry.exit:                               ; preds = %do.cond178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !179
  %41 = ptrtoint ptr %fs_addr_lock to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %fs_addr_lock, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %42, %40
  br i1 %cmp.i.i.i.i.not, label %need_seqretry.exit.done_seqretry.exit_crit_edge, label %need_seqretry.exit.do.body_crit_edge

need_seqretry.exit.do.body_crit_edge:             ; preds = %need_seqretry.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

need_seqretry.exit.done_seqretry.exit_crit_edge:  ; preds = %need_seqretry.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %done_seqretry.exit

if.then.i242:                                     ; preds = %do.cond178
  call void @__sanitizer_cov_trace_pc() #15
  %lock.i.i = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 25, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #13
  br label %done_seqretry.exit

done_seqretry.exit:                               ; preds = %if.then.i242, %need_seqretry.exit.done_seqretry.exit_crit_edge
  %call.i244 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i244, label %done_seqretry.exit.cleanup184_crit_edge, label %land.lhs.true.i247

done_seqretry.exit.cleanup184_crit_edge:          ; preds = %done_seqretry.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup184

land.lhs.true.i247:                               ; preds = %done_seqretry.exit
  %call1.i245 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i245)
  %tobool.not.i246 = icmp eq i32 %call1.i245, 0
  br i1 %tobool.not.i246, label %land.lhs.true.i247.cleanup184_crit_edge, label %land.lhs.true2.i249

land.lhs.true.i247.cleanup184_crit_edge:          ; preds = %land.lhs.true.i247
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup184

land.lhs.true2.i249:                              ; preds = %land.lhs.true.i247
  %.b4.i248 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i248, label %land.lhs.true2.i249.cleanup184_crit_edge, label %if.then.i250

land.lhs.true2.i249.cleanup184_crit_edge:         ; preds = %land.lhs.true2.i249
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup184

if.then.i250:                                     ; preds = %land.lhs.true2.i249
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 724, ptr noundef nonnull @.str.53) #13
  br label %cleanup184

cleanup184:                                       ; preds = %if.then.i250, %land.lhs.true2.i249.cleanup184_crit_edge, %land.lhs.true.i247.cleanup184_crit_edge, %done_seqretry.exit.cleanup184_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !180
  %43 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i.i.i.i.i251 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i251 to ptr
  %preempt_count.i.i.i.i252 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i252 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i252, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i252, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seq) #13
  ret ptr %server.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_unuse_server_notime(ptr noundef %net, ptr noundef %server, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %server, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then:                                          ; preds = %entry
  %active1 = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active1, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !181
  tail call void @llvm.prefetch.p0(ptr %active1, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active1, ptr %active1, i32 1, ptr elementtype(i32) %active1) #13, !srcloc !182
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %if.then2, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @afs_set_server_timer(ptr noundef %net, i64 noundef 10)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2, %if.then.if.end.i_crit_edge
  %ref.i = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !181
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #13
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #13, !srcloc !182
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !183
  %call.i.i11.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active1, i32 noundef 4) #13
  %2 = ptrtoint ptr %active1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %active1, align 4
  tail call fastcc void @trace_afs_server(ptr noundef nonnull %server, i32 noundef %asmresult.i.i.i.i.i, i32 noundef %3, i32 noundef %reason) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.if.end3_crit_edge, !prof !184

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then4.i:                                       ; preds = %if.end.i
  tail call void @call_rcu(ptr noundef nonnull %server, ptr noundef nonnull @afs_server_rcu) #13
  %servers_outstanding.i.i = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 30
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %servers_outstanding.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !181
  tail call void @llvm.prefetch.p0(ptr %servers_outstanding.i.i, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %servers_outstanding.i.i, ptr %servers_outstanding.i.i, i32 1, ptr elementtype(i32) %servers_outstanding.i.i) #13, !srcloc !182
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i, label %if.then4.i.if.end3_crit_edge

if.then4.i.if.end3_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then.i.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @wake_up_var(ptr noundef %servers_outstanding.i.i) #13
  br label %if.end3

if.end3:                                          ; preds = %if.then.i.i, %if.then4.i.if.end3_crit_edge, %if.end.i.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @read_seqbegin_or_lock(ptr noundef %lock, ptr nocapture noundef %seq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %seq, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !185
  %and.i.i.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  %dep_map.c.i.i = getelementptr inbounds %struct.seqcount, ptr %lock, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0) #13
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #13
  tail call void @lock_release(ptr noundef %dep_map.c.i.i, i32 noundef %4) #13
  tail call void @trace_hardirqs_on() #13
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %dep_map.c48.i.i = getelementptr inbounds %struct.seqcount, ptr %lock, i32 0, i32 1
  %5 = tail call ptr @llvm.returnaddress(i32 0) #13
  %6 = ptrtoint ptr %5 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %6) #13
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %6) #13
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !186
  %and.i.i.i.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !184

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #13, !srcloc !187
  %8 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %lock, align 4
  %and18.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %read_seqbegin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !188
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !189
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %lock, align 4
  %and.i = and i32 %11, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.read_seqbegin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i.read_seqbegin.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %read_seqbegin.exit

read_seqbegin.exit:                               ; preds = %do.end.i.read_seqbegin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge
  %.lcssa.i = phi i32 [ %9, %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge ], [ %11, %do.end.i.read_seqbegin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !190
  %12 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.lcssa.i, ptr %seq, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %lock.i = getelementptr inbounds %struct.seqlock_t, ptr %lock, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %read_seqbegin.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_find_server_by_uuid(ptr noundef %net, ptr noundef %uuid) local_unnamed_addr #0 align 64 {
entry:
  %seq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seq) #13
  %0 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %seq, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %1 = load i32, ptr @afs_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !191

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %comm, ptr noundef nonnull @.str.7, ptr noundef %uuid) #17
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %fs_lock = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 18
  %fs_servers = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 19
  br label %do.body7

do.body7:                                         ; preds = %need_seqretry.exit.do.body7_crit_edge, %do.end6
  %server.0 = phi ptr [ null, %do.end6 ], [ %server.2, %need_seqretry.exit.do.body7_crit_edge ]
  %tobool8.not = icmp eq ptr %server.0, null
  br i1 %tobool8.not, label %do.body7.if.end10_crit_edge, label %afs_unuse_server.exit

do.body7.if.end10_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

afs_unuse_server.exit:                            ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i64 @ktime_get_real_seconds() #13
  %unuse_time.i = getelementptr inbounds %struct.afs_server, ptr %server.0, i32 0, i32 13
  %6 = ptrtoint ptr %unuse_time.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call.i, ptr %unuse_time.i, align 8
  tail call void @afs_unuse_server_notime(ptr noundef %net, ptr noundef nonnull %server.0, i32 noundef 19) #13
  br label %if.end10

if.end10:                                         ; preds = %afs_unuse_server.exit, %do.body7.if.end10_crit_edge
  call fastcc void @read_seqbegin_or_lock(ptr noundef %fs_lock, ptr noundef nonnull %seq)
  %7 = ptrtoint ptr %fs_servers to i32
  call void @__asan_load4_noabort(i32 %7)
  %p.073 = load ptr, ptr %fs_servers, align 4
  %tobool11.not74 = icmp eq ptr %p.073, null
  br i1 %tobool11.not74, label %if.end10.do.cond21_crit_edge, label %if.end10.while.body_crit_edge

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  br label %while.body

if.end10.do.cond21_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond21

while.body:                                       ; preds = %if.end20.while.body_crit_edge, %if.end10.while.body_crit_edge
  %p.075 = phi ptr [ %p.0, %if.end20.while.body_crit_edge ], [ %p.073, %if.end10.while.body_crit_edge ]
  %8 = getelementptr i8, ptr %p.075, i32 -24
  %call13 = tail call i32 @memcmp(ptr noundef dereferenceable(16) %uuid, ptr noundef dereferenceable(16) %8, i32 noundef 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.then14, label %if.else

if.then14:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %p.075, i32 0, i32 2
  br label %if.end20

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp15.not = icmp eq i32 %call13, 0
  br i1 %cmp15.not, label %if.else17, label %if.then16

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %p.075, i32 0, i32 1
  br label %if.end20

if.else17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.le = getelementptr i8, ptr %p.075, i32 -32
  %ref.i = getelementptr i8, ptr %p.075, i32 116
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #13
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #13, !srcloc !177
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !178
  %active.i = getelementptr i8, ptr %p.075, i32 120
  %call.i.i5.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %active.i, i32 1, i32 3, i32 1) #13
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active.i, ptr %active.i, i32 1, ptr elementtype(i32) %active.i) #13, !srcloc !177
  %asmresult.i.i.i.i6.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !178
  tail call fastcc void @trace_afs_server(ptr noundef %add.ptr.le, i32 noundef %asmresult.i.i.i.i.i, i32 noundef %asmresult.i.i.i.i6.i, i32 noundef 6) #13
  br label %do.cond21

if.end20:                                         ; preds = %if.then16, %if.then14
  %p.1.in = phi ptr [ %rb_left, %if.then14 ], [ %rb_right, %if.then16 ]
  %11 = ptrtoint ptr %p.1.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %p.0 = load ptr, ptr %p.1.in, align 4
  %tobool11.not = icmp eq ptr %p.0, null
  br i1 %tobool11.not, label %if.end20.do.cond21_crit_edge, label %if.end20.while.body_crit_edge

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end20.do.cond21_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond21

do.cond21:                                        ; preds = %if.end20.do.cond21_crit_edge, %if.else17, %if.end10.do.cond21_crit_edge
  %server.2 = phi ptr [ %add.ptr.le, %if.else17 ], [ null, %if.end10.do.cond21_crit_edge ], [ null, %if.end20.do.cond21_crit_edge ]
  %12 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %seq, align 4
  %and.i63 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63)
  %tobool.not.i64 = icmp eq i32 %and.i63, 0
  br i1 %tobool.not.i64, label %need_seqretry.exit, label %if.then.i67

need_seqretry.exit:                               ; preds = %do.cond21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !179
  %14 = ptrtoint ptr %fs_lock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %fs_lock, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %15, %13
  br i1 %cmp.i.i.i.i.not, label %need_seqretry.exit.done_seqretry.exit_crit_edge, label %need_seqretry.exit.do.body7_crit_edge

need_seqretry.exit.do.body7_crit_edge:            ; preds = %need_seqretry.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body7

need_seqretry.exit.done_seqretry.exit_crit_edge:  ; preds = %need_seqretry.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %done_seqretry.exit

if.then.i67:                                      ; preds = %do.cond21
  call void @__sanitizer_cov_trace_pc() #15
  %lock.i.i = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 18, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #13
  br label %done_seqretry.exit

done_seqretry.exit:                               ; preds = %if.then.i67, %need_seqretry.exit.done_seqretry.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %16 = load i32, ptr @afs_debug, align 4
  %and28 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %done_seqretry.exit.do.end48_crit_edge, label %do.end39, !prof !191

done_seqretry.exit.do.end48_crit_edge:            ; preds = %done_seqretry.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end48

do.end39:                                         ; preds = %done_seqretry.exit
  call void @__sanitizer_cov_trace_pc() #15
  %17 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i68 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i68 to ptr
  %task42 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task42 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task42, align 8
  %comm43 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 101
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %comm43, ptr noundef nonnull @.str.7, ptr noundef %server.2) #17
  br label %do.end48

do.end48:                                         ; preds = %do.end39, %done_seqretry.exit.do.end48_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seq) #13
  ret ptr %server.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_unuse_server(ptr noundef %net, ptr noundef %server, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %server, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i64 @ktime_get_real_seconds() #13
  %unuse_time = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 13
  %0 = ptrtoint ptr %unuse_time to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %call, ptr %unuse_time, align 8
  tail call void @afs_unuse_server_notime(ptr noundef %net, ptr noundef nonnull %server, i32 noundef %reason)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_use_server(ptr noundef returned %server, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #13, !srcloc !177
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !178
  %active = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 16
  %call.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %active, i32 1, i32 3, i32 1) #13
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active, ptr %active, i32 1, ptr elementtype(i32) %active) #13, !srcloc !177
  %asmresult.i.i.i.i6 = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !178
  tail call fastcc void @trace_afs_server(ptr noundef %server, i32 noundef %asmresult.i.i.i.i, i32 noundef %asmresult.i.i.i.i6, i32 noundef %reason)
  ret ptr %server
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_lookup_server(ptr noundef %cell, ptr noundef %key, ptr noundef %uuid, i32 noundef %addr_version) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !191

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %net = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 1
  %5 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %comm, ptr noundef nonnull @.str.12, ptr noundef %6, ptr noundef %uuid) #17
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %net7 = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 1
  %7 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net7, align 4
  %call8 = tail call ptr @afs_find_server_by_uuid(ptr noundef %8, ptr noundef %uuid)
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end14, label %if.then10

if.then10:                                        ; preds = %do.end6
  %addr_version11 = getelementptr inbounds %struct.afs_server, ptr %call8, i32 0, i32 17
  %9 = ptrtoint ptr %addr_version11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr_version11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %addr_version)
  %cmp.not = icmp eq i32 %10, %addr_version
  br i1 %cmp.not, label %if.then10.cleanup_crit_edge, label %if.then12

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.afs_server, ptr %call8, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #13
  br label %cleanup

if.end14:                                         ; preds = %do.end6
  %call15 = tail call fastcc ptr @afs_vl_lookup_addrs(ptr noundef %cell, ptr noundef %key, ptr noundef %uuid)
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %11 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %13 = load i32, ptr @afs_debug, align 4
  %and.i54 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i54)
  %tobool.not.i = icmp eq i32 %and.i54, 0
  br i1 %tobool.not.i, label %if.end19.do.end7.i_crit_edge, label %do.end.i, !prof !191

if.end19.do.end7.i_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7.i

do.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %14 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 101
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %comm.i, ptr noundef nonnull @.str.54) #17
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %if.end19.do.end7.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 336) #18
  %tobool9.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool9.not.i, label %do.body66.i, label %if.end11.i

if.end11.i:                                       ; preds = %do.end7.i
  %ref.i = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #13
  %19 = ptrtoint ptr %ref.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 1, ptr %ref.i, align 4
  %active.i = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 16
  %call.i.i111.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i, i32 noundef 4) #13
  %20 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %active.i, align 8
  %call.i.i112.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @afs_server_debug_id, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr nonnull @afs_server_debug_id, i32 1, i32 3, i32 1) #13
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @afs_server_debug_id, ptr nonnull @afs_server_debug_id, i32 1, ptr nonnull elementtype(i32) @afs_server_debug_id) #13, !srcloc !177
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !178
  %debug_id.i = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 19
  %22 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %asmresult.i.i.i.i.i, ptr %debug_id.i, align 4
  %addresses.i = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %addresses.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call15, ptr %addresses.i, align 8
  %version.i = getelementptr inbounds %struct.afs_addr_list, ptr %call15, i32 0, i32 2
  %24 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %version.i, align 4
  %addr_version.i = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 17
  %26 = ptrtoint ptr %addr_version.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %addr_version.i, align 4
  %27 = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 1
  %28 = call ptr @memcpy(ptr %27, ptr %uuid, i32 16)
  %fs_lock.i = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 20
  tail call void @__rwlock_init(ptr noundef %fs_lock.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @afs_alloc_server.__key) #13
  %initcb_work.i = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 11
  tail call void @__init_work(ptr noundef %initcb_work.i, i32 noundef 0) #13
  %29 = ptrtoint ptr %initcb_work.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -64, ptr %initcb_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @afs_alloc_server.__key.56, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry32.i = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  %30 = ptrtoint ptr %entry32.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %entry32.i, ptr %entry32.i, align 8
  %prev.i.i = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 11, i32 1, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %entry32.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 11, i32 2
  %32 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @afs_server_init_callback_work, ptr %func.i, align 8
  %probe_wq.i = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 23
  tail call void @__init_waitqueue_head(ptr noundef %probe_wq.i, ptr noundef nonnull @.str.59, ptr noundef nonnull @afs_alloc_server.__key.58) #13
  %probe_link.i = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 7
  %33 = ptrtoint ptr %probe_link.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %probe_link.i, ptr %probe_link.i, align 4
  %prev.i113.i = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %34 = ptrtoint ptr %prev.i113.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %probe_link.i, ptr %prev.i113.i, align 8
  %probe_lock.i = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 25
  tail call void @__raw_spin_lock_init(ptr noundef %probe_lock.i, ptr noundef nonnull @.str.61, ptr noundef nonnull @afs_alloc_server.__key.60, i16 noundef signext 3) #13
  %cell43.i = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %cell43.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %cell, ptr %cell43.i, align 4
  %rtt.i = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 18
  %36 = ptrtoint ptr %rtt.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %rtt.i, align 8
  %servers_outstanding.i.i = getelementptr inbounds %struct.afs_net, ptr %12, i32 0, i32 30
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %servers_outstanding.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %servers_outstanding.i.i, i32 1, i32 3, i32 1) #13
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %servers_outstanding.i.i, ptr %servers_outstanding.i.i, i32 1, ptr elementtype(i32) %servers_outstanding.i.i) #13, !srcloc !192
  tail call fastcc void @trace_afs_server(ptr noundef nonnull %call7.i.i.i, i32 noundef 1, i32 noundef 1, i32 noundef 0) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %38 = load i32, ptr @afs_debug, align 4
  %and45.i = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.end11.i.if.end24_crit_edge, label %do.end56.i, !prof !191

if.end11.i.if.end24_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

do.end56.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  %39 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i114.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i114.i to ptr
  %task59.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task59.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task59.i, align 8
  %comm60.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 101
  %call62.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %comm60.i, ptr noundef nonnull @.str.54, ptr noundef nonnull %call7.i.i.i) #17
  br label %if.end24

do.body66.i:                                      ; preds = %do.end7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %43 = load i32, ptr @afs_debug, align 4
  %and67.i = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  br i1 %tobool68.not.i, label %do.body66.i.if.then22_crit_edge, label %do.end78.i, !prof !191

do.body66.i.if.then22_crit_edge:                  ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22

do.end78.i:                                       ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #15
  %44 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i115.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i115.i to ptr
  %task81.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task81.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task81.i, align 8
  %comm82.i = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 101
  %call84.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %comm82.i, ptr noundef nonnull @.str.54) #17
  br label %if.then22

if.then22:                                        ; preds = %do.end78.i, %do.body66.i.if.then22_crit_edge
  tail call void @afs_put_addrlist(ptr noundef %call15) #13
  br label %cleanup

if.end24:                                         ; preds = %do.end56.i, %if.end11.i.if.end24_crit_edge
  %48 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %net7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %50 = load i32, ptr @afs_debug, align 4
  %and.i56 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56)
  %tobool.not.i57 = icmp eq i32 %and.i56, 0
  br i1 %tobool.not.i57, label %if.end24.do.end7.i64_crit_edge, label %do.end.i62, !prof !191

if.end24.do.end7.i64_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7.i64

do.end.i62:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  %51 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i.i58 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i58 to ptr
  %task.i59 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task.i59 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task.i59, align 8
  %comm.i60 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 101
  %call5.i61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %comm.i60, ptr noundef nonnull @.str.68, ptr noundef nonnull %call7.i.i.i) #17
  br label %do.end7.i64

do.end7.i64:                                      ; preds = %do.end.i62, %if.end24.do.end7.i64_crit_edge
  %fs_lock.i63 = getelementptr inbounds %struct.afs_net, ptr %49, i32 0, i32 18
  %lock.i.i = getelementptr inbounds %struct.afs_net, ptr %49, i32 0, i32 18, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #13
  %55 = ptrtoint ptr %fs_lock.i63 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fs_lock.i63, align 4
  %inc.i.i.i.i.i = add i32 %56, 1
  store i32 %inc.i.i.i.i.i, ptr %fs_lock.i63, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !193
  %dep_map.i.i.i.i = getelementptr inbounds %struct.afs_net, ptr %49, i32 0, i32 18, i32 0, i32 0, i32 1
  %57 = tail call ptr @llvm.returnaddress(i32 0) #13
  %58 = ptrtoint ptr %57 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %58) #13
  %fs_servers.i = getelementptr inbounds %struct.afs_net, ptr %49, i32 0, i32 19
  %59 = ptrtoint ptr %fs_servers.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fs_servers.i, align 4
  %tobool8.not195.i = icmp eq ptr %60, null
  br i1 %tobool8.not195.i, label %do.end7.i64.while.end.i_crit_edge, label %do.end7.i64.while.body.i_crit_edge

do.end7.i64.while.body.i_crit_edge:               ; preds = %do.end7.i64
  br label %while.body.i

do.end7.i64.while.end.i_crit_edge:                ; preds = %do.end7.i64
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.i:                                     ; preds = %if.end98.i.while.body.i_crit_edge, %do.end7.i64.while.body.i_crit_edge
  %61 = phi ptr [ %79, %if.end98.i.while.body.i_crit_edge ], [ %60, %do.end7.i64.while.body.i_crit_edge ]
  %pp.0196.i = phi ptr [ %pp.1.i, %if.end98.i.while.body.i_crit_edge ], [ %fs_servers.i, %do.end7.i64.while.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %62 = load i32, ptr @afs_debug, align 4
  %and10.i = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %while.body.i.do.end30.i_crit_edge, label %do.end21.i, !prof !191

while.body.i.do.end30.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30.i

do.end21.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %63 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i173.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i173.i to ptr
  %task24.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task24.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task24.i, align 8
  %comm25.i = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 101
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %comm25.i, ptr noundef nonnull %61) #17
  br label %do.end30.i

do.end30.i:                                       ; preds = %do.end21.i, %while.body.i.do.end30.i_crit_edge
  %67 = getelementptr i8, ptr %61, i32 -24
  %call32.i = tail call i32 @memcmp(ptr noundef dereferenceable(16) %27, ptr noundef dereferenceable(16) %67, i32 noundef 16) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp.i65 = icmp slt i32 %call32.i, 0
  br i1 %cmp.i65, label %if.then33.i, label %if.else.i

if.then33.i:                                      ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  %68 = ptrtoint ptr %pp.0196.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pp.0196.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %69, i32 0, i32 2
  br label %if.end98.i

if.else.i:                                        ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp34.not.i = icmp eq i32 %call32.i, 0
  br i1 %cmp34.not.i, label %if.else36.i, label %if.then35.i

if.then35.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %pp.0196.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pp.0196.i, align 4
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %71, i32 0, i32 1
  br label %if.end98.i

if.else36.i:                                      ; preds = %if.else.i
  %add.ptr.le.i = getelementptr i8, ptr %61, i32 -32
  %cell37.i = getelementptr i8, ptr %61, i32 -4
  %72 = ptrtoint ptr %cell37.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cell37.i, align 4
  %cmp38.i = icmp eq ptr %73, %cell
  br i1 %cmp38.i, label %if.else36.i.afs_install_server.exit_crit_edge, label %for.cond.preheader.i

if.else36.i.afs_install_server.exit_crit_edge:    ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %afs_install_server.exit

for.cond.preheader.i:                             ; preds = %if.else36.i
  %dep_map.i = getelementptr inbounds %struct.afs_net, ptr %49, i32 0, i32 18, i32 1, i32 0, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %do.end52.i.for.cond.i_crit_edge, %for.cond.preheader.i
  %server.0.i = phi ptr [ %75, %do.end52.i.for.cond.i_crit_edge ], [ %add.ptr.le.i, %for.cond.preheader.i ]
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool44.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool44.not.i, label %land.lhs.true.i, label %for.cond.i.do.end52.i_crit_edge

for.cond.i.do.end52.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end52.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call45.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i66 = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i66, label %land.lhs.true.i.do.end52.i_crit_edge, label %land.lhs.true47.i

land.lhs.true.i.do.end52.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end52.i

land.lhs.true47.i:                                ; preds = %land.lhs.true.i
  %.b172.i = load i1, ptr @afs_install_server.__warned, align 1
  br i1 %.b172.i, label %land.lhs.true47.i.do.end52.i_crit_edge, label %if.then49.i

land.lhs.true47.i.do.end52.i_crit_edge:           ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end52.i

if.then49.i:                                      ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @afs_install_server.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 172, ptr noundef nonnull @.str.72) #13
  br label %do.end52.i

do.end52.i:                                       ; preds = %if.then49.i, %land.lhs.true47.i.do.end52.i_crit_edge, %land.lhs.true.i.do.end52.i_crit_edge, %for.cond.i.do.end52.i_crit_edge
  %uuid_next.i = getelementptr inbounds %struct.afs_server, ptr %server.0.i, i32 0, i32 5
  %74 = ptrtoint ptr %uuid_next.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %uuid_next.i, align 4
  %tobool54.not.i = icmp eq ptr %75, null
  br i1 %tobool54.not.i, label %do.body57.i, label %do.end52.i.for.cond.i_crit_edge

do.end52.i.for.cond.i_crit_edge:                  ; preds = %do.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

do.body57.i:                                      ; preds = %do.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  %uuid_next.i.le = getelementptr inbounds %struct.afs_server, ptr %server.0.i, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !194
  %76 = ptrtoint ptr %uuid_next.i.le to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %call7.i.i.i, ptr %uuid_next.i.le, align 4
  %uuid_prev.i = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 6
  %77 = ptrtoint ptr %uuid_prev.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %server.0.i, ptr %uuid_prev.i, align 8
  br label %added_dup.i

if.end98.i:                                       ; preds = %if.then35.i, %if.then33.i
  %pp.1.i = phi ptr [ %rb_left.i, %if.then33.i ], [ %rb_right.i, %if.then35.i ]
  %78 = ptrtoint ptr %pp.1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pp.1.i, align 4
  %tobool8.not.i = icmp eq ptr %79, null
  br i1 %tobool8.not.i, label %while.cond.while.end_crit_edge.i, label %if.end98.i.while.body.i_crit_edge

if.end98.i.while.body.i_crit_edge:                ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.le.i = ptrtoint ptr %61 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %do.end7.i64.while.end.i_crit_edge
  %p.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %do.end7.i64.while.end.i_crit_edge ]
  %pp.0.lcssa.i = phi ptr [ %pp.1.i, %while.cond.while.end_crit_edge.i ], [ %fs_servers.i, %do.end7.i64.while.end.i_crit_edge ]
  %uuid_rb.i = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 4
  %80 = ptrtoint ptr %uuid_rb.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %p.0.lcssa.i, ptr %uuid_rb.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %81 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 4, i32 2
  %82 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %rb_left.i.i, align 8
  %83 = ptrtoint ptr %pp.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %uuid_rb.i, ptr %pp.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %uuid_rb.i, ptr noundef %fs_servers.i) #13
  %proc_link.i = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 10
  %fs_proc.i = getelementptr inbounds %struct.afs_net, ptr %49, i32 0, i32 22
  %84 = ptrtoint ptr %fs_proc.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fs_proc.i, align 4
  %86 = ptrtoint ptr %proc_link.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %85, ptr %proc_link.i, align 4
  %pprev.i.i = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 10, i32 1
  %87 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %fs_proc.i, ptr %pprev.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !195
  %88 = ptrtoint ptr %fs_proc.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %proc_link.i, ptr %fs_proc.i, align 4
  %tobool.not.i.i = icmp eq ptr %85, null
  br i1 %tobool.not.i.i, label %while.end.i.added_dup.i_crit_edge, label %do.body49.i.i

while.end.i.added_dup.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %added_dup.i

do.body49.i.i:                                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %85, i32 0, i32 1
  %89 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %proc_link.i, ptr %pprev51.i.i, align 4
  br label %added_dup.i

added_dup.i:                                      ; preds = %do.body49.i.i, %while.end.i.added_dup.i_crit_edge, %do.body57.i
  %fs_addr_lock.i = getelementptr inbounds %struct.afs_net, ptr %49, i32 0, i32 25
  %lock.i174.i = getelementptr inbounds %struct.afs_net, ptr %49, i32 0, i32 25, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i174.i) #13
  %90 = ptrtoint ptr %fs_addr_lock.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %fs_addr_lock.i, align 4
  %inc.i.i.i.i175.i = add i32 %91, 1
  store i32 %inc.i.i.i.i175.i, ptr %fs_addr_lock.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !193
  %dep_map.i.i.i176.i = getelementptr inbounds %struct.afs_net, ptr %49, i32 0, i32 25, i32 0, i32 0, i32 1
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i176.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %58) #13
  %dep_map104.i = getelementptr inbounds %struct.afs_net, ptr %49, i32 0, i32 25, i32 1, i32 0, i32 0, i32 4
  %call.i177.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map104.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177.i)
  %tobool106.not.i = icmp eq i32 %call.i177.i, 0
  br i1 %tobool106.not.i, label %land.lhs.true107.i, label %added_dup.i.do.end115.i_crit_edge

added_dup.i.do.end115.i_crit_edge:                ; preds = %added_dup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end115.i

land.lhs.true107.i:                               ; preds = %added_dup.i
  %call108.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108.i)
  %tobool109.not.i = icmp eq i32 %call108.i, 0
  br i1 %tobool109.not.i, label %land.lhs.true107.i.do.end115.i_crit_edge, label %land.lhs.true110.i

land.lhs.true107.i.do.end115.i_crit_edge:         ; preds = %land.lhs.true107.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end115.i

land.lhs.true110.i:                               ; preds = %land.lhs.true107.i
  %.b170171.i = load i1, ptr @afs_install_server.__warned.73, align 1
  br i1 %.b170171.i, label %land.lhs.true110.i.do.end115.i_crit_edge, label %if.then112.i

land.lhs.true110.i.do.end115.i_crit_edge:         ; preds = %land.lhs.true110.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end115.i

if.then112.i:                                     ; preds = %land.lhs.true110.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @afs_install_server.__warned.73, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 192, ptr noundef nonnull @.str.72) #13
  br label %do.end115.i

do.end115.i:                                      ; preds = %if.then112.i, %land.lhs.true110.i.do.end115.i_crit_edge, %land.lhs.true107.i.do.end115.i_crit_edge, %added_dup.i.do.end115.i_crit_edge
  %92 = ptrtoint ptr %addresses.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %addresses.i, align 8
  %nr_ipv4.i = getelementptr inbounds %struct.afs_addr_list, ptr %93, i32 0, i32 6
  %94 = ptrtoint ptr %nr_ipv4.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %nr_ipv4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %cmp117.not.i = icmp eq i8 %95, 0
  br i1 %cmp117.not.i, label %do.end115.i.if.end120.i_crit_edge, label %if.then119.i

do.end115.i.if.end120.i_crit_edge:                ; preds = %do.end115.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end120.i

if.then119.i:                                     ; preds = %do.end115.i
  %addr4_link.i = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 8
  %fs_addresses4.i = getelementptr inbounds %struct.afs_net, ptr %49, i32 0, i32 23
  %96 = ptrtoint ptr %fs_addresses4.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %fs_addresses4.i, align 4
  %98 = ptrtoint ptr %addr4_link.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %97, ptr %addr4_link.i, align 4
  %pprev.i178.i = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 8, i32 1
  %99 = ptrtoint ptr %pprev.i178.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %fs_addresses4.i, ptr %pprev.i178.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !195
  %100 = ptrtoint ptr %fs_addresses4.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %addr4_link.i, ptr %fs_addresses4.i, align 4
  %tobool.not.i179.i = icmp eq ptr %97, null
  br i1 %tobool.not.i179.i, label %if.then119.i.if.end120.i_crit_edge, label %do.body49.i181.i

if.then119.i.if.end120.i_crit_edge:               ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end120.i

do.body49.i181.i:                                 ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev51.i180.i = getelementptr inbounds %struct.hlist_node, ptr %97, i32 0, i32 1
  %101 = ptrtoint ptr %pprev51.i180.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %addr4_link.i, ptr %pprev51.i180.i, align 4
  br label %if.end120.i

if.end120.i:                                      ; preds = %do.body49.i181.i, %if.then119.i.if.end120.i_crit_edge, %do.end115.i.if.end120.i_crit_edge
  %nr_addrs.i = getelementptr inbounds %struct.afs_addr_list, ptr %93, i32 0, i32 4
  %102 = ptrtoint ptr %nr_addrs.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %nr_addrs.i, align 1
  %104 = ptrtoint ptr %nr_ipv4.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %nr_ipv4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %103, i8 %105)
  %cmp124.i = icmp ugt i8 %103, %105
  br i1 %cmp124.i, label %if.then126.i, label %if.end120.i.if.end127.i_crit_edge

if.end120.i.if.end127.i_crit_edge:                ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end127.i

if.then126.i:                                     ; preds = %if.end120.i
  %addr6_link.i = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 9
  %fs_addresses6.i = getelementptr inbounds %struct.afs_net, ptr %49, i32 0, i32 24
  %106 = ptrtoint ptr %fs_addresses6.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %fs_addresses6.i, align 4
  %108 = ptrtoint ptr %addr6_link.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %107, ptr %addr6_link.i, align 4
  %pprev.i183.i = getelementptr inbounds %struct.afs_server, ptr %call7.i.i.i, i32 0, i32 9, i32 1
  %109 = ptrtoint ptr %pprev.i183.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %fs_addresses6.i, ptr %pprev.i183.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !195
  %110 = ptrtoint ptr %fs_addresses6.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %addr6_link.i, ptr %fs_addresses6.i, align 4
  %tobool.not.i184.i = icmp eq ptr %107, null
  br i1 %tobool.not.i184.i, label %if.then126.i.if.end127.i_crit_edge, label %do.body49.i186.i

if.then126.i.if.end127.i_crit_edge:               ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end127.i

do.body49.i186.i:                                 ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev51.i185.i = getelementptr inbounds %struct.hlist_node, ptr %107, i32 0, i32 1
  %111 = ptrtoint ptr %pprev51.i185.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %addr6_link.i, ptr %pprev51.i185.i, align 4
  br label %if.end127.i

if.end127.i:                                      ; preds = %do.body49.i186.i, %if.then126.i.if.end127.i_crit_edge, %if.end120.i.if.end127.i_crit_edge
  tail call void @lock_release(ptr noundef %dep_map.i.i.i176.i, i32 noundef %58) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !196
  %112 = ptrtoint ptr %fs_addr_lock.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %fs_addr_lock.i, align 4
  %inc.i.i.i.i = add i32 %113, 1
  store i32 %inc.i.i.i.i, ptr %fs_addr_lock.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i174.i) #13
  br label %afs_install_server.exit

afs_install_server.exit:                          ; preds = %if.end127.i, %if.else36.i.afs_install_server.exit_crit_edge
  %server.2.i = phi ptr [ %add.ptr.le.i, %if.else36.i.afs_install_server.exit_crit_edge ], [ %call7.i.i.i, %if.end127.i ]
  %ref.i.i = getelementptr inbounds %struct.afs_server, ptr %server.2.i, i32 0, i32 15
  %call.i.i.i.i68 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #13
  %114 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #13, !srcloc !177
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %114, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !178
  %active.i.i = getelementptr inbounds %struct.afs_server, ptr %server.2.i, i32 0, i32 16
  %call.i.i5.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active.i.i, i32 noundef 4) #13
  %115 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %active.i.i, align 4
  tail call fastcc void @trace_afs_server(ptr noundef %server.2.i, i32 noundef %asmresult.i.i.i.i.i.i, i32 noundef %116, i32 noundef 8) #13
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %58) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !196
  %117 = ptrtoint ptr %fs_lock.i63 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %fs_lock.i63, align 4
  %inc.i.i.i190.i = add i32 %118, 1
  store i32 %inc.i.i.i190.i, ptr %fs_lock.i63, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #13
  %cmp26.not = icmp eq ptr %server.2.i, %call7.i.i.i
  br i1 %cmp26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %afs_install_server.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @afs_put_addrlist(ptr noundef %call15) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  br label %cleanup

if.else:                                          ; preds = %afs_install_server.exit
  call void @__sanitizer_cov_trace_pc() #15
  %119 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %net7, align 4
  tail call void @afs_fs_probe_fileserver(ptr noundef %120, ptr noundef %call7.i.i.i, ptr noundef %key, i1 noundef zeroext true) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then27, %if.then22, %if.end14.cleanup_crit_edge, %if.then12, %if.then10.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then22 ], [ %call8, %if.then12 ], [ %call8, %if.then10.cleanup_crit_edge ], [ %call7.i.i.i, %if.else ], [ %server.2.i, %if.then27 ], [ %call15, %if.end14.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @afs_vl_lookup_addrs(ptr noundef %cell, ptr noundef %key, ptr noundef %uuid) unnamed_addr #0 align 64 {
entry:
  %vc = alloca %struct.afs_vl_cursor, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %vc) #13
  %0 = call ptr @memset(ptr %vc, i32 255, i32 48)
  %call = call zeroext i1 @afs_begin_vlserver_operation(ptr noundef nonnull %vc, ptr noundef %cell, ptr noundef %key) #13
  br i1 %call, label %while.cond.preheader, label %entry.cond.true_crit_edge

entry.cond.true_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true

while.cond.preheader:                             ; preds = %entry
  %call115 = call zeroext i1 @afs_select_vlserver(ptr noundef nonnull %vc) #13
  br i1 %call115, label %while.body.lr.ph, label %while.cond.preheader.if.end7_crit_edge

while.cond.preheader.if.end7_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %server = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %1 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %server, align 4
  %flags = getelementptr inbounds %struct.afs_vlserver, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = call ptr @afs_yfsvl_get_endpoints(ptr noundef nonnull %vc, ptr noundef %uuid) #13
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = call ptr @afs_vl_get_addrs_u(ptr noundef nonnull %vc, ptr noundef %uuid) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %alist.1 = phi ptr [ %call4, %if.then3 ], [ %call5, %if.else ]
  %call1 = call zeroext i1 @afs_select_vlserver(ptr noundef nonnull %vc) #13
  br i1 %call1, label %if.end.while.body_crit_edge, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %while.cond.preheader.if.end7_crit_edge
  %alist.0.lcssa = phi ptr [ null, %while.cond.preheader.if.end7_crit_edge ], [ %alist.1, %if.end.if.end7_crit_edge ]
  %call6 = call i32 @afs_end_vlserver_operation(ptr noundef nonnull %vc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end7.cond.true_crit_edge, label %if.end7.cond.end_crit_edge

if.end7.cond.end_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

if.end7.cond.true_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true

cond.true:                                        ; preds = %if.end7.cond.true_crit_edge, %entry.cond.true_crit_edge
  %ret.014 = phi i32 [ %call6, %if.end7.cond.true_crit_edge ], [ -512, %entry.cond.true_crit_edge ]
  %6 = inttoptr i32 %ret.014 to ptr
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end7.cond.end_crit_edge
  %cond = phi ptr [ %6, %cond.true ], [ %alist.0.lcssa, %if.end7.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %vc) #13
  ret ptr %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_put_addrlist(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_fs_probe_fileserver(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_servers_timer(ptr noundef %timer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !191

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %comm, ptr noundef nonnull @.str.14) #17
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_wq to i32))
  %5 = load ptr, ptr @afs_wq, align 4
  %fs_manager = getelementptr i8, ptr %timer, i32 -44
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %fs_manager) #13
  br i1 %call.i, label %do.end7.if.end10_crit_edge, label %if.then9

do.end7.if.end10_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then9:                                         ; preds = %do.end7
  %servers_outstanding.i = getelementptr i8, ptr %timer, i32 140
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %servers_outstanding.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !181
  tail call void @llvm.prefetch.p0(ptr %servers_outstanding.i, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %servers_outstanding.i, ptr %servers_outstanding.i, i32 1, ptr elementtype(i32) %servers_outstanding.i) #13, !srcloc !182
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.then9.if.end10_crit_edge

if.then9.if.end10_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @wake_up_var(ptr noundef %servers_outstanding.i) #13
  br label %if.end10

if.end10:                                         ; preds = %if.then.i, %if.then9.if.end10_crit_edge, %do.end7.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_get_server(ptr noundef returned %server, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #13, !srcloc !177
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !178
  %active = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 16
  %call.i.i5 = tail call zeroext i1 @__kasan_check_read(ptr noundef %active, i32 noundef 4) #13
  %1 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %active, align 4
  tail call fastcc void @trace_afs_server(ptr noundef %server, i32 noundef %asmresult.i.i.i.i, i32 noundef %2, i32 noundef %reason)
  ret ptr %server
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_server(ptr noundef %server, i32 noundef %ref, i32 noundef %active, i32 noundef %reason) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_server, i32 0, i32 1), ptr blockaddress(@trace_afs_server, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !197

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !162) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !191

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.75, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !198
  %call42 = tail call i32 @__traceiter_afs_server(ptr noundef null, ptr noundef %server, i32 noundef %ref, i32 noundef %active, i32 noundef %reason) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !199
  %13 = tail call i32 @llvm.read_register.i32(metadata !162) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !162) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !191

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.75, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_server, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_server, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_afs_server.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_afs_server.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.74, i32 noundef 1460, ptr noundef nonnull @.str.3) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !201
  %31 = tail call i32 @llvm.read_register.i32(metadata !162) #13
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
define dso_local void @afs_put_server(ptr noundef %net, ptr noundef %server, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %server, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ref = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !181
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #13, !srcloc !182
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !183
  %active = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 16
  %call.i.i11 = tail call zeroext i1 @__kasan_check_read(ptr noundef %active, i32 noundef 4) #13
  %1 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %active, align 4
  tail call fastcc void @trace_afs_server(ptr noundef nonnull %server, i32 noundef %asmresult.i.i.i.i, i32 noundef %2, i32 noundef %reason)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %if.then4, label %if.end.cleanup_crit_edge, !prof !184

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @__afs_put_server(ptr noundef %net, ptr noundef nonnull %server)
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__afs_put_server(ptr noundef %net, ptr noundef %server) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @call_rcu(ptr noundef %server, ptr noundef nonnull @afs_server_rcu) #13
  %servers_outstanding.i = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 30
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %servers_outstanding.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !181
  tail call void @llvm.prefetch.p0(ptr %servers_outstanding.i, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %servers_outstanding.i, ptr %servers_outstanding.i, i32 1, ptr elementtype(i32) %servers_outstanding.i) #13, !srcloc !182
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %entry.afs_dec_servers_outstanding.exit_crit_edge

entry.afs_dec_servers_outstanding.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %afs_dec_servers_outstanding.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @wake_up_var(ptr noundef %servers_outstanding.i) #13
  br label %afs_dec_servers_outstanding.exit

afs_dec_servers_outstanding.exit:                 ; preds = %if.then.i, %entry.afs_dec_servers_outstanding.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @afs_set_server_timer(ptr noundef %net, i64 noundef %delay) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %live = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 2
  %0 = ptrtoint ptr %live to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %live, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then:                                          ; preds = %entry
  %servers_outstanding.i = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 30
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %servers_outstanding.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %servers_outstanding.i, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %servers_outstanding.i, ptr %servers_outstanding.i, i32 1, ptr elementtype(i32) %servers_outstanding.i) #13, !srcloc !192
  %fs_timer = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %4 = trunc i64 %delay to i32
  %5 = mul i32 %4, 100
  %conv1 = add i32 %3, %5
  %call = tail call i32 @timer_reduce(ptr noundef %fs_timer, i32 noundef %conv1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then3

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3:                                         ; preds = %if.then
  %call.i.i.i9 = tail call zeroext i1 @__kasan_check_write(ptr noundef %servers_outstanding.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !181
  tail call void @llvm.prefetch.p0(ptr %servers_outstanding.i, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %servers_outstanding.i, ptr %servers_outstanding.i, i32 1, ptr elementtype(i32) %servers_outstanding.i) #13, !srcloc !182
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.then3.if.end4_crit_edge

if.then3.if.end4_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @wake_up_var(ptr noundef %servers_outstanding.i) #13
  br label %if.end4

if.end4:                                          ; preds = %if.then.i, %if.then3.if.end4_crit_edge, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_manage_servers(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %ac.i.i.i = alloca %struct.afs_addr_cursor, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -756
  %call = tail call i64 @ktime_get_real_seconds() #13
  %live = getelementptr i8, ptr %work, i32 -736
  %0 = ptrtoint ptr %live to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %live, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %entry.do.end10_crit_edge, label %do.end, !prof !191

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %comm, ptr noundef nonnull @.str.15) #17
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %lock.i = getelementptr i8, ptr %work, i32 -156
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #13
  %fs_servers = getelementptr i8, ptr %work, i32 -112
  %call11 = tail call ptr @rb_first(ptr noundef %fs_servers) #13
  %tobool12.not162 = icmp eq ptr %call11, null
  br i1 %tobool12.not162, label %if.end88.thread, label %for.body.lr.ph

if.end88.thread:                                  ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #13
  br label %afs_gc_servers.exit

for.body.lr.ph:                                   ; preds = %do.end10
  %tobool.not.not = xor i1 %tobool.not, true
  br label %for.body

for.body:                                         ; preds = %if.end70.for.body_crit_edge, %for.body.lr.ph
  %gc_list.0168 = phi ptr [ null, %for.body.lr.ph ], [ %gc_list.2, %if.end70.for.body_crit_edge ]
  %cursor.0164 = phi ptr [ %call11, %for.body.lr.ph ], [ %call71, %if.end70.for.body_crit_edge ]
  %next_manage.0163 = phi i64 [ 9223372036854775807, %for.body.lr.ph ], [ %next_manage.2, %if.end70.for.body_crit_edge ]
  %add.ptr15 = getelementptr i8, ptr %cursor.0164, i32 -32
  %active16 = getelementptr i8, ptr %cursor.0164, i32 120
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active16, i32 noundef 4) #13
  %7 = ptrtoint ptr %active16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %active16, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %9 = load i32, ptr @afs_debug, align 4
  %and19 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %for.body.do.end39_crit_edge, label %do.end30, !prof !191

for.body.do.end39_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end39

do.end30:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %10 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i152 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i152 to ptr
  %task33 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task33 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task33, align 8
  %comm34 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 101
  %14 = getelementptr i8, ptr %cursor.0164, i32 -24
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %comm34, ptr noundef %14, i32 noundef %8) #17
  br label %do.end39

do.end39:                                         ; preds = %do.end30, %for.body.do.end39_crit_edge
  br i1 %tobool.not, label %if.then41, label %if.end50

if.then41:                                        ; preds = %do.end39
  %ref = getelementptr i8, ptr %cursor.0164, i32 116
  %call.i.i148 = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #13
  %15 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %ref, align 4
  tail call fastcc void @trace_afs_server(ptr noundef %add.ptr15, i32 noundef %16, i32 noundef %8, i32 noundef 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cond = icmp eq i32 %8, 0
  br i1 %cond, label %if.then41.if.then52_crit_edge, label %if.end50.thread

if.then41.if.then52_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52

if.end50.thread:                                  ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  %debug_id = getelementptr i8, ptr %cursor.0164, i32 132
  %17 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug_id, align 4
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %18) #17
  br label %if.end70

if.end50:                                         ; preds = %do.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp51 = icmp eq i32 %8, 0
  br i1 %cmp51, label %if.end50.if.then52_crit_edge, label %if.end50.if.end70_crit_edge

if.end50.if.end70_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

if.end50.if.then52_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52

if.then52:                                        ; preds = %if.end50.if.then52_crit_edge, %if.then41.if.then52_crit_edge
  %unuse_time = getelementptr i8, ptr %cursor.0164, i32 104
  %19 = ptrtoint ptr %unuse_time to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %unuse_time, align 8
  %flags = getelementptr i8, ptr %cursor.0164, i32 112
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags, align 4
  %23 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool54.not = icmp eq i32 %23, 0
  br i1 %tobool54.not, label %land.lhs.true, label %if.then52.if.end59_crit_edge

if.then52.if.end59_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

land.lhs.true:                                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags, align 4
  %26 = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool57.not = icmp eq i32 %26, 0
  %add = add i64 %20, 10
  %spec.select = select i1 %tobool57.not, i64 %add, i64 %20
  br label %if.end59

if.end59:                                         ; preds = %land.lhs.true, %if.then52.if.end59_crit_edge
  %expire_at.0 = phi i64 [ %20, %if.then52.if.end59_crit_edge ], [ %spec.select, %land.lhs.true ]
  call void @__sanitizer_cov_trace_cmp8(i64 %expire_at.0, i64 %call)
  %cmp62.not = icmp sgt i64 %expire_at.0, %call
  %or.cond = select i1 %tobool.not.not, i1 %cmp62.not, i1 false
  br i1 %or.cond, label %if.else, label %if.then64

if.then64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  %gc_next = getelementptr i8, ptr %cursor.0164, i32 96
  %27 = ptrtoint ptr %gc_next to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %gc_list.0168, ptr %gc_next, align 8
  br label %if.end70

if.else:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  %28 = tail call i64 @llvm.smin.i64(i64 %expire_at.0, i64 %next_manage.0163)
  br label %if.end70

if.end70:                                         ; preds = %if.else, %if.then64, %if.end50.if.end70_crit_edge, %if.end50.thread
  %next_manage.2 = phi i64 [ %next_manage.0163, %if.end50.if.end70_crit_edge ], [ %next_manage.0163, %if.then64 ], [ %28, %if.else ], [ %next_manage.0163, %if.end50.thread ]
  %gc_list.2 = phi ptr [ %gc_list.0168, %if.end50.if.end70_crit_edge ], [ %add.ptr15, %if.then64 ], [ %gc_list.0168, %if.else ], [ %gc_list.0168, %if.end50.thread ]
  %call71 = tail call ptr @rb_next(ptr noundef nonnull %cursor.0164) #13
  %tobool12.not = icmp eq ptr %call71, null
  br i1 %tobool12.not, label %for.end, label %if.end70.for.body_crit_edge

if.end70.for.body_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end70
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %next_manage.2)
  %cmp75.not = icmp eq i64 %next_manage.2, 9223372036854775807
  %or.cond147 = select i1 %tobool.not, i1 true, i1 %cmp75.not
  br i1 %or.cond147, label %for.end.if.end88_crit_edge, label %if.then77

for.end.if.end88_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

if.then77:                                        ; preds = %for.end
  %call78 = tail call i64 @ktime_get_real_seconds() #13
  %sub = sub i64 %next_manage.2, %call78
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub)
  %cmp79 = icmp slt i64 %sub, 1
  br i1 %cmp79, label %if.then81, label %if.else85

if.then81:                                        ; preds = %if.then77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_wq to i32))
  %29 = load ptr, ptr @afs_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %work) #13
  br i1 %call.i, label %if.then83, label %if.then81.if.end88_crit_edge

if.then81.if.end88_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

if.then83:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #15
  %servers_outstanding.i = getelementptr i8, ptr %work, i32 184
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %servers_outstanding.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %servers_outstanding.i, i32 1, i32 3, i32 1) #13
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %servers_outstanding.i, ptr %servers_outstanding.i, i32 1, ptr elementtype(i32) %servers_outstanding.i) #13, !srcloc !192
  br label %if.end88

if.else85:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @afs_set_server_timer(ptr noundef %add.ptr, i64 noundef %sub)
  br label %if.end88

if.end88:                                         ; preds = %if.else85, %if.then83, %if.then81.if.end88_crit_edge, %for.end.if.end88_crit_edge
  %tobool.not134.i = icmp eq ptr %gc_list.2, null
  br i1 %tobool.not134.i, label %if.end88.afs_gc_servers.exit_crit_edge, label %while.body.lr.ph.i

if.end88.afs_gc_servers.exit_crit_edge:           ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  br label %afs_gc_servers.exit

while.body.lr.ph.i:                               ; preds = %if.end88
  %fs_lock.i = getelementptr i8, ptr %work, i32 -192
  %dep_map.i.i.i.i = getelementptr i8, ptr %work, i32 -188
  %dep_map.i = getelementptr i8, ptr %work, i32 -140
  %31 = getelementptr inbounds i8, ptr %ac.i.i.i, i32 4
  %index.i.i.i = getelementptr inbounds %struct.afs_addr_cursor, ptr %ac.i.i.i, i32 0, i32 2
  %servers_outstanding.i.i.i.i = getelementptr i8, ptr %work, i32 184
  br label %while.body.i

while.body.i:                                     ; preds = %if.end80.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %gc_list.addr.0135.i = phi ptr [ %gc_list.2, %while.body.lr.ph.i ], [ %33, %if.end80.i.while.body.i_crit_edge ]
  %gc_next.i = getelementptr inbounds %struct.afs_server, ptr %gc_list.addr.0135.i, i32 0, i32 12
  %32 = ptrtoint ptr %gc_next.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %gc_next.i, align 8
  call void @_raw_spin_lock(ptr noundef %lock.i) #13
  %34 = ptrtoint ptr %fs_lock.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fs_lock.i, align 4
  %inc.i.i.i.i.i = add i32 %35, 1
  store i32 %inc.i.i.i.i.i, ptr %fs_lock.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !193
  %36 = call ptr @llvm.returnaddress(i32 0) #13
  %37 = ptrtoint ptr %36 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %37) #13
  %active1.i = getelementptr inbounds %struct.afs_server, ptr %gc_list.addr.0135.i, i32 0, i32 16
  %call.i.i.i154 = call zeroext i1 @__kasan_check_read(ptr noundef %active1.i, i32 noundef 4) #13
  %38 = ptrtoint ptr %active1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %active1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i = icmp eq i32 %39, 0
  br i1 %cmp.i, label %if.then.i, label %if.end80.critedge.i

if.then.i:                                        ; preds = %while.body.i
  %ref.i = getelementptr inbounds %struct.afs_server, ptr %gc_list.addr.0135.i, i32 0, i32 15
  %call.i.i111.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #13
  %40 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %ref.i, align 4
  call fastcc void @trace_afs_server(ptr noundef nonnull %gc_list.addr.0135.i, i32 noundef %41, i32 noundef 0, i32 noundef 4) #13
  %call.i.i155 = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i155)
  %tobool5.not.i = icmp eq i32 %call.i.i155, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %if.then.i.do.end.i_crit_edge

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %call6.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true8.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %.b110.i = load i1, ptr @afs_gc_servers.__warned, align 1
  br i1 %.b110.i, label %land.lhs.true8.i.do.end.i_crit_edge, label %if.then10.i

land.lhs.true8.i.do.end.i_crit_edge:              ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then10.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @afs_gc_servers.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 493, ptr noundef nonnull @.str.72) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then10.i, %land.lhs.true8.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.then.i.do.end.i_crit_edge
  %uuid_next.i = getelementptr inbounds %struct.afs_server, ptr %gc_list.addr.0135.i, i32 0, i32 5
  %42 = ptrtoint ptr %uuid_next.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %uuid_next.i, align 4
  %uuid_prev.i = getelementptr inbounds %struct.afs_server, ptr %gc_list.addr.0135.i, i32 0, i32 6
  %44 = ptrtoint ptr %uuid_prev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %uuid_prev.i, align 8
  %tobool11.not.i = icmp eq ptr %45, null
  br i1 %tobool11.not.i, label %if.then12.i, label %do.body21.i

if.then12.i:                                      ; preds = %do.end.i
  %tobool13.not.i = icmp eq ptr %43, null
  %uuid_rb.i = getelementptr inbounds %struct.afs_server, ptr %gc_list.addr.0135.i, i32 0, i32 4
  br i1 %tobool13.not.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @rb_erase(ptr noundef %uuid_rb.i, ptr noundef %fs_servers) #13
  br label %if.end65.i

if.else.i:                                        ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #15
  %uuid_rb16.i = getelementptr inbounds %struct.afs_server, ptr %43, i32 0, i32 4
  call void @rb_replace_node_rcu(ptr noundef %uuid_rb.i, ptr noundef %uuid_rb16.i, ptr noundef %fs_servers) #13
  %uuid_prev18.i = getelementptr inbounds %struct.afs_server, ptr %43, i32 0, i32 6
  %46 = ptrtoint ptr %uuid_prev18.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %uuid_prev18.i, align 8
  br label %if.end65.i

do.body21.i:                                      ; preds = %do.end.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !203
  %uuid_next49.i = getelementptr inbounds %struct.afs_server, ptr %45, i32 0, i32 5
  %47 = ptrtoint ptr %uuid_next49.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %43, ptr %uuid_next49.i, align 4
  %tobool61.not.i = icmp eq ptr %43, null
  br i1 %tobool61.not.i, label %do.body21.i.if.end65.i_crit_edge, label %if.then62.i

do.body21.i.if.end65.i_crit_edge:                 ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65.i

if.then62.i:                                      ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #15
  %uuid_prev63.i = getelementptr inbounds %struct.afs_server, ptr %43, i32 0, i32 6
  %48 = ptrtoint ptr %uuid_prev63.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %uuid_prev63.i, align 8
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then62.i, %do.body21.i.if.end65.i_crit_edge, %if.else.i, %if.then14.i
  %probe_link.i = getelementptr inbounds %struct.afs_server, ptr %gc_list.addr.0135.i, i32 0, i32 7
  %call.i.i112.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %probe_link.i) #13
  br i1 %call.i.i112.i, label %if.end.i.i.i, label %if.end65.i.list_del.exit.i_crit_edge

if.end65.i.list_del.exit.i_crit_edge:             ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.afs_server, ptr %gc_list.addr.0135.i, i32 0, i32 7, i32 1
  %49 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i.i, align 4
  %51 = ptrtoint ptr %probe_link.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %probe_link.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %50, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end65.i.list_del.exit.i_crit_edge
  %55 = ptrtoint ptr %probe_link.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 256 to ptr), ptr %probe_link.i, align 4
  %prev.i.i = getelementptr inbounds %struct.afs_server, ptr %gc_list.addr.0135.i, i32 0, i32 7, i32 1
  %56 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %proc_link.i = getelementptr inbounds %struct.afs_server, ptr %gc_list.addr.0135.i, i32 0, i32 10
  %57 = ptrtoint ptr %proc_link.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %proc_link.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.afs_server, ptr %gc_list.addr.0135.i, i32 0, i32 10, i32 1
  %59 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pprev2.i.i.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %58, ptr %60, align 4
  %tobool.not.i.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.i.i.i, label %list_del.exit.i.hlist_del_rcu.exit.i_crit_edge, label %do.body13.i.i.i

list_del.exit.i.hlist_del_rcu.exit.i_crit_edge:   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_del_rcu.exit.i

do.body13.i.i.i:                                  ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %58, i32 0, i32 1
  %62 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %pprev14.i.i.i, align 4
  br label %hlist_del_rcu.exit.i

hlist_del_rcu.exit.i:                             ; preds = %do.body13.i.i.i, %list_del.exit.i.hlist_del_rcu.exit.i_crit_edge
  %63 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %pprev.i.i = getelementptr inbounds %struct.afs_server, ptr %gc_list.addr.0135.i, i32 0, i32 8, i32 1
  %64 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.not.i, label %hlist_del_rcu.exit.i.if.end70.i_crit_edge, label %if.then68.i

hlist_del_rcu.exit.i.if.end70.i_crit_edge:        ; preds = %hlist_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70.i

if.then68.i:                                      ; preds = %hlist_del_rcu.exit.i
  %addr4_link.i = getelementptr inbounds %struct.afs_server, ptr %gc_list.addr.0135.i, i32 0, i32 8
  %66 = ptrtoint ptr %addr4_link.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %addr4_link.i, align 4
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %67, ptr %65, align 4
  %tobool.not.i.i114.i = icmp eq ptr %67, null
  br i1 %tobool.not.i.i114.i, label %if.then68.i.hlist_del_rcu.exit117.i_crit_edge, label %do.body13.i.i116.i

if.then68.i.hlist_del_rcu.exit117.i_crit_edge:    ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_del_rcu.exit117.i

do.body13.i.i116.i:                               ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i115.i = getelementptr inbounds %struct.hlist_node, ptr %67, i32 0, i32 1
  %69 = ptrtoint ptr %pprev14.i.i115.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %65, ptr %pprev14.i.i115.i, align 4
  br label %hlist_del_rcu.exit117.i

hlist_del_rcu.exit117.i:                          ; preds = %do.body13.i.i116.i, %if.then68.i.hlist_del_rcu.exit117.i_crit_edge
  %70 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev.i.i, align 4
  br label %if.end70.i

if.end70.i:                                       ; preds = %hlist_del_rcu.exit117.i, %hlist_del_rcu.exit.i.if.end70.i_crit_edge
  %pprev.i118.i = getelementptr inbounds %struct.afs_server, ptr %gc_list.addr.0135.i, i32 0, i32 9, i32 1
  %71 = ptrtoint ptr %pprev.i118.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pprev.i118.i, align 4
  %tobool.not.i119.not.i = icmp eq ptr %72, null
  br i1 %tobool.not.i119.not.i, label %if.end70.i.if.then79.i_crit_edge, label %if.then73.i

if.end70.i.if.then79.i_crit_edge:                 ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then79.i

if.then73.i:                                      ; preds = %if.end70.i
  %addr6_link.i = getelementptr inbounds %struct.afs_server, ptr %gc_list.addr.0135.i, i32 0, i32 9
  %73 = ptrtoint ptr %addr6_link.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %addr6_link.i, align 4
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %74, ptr %72, align 4
  %tobool.not.i.i122.i = icmp eq ptr %74, null
  br i1 %tobool.not.i.i122.i, label %if.then73.i.hlist_del_rcu.exit125.i_crit_edge, label %do.body13.i.i124.i

if.then73.i.hlist_del_rcu.exit125.i_crit_edge:    ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_del_rcu.exit125.i

do.body13.i.i124.i:                               ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i123.i = getelementptr inbounds %struct.hlist_node, ptr %74, i32 0, i32 1
  %76 = ptrtoint ptr %pprev14.i.i123.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %72, ptr %pprev14.i.i123.i, align 4
  br label %hlist_del_rcu.exit125.i

hlist_del_rcu.exit125.i:                          ; preds = %do.body13.i.i124.i, %if.then73.i.hlist_del_rcu.exit125.i_crit_edge
  %77 = ptrtoint ptr %pprev.i118.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev.i118.i, align 4
  br label %if.then79.i

if.then79.i:                                      ; preds = %hlist_del_rcu.exit125.i, %if.end70.i.if.then79.i_crit_edge
  call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %37) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !196
  %78 = ptrtoint ptr %fs_lock.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %fs_lock.i, align 4
  %inc.i.i.i.i = add i32 %79, 1
  store i32 %inc.i.i.i.i, ptr %fs_lock.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i) #13
  %flags.i.i = getelementptr inbounds %struct.afs_server, ptr %gc_list.addr.0135.i, i32 0, i32 14
  %80 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %flags.i.i, align 4
  %82 = and i32 %81, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i127.i = icmp eq i32 %82, 0
  br i1 %tobool.not.i127.i, label %if.then79.i.if.end.i.i130.i_crit_edge, label %if.then.i.i

if.then79.i.if.end.i.i130.i_crit_edge:            ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i130.i

if.then.i.i:                                      ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #15
  %addresses.i.i.i = getelementptr inbounds %struct.afs_server, ptr %gc_list.addr.0135.i, i32 0, i32 2
  %83 = ptrtoint ptr %addresses.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %addresses.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ac.i.i.i) #13
  %85 = call ptr @memset(ptr %31, i32 0, i32 16)
  %86 = ptrtoint ptr %ac.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %84, ptr %ac.i.i.i, align 4
  %preferred.i.i.i = getelementptr inbounds %struct.afs_addr_list, ptr %84, i32 0, i32 5
  %87 = ptrtoint ptr %preferred.i.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %preferred.i.i.i, align 2
  %89 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %index.i.i.i, align 4
  %call.i.i128.i = call i32 @afs_fs_give_up_all_callbacks(ptr noundef %add.ptr, ptr noundef nonnull %gc_list.addr.0135.i, ptr noundef nonnull %ac.i.i.i, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ac.i.i.i) #13
  br label %if.end.i.i130.i

if.end.i.i130.i:                                  ; preds = %if.then.i.i, %if.then79.i.if.end.i.i130.i_crit_edge
  %initcb_work.i.i = getelementptr inbounds %struct.afs_server, ptr %gc_list.addr.0135.i, i32 0, i32 11
  %call1.i.i = call zeroext i1 @flush_work(ptr noundef %initcb_work.i.i) #13
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !181
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #13
  %90 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #13, !srcloc !182
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %90, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !183
  %call.i.i11.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %active1.i, i32 noundef 4) #13
  %91 = ptrtoint ptr %active1.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %active1.i, align 4
  call fastcc void @trace_afs_server(ptr noundef nonnull %gc_list.addr.0135.i, i32 noundef %asmresult.i.i.i.i.i.i.i, i32 noundef %92, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then4.i.i.i, label %if.end.i.i130.i.if.end80.i_crit_edge, !prof !184

if.end.i.i130.i.if.end80.i_crit_edge:             ; preds = %if.end.i.i130.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i130.i
  call void @call_rcu(ptr noundef nonnull %gc_list.addr.0135.i, ptr noundef nonnull @afs_server_rcu) #13
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %servers_outstanding.i.i.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !181
  call void @llvm.prefetch.p0(ptr %servers_outstanding.i.i.i.i, i32 1, i32 3, i32 1) #13
  %93 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %servers_outstanding.i.i.i.i, ptr %servers_outstanding.i.i.i.i, i32 1, ptr elementtype(i32) %servers_outstanding.i.i.i.i) #13, !srcloc !182
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %93, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.then4.i.i.i.if.end80.i_crit_edge

if.then4.i.i.i.if.end80.i_crit_edge:              ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80.i

if.then.i.i.i.i:                                  ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @wake_up_var(ptr noundef %servers_outstanding.i.i.i.i) #13
  br label %if.end80.i

if.end80.critedge.i:                              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %37) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !196
  %94 = ptrtoint ptr %fs_lock.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %fs_lock.i, align 4
  %inc.i.i.i132.i = add i32 %95, 1
  store i32 %inc.i.i.i132.i, ptr %fs_lock.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i) #13
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.end80.critedge.i, %if.then.i.i.i.i, %if.then4.i.i.i.if.end80.i_crit_edge, %if.end.i.i130.i.if.end80.i_crit_edge
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %if.end80.i.afs_gc_servers.exit_crit_edge, label %if.end80.i.while.body.i_crit_edge

if.end80.i.while.body.i_crit_edge:                ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end80.i.afs_gc_servers.exit_crit_edge:         ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %afs_gc_servers.exit

afs_gc_servers.exit:                              ; preds = %if.end80.i.afs_gc_servers.exit_crit_edge, %if.end88.afs_gc_servers.exit_crit_edge, %if.end88.thread
  %servers_outstanding.i156 = getelementptr i8, ptr %work, i32 184
  %call.i.i.i157 = call zeroext i1 @__kasan_check_write(ptr noundef %servers_outstanding.i156, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !181
  call void @llvm.prefetch.p0(ptr %servers_outstanding.i156, i32 1, i32 3, i32 1) #13
  %96 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %servers_outstanding.i156, ptr %servers_outstanding.i156, i32 1, ptr elementtype(i32) %servers_outstanding.i156) #13, !srcloc !182
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %96, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i158 = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i158, label %if.then.i159, label %afs_gc_servers.exit.afs_dec_servers_outstanding.exit_crit_edge

afs_gc_servers.exit.afs_dec_servers_outstanding.exit_crit_edge: ; preds = %afs_gc_servers.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %afs_dec_servers_outstanding.exit

if.then.i159:                                     ; preds = %afs_gc_servers.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @wake_up_var(ptr noundef %servers_outstanding.i156) #13
  br label %afs_dec_servers_outstanding.exit

afs_dec_servers_outstanding.exit:                 ; preds = %if.then.i159, %afs_gc_servers.exit.afs_dec_servers_outstanding.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %97 = load i32, ptr @afs_debug, align 4
  %and90 = and i32 %97, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %afs_dec_servers_outstanding.exit.do.end111_crit_edge, label %do.end101, !prof !191

afs_dec_servers_outstanding.exit.do.end111_crit_edge: ; preds = %afs_dec_servers_outstanding.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end111

do.end101:                                        ; preds = %afs_dec_servers_outstanding.exit
  call void @__sanitizer_cov_trace_pc() #15
  %98 = call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i160 = and i32 %98, -16384
  %99 = inttoptr i32 %and.i160 to ptr
  %task104 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %task104 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %task104, align 8
  %comm105 = getelementptr inbounds %struct.task_struct, ptr %101, i32 0, i32 101
  %call.i.i151 = call zeroext i1 @__kasan_check_read(ptr noundef %servers_outstanding.i156, i32 noundef 4) #13
  %102 = ptrtoint ptr %servers_outstanding.i156 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %servers_outstanding.i156, align 4
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %comm105, ptr noundef nonnull @.str.15, i32 noundef %103) #17
  br label %do.end111

do.end111:                                        ; preds = %do.end101, %afs_dec_servers_outstanding.exit.do.end111_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_purge_servers(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  %__wbq_entry = alloca %struct.wait_bit_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !191

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %comm, ptr noundef nonnull @.str.25) #17
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %fs_timer = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 27
  %call6 = tail call i32 @del_timer_sync(ptr noundef %fs_timer) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end5.if.end9_crit_edge, label %if.then8

do.end5.if.end9_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then8:                                         ; preds = %do.end5
  %servers_outstanding.i = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 30
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %servers_outstanding.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !181
  tail call void @llvm.prefetch.p0(ptr %servers_outstanding.i, i32 1, i32 3, i32 1) #13
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %servers_outstanding.i, ptr %servers_outstanding.i, i32 1, ptr elementtype(i32) %servers_outstanding.i) #13, !srcloc !182
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.then8.if.end9_crit_edge

if.then8.if.end9_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @wake_up_var(ptr noundef %servers_outstanding.i) #13
  br label %if.end9

if.end9:                                          ; preds = %if.then.i, %if.then8.if.end9_crit_edge, %do.end5.if.end9_crit_edge
  %servers_outstanding.i.i = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 30
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %servers_outstanding.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %servers_outstanding.i.i, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %servers_outstanding.i.i, ptr %servers_outstanding.i.i, i32 1, ptr elementtype(i32) %servers_outstanding.i.i) #13, !srcloc !192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_wq to i32))
  %7 = load ptr, ptr @afs_wq, align 4
  %fs_manager.i = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 26
  %call.i.i82 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %fs_manager.i) #13
  br i1 %call.i.i82, label %if.end9.afs_queue_server_manager.exit_crit_edge, label %if.then.i83

if.end9.afs_queue_server_manager.exit_crit_edge:  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %afs_queue_server_manager.exit

if.then.i83:                                      ; preds = %if.end9
  %call.i.i.i4.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %servers_outstanding.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !181
  tail call void @llvm.prefetch.p0(ptr %servers_outstanding.i.i, i32 1, i32 3, i32 1) #13
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %servers_outstanding.i.i, ptr %servers_outstanding.i.i, i32 1, ptr elementtype(i32) %servers_outstanding.i.i) #13, !srcloc !182
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i, label %if.then.i83.afs_queue_server_manager.exit_crit_edge

if.then.i83.afs_queue_server_manager.exit_crit_edge: ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #15
  br label %afs_queue_server_manager.exit

if.then.i.i:                                      ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @wake_up_var(ptr noundef %servers_outstanding.i.i) #13
  br label %afs_queue_server_manager.exit

afs_queue_server_manager.exit:                    ; preds = %if.then.i.i, %if.then.i83.afs_queue_server_manager.exit_crit_edge, %if.end9.afs_queue_server_manager.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %9 = load i32, ptr @afs_debug, align 4
  %and11 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %afs_queue_server_manager.exit.do.end29_crit_edge, label %do.end21, !prof !191

afs_queue_server_manager.exit.do.end29_crit_edge: ; preds = %afs_queue_server_manager.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end29

do.end21:                                         ; preds = %afs_queue_server_manager.exit
  call void @__sanitizer_cov_trace_pc() #15
  %10 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i84 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i84 to ptr
  %task24 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task24, align 8
  %comm25 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 101
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %comm25) #17
  br label %do.end29

do.end29:                                         ; preds = %do.end21, %afs_queue_server_manager.exit.do.end29_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %servers_outstanding.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %servers_outstanding.i.i, i32 1, i32 3, i32 1) #13
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %servers_outstanding.i.i, ptr %servers_outstanding.i.i, i32 1, ptr elementtype(i32) %servers_outstanding.i.i) #13, !srcloc !204
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 622) #13
  %call.i.i80 = tail call zeroext i1 @__kasan_check_read(ptr noundef %servers_outstanding.i.i, i32 noundef 4) #13
  %15 = ptrtoint ptr %servers_outstanding.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %servers_outstanding.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool37.not = icmp eq i32 %16, 0
  br i1 %tobool37.not, label %do.end29.do.body52_crit_edge, label %if.end39

do.end29.do.body52_crit_edge:                     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body52

if.end39:                                         ; preds = %do.end29
  %call41 = tail call ptr @__var_waitqueue(ptr noundef %servers_outstanding.i.i) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__wbq_entry) #13
  %17 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry, i32 0, i32 1
  %18 = call ptr @memset(ptr %__wbq_entry, i32 255, i32 32)
  call void @init_wait_var_entry(ptr noundef nonnull %__wbq_entry, ptr noundef %servers_outstanding.i.i, i32 noundef 0) #13
  %call4388 = call i32 @prepare_to_wait_event(ptr noundef %call41, ptr noundef %17, i32 noundef 2) #13
  %call.i.i8189 = call zeroext i1 @__kasan_check_read(ptr noundef %servers_outstanding.i.i, i32 noundef 4) #13
  %19 = ptrtoint ptr %servers_outstanding.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %servers_outstanding.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool46.not90 = icmp eq i32 %20, 0
  br i1 %tobool46.not90, label %if.end39.for.end_crit_edge, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  br label %cleanup

if.end39.for.end_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end39.cleanup_crit_edge
  call void @schedule() #13
  %call43 = call i32 @prepare_to_wait_event(ptr noundef %call41, ptr noundef %17, i32 noundef 2) #13
  %call.i.i81 = call zeroext i1 @__kasan_check_read(ptr noundef %servers_outstanding.i.i, i32 noundef 4) #13
  %21 = ptrtoint ptr %servers_outstanding.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %servers_outstanding.i.i, align 4
  %tobool46.not = icmp eq i32 %22, 0
  br i1 %tobool46.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end39.for.end_crit_edge
  call void @finish_wait(ptr noundef %call41, ptr noundef %17) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__wbq_entry) #13
  br label %do.body52

do.body52:                                        ; preds = %for.end, %do.end29.do.body52_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %23 = load i32, ptr @afs_debug, align 4
  %and53 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body52.do.end71_crit_edge, label %do.end63, !prof !191

do.body52.do.end71_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end71

do.end63:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #15
  %24 = call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i85 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i85 to ptr
  %task66 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task66 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task66, align 8
  %comm67 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 101
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %comm67, ptr noundef nonnull @.str.25) #17
  br label %do.end71

do.end71:                                         ; preds = %do.end63, %do.body52.do.end71_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__var_waitqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @afs_check_server_record(ptr nocapture noundef %op, ptr noundef %server) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body7_crit_edge, label %do.end, !prof !191

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %comm, ptr noundef nonnull @.str.32) #17
  br label %do.body7

do.body7:                                         ; preds = %do.end, %entry.do.body7_crit_edge
  %tobool8.not = icmp eq ptr %server, null
  br i1 %tobool8.not, label %do.end20, label %retry.preheader, !prof !184

retry.preheader:                                  ; preds = %do.body7
  %flags = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 14
  %flags101 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  br label %retry

do.end20:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #17
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/server.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #13, !srcloc !205
  unreachable

retry:                                            ; preds = %if.end130.retry_crit_edge, %retry.preheader
  %retries.0 = phi i32 [ %inc, %if.end130.retry_crit_edge ], [ 0, %retry.preheader ]
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool38.not = icmp eq i32 %7, 0
  br i1 %tobool38.not, label %if.end40, label %retry.wait_crit_edge

retry.wait_crit_edge:                             ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #15
  br label %wait

if.end40:                                         ; preds = %retry
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool43.not = icmp eq i32 %10, 0
  br i1 %tobool43.not, label %do.body46, label %update

do.body46:                                        ; preds = %if.end40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %11 = load i32, ptr @afs_debug, align 4
  %and47 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %do.body46.cleanup_crit_edge, label %do.end58, !prof !191

do.body46.cleanup_crit_edge:                      ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end58:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #15
  %12 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i174 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i174 to ptr
  %task61 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task61 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task61, align 8
  %comm62 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 101
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %comm62, ptr noundef nonnull @.str.32) #17
  br label %cleanup

update:                                           ; preds = %if.end40
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags, i32 noundef 4) #13
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags, align 4
  %and.i.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %test_and_set_bit_lock.exit, label %update.wait_crit_edge

update.wait_crit_edge:                            ; preds = %update
  call void @__sanitizer_cov_trace_pc() #15
  br label %wait

test_and_set_bit_lock.exit:                       ; preds = %update
  tail call void @llvm.prefetch.p0(ptr %flags, i32 1, i32 3, i32 1) #13
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags, ptr %flags, i32 2, ptr elementtype(i32) %flags) #13, !srcloc !206
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !207
  %19 = and i32 %asmresult.i.i.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %phi.cmp.i.not = icmp eq i32 %19, 0
  br i1 %phi.cmp.i.not, label %if.then70, label %test_and_set_bit_lock.exit.wait_crit_edge

test_and_set_bit_lock.exit.wait_crit_edge:        ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %wait

if.then70:                                        ; preds = %test_and_set_bit_lock.exit
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #13
  %call72 = tail call fastcc zeroext i1 @afs_update_server_record(ptr noundef %op, ptr noundef nonnull %server)
  %call.i.i175 = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %flags, i32 1, i32 3, i32 1) #13
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags, ptr %flags, i32 2, ptr elementtype(i32) %flags) #13, !srcloc !209
  tail call void @wake_up_bit(ptr noundef %flags, i32 noundef 1) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %21 = load i32, ptr @afs_debug, align 4
  %and76 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.then70.cleanup_crit_edge, label %do.end87, !prof !191

if.then70.cleanup_crit_edge:                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end87:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #15
  %22 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i176 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i176 to ptr
  %task90 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task90 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task90, align 8
  %comm91 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 101
  %conv = zext i1 %call72 to i32
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm91, ptr noundef nonnull @.str.32, i32 noundef %conv) #17
  br label %cleanup

wait:                                             ; preds = %test_and_set_bit_lock.exit.wait_crit_edge, %update.wait_crit_edge, %retry.wait_crit_edge
  %26 = ptrtoint ptr %flags101 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags101, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.86, i32 noundef 73) #13
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags, align 4
  %30 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %wait.if.end130_crit_edge, label %wait_on_bit.exit

wait.if.end130_crit_edge:                         ; preds = %wait
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end130

wait_on_bit.exit:                                 ; preds = %wait
  %and102 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  %cond = select i1 %tobool103.not, i32 1, i32 2
  %call3.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %flags, i32 noundef 1, ptr noundef nonnull @bit_wait, i32 noundef %cond) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call3.i)
  %cmp = icmp eq i32 %call3.i, -512
  br i1 %cmp, label %if.then106, label %wait_on_bit.exit.if.end130_crit_edge

wait_on_bit.exit.if.end130_crit_edge:             ; preds = %wait_on_bit.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end130

if.then106:                                       ; preds = %wait_on_bit.exit
  %error = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %31 = ptrtoint ptr %error to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -512, ptr %error, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %32 = load i32, ptr @afs_debug, align 4
  %and109 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.then106.cleanup_crit_edge, label %do.end120, !prof !191

if.then106.cleanup_crit_edge:                     ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end120:                                        ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #15
  %33 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i177 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i177 to ptr
  %task123 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task123 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task123, align 8
  %comm124 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 101
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %comm124, ptr noundef nonnull @.str.32) #17
  br label %cleanup

if.end130:                                        ; preds = %wait_on_bit.exit.if.end130_crit_edge, %wait.if.end130_crit_edge
  %inc = add nuw nsw i32 %retries.0, 1
  %cmp131 = icmp eq i32 %inc, 4
  br i1 %cmp131, label %do.body134, label %if.end130.retry_crit_edge

if.end130.retry_crit_edge:                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #15
  br label %retry

do.body134:                                       ; preds = %if.end130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %37 = load i32, ptr @afs_debug, align 4
  %and135 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %do.body134.cleanup_crit_edge, label %do.end146, !prof !191

do.body134.cleanup_crit_edge:                     ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end146:                                        ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #15
  %38 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i178 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i178 to ptr
  %task149 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task149 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task149, align 8
  %comm150 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 101
  %call152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %comm150, ptr noundef nonnull @.str.32) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end146, %do.body134.cleanup_crit_edge, %do.end120, %if.then106.cleanup_crit_edge, %do.end87, %if.then70.cleanup_crit_edge, %do.end58, %do.body46.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %do.end58 ], [ true, %do.body46.cleanup_crit_edge ], [ %call72, %do.end87 ], [ %call72, %if.then70.cleanup_crit_edge ], [ false, %do.end120 ], [ false, %if.then106.cleanup_crit_edge ], [ false, %do.end146 ], [ false, %do.body134.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @afs_update_server_record(ptr nocapture noundef %op, ptr noundef %server) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !191

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %comm, ptr noundef nonnull @.str.76) #17
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %ref = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #13
  %5 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %ref, align 4
  %active = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 16
  %call.i.i177 = tail call zeroext i1 @__kasan_check_read(ptr noundef %active, i32 noundef 4) #13
  %7 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %active, align 4
  tail call fastcc void @trace_afs_server(ptr noundef %server, i32 noundef %6, i32 noundef %8, i32 noundef 20)
  %volume = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 4
  %9 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %volume, align 8
  %cell = getelementptr inbounds %struct.afs_volume, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cell, align 8
  %key = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %13 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %key, align 4
  %15 = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 1
  %call9 = tail call fastcc ptr @afs_vl_lookup_addrs(ptr noundef %12, ptr noundef %14, ptr noundef %15)
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end68

if.then11:                                        ; preds = %do.end6
  %16 = ptrtoint ptr %call9 to i32
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %if.then11.if.end42_crit_edge [
    i32 -512, label %if.then11.land.lhs.true_crit_edge
    i32 -4, label %if.then11.land.lhs.true_crit_edge181
  ]

if.then11.land.lhs.true_crit_edge181:             ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.then11.land.lhs.true_crit_edge:                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.then11.if.end42_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

land.lhs.true:                                    ; preds = %if.then11.land.lhs.true_crit_edge, %if.then11.land.lhs.true_crit_edge181
  %flags = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 8
  %and15 = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %land.lhs.true.if.end42_crit_edge, label %land.lhs.true17

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

land.lhs.true17:                                  ; preds = %land.lhs.true
  %addresses = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 2
  %20 = ptrtoint ptr %addresses to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addresses, align 8
  %tobool18.not = icmp eq ptr %21, null
  br i1 %tobool18.not, label %land.lhs.true17.if.end42_crit_edge, label %do.body20

land.lhs.true17.if.end42_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

do.body20:                                        ; preds = %land.lhs.true17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %22 = load i32, ptr @afs_debug, align 4
  %and21 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body20.cleanup_crit_edge, label %do.end32, !prof !191

do.body20.cleanup_crit_edge:                      ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end32:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #15
  %23 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i178 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i178 to ptr
  %task35 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task35, align 8
  %comm36 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 101
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %comm36, ptr noundef nonnull @.str.76) #17
  br label %cleanup

if.end42:                                         ; preds = %land.lhs.true17.if.end42_crit_edge, %land.lhs.true.if.end42_crit_edge, %if.then11.if.end42_crit_edge
  %conv = trunc i32 %16 to i16
  %error = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %27 = ptrtoint ptr %error to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv, ptr %error, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %28 = load i32, ptr @afs_debug, align 4
  %and45 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end42.cleanup_crit_edge, label %do.end56, !prof !191

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end56:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  %29 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i179 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i179 to ptr
  %task59 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task59 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task59, align 8
  %comm60 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 101
  %sext = shl i32 %16, 16
  %conv63 = ashr exact i32 %sext, 16
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %comm60, ptr noundef nonnull @.str.76, i32 noundef %conv63) #17
  br label %cleanup

if.end68:                                         ; preds = %do.end6
  %addr_version = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 17
  %33 = ptrtoint ptr %addr_version to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr_version, align 4
  %version = getelementptr inbounds %struct.afs_addr_list, ptr %call9, i32 0, i32 2
  %35 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp69.not = icmp eq i32 %34, %36
  br i1 %cmp69.not, label %if.end68.if.end130_crit_edge, label %if.then71

if.end68.if.end130_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end130

if.then71:                                        ; preds = %if.end68
  %fs_lock = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 20
  tail call void @_raw_write_lock(ptr noundef %fs_lock) #13
  %dep_map = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 20, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool75.not = icmp eq i32 %call.i, 0
  br i1 %tobool75.not, label %land.lhs.true76, label %if.then71.do.end84_crit_edge

if.then71.do.end84_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end84

land.lhs.true76:                                  ; preds = %if.then71
  %call77 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %land.lhs.true76.do.end84_crit_edge, label %land.lhs.true79

land.lhs.true76.do.end84_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end84

land.lhs.true79:                                  ; preds = %land.lhs.true76
  %.b176 = load i1, ptr @afs_update_server_record.__warned, align 1
  br i1 %.b176, label %land.lhs.true79.do.end84_crit_edge, label %if.then81

land.lhs.true79.do.end84_crit_edge:               ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end84

if.then81:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @afs_update_server_record.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 657, ptr noundef nonnull @.str.72) #13
  br label %do.end84

do.end84:                                         ; preds = %if.then81, %land.lhs.true79.do.end84_crit_edge, %land.lhs.true76.do.end84_crit_edge, %if.then71.do.end84_crit_edge
  %addresses86 = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 2
  %37 = ptrtoint ptr %addresses86 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %addresses86, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !210
  %39 = ptrtoint ptr %addresses86 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %call9, ptr %addresses86, align 8
  %40 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %version, align 4
  %42 = ptrtoint ptr %addr_version to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %addr_version, align 4
  tail call void @_raw_write_unlock(ptr noundef %fs_lock) #13
  br label %if.end130

if.end130:                                        ; preds = %do.end84, %if.end68.if.end130_crit_edge
  %discard.0 = phi ptr [ %38, %do.end84 ], [ %call9, %if.end68.if.end130_crit_edge ]
  tail call void @afs_put_addrlist(ptr noundef %discard.0) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %43 = load i32, ptr @afs_debug, align 4
  %and132 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %if.end130.cleanup_crit_edge, label %do.end143, !prof !191

if.end130.cleanup_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end143:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #15
  %44 = tail call i32 @llvm.read_register.i32(metadata !162) #13
  %and.i180 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i180 to ptr
  %task146 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task146 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task146, align 8
  %comm147 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 101
  %call149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %comm147, ptr noundef nonnull @.str.76) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end143, %if.end130.cleanup_crit_edge, %do.end56, %if.end42.cleanup_crit_edge, %do.end32, %do.body20.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %do.end32 ], [ true, %do.body20.cleanup_crit_edge ], [ false, %do.end56 ], [ false, %if.end42.cleanup_crit_edge ], [ true, %do.end143 ], [ true, %if.end130.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @afs_begin_vlserver_operation(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @afs_select_vlserver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_yfsvl_get_endpoints(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_vl_get_addrs_u(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_end_vlserver_operation(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_server_init_callback_work(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_server(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timer_reduce(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_server_rcu(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.afs_server, ptr %rcu, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #13
  %0 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ref, align 4
  %active = getelementptr inbounds %struct.afs_server, ptr %rcu, i32 0, i32 16
  %call.i.i8 = tail call zeroext i1 @__kasan_check_read(ptr noundef %active, i32 noundef 4) #13
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %active, align 4
  tail call fastcc void @trace_afs_server(ptr noundef %rcu, i32 noundef %1, i32 noundef %3, i32 noundef 3)
  %addresses = getelementptr inbounds %struct.afs_server, ptr %rcu, i32 0, i32 2
  %4 = ptrtoint ptr %addresses to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %addresses, align 8
  tail call void @afs_put_addrlist(ptr noundef %5) #13
  tail call void @kfree(ptr noundef %rcu) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_replace_node_rcu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_fs_give_up_all_callbacks(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nobuiltin }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !94, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !115, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !131, !133, !134, !135, !137, !138, !140, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !158, !159, !160}
!llvm.named.register.sp = !{!162}
!llvm.module.flags = !{!163, !164, !165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../fs/afs/server.c", i32 42, i32 4}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../fs/afs/server.c", i32 43, i32 13}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!8 = !{!"../fs/afs/server.c", i32 58, i32 4}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../fs/afs/server.c", i32 59, i32 13}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/afs/server.c", i32 95, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @afs_find_server_by_uuid._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @afs_find_server_by_uuid._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/afs/server.c", i32 128, i32 2}
!18 = !{ptr @afs_find_server_by_uuid._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @afs_find_server_by_uuid._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/afs/server.c", i32 289, i32 2}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @afs_lookup_server._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @afs_lookup_server._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/afs/server.c", i32 344, i32 2}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @afs_servers_timer._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @afs_servers_timer._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/afs/server.c", i32 541, i32 2}
!32 = !{ptr @afs_manage_servers._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @afs_manage_servers._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/afs/server.c", i32 553, i32 3}
!36 = !{ptr @afs_manage_servers._entry.16, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @afs_manage_servers._entry_ptr.18, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/afs/server.c", i32 559, i32 5}
!40 = !{ptr @afs_manage_servers._entry.19, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @afs_manage_servers._entry_ptr.21, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/afs/server.c", i32 597, i32 2}
!44 = !{ptr @afs_manage_servers._entry.22, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @afs_manage_servers._entry_ptr.24, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/afs/server.c", i32 612, i32 2}
!48 = !{ptr @afs_purge_servers._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @afs_purge_servers._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/afs/server.c", i32 619, i32 2}
!52 = !{ptr @afs_purge_servers._entry.26, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @afs_purge_servers._entry_ptr.28, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/afs/server.c", i32 623, i32 2}
!56 = !{ptr @afs_purge_servers._entry.29, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @afs_purge_servers._entry_ptr.31, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/afs/server.c", i32 676, i32 2}
!60 = !{ptr @afs_check_server_record._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @afs_check_server_record._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/afs/server.c", i32 678, i32 2}
!64 = !{ptr @afs_check_server_record._entry.33, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @afs_check_server_record._entry_ptr.35, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.37, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @afs_check_server_record._entry.36, !63, !"_entry", i1 false, i1 false}
!68 = !{ptr @afs_check_server_record._entry_ptr.38, !63, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/afs/server.c", i32 685, i32 2}
!71 = !{ptr @afs_check_server_record._entry.39, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @afs_check_server_record._entry_ptr.41, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.43, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/afs/server.c", i32 694, i32 3}
!75 = !{ptr @afs_check_server_record._entry.42, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @afs_check_server_record._entry_ptr.44, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.46, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/afs/server.c", i32 704, i32 3}
!79 = !{ptr @afs_check_server_record._entry.45, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @afs_check_server_record._entry_ptr.47, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.49, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/afs/server.c", i32 710, i32 3}
!83 = !{ptr @afs_check_server_record._entry.48, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @afs_check_server_record._entry_ptr.50, !82, !"_entry_ptr", i1 false, i1 false}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!87 = !{ptr @.str.51, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.52, !86, !"<string literal>", i1 false, i1 false}
!89 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!90 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!91 = !{ptr @.str.53, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.54, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/afs/server.c", i32 225, i32 2}
!94 = !{ptr @afs_alloc_server._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @afs_alloc_server._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @afs_alloc_server.__key, !97, !"__key", i1 false, i1 false}
!97 = !{!"../fs/afs/server.c", i32 237, i32 2}
!98 = !{ptr @.str.55, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @afs_alloc_server.__key.56, !100, !"__key", i1 false, i1 false}
!100 = !{!"../fs/afs/server.c", i32 238, i32 2}
!101 = !{ptr @.str.57, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @afs_alloc_server.__key.58, !103, !"__key", i1 false, i1 false}
!103 = !{!"../fs/afs/server.c", i32 239, i32 2}
!104 = !{ptr @.str.59, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @afs_alloc_server.__key.60, !106, !"__key", i1 false, i1 false}
!106 = !{!"../fs/afs/server.c", i32 241, i32 2}
!107 = !{ptr @.str.61, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @afs_alloc_server._entry.62, !109, !"_entry", i1 false, i1 false}
!109 = !{!"../fs/afs/server.c", i32 247, i32 2}
!110 = !{ptr @afs_alloc_server._entry_ptr.63, !109, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.65, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/afs/server.c", i32 251, i32 2}
!113 = !{ptr @afs_alloc_server._entry.64, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @afs_alloc_server._entry_ptr.66, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @afs_server_debug_id, !116, !"afs_server_debug_id", i1 false, i1 false}
!116 = !{!"../fs/afs/server.c", i32 15, i32 17}
!117 = !{ptr @.str.67, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/afs/server.c", i32 146, i32 2}
!119 = !{ptr @.str.68, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @afs_install_server._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @afs_install_server._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.70, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/afs/server.c", i32 155, i32 3}
!124 = !{ptr @afs_install_server._entry.69, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @afs_install_server._entry_ptr.71, !123, !"_entry_ptr", i1 false, i1 false}
!126 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!127 = !{!"../fs/afs/server.c", i32 170, i32 12}
!128 = !{ptr @.str.72, !127, !"<string literal>", i1 false, i1 false}
!129 = distinct !{null, !130, !"__warned", i1 false, i1 false}
!130 = !{!"../fs/afs/server.c", i32 191, i32 10}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../include/trace/events/afs.h", i32 1435, i32 1}
!133 = !{ptr @.str.74, !132, !"<string literal>", i1 false, i1 false}
!134 = distinct !{null, !132, !"__warned", i1 false, i1 false}
!135 = distinct !{null, !136, !"__already_done", i1 false, i1 false}
!136 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!137 = !{ptr @.str.75, !136, !"<string literal>", i1 false, i1 false}
!138 = distinct !{null, !139, !"afs_server_gc_delay", i1 false, i1 false}
!139 = !{!"../fs/afs/server.c", i32 14, i32 17}
!140 = distinct !{null, !141, !"__warned", i1 false, i1 false}
!141 = !{!"../fs/afs/server.c", i32 492, i32 11}
!142 = !{ptr @.str.76, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/afs/server.c", i32 634, i32 2}
!144 = !{ptr @afs_update_server_record._entry, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @afs_update_server_record._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.78, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/afs/server.c", i32 645, i32 4}
!148 = !{ptr @afs_update_server_record._entry.77, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @afs_update_server_record._entry_ptr.79, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.81, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/afs/server.c", i32 649, i32 3}
!152 = !{ptr @afs_update_server_record._entry.80, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @afs_update_server_record._entry_ptr.82, !151, !"_entry_ptr", i1 false, i1 false}
!154 = distinct !{null, !155, !"__warned", i1 false, i1 false}
!155 = !{!"../fs/afs/server.c", i32 656, i32 13}
!156 = !{ptr @.str.84, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/afs/server.c", i32 664, i32 2}
!158 = !{ptr @afs_update_server_record._entry.83, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @afs_update_server_record._entry_ptr.85, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.86, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../include/linux/wait_bit.h", i32 73, i32 2}
!162 = !{!"sp"}
!163 = !{i32 1, !"wchar_size", i32 2}
!164 = !{i32 1, !"min_enum_size", i32 4}
!165 = !{i32 8, !"branch-target-enforcement", i32 0}
!166 = !{i32 8, !"sign-return-address", i32 0}
!167 = !{i32 8, !"sign-return-address-all", i32 0}
!168 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!169 = !{i32 7, !"uwtable", i32 1}
!170 = !{i32 7, !"frame-pointer", i32 2}
!171 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!172 = !{i64 2149263267}
!173 = !{i64 2148435172}
!174 = !{i64 921772, i64 921797, i64 921819, i64 921835, i64 921847, i64 921867, i64 921891, i64 921907, i64 921919}
!175 = !{i64 2148435360}
!176 = !{i64 2148521164}
!177 = !{i64 2148436473, i64 2148436505, i64 2148436534, i64 2148436568, i64 2148436599, i64 2148436622}
!178 = !{i64 2148521393}
!179 = !{i64 2150190798}
!180 = !{i64 2149263533}
!181 = !{i64 2148524205}
!182 = !{i64 2148438938, i64 2148438970, i64 2148438999, i64 2148439033, i64 2148439064, i64 2148439087}
!183 = !{i64 2148524434}
!184 = !{!"branch_weights", i32 1, i32 2000}
!185 = !{i64 830011, i64 830072}
!186 = !{i64 832743}
!187 = !{i64 833028}
!188 = !{i64 2150205557}
!189 = !{i64 2150205399}
!190 = !{i64 2150205727}
!191 = !{!"branch_weights", i32 2000, i32 1}
!192 = !{i64 2148435753, i64 2148435779, i64 2148435808, i64 2148435842, i64 2148435873, i64 2148435896}
!193 = !{i64 2150191123}
!194 = !{i64 2157860259}
!195 = !{i64 2149364878}
!196 = !{i64 2150191448}
!197 = !{i64 2148249146, i64 2148249151, i64 2148249164, i64 2148249208, i64 2148249242, i64 2148249263}
!198 = !{i64 2157725994}
!199 = !{i64 2157726231}
!200 = !{i64 2149271826}
!201 = !{i64 2149272862}
!202 = !{i8 0, i8 2}
!203 = !{i64 2157896739}
!204 = !{i64 2148438218, i64 2148438244, i64 2148438273, i64 2148438307, i64 2148438338, i64 2148438361}
!205 = !{i64 2157936555, i64 2157937035, i64 2157936592, i64 2157936648, i64 2157936682, i64 2157936706, i64 2157936747, i64 2157936768, i64 2157936796, i64 2157936830}
!206 = !{i64 2148444611, i64 2148444643, i64 2148444672, i64 2148444706, i64 2148444737, i64 2148444760}
!207 = !{i64 2148533692}
!208 = !{i64 2148532579}
!209 = !{i64 2148442998, i64 2148443030, i64 2148443059, i64 2148443093, i64 2148443124, i64 2148443147}
!210 = !{i64 2157927360}
