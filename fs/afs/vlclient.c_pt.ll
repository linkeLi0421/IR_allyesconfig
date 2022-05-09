; ModuleID = '/llk/IR_all_yes/fs/afs/vlclient.c_pt.bc'
source_filename = "../fs/afs/vlclient.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.afs_call_type = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.66 }
%struct.atomic_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.afs_vl_cursor = type { %struct.afs_addr_cursor, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16 }
%struct.afs_addr_cursor = type { ptr, i32, i8, i8, i16, i16, i32 }
%struct.afs_cell = type { %union.anon.1, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.hlist_node, i64, i64, %struct.atomic_t, %struct.atomic_t, i32, i32, i16, i16, i32, i32, %struct.rb_root, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.seqlock_t, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.rwlock_t, ptr, i8, ptr }
%union.anon.1 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.34 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.56 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.afs_call = type { ptr, ptr, %struct.wait_queue_head, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.iov_iter, ptr, ptr, %union.anon.147, ptr, %union.anon.148, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, %union.anon.168, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.23, %union.anon.82 }
%union.anon.23 = type { ptr }
%union.anon.82 = type { i64 }
%union.anon.147 = type { [1 x %struct.bio_vec] }
%struct.bio_vec = type { ptr, i32, i32 }
%union.anon.148 = type { i32 }
%union.anon.168 = type { i64 }
%struct.afs_uuid = type { i32, i16, i16, i8, i8, [6 x i8] }
%struct.afs_vlserver = type { %struct.callback_head, ptr, i32, %struct.rwlock_t, %struct.atomic_t, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.146, i16, i16, [0 x i8] }
%struct.anon.146 = type { i32, i32, i16, i16 }
%struct.afs_uvldbentry__xdr = type { [65 x i32], i32, [13 x %struct.afs_uuid__xdr], [13 x i32], [13 x i32], [13 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.afs_uuid__xdr = type { i32, i32, i32, i32, i32, [6 x i32] }
%struct.afs_vldb_entry = type { [3 x i64], i32, [13 x %struct.uuid_t], [13 x i32], [13 x i8], i16, i8, i8, [65 x i8] }
%struct.uuid_t = type { [16 x i8] }
%struct.afs_addr_list = type { %struct.callback_head, %struct.refcount_struct, i32, i8, i8, i8, i8, i16, i32, i32, [0 x %struct.sockaddr_rxrpc] }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon }
%union.anon = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.0 }
%union.anon.0 = type { [4 x i32] }
%struct.anon.169 = type { i32, i32 }

@afs_debug = external dso_local local_unnamed_addr global i32, align 4
@afs_vl_get_entry_by_name_u._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"afs_vl_get_entry_by_name_u\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/afs/vlclient.c\00", [46 x i8] zeroinitializer }, align 32
@afs_vl_get_entry_by_name_u._entry_ptr = internal global ptr @afs_vl_get_entry_by_name_u._entry, section ".printk_index", align 4
@afs_RXVLGetEntryByNameU = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.7, i32 527, ptr @afs_deliver_vl_get_entry_by_name_u, ptr @afs_destroy_vl_get_entry_by_name_u, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_vl_get_addrs_u._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"afs_vl_get_addrs_u\00", [45 x i8] zeroinitializer }, align 32
@afs_vl_get_addrs_u._entry_ptr = internal global ptr @afs_vl_get_addrs_u._entry, section ".printk_index", align 4
@afs_RXVLGetAddrsU = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.15, i32 533, ptr @afs_deliver_vl_get_addrs_u, ptr @afs_vl_get_addrs_u_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_vl_get_capabilities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"afs_vl_get_capabilities\00", [40 x i8] zeroinitializer }, align 32
@afs_vl_get_capabilities._entry_ptr = internal global ptr @afs_vl_get_capabilities._entry, section ".printk_index", align 4
@afs_RXVLGetCapabilities = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.20, i32 65537, ptr @afs_deliver_vl_get_capabilities, ptr @afs_destroy_vl_get_capabilities, ptr null, ptr @afs_vlserver_probe_result }, [40 x i8] zeroinitializer }, align 32
@afs_yfsvl_get_endpoints._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"afs_yfsvl_get_endpoints\00", [40 x i8] zeroinitializer }, align 32
@afs_yfsvl_get_endpoints._entry_ptr = internal global ptr @afs_yfsvl_get_endpoints._entry, section ".printk_index", align 4
@afs_YFSVLGetEndpoints = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.24, i32 64002, ptr @afs_deliver_yfsvl_get_endpoints, ptr @afs_vl_get_addrs_u_destructor, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_yfsvl_get_cell_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"afs_yfsvl_get_cell_name\00", [40 x i8] zeroinitializer }, align 32
@afs_yfsvl_get_cell_name._entry_ptr = internal global ptr @afs_yfsvl_get_cell_name._entry, section ".printk_index", align 4
@afs_YFSVLGetCellName = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.29, i32 64014, ptr @afs_deliver_yfsvl_get_cell_name, ptr @afs_destroy_yfsvl_get_cell_name, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VL.GetEntryByNameU\00", [45 x i8] zeroinitializer }, align 32
@afs_deliver_vl_get_entry_by_name_u._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 25, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"afs_deliver_vl_get_entry_by_name_u\00", [61 x i8] zeroinitializer }, align 32
@afs_deliver_vl_get_entry_by_name_u._entry_ptr = internal global ptr @afs_deliver_vl_get_entry_by_name_u._entry, section ".printk_index", align 4
@afs_deliver_vl_get_entry_by_name_u._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] <== %s() = 0 [done]\0A\00", [34 x i8] zeroinitializer }, align 32
@afs_deliver_vl_get_entry_by_name_u._entry_ptr.11 = internal global ptr @afs_deliver_vl_get_entry_by_name_u._entry.9, section ".printk_index", align 4
@__tracepoint_afs_make_vl_call = external dso_local global %struct.tracepoint, align 4
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/afs.h\00", [37 x i8] zeroinitializer }, align 32
@trace_afs_make_vl_call.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VL.GetAddrsU\00", [19 x i8] zeroinitializer }, align 32
@afs_deliver_vl_get_addrs_u._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] ==> %s({%u,%zu/%u})\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"afs_deliver_vl_get_addrs_u\00", [37 x i8] zeroinitializer }, align 32
@afs_deliver_vl_get_addrs_u._entry_ptr = internal global ptr @afs_deliver_vl_get_addrs_u._entry, section ".printk_index", align 4
@afs_deliver_vl_get_addrs_u._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.17, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_deliver_vl_get_addrs_u._entry_ptr.19 = internal global ptr @afs_deliver_vl_get_addrs_u._entry.18, section ".printk_index", align 4
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VL.GetCapabilities\00", [45 x i8] zeroinitializer }, align 32
@afs_deliver_vl_get_capabilities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.21, ptr @.str.2, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"afs_deliver_vl_get_capabilities\00", [32 x i8] zeroinitializer }, align 32
@afs_deliver_vl_get_capabilities._entry_ptr = internal global ptr @afs_deliver_vl_get_capabilities._entry, section ".printk_index", align 4
@afs_deliver_vl_get_capabilities._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.21, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_deliver_vl_get_capabilities._entry_ptr.23 = internal global ptr @afs_deliver_vl_get_capabilities._entry.22, section ".printk_index", align 4
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"YFSVL.GetEndpoints\00", [45 x i8] zeroinitializer }, align 32
@afs_deliver_yfsvl_get_endpoints._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] ==> %s({%u,%zu,%u})\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"afs_deliver_yfsvl_get_endpoints\00", [32 x i8] zeroinitializer }, align 32
@afs_deliver_yfsvl_get_endpoints._entry_ptr = internal global ptr @afs_deliver_yfsvl_get_endpoints._entry, section ".printk_index", align 4
@afs_deliver_yfsvl_get_endpoints._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.26, ptr @.str.2, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_deliver_yfsvl_get_endpoints._entry_ptr.28 = internal global ptr @afs_deliver_yfsvl_get_endpoints._entry.27, section ".printk_index", align 4
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"YFSVL.GetCellName\00", [46 x i8] zeroinitializer }, align 32
@afs_deliver_yfsvl_get_cell_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.30, ptr @.str.2, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"afs_deliver_yfsvl_get_cell_name\00", [32 x i8] zeroinitializer }, align 32
@afs_deliver_yfsvl_get_cell_name._entry_ptr = internal global ptr @afs_deliver_yfsvl_get_cell_name._entry, section ".printk_index", align 4
@afs_deliver_yfsvl_get_cell_name._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.30, ptr @.str.2, i32 708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_deliver_yfsvl_get_cell_name._entry_ptr.32 = internal global ptr @afs_deliver_yfsvl_get_cell_name._entry.31, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 139, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [24 x i8] c"afs_RXVLGetEntryByNameU\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 118, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 278, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"afs_RXVLGetAddrsU\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 257, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 389, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [24 x i8] c"afs_RXVLGetCapabilities\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 365, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 627, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [22 x i8] c"afs_YFSVLGetEndpoints\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 609, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 741, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [21 x i8] c"afs_YFSVLGetCellName\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 721, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 119, i32 11 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 25, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 105, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [30 x i8] c"../include/trace/events/afs.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 904, i32 1 }
@___asan_gen_.113 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 108, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 258, i32 11 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 188, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 244, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 366, i32 11 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 319, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 352, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 610, i32 11 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 428, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 602, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 722, i32 11 }
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 659, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.167 = private constant [21 x i8] c"../fs/afs/vlclient.c\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 708, i32 2 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @afs_deliver_vl_get_addrs_u._entry, ptr @afs_deliver_vl_get_addrs_u._entry.18, ptr @afs_deliver_vl_get_addrs_u._entry_ptr, ptr @afs_deliver_vl_get_addrs_u._entry_ptr.19, ptr @afs_deliver_vl_get_capabilities._entry, ptr @afs_deliver_vl_get_capabilities._entry.22, ptr @afs_deliver_vl_get_capabilities._entry_ptr, ptr @afs_deliver_vl_get_capabilities._entry_ptr.23, ptr @afs_deliver_vl_get_entry_by_name_u._entry, ptr @afs_deliver_vl_get_entry_by_name_u._entry.9, ptr @afs_deliver_vl_get_entry_by_name_u._entry_ptr, ptr @afs_deliver_vl_get_entry_by_name_u._entry_ptr.11, ptr @afs_deliver_yfsvl_get_cell_name._entry, ptr @afs_deliver_yfsvl_get_cell_name._entry.31, ptr @afs_deliver_yfsvl_get_cell_name._entry_ptr, ptr @afs_deliver_yfsvl_get_cell_name._entry_ptr.32, ptr @afs_deliver_yfsvl_get_endpoints._entry, ptr @afs_deliver_yfsvl_get_endpoints._entry.27, ptr @afs_deliver_yfsvl_get_endpoints._entry_ptr, ptr @afs_deliver_yfsvl_get_endpoints._entry_ptr.28, ptr @afs_vl_get_addrs_u._entry, ptr @afs_vl_get_addrs_u._entry_ptr, ptr @afs_vl_get_capabilities._entry, ptr @afs_vl_get_capabilities._entry_ptr, ptr @afs_vl_get_entry_by_name_u._entry, ptr @afs_vl_get_entry_by_name_u._entry_ptr, ptr @afs_yfsvl_get_cell_name._entry, ptr @afs_yfsvl_get_cell_name._entry_ptr, ptr @afs_yfsvl_get_endpoints._entry, ptr @afs_yfsvl_get_endpoints._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @afs_RXVLGetEntryByNameU, ptr @.str.3, ptr @afs_RXVLGetAddrsU, ptr @.str.4, ptr @afs_RXVLGetCapabilities, ptr @.str.5, ptr @afs_YFSVLGetEndpoints, ptr @.str.6, ptr @afs_YFSVLGetCellName, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_vl_get_entry_by_name_u._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXVLGetEntryByNameU to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_vl_get_addrs_u._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXVLGetAddrsU to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_vl_get_capabilities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXVLGetCapabilities to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_yfsvl_get_endpoints._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_YFSVLGetEndpoints to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_yfsvl_get_cell_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_YFSVLGetCellName to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_vl_get_entry_by_name_u._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_vl_get_entry_by_name_u._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_vl_get_addrs_u._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_vl_get_addrs_u._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_vl_get_capabilities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_vl_get_capabilities._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_yfsvl_get_endpoints._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_yfsvl_get_endpoints._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_yfsvl_get_cell_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_yfsvl_get_cell_name._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_vl_get_entry_by_name_u(ptr noundef %vc, ptr nocapture noundef readonly %volname, i32 noundef %volnamesz) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cell = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 1
  %0 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cell, align 4
  %net2 = getelementptr inbounds %struct.afs_cell, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %4 = load i32, ptr @afs_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !98

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 101
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1) #13
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %sub = sub i32 0, %volnamesz
  %and11 = and i32 %sub, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 376) #14
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %do.end9.cleanup_crit_edge, label %if.end17

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %do.end9
  %add = add i32 %volnamesz, 8
  %add12 = add i32 %add, %and11
  %call18 = tail call ptr @afs_alloc_flat_call(ptr noundef %3, ptr noundef nonnull @afs_RXVLGetEntryByNameU, i32 noundef %add12, i32 noundef 1048) #10
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %key = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 4
  %10 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %key, align 4
  %key23 = getelementptr inbounds %struct.afs_call, ptr %call18, i32 0, i32 6
  %12 = ptrtoint ptr %key23 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %key23, align 8
  %13 = getelementptr inbounds %struct.afs_call, ptr %call18, i32 0, i32 17
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %13, align 8
  %max_lifespan = getelementptr inbounds %struct.afs_call, ptr %call18, i32 0, i32 25
  %15 = ptrtoint ptr %max_lifespan to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 12000, ptr %max_lifespan, align 8
  %request = getelementptr inbounds %struct.afs_call, ptr %call18, i32 0, i32 10
  %16 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %request, align 8
  %incdec.ptr = getelementptr i32, ptr %17, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 527, ptr %17, align 4
  %incdec.ptr24 = getelementptr i32, ptr %17, i32 2
  %19 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %volnamesz, ptr %incdec.ptr, align 4
  %20 = call ptr @memcpy(ptr %incdec.ptr24, ptr %volname, i32 %volnamesz)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %cmp.not = icmp eq i32 %and11, 0
  br i1 %cmp.not, label %if.end22.if.end26_crit_edge, label %if.then25

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %incdec.ptr24, i32 %volnamesz
  %21 = call ptr @memset(ptr %add.ptr, i32 0, i32 %and11)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22.if.end26_crit_edge
  tail call fastcc void @trace_afs_make_vl_call(ptr noundef nonnull %call18)
  tail call void @afs_make_call(ptr noundef %vc, ptr noundef nonnull %call18, i32 noundef 3264) #10
  %call28 = tail call i32 @afs_wait_for_call_to_complete(ptr noundef nonnull %call18, ptr noundef %vc) #10
  %22 = inttoptr i32 %call28 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then20, %do.end9.cleanup_crit_edge
  %retval.0 = phi ptr [ %22, %if.end26 ], [ inttoptr (i32 -12 to ptr), %if.then20 ], [ inttoptr (i32 -12 to ptr), %do.end9.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_alloc_flat_call(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_make_vl_call(ptr noundef %call) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_make_vl_call, i32 0, i32 1), ptr blockaddress(@trace_afs_make_vl_call, %do.body)) #10
          to label %if.end49 [label %do.body], !srcloc !99

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !88) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !98

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !100
  %call43 = tail call i32 @__traceiter_afs_make_vl_call(ptr noundef null, ptr noundef %call) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !101
  %13 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !98

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_make_vl_call, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_make_vl_call, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_afs_make_vl_call.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_afs_make_vl_call.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 922, ptr noundef nonnull @.str.13) #10
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !103
  %31 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_make_call(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_wait_for_call_to_complete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_vl_get_addrs_u(ptr noundef %vc, ptr nocapture noundef readonly %uuid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cell = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 1
  %0 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cell, align 4
  %net1 = getelementptr inbounds %struct.afs_cell, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %4 = load i32, ptr @afs_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !98

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 101
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.3) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %call9 = tail call ptr @afs_alloc_flat_call(ptr noundef %3, ptr noundef nonnull @afs_RXVLGetAddrsU, i32 noundef 64, i32 noundef 56) #10
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end8.cleanup_crit_edge, label %if.end13

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %key = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 4
  %9 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %key, align 4
  %key14 = getelementptr inbounds %struct.afs_call, ptr %call9, i32 0, i32 6
  %11 = ptrtoint ptr %key14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %key14, align 8
  %12 = getelementptr inbounds %struct.afs_call, ptr %call9, i32 0, i32 17
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %12, align 8
  %max_lifespan = getelementptr inbounds %struct.afs_call, ptr %call9, i32 0, i32 25
  %14 = ptrtoint ptr %max_lifespan to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 12000, ptr %max_lifespan, align 8
  %request = getelementptr inbounds %struct.afs_call, ptr %call9, i32 0, i32 10
  %15 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %request, align 8
  %incdec.ptr = getelementptr i32, ptr %16, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 533, ptr %16, align 4
  %18 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %incdec.ptr, align 4
  %ipaddr = getelementptr i32, ptr %16, i32 2
  %19 = ptrtoint ptr %ipaddr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %ipaddr, align 4
  %index = getelementptr i32, ptr %16, i32 3
  %20 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %index, align 4
  %spare = getelementptr i32, ptr %16, i32 4
  %21 = ptrtoint ptr %spare to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %spare, align 4
  %22 = ptrtoint ptr %uuid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %uuid, align 4
  %uuid15 = getelementptr i32, ptr %16, i32 5
  %24 = ptrtoint ptr %uuid15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %uuid15, align 4
  %time_mid = getelementptr inbounds %struct.afs_uuid, ptr %uuid, i32 0, i32 1
  %25 = ptrtoint ptr %time_mid to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %time_mid, align 4
  %conv = zext i16 %26 to i32
  %time_mid18 = getelementptr i32, ptr %16, i32 6
  %27 = ptrtoint ptr %time_mid18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %time_mid18, align 4
  %time_hi_and_version = getelementptr inbounds %struct.afs_uuid, ptr %uuid, i32 0, i32 2
  %28 = ptrtoint ptr %time_hi_and_version to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %time_hi_and_version, align 2
  %conv19 = zext i16 %29 to i32
  %time_hi_and_version21 = getelementptr i32, ptr %16, i32 7
  %30 = ptrtoint ptr %time_hi_and_version21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv19, ptr %time_hi_and_version21, align 4
  %clock_seq_hi_and_reserved = getelementptr inbounds %struct.afs_uuid, ptr %uuid, i32 0, i32 3
  %31 = ptrtoint ptr %clock_seq_hi_and_reserved to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %clock_seq_hi_and_reserved, align 4
  %conv22 = sext i8 %32 to i32
  %clock_seq_hi_and_reserved24 = getelementptr i32, ptr %16, i32 8
  %33 = ptrtoint ptr %clock_seq_hi_and_reserved24 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv22, ptr %clock_seq_hi_and_reserved24, align 4
  %clock_seq_low = getelementptr inbounds %struct.afs_uuid, ptr %uuid, i32 0, i32 4
  %34 = ptrtoint ptr %clock_seq_low to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %clock_seq_low, align 1
  %conv25 = sext i8 %35 to i32
  %clock_seq_low27 = getelementptr i32, ptr %16, i32 9
  %36 = ptrtoint ptr %clock_seq_low27 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv25, ptr %clock_seq_low27, align 4
  %node31 = getelementptr i32, ptr %16, i32 10
  %arrayidx = getelementptr %struct.afs_uuid, ptr %uuid, i32 0, i32 5, i32 0
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx, align 1
  %conv29 = sext i8 %38 to i32
  %39 = ptrtoint ptr %node31 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv29, ptr %node31, align 4
  %arrayidx.1 = getelementptr %struct.afs_uuid, ptr %uuid, i32 0, i32 5, i32 1
  %40 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.1, align 1
  %conv29.1 = sext i8 %41 to i32
  %arrayidx32.1 = getelementptr i32, ptr %16, i32 11
  %42 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv29.1, ptr %arrayidx32.1, align 4
  %arrayidx.2 = getelementptr %struct.afs_uuid, ptr %uuid, i32 0, i32 5, i32 2
  %43 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.2, align 1
  %conv29.2 = sext i8 %44 to i32
  %arrayidx32.2 = getelementptr i32, ptr %16, i32 12
  %45 = ptrtoint ptr %arrayidx32.2 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv29.2, ptr %arrayidx32.2, align 4
  %arrayidx.3 = getelementptr %struct.afs_uuid, ptr %uuid, i32 0, i32 5, i32 3
  %46 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.3, align 1
  %conv29.3 = sext i8 %47 to i32
  %arrayidx32.3 = getelementptr i32, ptr %16, i32 13
  %48 = ptrtoint ptr %arrayidx32.3 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv29.3, ptr %arrayidx32.3, align 4
  %arrayidx.4 = getelementptr %struct.afs_uuid, ptr %uuid, i32 0, i32 5, i32 4
  %49 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.4, align 1
  %conv29.4 = sext i8 %50 to i32
  %arrayidx32.4 = getelementptr i32, ptr %16, i32 14
  %51 = ptrtoint ptr %arrayidx32.4 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv29.4, ptr %arrayidx32.4, align 4
  %arrayidx.5 = getelementptr %struct.afs_uuid, ptr %uuid, i32 0, i32 5, i32 5
  %52 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.5, align 1
  %conv29.5 = sext i8 %53 to i32
  %arrayidx32.5 = getelementptr i32, ptr %16, i32 15
  %54 = ptrtoint ptr %arrayidx32.5 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv29.5, ptr %arrayidx32.5, align 4
  tail call fastcc void @trace_afs_make_vl_call(ptr noundef nonnull %call9)
  tail call void @afs_make_call(ptr noundef %vc, ptr noundef nonnull %call9, i32 noundef 3264) #10
  %call34 = tail call i32 @afs_wait_for_call_to_complete(ptr noundef nonnull %call9, ptr noundef %vc) #10
  %55 = inttoptr i32 %call34 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end8.cleanup_crit_edge
  %retval.0 = phi ptr [ %55, %if.end13 ], [ inttoptr (i32 -12 to ptr), %do.end8.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_vl_get_capabilities(ptr noundef %net, ptr noundef %ac, ptr noundef %key, ptr noundef %server, i32 noundef %server_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !98

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.4) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %call8 = tail call ptr @afs_alloc_flat_call(ptr noundef %net, ptr noundef nonnull @afs_RXVLGetCapabilities, i32 noundef 4, i32 noundef 64) #10
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end7.cleanup_crit_edge, label %if.end12

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %key13 = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 6
  %5 = ptrtoint ptr %key13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %key, ptr %key13, align 8
  %usage.i = getelementptr inbounds %struct.afs_vlserver, ptr %server, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !104
  %vlserver = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 9
  %7 = ptrtoint ptr %vlserver to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %server, ptr %vlserver, align 4
  %server_index15 = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 19
  %8 = ptrtoint ptr %server_index15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %server_index, ptr %server_index15, align 8
  %upgrade = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 34
  %9 = ptrtoint ptr %upgrade to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %upgrade, align 1
  %async = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 33
  %10 = ptrtoint ptr %async to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %async, align 4
  %max_lifespan = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 25
  %11 = ptrtoint ptr %max_lifespan to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3000, ptr %max_lifespan, align 8
  %request = getelementptr inbounds %struct.afs_call, ptr %call8, i32 0, i32 10
  %12 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %request, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 65537, ptr %13, align 4
  tail call fastcc void @trace_afs_make_vl_call(ptr noundef nonnull %call8)
  tail call void @afs_make_call(ptr noundef %ac, ptr noundef nonnull %call8, i32 noundef 3264) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end7.cleanup_crit_edge
  %retval.0 = phi ptr [ %call8, %if.end12 ], [ inttoptr (i32 -12 to ptr), %do.end7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_yfsvl_get_endpoints(ptr noundef %vc, ptr nocapture noundef readonly %uuid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cell = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 1
  %0 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cell, align 4
  %net1 = getelementptr inbounds %struct.afs_cell, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %4 = load i32, ptr @afs_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !98

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 101
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.5) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %call9 = tail call ptr @afs_alloc_flat_call(ptr noundef %3, ptr noundef nonnull @afs_YFSVLGetEndpoints, i32 noundef 24, i32 noundef 28) #10
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end8.cleanup_crit_edge, label %if.end13

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %key = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 4
  %9 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %key, align 4
  %key14 = getelementptr inbounds %struct.afs_call, ptr %call9, i32 0, i32 6
  %11 = ptrtoint ptr %key14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %key14, align 8
  %12 = getelementptr inbounds %struct.afs_call, ptr %call9, i32 0, i32 17
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %12, align 8
  %max_lifespan = getelementptr inbounds %struct.afs_call, ptr %call9, i32 0, i32 25
  %14 = ptrtoint ptr %max_lifespan to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 12000, ptr %max_lifespan, align 8
  %request = getelementptr inbounds %struct.afs_call, ptr %call9, i32 0, i32 10
  %15 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %request, align 8
  %incdec.ptr = getelementptr i32, ptr %16, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 64002, ptr %16, align 4
  %incdec.ptr15 = getelementptr i32, ptr %16, i32 2
  %18 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %incdec.ptr, align 4
  %19 = call ptr @memcpy(ptr %incdec.ptr15, ptr %uuid, i32 16)
  tail call fastcc void @trace_afs_make_vl_call(ptr noundef nonnull %call9)
  tail call void @afs_make_call(ptr noundef %vc, ptr noundef nonnull %call9, i32 noundef 3264) #10
  %call17 = tail call i32 @afs_wait_for_call_to_complete(ptr noundef nonnull %call9, ptr noundef %vc) #10
  %20 = inttoptr i32 %call17 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end8.cleanup_crit_edge
  %retval.0 = phi ptr [ %20, %if.end13 ], [ inttoptr (i32 -12 to ptr), %do.end8.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_yfsvl_get_cell_name(ptr noundef %vc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cell = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 1
  %0 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cell, align 4
  %net1 = getelementptr inbounds %struct.afs_cell, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %4 = load i32, ptr @afs_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !98

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 101
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.6) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %call9 = tail call ptr @afs_alloc_flat_call(ptr noundef %3, ptr noundef nonnull @afs_YFSVLGetCellName, i32 noundef 4, i32 noundef 0) #10
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end8.cleanup_crit_edge, label %if.end13

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %key = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc, i32 0, i32 4
  %9 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %key, align 4
  %key14 = getelementptr inbounds %struct.afs_call, ptr %call9, i32 0, i32 6
  %11 = ptrtoint ptr %key14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %key14, align 8
  %12 = getelementptr inbounds %struct.afs_call, ptr %call9, i32 0, i32 17
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %12, align 8
  %max_lifespan = getelementptr inbounds %struct.afs_call, ptr %call9, i32 0, i32 25
  %14 = ptrtoint ptr %max_lifespan to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 12000, ptr %max_lifespan, align 8
  %request = getelementptr inbounds %struct.afs_call, ptr %call9, i32 0, i32 10
  %15 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %request, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 64014, ptr %16, align 4
  tail call fastcc void @trace_afs_make_vl_call(ptr noundef nonnull %call9)
  tail call void @afs_make_call(ptr noundef %vc, ptr noundef nonnull %call9, i32 noundef 3264) #10
  %call16 = tail call i32 @afs_wait_for_call_to_complete(ptr noundef nonnull %call9, ptr noundef %vc) #10
  %18 = inttoptr i32 %call16 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end8.cleanup_crit_edge
  %retval.0 = phi ptr [ %18, %if.end13 ], [ inttoptr (i32 -12 to ptr), %do.end8.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_deliver_vl_get_entry_by_name_u(ptr noundef %call) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !98

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.8) #13
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %call1.i = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %do.end9.cleanup171_crit_edge, label %if.end12

do.end9.cleanup171_crit_edge:                     ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup171

if.end12:                                         ; preds = %do.end9
  %buffer = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %5 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buffer, align 4
  %7 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 17
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %nServers = getelementptr inbounds %struct.afs_uvldbentry__xdr, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %nServers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nServers, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end12
  %i.0260 = phi i32 [ 0, %if.end12 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [65 x i32], ptr %6, i32 0, i32 %i.0260
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %13 to i8
  %arrayidx18 = getelementptr %struct.afs_vldb_entry, ptr %9, i32 0, i32 8, i32 %i.0260
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %arrayidx18, align 1
  %inc = add nuw nsw i32 %i.0260, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %15 = tail call i32 @llvm.umin.i32(i32 %11, i32 13)
  %name19 = getelementptr inbounds %struct.afs_vldb_entry, ptr %9, i32 0, i32 8
  %arrayidx20 = getelementptr %struct.afs_vldb_entry, ptr %9, i32 0, i32 8, i32 64
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx20, align 1
  %call23 = tail call i32 @strlen(ptr noundef %name19) #15
  %conv24 = trunc i32 %call23 to i8
  %name_len = getelementptr inbounds %struct.afs_vldb_entry, ptr %9, i32 0, i32 7
  %17 = ptrtoint ptr %name_len to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv24, ptr %name_len, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp26261.not = icmp eq i32 %15, 0
  br i1 %cmp26261.not, label %for.end38.thread, label %for.end.for.body28_crit_edge

for.end.for.body28_crit_edge:                     ; preds = %for.end
  br label %for.body28

for.end38.thread:                                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %flags274 = getelementptr inbounds %struct.afs_uvldbentry__xdr, ptr %6, i32 0, i32 8
  %18 = ptrtoint ptr %flags274 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags274, align 4
  br label %for.cond118.preheader

for.body28:                                       ; preds = %for.body28.for.body28_crit_edge, %for.end.for.body28_crit_edge
  %i.1263 = phi i32 [ %inc37, %for.body28.for.body28_crit_edge ], [ 0, %for.end.for.body28_crit_edge ]
  %new_only.0.off0262 = phi i1 [ %spec.select, %for.body28.for.body28_crit_edge ], [ false, %for.end.for.body28_crit_edge ]
  %arrayidx29 = getelementptr %struct.afs_uvldbentry__xdr, ptr %6, i32 0, i32 5, i32 %i.1263
  %20 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx29, align 4
  %22 = and i32 %21, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %.not = icmp eq i32 %22, 1
  %spec.select = select i1 %.not, i1 true, i1 %new_only.0.off0262
  %inc37 = add nuw nsw i32 %i.1263, 1
  %exitcond269.not = icmp eq i32 %inc37, %15
  br i1 %exitcond269.not, label %for.end38, label %for.body28.for.body28_crit_edge

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body28

for.end38:                                        ; preds = %for.body28
  %flags = getelementptr inbounds %struct.afs_uvldbentry__xdr, ptr %6, i32 0, i32 8
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  br i1 %cmp26261.not, label %for.end38.for.cond118.preheader_crit_edge, label %for.body42.lr.ph

for.end38.for.cond118.preheader_crit_edge:        ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond118.preheader

for.body42.lr.ph:                                 ; preds = %for.end38
  %nr_servers43 = getelementptr inbounds %struct.afs_vldb_entry, ptr %9, i32 0, i32 6
  %and62 = and i32 %24, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br label %for.body42

for.cond118.preheader:                            ; preds = %cleanup.for.cond118.preheader_crit_edge, %for.end38.for.cond118.preheader_crit_edge, %for.end38.thread
  %25 = phi i32 [ %19, %for.end38.thread ], [ %24, %for.end38.for.cond118.preheader_crit_edge ], [ %24, %cleanup.for.cond118.preheader_crit_edge ]
  %arrayidx122 = getelementptr %struct.afs_uvldbentry__xdr, ptr %6, i32 0, i32 6, i32 0
  %26 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx122, align 4
  %conv123 = zext i32 %27 to i64
  %28 = ptrtoint ptr %9 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv123, ptr %9, align 8
  %arrayidx122.1 = getelementptr %struct.afs_uvldbentry__xdr, ptr %6, i32 0, i32 6, i32 1
  %29 = ptrtoint ptr %arrayidx122.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx122.1, align 4
  %conv123.1 = zext i32 %30 to i64
  %arrayidx124.1 = getelementptr [3 x i64], ptr %9, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx124.1 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv123.1, ptr %arrayidx124.1, align 8
  %arrayidx122.2 = getelementptr %struct.afs_uvldbentry__xdr, ptr %6, i32 0, i32 6, i32 2
  %32 = ptrtoint ptr %arrayidx122.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx122.2, align 4
  %conv123.2 = zext i32 %33 to i64
  %arrayidx124.2 = getelementptr [3 x i64], ptr %9, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx124.2 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv123.2, ptr %arrayidx124.2, align 8
  %and128 = and i32 %25, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %for.cond118.preheader.if.end132_crit_edge, label %if.then130

for.cond118.preheader.if.end132_crit_edge:        ; preds = %for.cond118.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

for.body42:                                       ; preds = %cleanup.for.body42_crit_edge, %for.body42.lr.ph
  %i.2266 = phi i32 [ 0, %for.body42.lr.ph ], [ %inc116, %cleanup.for.body42_crit_edge ]
  %35 = ptrtoint ptr %nr_servers43 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %nr_servers43, align 8
  %conv44 = zext i8 %36 to i32
  %arrayidx46 = getelementptr %struct.afs_uvldbentry__xdr, ptr %6, i32 0, i32 5, i32 %i.2266
  %37 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx46, align 4
  %and47 = and i32 %38, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %lor.lhs.false, label %for.body42.cleanup_crit_edge

for.body42.cleanup_crit_edge:                     ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body42
  %and52 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  %or.cond254 = select i1 %spec.select, i1 %tobool53.not, i1 false
  br i1 %or.cond254, label %lor.lhs.false.cleanup_crit_edge, label %if.end55

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end55:                                         ; preds = %lor.lhs.false
  %and56 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end55.if.end71_crit_edge, label %if.then58

if.end55.if.end71_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then58:                                        ; preds = %if.end55
  %arrayidx59 = getelementptr %struct.afs_vldb_entry, ptr %9, i32 0, i32 4, i32 %conv44
  %39 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx59, align 1
  %41 = or i8 %40, 1
  store i8 %41, ptr %arrayidx59, align 1
  br i1 %tobool63.not, label %if.then58.if.end71_crit_edge, label %if.then64

if.then58.if.end71_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then64:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  %42 = or i8 %40, 5
  %43 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %arrayidx59, align 1
  br label %if.end71

if.end71:                                         ; preds = %if.then64, %if.then58.if.end71_crit_edge, %if.end55.if.end71_crit_edge
  %and72 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end71.if.end80_crit_edge, label %if.then74

if.end71.if.end80_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx76 = getelementptr %struct.afs_vldb_entry, ptr %9, i32 0, i32 4, i32 %conv44
  %44 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx76, align 1
  %46 = or i8 %45, 2
  store i8 %46, ptr %arrayidx76, align 1
  br label %if.end80

if.end80:                                         ; preds = %if.then74, %if.end71.if.end80_crit_edge
  %arrayidx82 = getelementptr %struct.afs_vldb_entry, ptr %9, i32 0, i32 4, i32 %conv44
  %47 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool83.not = icmp eq i8 %48, 0
  br i1 %tobool83.not, label %if.end80.cleanup_crit_edge, label %if.end85

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end85:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx86 = getelementptr %struct.afs_uvldbentry__xdr, ptr %6, i32 0, i32 2, i32 %i.2266
  %arrayidx87 = getelementptr %struct.afs_vldb_entry, ptr %9, i32 0, i32 2, i32 %conv44
  %49 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx86, align 4
  %51 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx87, align 4
  %time_mid = getelementptr %struct.afs_uvldbentry__xdr, ptr %6, i32 0, i32 2, i32 %i.2266, i32 1
  %52 = ptrtoint ptr %time_mid to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %time_mid, align 4
  %conv89 = trunc i32 %53 to i16
  %time_mid90 = getelementptr inbounds %struct.afs_uuid, ptr %arrayidx87, i32 0, i32 1
  %54 = ptrtoint ptr %time_mid90 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv89, ptr %time_mid90, align 4
  %time_hi_and_version = getelementptr %struct.afs_uvldbentry__xdr, ptr %6, i32 0, i32 2, i32 %i.2266, i32 2
  %55 = ptrtoint ptr %time_hi_and_version to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %time_hi_and_version, align 4
  %conv91 = trunc i32 %56 to i16
  %time_hi_and_version92 = getelementptr inbounds %struct.afs_uuid, ptr %arrayidx87, i32 0, i32 2
  %57 = ptrtoint ptr %time_hi_and_version92 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv91, ptr %time_hi_and_version92, align 2
  %clock_seq_hi_and_reserved = getelementptr %struct.afs_uvldbentry__xdr, ptr %6, i32 0, i32 2, i32 %i.2266, i32 3
  %58 = ptrtoint ptr %clock_seq_hi_and_reserved to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %clock_seq_hi_and_reserved, align 4
  %conv93 = trunc i32 %59 to i8
  %clock_seq_hi_and_reserved94 = getelementptr inbounds %struct.afs_uuid, ptr %arrayidx87, i32 0, i32 3
  %60 = ptrtoint ptr %clock_seq_hi_and_reserved94 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv93, ptr %clock_seq_hi_and_reserved94, align 4
  %clock_seq_low = getelementptr %struct.afs_uvldbentry__xdr, ptr %6, i32 0, i32 2, i32 %i.2266, i32 4
  %61 = ptrtoint ptr %clock_seq_low to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %clock_seq_low, align 4
  %conv95 = trunc i32 %62 to i8
  %clock_seq_low96 = getelementptr inbounds %struct.afs_uuid, ptr %arrayidx87, i32 0, i32 4
  %63 = ptrtoint ptr %clock_seq_low96 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv95, ptr %clock_seq_low96, align 1
  %arrayidx101 = getelementptr %struct.afs_uvldbentry__xdr, ptr %6, i32 0, i32 2, i32 %i.2266, i32 5, i32 0
  %64 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx101, align 4
  %conv102 = trunc i32 %65 to i8
  %arrayidx104 = getelementptr %struct.afs_uuid, ptr %arrayidx87, i32 0, i32 5, i32 0
  %66 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv102, ptr %arrayidx104, align 1
  %arrayidx101.1 = getelementptr %struct.afs_uvldbentry__xdr, ptr %6, i32 0, i32 2, i32 %i.2266, i32 5, i32 1
  %67 = ptrtoint ptr %arrayidx101.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx101.1, align 4
  %conv102.1 = trunc i32 %68 to i8
  %arrayidx104.1 = getelementptr %struct.afs_uuid, ptr %arrayidx87, i32 0, i32 5, i32 1
  %69 = ptrtoint ptr %arrayidx104.1 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv102.1, ptr %arrayidx104.1, align 1
  %arrayidx101.2 = getelementptr %struct.afs_uvldbentry__xdr, ptr %6, i32 0, i32 2, i32 %i.2266, i32 5, i32 2
  %70 = ptrtoint ptr %arrayidx101.2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx101.2, align 4
  %conv102.2 = trunc i32 %71 to i8
  %arrayidx104.2 = getelementptr %struct.afs_uuid, ptr %arrayidx87, i32 0, i32 5, i32 2
  %72 = ptrtoint ptr %arrayidx104.2 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv102.2, ptr %arrayidx104.2, align 1
  %arrayidx101.3 = getelementptr %struct.afs_uvldbentry__xdr, ptr %6, i32 0, i32 2, i32 %i.2266, i32 5, i32 3
  %73 = ptrtoint ptr %arrayidx101.3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx101.3, align 4
  %conv102.3 = trunc i32 %74 to i8
  %arrayidx104.3 = getelementptr %struct.afs_uuid, ptr %arrayidx87, i32 0, i32 5, i32 3
  %75 = ptrtoint ptr %arrayidx104.3 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv102.3, ptr %arrayidx104.3, align 1
  %arrayidx101.4 = getelementptr %struct.afs_uvldbentry__xdr, ptr %6, i32 0, i32 2, i32 %i.2266, i32 5, i32 4
  %76 = ptrtoint ptr %arrayidx101.4 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx101.4, align 4
  %conv102.4 = trunc i32 %77 to i8
  %arrayidx104.4 = getelementptr %struct.afs_uuid, ptr %arrayidx87, i32 0, i32 5, i32 4
  %78 = ptrtoint ptr %arrayidx104.4 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv102.4, ptr %arrayidx104.4, align 1
  %arrayidx101.5 = getelementptr %struct.afs_uvldbentry__xdr, ptr %6, i32 0, i32 2, i32 %i.2266, i32 5, i32 5
  %79 = ptrtoint ptr %arrayidx101.5 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx101.5, align 4
  %conv102.5 = trunc i32 %80 to i8
  %arrayidx104.5 = getelementptr %struct.afs_uuid, ptr %arrayidx87, i32 0, i32 5, i32 5
  %81 = ptrtoint ptr %arrayidx104.5 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv102.5, ptr %arrayidx104.5, align 1
  %arrayidx108 = getelementptr %struct.afs_uvldbentry__xdr, ptr %6, i32 0, i32 3, i32 %i.2266
  %82 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx108, align 4
  %arrayidx109 = getelementptr %struct.afs_vldb_entry, ptr %9, i32 0, i32 3, i32 %conv44
  %84 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %arrayidx109, align 4
  %85 = ptrtoint ptr %nr_servers43 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %nr_servers43, align 8
  %inc111 = add i8 %86, 1
  store i8 %inc111, ptr %nr_servers43, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.end80.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body42.cleanup_crit_edge
  %inc116 = add nuw nsw i32 %i.2266, 1
  %exitcond271.not = icmp eq i32 %inc116, %15
  br i1 %exitcond271.not, label %cleanup.for.cond118.preheader_crit_edge, label %cleanup.for.body42_crit_edge

cleanup.for.body42_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body42

cleanup.for.cond118.preheader_crit_edge:          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond118.preheader

if.then130:                                       ; preds = %for.cond118.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %flags131 = getelementptr inbounds %struct.afs_vldb_entry, ptr %9, i32 0, i32 1
  %87 = ptrtoint ptr %flags131 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags131, align 4
  %or.i = or i32 %88, 1
  store i32 %or.i, ptr %flags131, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %for.cond118.preheader.if.end132_crit_edge
  %and133 = and i32 %25, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %if.end132.if.end137_crit_edge, label %if.then135

if.end132.if.end137_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137

if.then135:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  %flags136 = getelementptr inbounds %struct.afs_vldb_entry, ptr %9, i32 0, i32 1
  %89 = ptrtoint ptr %flags136 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags136, align 4
  %or.i255 = or i32 %90, 2
  store i32 %or.i255, ptr %flags136, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.then135, %if.end132.if.end137_crit_edge
  %and138 = and i32 %25, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %if.end137.if.end142_crit_edge, label %if.then140

if.end137.if.end142_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142

if.then140:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  %flags141 = getelementptr inbounds %struct.afs_vldb_entry, ptr %9, i32 0, i32 1
  %91 = ptrtoint ptr %flags141 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flags141, align 4
  %or.i256 = or i32 %92, 4
  store i32 %or.i256, ptr %flags141, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.then140, %if.end137.if.end142_crit_edge
  %and143 = and i32 %25, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.then145, label %if.end142.if.end147_crit_edge

if.end142.if.end147_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end147

if.then145:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  %error = getelementptr inbounds %struct.afs_vldb_entry, ptr %9, i32 0, i32 5
  %93 = ptrtoint ptr %error to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 -123, ptr %error, align 2
  %flags146 = getelementptr inbounds %struct.afs_vldb_entry, ptr %9, i32 0, i32 1
  %94 = ptrtoint ptr %flags146 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags146, align 4
  %or.i257 = or i32 %95, 16
  store i32 %or.i257, ptr %flags146, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.then145, %if.end142.if.end147_crit_edge
  %flags148 = getelementptr inbounds %struct.afs_vldb_entry, ptr %9, i32 0, i32 1
  %96 = ptrtoint ptr %flags148 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %flags148, align 4
  %or.i258 = or i32 %97, 8
  store i32 %or.i258, ptr %flags148, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %98 = load i32, ptr @afs_debug, align 4
  %and150 = and i32 %98, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %if.end147.cleanup171_crit_edge, label %do.end161, !prof !98

if.end147.cleanup171_crit_edge:                   ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup171

do.end161:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  %99 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i259 = and i32 %99, -16384
  %100 = inttoptr i32 %and.i259 to ptr
  %task164 = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %task164 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %task164, align 8
  %comm165 = getelementptr inbounds %struct.task_struct, ptr %102, i32 0, i32 101
  %call167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %comm165, ptr noundef nonnull @.str.8) #13
  br label %cleanup171

cleanup171:                                       ; preds = %do.end161, %if.end147.cleanup171_crit_edge, %do.end9.cleanup171_crit_edge
  %retval.0 = phi i32 [ %call1.i, %do.end9.cleanup171_crit_edge ], [ 0, %do.end161 ], [ 0, %if.end147.cleanup171_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_destroy_vl_get_entry_by_name_u(ptr noundef %call) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  tail call void @kfree(ptr noundef %2) #10
  tail call void @afs_flat_call_destructor(ptr noundef %call) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_extract_data(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_flat_call_destructor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_make_vl_call(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_deliver_vl_get_addrs_u(ptr noundef %call) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !98

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %unmarshall = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %5 = ptrtoint ptr %unmarshall to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %unmarshall, align 8
  %conv = zext i8 %6 to i32
  %iter = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 14
  %7 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iter, align 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i, align 8
  %count6 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %11 = ptrtoint ptr %count6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count6, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %comm, ptr noundef nonnull @.str.17, i32 noundef %conv, i32 noundef %10, i32 noundef %12) #13
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %unmarshall10 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %13 = ptrtoint ptr %unmarshall10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %unmarshall10, align 8
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %14, label %do.end9.do.body73_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %do.end9.sw.bb13_crit_edge
    i8 2, label %do.end9.sw.bb37_crit_edge
  ]

do.end9.sw.bb37_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb37

do.end9.sw.bb13_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb13

do.end9.do.body73_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body73

sw.bb:                                            ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  %iov_len.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %buffer.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %16 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer.i, align 4
  %18 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 56, ptr %iov_len.i, align 4
  %19 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %19, align 8
  %iov_len2.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %21 = ptrtoint ptr %iov_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 56, ptr %iov_len2.i.i, align 4
  %def_iter.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i, i32 noundef 0, ptr noundef %19, i32 noundef 1, i32 noundef 56) #10
  %22 = ptrtoint ptr %unmarshall10 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %unmarshall10, align 8
  %inc = add i8 %23, 1
  store i8 %inc, ptr %unmarshall10, align 8
  br label %sw.bb13

sw.bb13:                                          ; preds = %sw.bb, %do.end9.sw.bb13_crit_edge
  %call14 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %sw.bb13.cleanup_crit_edge, label %if.end17

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %sw.bb13
  %buffer = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %24 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 44
  %incdec.ptr = getelementptr i8, ptr %25, i32 48
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr, align 4
  %incdec.ptr18 = getelementptr i8, ptr %25, i32 52
  %28 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %incdec.ptr, align 4
  %30 = ptrtoint ptr %incdec.ptr18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %incdec.ptr18, align 4
  %32 = tail call i32 @llvm.umin.i32(i32 %29, i32 %31)
  %call22 = tail call ptr @afs_alloc_addrlist(i32 noundef %32, i16 noundef zeroext 1, i16 noundef zeroext 7000) #10
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end17.cleanup_crit_edge, label %if.end25

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %version = getelementptr inbounds %struct.afs_addr_list, ptr %call22, i32 0, i32 2
  %33 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %27, ptr %version, align 4
  %34 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 17
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call22, ptr %34, align 8
  %count26 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %36 = ptrtoint ptr %count26 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %31, ptr %count26, align 4
  %count2 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 28
  %37 = ptrtoint ptr %count2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %32, ptr %count2, align 4
  %38 = ptrtoint ptr %unmarshall10 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %unmarshall10, align 8
  %inc28 = add i8 %39, 1
  store i8 %inc28, ptr %unmarshall10, align 8
  br label %more_entries

more_entries:                                     ; preds = %for.end.more_entries_crit_edge, %if.end25
  %count29 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %40 = ptrtoint ptr %count29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %count29, align 4
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 4)
  %mul = shl nuw nsw i32 %42, 2
  %iov_len.i151 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %buffer.i152 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %43 = ptrtoint ptr %buffer.i152 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buffer.i152, align 4
  %45 = ptrtoint ptr %iov_len.i151 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul, ptr %iov_len.i151, align 4
  %46 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %46, align 8
  %iov_len2.i.i153 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %48 = ptrtoint ptr %iov_len2.i.i153 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mul, ptr %iov_len2.i.i153, align 4
  %def_iter.i.i154 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i154, i32 noundef 0, ptr noundef %46, i32 noundef 1, i32 noundef %mul) #10
  br label %sw.bb37

sw.bb37:                                          ; preds = %more_entries, %do.end9.sw.bb37_crit_edge
  %count38 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %49 = ptrtoint ptr %count38 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %count38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %50)
  %cmp39 = icmp ugt i32 %50, 4
  %call41 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext %cmp39) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %sw.bb37.cleanup_crit_edge, label %if.end45

sw.bb37.cleanup_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end45:                                         ; preds = %sw.bb37
  %51 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 17
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 8
  %54 = ptrtoint ptr %count38 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %count38, align 4
  %56 = tail call i32 @llvm.umin.i32(i32 %55, i32 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp55156.not = icmp eq i32 %56, 0
  br i1 %cmp55156.not, label %if.end45.for.end_crit_edge, label %for.body.lr.ph

if.end45.for.end_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end45
  %buffer46 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %57 = ptrtoint ptr %buffer46 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buffer46, align 4
  %nr_addrs = getelementptr inbounds %struct.afs_addr_list, ptr %53, i32 0, i32 4
  %count258 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 28
  %59 = ptrtoint ptr %nr_addrs to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %nr_addrs, align 1
  %conv57 = zext i8 %60 to i32
  %61 = ptrtoint ptr %count258 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %count258, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %conv57)
  %cmp59 = icmp ugt i32 %62, %conv57
  br i1 %cmp59, label %if.then61, label %for.body.lr.ph.for.inc_crit_edge

for.body.lr.ph.for.inc_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then61:                                        ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr62 = getelementptr i32, ptr %58, i32 1
  %63 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %58, align 4
  tail call void @afs_merge_fs_addr4(ptr noundef %53, i32 noundef %64, i16 noundef zeroext 7000) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then61, %for.body.lr.ph.for.inc_crit_edge
  %bp.1 = phi ptr [ %incdec.ptr62, %if.then61 ], [ %58, %for.body.lr.ph.for.inc_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %exitcond.not = icmp eq i32 %56, 1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.body.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.1:                                       ; preds = %for.inc
  %65 = ptrtoint ptr %nr_addrs to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %nr_addrs, align 1
  %conv57.1 = zext i8 %66 to i32
  %67 = ptrtoint ptr %count258 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %count258, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %conv57.1)
  %cmp59.1 = icmp ugt i32 %68, %conv57.1
  br i1 %cmp59.1, label %if.then61.1, label %for.body.1.for.inc.1_crit_edge

for.body.1.for.inc.1_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then61.1:                                      ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr62.1 = getelementptr i32, ptr %bp.1, i32 1
  %69 = ptrtoint ptr %bp.1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bp.1, align 4
  tail call void @afs_merge_fs_addr4(ptr noundef %53, i32 noundef %70, i16 noundef zeroext 7000) #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then61.1, %for.body.1.for.inc.1_crit_edge
  %bp.1.1 = phi ptr [ %incdec.ptr62.1, %if.then61.1 ], [ %bp.1, %for.body.1.for.inc.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %exitcond.not.1 = icmp eq i32 %56, 2
  br i1 %exitcond.not.1, label %for.inc.1.for.end_crit_edge, label %for.body.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.2:                                       ; preds = %for.inc.1
  %71 = ptrtoint ptr %nr_addrs to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %nr_addrs, align 1
  %conv57.2 = zext i8 %72 to i32
  %73 = ptrtoint ptr %count258 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %count258, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %conv57.2)
  %cmp59.2 = icmp ugt i32 %74, %conv57.2
  br i1 %cmp59.2, label %if.then61.2, label %for.body.2.for.inc.2_crit_edge

for.body.2.for.inc.2_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then61.2:                                      ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr62.2 = getelementptr i32, ptr %bp.1.1, i32 1
  %75 = ptrtoint ptr %bp.1.1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bp.1.1, align 4
  tail call void @afs_merge_fs_addr4(ptr noundef %53, i32 noundef %76, i16 noundef zeroext 7000) #10
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then61.2, %for.body.2.for.inc.2_crit_edge
  %bp.1.2 = phi ptr [ %incdec.ptr62.2, %if.then61.2 ], [ %bp.1.1, %for.body.2.for.inc.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %56)
  %exitcond.not.2 = icmp eq i32 %56, 3
  br i1 %exitcond.not.2, label %for.inc.2.for.end_crit_edge, label %for.body.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.3:                                       ; preds = %for.inc.2
  %77 = ptrtoint ptr %nr_addrs to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %nr_addrs, align 1
  %conv57.3 = zext i8 %78 to i32
  %79 = ptrtoint ptr %count258 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %count258, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %conv57.3)
  %cmp59.3 = icmp ugt i32 %80, %conv57.3
  br i1 %cmp59.3, label %if.then61.3, label %for.body.3.for.end_crit_edge

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then61.3:                                      ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %bp.1.2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %bp.1.2, align 4
  tail call void @afs_merge_fs_addr4(ptr noundef %53, i32 noundef %82, i16 noundef zeroext 7000) #10
  br label %for.end

for.end:                                          ; preds = %if.then61.3, %for.body.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.end45.for.end_crit_edge
  %83 = ptrtoint ptr %count38 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %count38, align 4
  %sub = sub i32 %84, %56
  store i32 %sub, ptr %count38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %56)
  %cmp67.not = icmp eq i32 %84, %56
  br i1 %cmp67.not, label %if.end70, label %for.end.more_entries_crit_edge

for.end.more_entries_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %more_entries

if.end70:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %unmarshall10 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %unmarshall10, align 8
  %inc72 = add i8 %86, 1
  store i8 %inc72, ptr %unmarshall10, align 8
  br label %do.body73

do.body73:                                        ; preds = %if.end70, %do.end9.do.body73_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %87 = load i32, ptr @afs_debug, align 4
  %and74 = and i32 %87, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %do.body73.cleanup_crit_edge, label %do.end85, !prof !98

do.body73.cleanup_crit_edge:                      ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end85:                                         ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #12
  %88 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i155 = and i32 %88, -16384
  %89 = inttoptr i32 %and.i155 to ptr
  %task88 = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %task88 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %task88, align 8
  %comm89 = getelementptr inbounds %struct.task_struct, ptr %91, i32 0, i32 101
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %comm89, ptr noundef nonnull @.str.17) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end85, %do.body73.cleanup_crit_edge, %sw.bb37.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %sw.bb13.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %sw.bb13.cleanup_crit_edge ], [ -12, %if.end17.cleanup_crit_edge ], [ %call41, %sw.bb37.cleanup_crit_edge ], [ 0, %do.end85 ], [ 0, %do.body73.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_vl_get_addrs_u_destructor(ptr noundef %call) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  tail call void @afs_put_addrlist(ptr noundef %2) #10
  tail call void @afs_flat_call_destructor(ptr noundef %call) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_alloc_addrlist(i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_merge_fs_addr4(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_put_addrlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_deliver_vl_get_capabilities(ptr noundef %call) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !98

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %unmarshall = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %5 = ptrtoint ptr %unmarshall to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %unmarshall, align 8
  %conv = zext i8 %6 to i32
  %iter = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 14
  %7 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iter, align 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i, align 8
  %count6 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %11 = ptrtoint ptr %count6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count6, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %comm, ptr noundef nonnull @.str.21, i32 noundef %conv, i32 noundef %10, i32 noundef %12) #13
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %unmarshall10 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %13 = ptrtoint ptr %unmarshall10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %unmarshall10, align 8
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %14, label %do.end9.do.body30_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %do.end9.sw.bb13_crit_edge
    i8 2, label %do.end9.sw.bb22_crit_edge
  ]

do.end9.sw.bb22_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb22

do.end9.sw.bb13_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb13

do.end9.do.body30_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body30

sw.bb:                                            ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  %iov_len.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %16 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp.i = getelementptr inbounds %struct.anon.169, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %iov_len.i, align 4
  %18 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %tmp.i, ptr %18, align 8
  %iov_len2.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %iov_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %iov_len2.i.i, align 4
  %def_iter.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i, i32 noundef 0, ptr noundef %18, i32 noundef 1, i32 noundef 4) #10
  %21 = ptrtoint ptr %unmarshall10 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %unmarshall10, align 8
  %inc = add i8 %22, 1
  store i8 %inc, ptr %unmarshall10, align 8
  br label %sw.bb13

sw.bb13:                                          ; preds = %sw.bb, %do.end9.sw.bb13_crit_edge
  %call14 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %sw.bb13.cleanup_crit_edge, label %if.end17

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  %23 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp18 = getelementptr inbounds %struct.anon.169, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %tmp18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tmp18, align 4
  %count19 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %26 = ptrtoint ptr %count19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %count19, align 4
  %count2 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 28
  %27 = ptrtoint ptr %count2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %count2, align 4
  %28 = ptrtoint ptr %unmarshall10 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %unmarshall10, align 8
  %inc21 = add i8 %29, 1
  store i8 %inc21, ptr %unmarshall10, align 8
  %mul = shl i32 %25, 2
  %iov_len.i71 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %30 = ptrtoint ptr %iov_len.i71 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul, ptr %iov_len.i71, align 4
  %def_iter.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_discard(ptr noundef %def_iter.i, i32 noundef 0, i32 noundef %mul) #10
  br label %sw.bb22

sw.bb22:                                          ; preds = %if.end17, %do.end9.sw.bb22_crit_edge
  %call23 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %sw.bb22.cleanup_crit_edge, label %if.end27

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %unmarshall10 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %unmarshall10, align 8
  %inc29 = add i8 %32, 1
  store i8 %inc29, ptr %unmarshall10, align 8
  br label %do.body30

do.body30:                                        ; preds = %if.end27, %do.end9.do.body30_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %33 = load i32, ptr @afs_debug, align 4
  %and31 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.body30.cleanup_crit_edge, label %do.end42, !prof !98

do.body30.cleanup_crit_edge:                      ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end42:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  %34 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i72 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i72 to ptr
  %task45 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task45 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task45, align 8
  %comm46 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 101
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %comm46, ptr noundef nonnull @.str.21) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %do.body30.cleanup_crit_edge, %sw.bb22.cleanup_crit_edge, %sw.bb13.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %sw.bb13.cleanup_crit_edge ], [ %call23, %sw.bb22.cleanup_crit_edge ], [ 0, %do.end42 ], [ 0, %do.body30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_destroy_vl_get_capabilities(ptr noundef %call) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %vlserver = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %vlserver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vlserver, align 4
  tail call void @afs_put_vlserver(ptr noundef %1, ptr noundef %3) #10
  tail call void @afs_flat_call_destructor(ptr noundef %call) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_vlserver_probe_result(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_discard(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_put_vlserver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_deliver_yfsvl_get_endpoints(ptr noundef %call) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !98

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %unmarshall = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %5 = ptrtoint ptr %unmarshall to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %unmarshall, align 8
  %conv = zext i8 %6 to i32
  %iter = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 14
  %7 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iter, align 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i, align 8
  %count2 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 28
  %11 = ptrtoint ptr %count2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count2, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %comm, ptr noundef nonnull @.str.26, i32 noundef %conv, i32 noundef %10, i32 noundef %12) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %unmarshall9 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %13 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %unmarshall9, align 8
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %14, label %do.end8.do.body158_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %do.end8.sw.bb12_crit_edge
    i8 2, label %do.end8.sw.bb40_crit_edge
    i8 3, label %do.end8.sw.bb93_crit_edge
    i8 4, label %do.end8.sw.bb115_crit_edge
    i8 5, label %do.end8.sw.bb150_crit_edge
  ]

do.end8.sw.bb150_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb150

do.end8.sw.bb115_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb115

do.end8.sw.bb93_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb93

do.end8.sw.bb40_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb40

do.end8.sw.bb12_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

do.end8.do.body158_crit_edge:                     ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body158

sw.bb:                                            ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %iov_len.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %buffer.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %16 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer.i, align 4
  %18 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 28, ptr %iov_len.i, align 4
  %19 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %19, align 8
  %iov_len2.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %21 = ptrtoint ptr %iov_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 28, ptr %iov_len2.i.i, align 4
  %def_iter.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i, i32 noundef 0, ptr noundef %19, i32 noundef 1, i32 noundef 28) #10
  %22 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %unmarshall9, align 8
  br label %sw.bb12

sw.bb12:                                          ; preds = %sw.bb, %do.end8.sw.bb12_crit_edge
  %call13 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %sw.bb12.cleanup_crit_edge, label %if.end16

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %sw.bb12
  %buffer = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %23 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buffer, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 16
  %incdec.ptr = getelementptr i8, ptr %24, i32 20
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr, align 4
  %incdec.ptr17 = getelementptr i8, ptr %24, i32 24
  %27 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %incdec.ptr, align 4
  %count = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %29 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %count, align 4
  %30 = ptrtoint ptr %incdec.ptr17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %incdec.ptr17, align 4
  %count218 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 28
  %32 = ptrtoint ptr %count218 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %count218, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %28)
  %cmp20 = icmp ugt i32 %28, 16
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call i32 @afs_protocol_error(ptr noundef %call, i32 noundef 12) #10
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %call26 = tail call ptr @afs_alloc_addrlist(i32 noundef %28, i16 noundef zeroext 1, i16 noundef zeroext 7000) #10
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end24.cleanup_crit_edge, label %if.end29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %version = getelementptr inbounds %struct.afs_addr_list, ptr %call26, i32 0, i32 2
  %33 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %26, ptr %version, align 4
  %34 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 17
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call26, ptr %34, align 8
  %36 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp31 = icmp eq i32 %37, 0
  br i1 %cmp31, label %if.end29.extract_volendpoints_crit_edge, label %if.end29.next_fsendpoint_crit_edge

if.end29.next_fsendpoint_crit_edge:               ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_fsendpoint

if.end29.extract_volendpoints_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %extract_volendpoints

next_fsendpoint:                                  ; preds = %sw.epilog71.next_fsendpoint_crit_edge, %if.end29.next_fsendpoint_crit_edge
  %count235 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 28
  %38 = ptrtoint ptr %count235 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count235, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %39, label %sw.default [
    i32 0, label %next_fsendpoint.sw.epilog_crit_edge
    i32 1, label %sw.bb37
  ]

next_fsendpoint.sw.epilog_crit_edge:              ; preds = %next_fsendpoint
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb37:                                          ; preds = %next_fsendpoint
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.default:                                       ; preds = %next_fsendpoint
  call void @__sanitizer_cov_trace_pc() #12
  %call38 = tail call i32 @afs_protocol_error(ptr noundef %call, i32 noundef 13) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb37, %next_fsendpoint.sw.epilog_crit_edge
  %size.0 = phi i32 [ 28, %sw.bb37 ], [ 16, %next_fsendpoint.sw.epilog_crit_edge ]
  %iov_len.i272 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %buffer.i273 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %41 = ptrtoint ptr %buffer.i273 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buffer.i273, align 4
  %43 = ptrtoint ptr %iov_len.i272 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %size.0, ptr %iov_len.i272, align 4
  %44 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %44, align 8
  %iov_len2.i.i274 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %46 = ptrtoint ptr %iov_len2.i.i274 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %size.0, ptr %iov_len2.i.i274, align 4
  %def_iter.i.i275 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i275, i32 noundef 0, ptr noundef %44, i32 noundef 1, i32 noundef %size.0) #10
  %47 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 2, ptr %unmarshall9, align 8
  br label %sw.bb40

sw.bb40:                                          ; preds = %sw.epilog, %do.end8.sw.bb40_crit_edge
  %call41 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %sw.bb40.cleanup_crit_edge, label %if.end45

sw.bb40.cleanup_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end45:                                         ; preds = %sw.bb40
  %48 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 17
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %buffer46 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %51 = ptrtoint ptr %buffer46 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buffer46, align 4
  %count247 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 28
  %53 = ptrtoint ptr %count247 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count247, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %54, label %sw.default69 [
    i32 0, label %sw.bb48
    i32 1, label %sw.bb58
  ]

sw.bb48:                                          ; preds = %if.end45
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %57)
  %cmp49.not = icmp eq i32 %57, 8
  br i1 %cmp49.not, label %if.end53, label %if.then51

if.then51:                                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #12
  %call52 = tail call i32 @afs_protocol_error(ptr noundef %call, i32 noundef 10) #10
  br label %cleanup

if.end53:                                         ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx54 = getelementptr i32, ptr %52, i32 1
  %58 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx54, align 4
  %arrayidx55 = getelementptr i32, ptr %52, i32 2
  %60 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx55, align 4
  %conv56 = trunc i32 %61 to i16
  tail call void @afs_merge_fs_addr4(ptr noundef %50, i32 noundef %59, i16 noundef zeroext %conv56) #10
  br label %sw.epilog71

sw.bb58:                                          ; preds = %if.end45
  %62 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %63)
  %cmp60.not = icmp eq i32 %63, 20
  br i1 %cmp60.not, label %if.end64, label %if.then62

if.then62:                                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #12
  %call63 = tail call i32 @afs_protocol_error(ptr noundef %call, i32 noundef 11) #10
  br label %cleanup

if.end64:                                         ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr65 = getelementptr i32, ptr %52, i32 1
  %arrayidx66 = getelementptr i32, ptr %52, i32 5
  %64 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx66, align 4
  %conv67 = trunc i32 %65 to i16
  tail call void @afs_merge_fs_addr6(ptr noundef %50, ptr noundef %add.ptr65, i16 noundef zeroext %conv67) #10
  br label %sw.epilog71

sw.default69:                                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %call70 = tail call i32 @afs_protocol_error(ptr noundef %call, i32 noundef 13) #10
  br label %cleanup

sw.epilog71:                                      ; preds = %if.end64, %if.end53
  %.sink = phi i32 [ 6, %if.end64 ], [ 3, %if.end53 ]
  %add.ptr68 = getelementptr i32, ptr %52, i32 %.sink
  %66 = ptrtoint ptr %add.ptr68 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr68, align 4
  %68 = ptrtoint ptr %count247 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %count247, align 4
  %count74 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %69 = ptrtoint ptr %count74 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %count74, align 4
  %dec = add i32 %70, -1
  store i32 %dec, ptr %count74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp76.not = icmp eq i32 %dec, 0
  br i1 %cmp76.not, label %sw.epilog71.extract_volendpoints_crit_edge, label %sw.epilog71.next_fsendpoint_crit_edge

sw.epilog71.next_fsendpoint_crit_edge:            ; preds = %sw.epilog71
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_fsendpoint

sw.epilog71.extract_volendpoints_crit_edge:       ; preds = %sw.epilog71
  call void @__sanitizer_cov_trace_pc() #12
  br label %extract_volendpoints

extract_volendpoints:                             ; preds = %sw.epilog71.extract_volendpoints_crit_edge, %if.end29.extract_volendpoints_crit_edge
  %count280 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 28
  %71 = ptrtoint ptr %count280 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %count280, align 4
  %count81 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %73 = ptrtoint ptr %count81 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %count81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool83.not = icmp eq i32 %72, 0
  br i1 %tobool83.not, label %extract_volendpoints.end_crit_edge, label %if.end85

extract_volendpoints.end_crit_edge:               ; preds = %extract_volendpoints
  call void @__sanitizer_cov_trace_pc() #12
  br label %end

if.end85:                                         ; preds = %extract_volendpoints
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %72)
  %cmp87 = icmp ugt i32 %72, 16
  br i1 %cmp87, label %if.then89, label %if.end91

if.then89:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  %call90 = tail call i32 @afs_protocol_error(ptr noundef %call, i32 noundef 16) #10
  br label %cleanup

if.end91:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  %iov_len.i276 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %buffer.i277 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %74 = ptrtoint ptr %buffer.i277 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %buffer.i277, align 4
  %76 = ptrtoint ptr %iov_len.i276 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 4, ptr %iov_len.i276, align 4
  %77 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %77, align 8
  %iov_len2.i.i278 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %79 = ptrtoint ptr %iov_len2.i.i278 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 4, ptr %iov_len2.i.i278, align 4
  %def_iter.i.i279 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i279, i32 noundef 0, ptr noundef %77, i32 noundef 1, i32 noundef 4) #10
  %80 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 3, ptr %unmarshall9, align 8
  br label %sw.bb93

sw.bb93:                                          ; preds = %if.end91, %do.end8.sw.bb93_crit_edge
  %call94 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %sw.bb93.cleanup_crit_edge, label %if.end98

sw.bb93.cleanup_crit_edge:                        ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end98:                                         ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #12
  %buffer99 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %81 = ptrtoint ptr %buffer99 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %buffer99, align 4
  br label %next_volendpoint

next_volendpoint:                                 ; preds = %sw.epilog141.next_volendpoint_crit_edge, %if.end98
  %bp.1 = phi ptr [ %add.ptr138, %sw.epilog141.next_volendpoint_crit_edge ], [ %82, %if.end98 ]
  %83 = ptrtoint ptr %bp.1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bp.1, align 4
  %count2101 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 28
  %85 = ptrtoint ptr %count2101 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %count2101, align 4
  %86 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %84, label %sw.default105 [
    i32 0, label %next_volendpoint.sw.epilog107_crit_edge
    i32 1, label %sw.bb104
  ]

next_volendpoint.sw.epilog107_crit_edge:          ; preds = %next_volendpoint
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog107

sw.bb104:                                         ; preds = %next_volendpoint
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog107

sw.default105:                                    ; preds = %next_volendpoint
  call void @__sanitizer_cov_trace_pc() #12
  %call106 = tail call i32 @afs_protocol_error(ptr noundef %call, i32 noundef 16) #10
  br label %cleanup

sw.epilog107:                                     ; preds = %sw.bb104, %next_volendpoint.sw.epilog107_crit_edge
  %size.1 = phi i32 [ 24, %sw.bb104 ], [ 12, %next_volendpoint.sw.epilog107_crit_edge ]
  %count108 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %87 = ptrtoint ptr %count108 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %count108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %88)
  %cmp109 = icmp ugt i32 %88, 1
  %add112 = add nuw nsw i32 %size.1, 4
  %spec.select = select i1 %cmp109, i32 %add112, i32 %size.1
  %iov_len.i280 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %buffer.i281 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %89 = ptrtoint ptr %buffer.i281 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %buffer.i281, align 4
  %91 = ptrtoint ptr %iov_len.i280 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %spec.select, ptr %iov_len.i280, align 4
  %92 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %92, align 8
  %iov_len2.i.i282 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %94 = ptrtoint ptr %iov_len2.i.i282 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %spec.select, ptr %iov_len2.i.i282, align 4
  %def_iter.i.i283 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i283, i32 noundef 0, ptr noundef %92, i32 noundef 1, i32 noundef %spec.select) #10
  %95 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 4, ptr %unmarshall9, align 8
  br label %sw.bb115

sw.bb115:                                         ; preds = %sw.epilog107, %do.end8.sw.bb115_crit_edge
  %call116 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %sw.bb115.cleanup_crit_edge, label %if.end120

sw.bb115.cleanup_crit_edge:                       ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end120:                                        ; preds = %sw.bb115
  %buffer121 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %96 = ptrtoint ptr %buffer121 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %buffer121, align 4
  %count2122 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 28
  %98 = ptrtoint ptr %count2122 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %count2122, align 4
  %100 = zext i32 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %99, label %sw.default139 [
    i32 0, label %sw.bb123
    i32 1, label %sw.bb131
  ]

sw.bb123:                                         ; preds = %if.end120
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %102)
  %cmp125.not = icmp eq i32 %102, 8
  br i1 %cmp125.not, label %sw.bb123.sw.epilog141_crit_edge, label %if.then127

sw.bb123.sw.epilog141_crit_edge:                  ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog141

if.then127:                                       ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #12
  %call128 = tail call i32 @afs_protocol_error(ptr noundef %call, i32 noundef 14) #10
  br label %cleanup

sw.bb131:                                         ; preds = %if.end120
  %103 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %104)
  %cmp133.not = icmp eq i32 %104, 20
  br i1 %cmp133.not, label %sw.bb131.sw.epilog141_crit_edge, label %if.then135

sw.bb131.sw.epilog141_crit_edge:                  ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog141

if.then135:                                       ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #12
  %call136 = tail call i32 @afs_protocol_error(ptr noundef %call, i32 noundef 15) #10
  br label %cleanup

sw.default139:                                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  %call140 = tail call i32 @afs_protocol_error(ptr noundef %call, i32 noundef 16) #10
  br label %cleanup

sw.epilog141:                                     ; preds = %sw.bb131.sw.epilog141_crit_edge, %sw.bb123.sw.epilog141_crit_edge
  %.sink286 = phi i32 [ 3, %sw.bb123.sw.epilog141_crit_edge ], [ 6, %sw.bb131.sw.epilog141_crit_edge ]
  %add.ptr138 = getelementptr i32, ptr %97, i32 %.sink286
  %count142 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %105 = ptrtoint ptr %count142 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %count142, align 4
  %dec143 = add i32 %106, -1
  store i32 %dec143, ptr %count142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec143)
  %cmp145.not = icmp eq i32 %dec143, 0
  br i1 %cmp145.not, label %sw.epilog141.end_crit_edge, label %sw.epilog141.next_volendpoint_crit_edge

sw.epilog141.next_volendpoint_crit_edge:          ; preds = %sw.epilog141
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_volendpoint

sw.epilog141.end_crit_edge:                       ; preds = %sw.epilog141
  call void @__sanitizer_cov_trace_pc() #12
  br label %end

end:                                              ; preds = %sw.epilog141.end_crit_edge, %extract_volendpoints.end_crit_edge
  %iov_len.i284 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %107 = ptrtoint ptr %iov_len.i284 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %iov_len.i284, align 4
  %def_iter.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_discard(ptr noundef %def_iter.i, i32 noundef 0, i32 noundef 0) #10
  %108 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 5, ptr %unmarshall9, align 8
  br label %sw.bb150

sw.bb150:                                         ; preds = %end, %do.end8.sw.bb150_crit_edge
  %call151 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %cmp152 = icmp slt i32 %call151, 0
  br i1 %cmp152, label %sw.bb150.cleanup_crit_edge, label %if.end155

sw.bb150.cleanup_crit_edge:                       ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end155:                                        ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 6, ptr %unmarshall9, align 8
  br label %do.body158

do.body158:                                       ; preds = %if.end155, %do.end8.do.body158_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %110 = load i32, ptr @afs_debug, align 4
  %and159 = and i32 %110, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %do.body158.cleanup_crit_edge, label %do.end170, !prof !98

do.body158.cleanup_crit_edge:                     ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end170:                                        ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #12
  %111 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i285 = and i32 %111, -16384
  %112 = inttoptr i32 %and.i285 to ptr
  %task173 = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %task173 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %task173, align 8
  %comm174 = getelementptr inbounds %struct.task_struct, ptr %114, i32 0, i32 101
  %call176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %comm174, ptr noundef nonnull @.str.26) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end170, %do.body158.cleanup_crit_edge, %sw.bb150.cleanup_crit_edge, %sw.default139, %if.then135, %if.then127, %sw.bb115.cleanup_crit_edge, %sw.default105, %sw.bb93.cleanup_crit_edge, %if.then89, %sw.default69, %if.then62, %if.then51, %sw.bb40.cleanup_crit_edge, %sw.default, %if.end24.cleanup_crit_edge, %if.then22, %sw.bb12.cleanup_crit_edge
  %retval.0 = phi i32 [ %call140, %sw.default139 ], [ %call136, %if.then135 ], [ %call106, %sw.default105 ], [ %call128, %if.then127 ], [ %call70, %sw.default69 ], [ %call63, %if.then62 ], [ %call38, %sw.default ], [ %call90, %if.then89 ], [ %call52, %if.then51 ], [ %call23, %if.then22 ], [ %call13, %sw.bb12.cleanup_crit_edge ], [ -12, %if.end24.cleanup_crit_edge ], [ %call41, %sw.bb40.cleanup_crit_edge ], [ %call94, %sw.bb93.cleanup_crit_edge ], [ %call116, %sw.bb115.cleanup_crit_edge ], [ %call151, %sw.bb150.cleanup_crit_edge ], [ 0, %do.end170 ], [ 0, %do.body158.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_protocol_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_merge_fs_addr6(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_deliver_yfsvl_get_cell_name(ptr noundef %call) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !98

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %unmarshall = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %5 = ptrtoint ptr %unmarshall to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %unmarshall, align 8
  %conv = zext i8 %6 to i32
  %iter = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 14
  %7 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iter, align 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i, align 8
  %count = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %comm, ptr noundef nonnull @.str.30, i32 noundef %conv, i32 noundef %10, i32 noundef %12) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %unmarshall9 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %13 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %unmarshall9, align 8
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %14, label %do.end8.do.body49_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %do.end8.sw.bb12_crit_edge
    i8 2, label %do.end8.sw.bb32_crit_edge
    i8 3, label %do.end8.sw.bb41_crit_edge
  ]

do.end8.sw.bb41_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb41

do.end8.sw.bb32_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb32

do.end8.sw.bb12_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

do.end8.do.body49_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body49

sw.bb:                                            ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %iov_len.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %16 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp.i = getelementptr inbounds %struct.anon.169, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %iov_len.i, align 4
  %18 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %tmp.i, ptr %18, align 8
  %iov_len2.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %iov_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %iov_len2.i.i, align 4
  %def_iter.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i, i32 noundef 0, ptr noundef %18, i32 noundef 1, i32 noundef 4) #10
  %21 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %unmarshall9, align 8
  %inc = add i8 %22, 1
  store i8 %inc, ptr %unmarshall9, align 8
  br label %sw.bb12

sw.bb12:                                          ; preds = %sw.bb, %do.end8.sw.bb12_crit_edge
  %call13 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %sw.bb12.cleanup_crit_edge, label %if.end16

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %sw.bb12
  %23 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp17 = getelementptr inbounds %struct.anon.169, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %tmp17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tmp17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %25)
  %cmp18 = icmp ugt i32 %25, 256
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call i32 @afs_protocol_error(ptr noundef %call, i32 noundef 3) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %add = add nuw nsw i32 %25, 3
  %and23 = and i32 %add, -4
  %count24 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %26 = ptrtoint ptr %count24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %count24, align 4
  %sub = sub nsw i32 %and23, %25
  %count2 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 28
  %27 = ptrtoint ptr %count2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub, ptr %count2, align 4
  %add25 = add nuw nsw i32 %25, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add25, i32 noundef 3264) #16
  %tobool27.not = icmp eq ptr %call9.i, null
  br i1 %tobool27.not, label %if.end22.cleanup_crit_edge, label %if.end29

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr i8, ptr %call9.i, i32 %25
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx, align 1
  %29 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 17
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call9.i, ptr %29, align 8
  %iov_len.i107 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %31 = ptrtoint ptr %iov_len.i107 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %25, ptr %iov_len.i107, align 4
  %32 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call9.i, ptr %32, align 8
  %iov_len2.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %iov_len2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %25, ptr %iov_len2.i, align 4
  %def_iter.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i, i32 noundef 0, ptr noundef %32, i32 noundef 1, i32 noundef %25) #10
  %35 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %unmarshall9, align 8
  %inc31 = add i8 %36, 1
  store i8 %inc31, ptr %unmarshall9, align 8
  br label %sw.bb32

sw.bb32:                                          ; preds = %if.end29, %do.end8.sw.bb32_crit_edge
  %call33 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %sw.bb32.cleanup_crit_edge, label %if.end37

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end37:                                         ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #12
  %count238 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 28
  %37 = ptrtoint ptr %count238 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %count238, align 4
  %iov_len.i108 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %39 = ptrtoint ptr %iov_len.i108 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %iov_len.i108, align 4
  %def_iter.i109 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_discard(ptr noundef %def_iter.i109, i32 noundef 0, i32 noundef %38) #10
  %40 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %unmarshall9, align 8
  %inc40 = add i8 %41, 1
  store i8 %inc40, ptr %unmarshall9, align 8
  br label %sw.bb41

sw.bb41:                                          ; preds = %if.end37, %do.end8.sw.bb41_crit_edge
  %call42 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %sw.bb41.cleanup_crit_edge, label %if.end46

sw.bb41.cleanup_crit_edge:                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end46:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %unmarshall9 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %unmarshall9, align 8
  %inc48 = add i8 %43, 1
  store i8 %inc48, ptr %unmarshall9, align 8
  br label %do.body49

do.body49:                                        ; preds = %if.end46, %do.end8.do.body49_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %44 = load i32, ptr @afs_debug, align 4
  %and50 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.body49.cleanup_crit_edge, label %do.end61, !prof !98

do.body49.cleanup_crit_edge:                      ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end61:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  %45 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i110 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i110 to ptr
  %task64 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task64 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task64, align 8
  %comm65 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 101
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %comm65, ptr noundef nonnull @.str.30) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end61, %do.body49.cleanup_crit_edge, %sw.bb41.cleanup_crit_edge, %sw.bb32.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then20, %sw.bb12.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.then20 ], [ %call13, %sw.bb12.cleanup_crit_edge ], [ -12, %if.end22.cleanup_crit_edge ], [ %call33, %sw.bb32.cleanup_crit_edge ], [ %call42, %sw.bb41.cleanup_crit_edge ], [ 0, %do.end61 ], [ 0, %do.body49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_destroy_yfsvl_get_cell_name(ptr noundef %call) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  tail call void @kfree(ptr noundef %2) #10
  tail call void @afs_flat_call_destructor(ptr noundef %call) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !44, !46, !48, !49, !50, !51, !53, !54, !56, !58, !60, !61, !62, !64, !65, !67, !69, !71, !72, !73, !74, !76, !77, !79, !81, !83, !84, !85, !87}
!llvm.named.register.sp = !{!88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/afs/vlclient.c", i32 139, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @afs_vl_get_entry_by_name_u._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @afs_vl_get_entry_by_name_u._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/afs/vlclient.c", i32 278, i32 2}
!8 = !{ptr @afs_vl_get_addrs_u._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @afs_vl_get_addrs_u._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/afs/vlclient.c", i32 389, i32 2}
!12 = !{ptr @afs_vl_get_capabilities._entry, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @afs_vl_get_capabilities._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/afs/vlclient.c", i32 627, i32 2}
!16 = !{ptr @afs_yfsvl_get_endpoints._entry, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @afs_yfsvl_get_endpoints._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/afs/vlclient.c", i32 741, i32 2}
!20 = !{ptr @afs_yfsvl_get_cell_name._entry, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @afs_yfsvl_get_cell_name._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/afs/vlclient.c", i32 119, i32 11}
!24 = !{ptr @afs_RXVLGetEntryByNameU, !25, !"afs_RXVLGetEntryByNameU", i1 false, i1 false}
!25 = !{!"../fs/afs/vlclient.c", i32 118, i32 35}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/afs/vlclient.c", i32 25, i32 2}
!28 = !{ptr @afs_deliver_vl_get_entry_by_name_u._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @afs_deliver_vl_get_entry_by_name_u._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/afs/vlclient.c", i32 105, i32 2}
!32 = !{ptr @afs_deliver_vl_get_entry_by_name_u._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @afs_deliver_vl_get_entry_by_name_u._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/trace/events/afs.h", i32 904, i32 1}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!38 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/afs/vlclient.c", i32 258, i32 11}
!44 = !{ptr @afs_RXVLGetAddrsU, !45, !"afs_RXVLGetAddrsU", i1 false, i1 false}
!45 = !{!"../fs/afs/vlclient.c", i32 257, i32 35}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/afs/vlclient.c", i32 188, i32 2}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @afs_deliver_vl_get_addrs_u._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @afs_deliver_vl_get_addrs_u._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @afs_deliver_vl_get_addrs_u._entry.18, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../fs/afs/vlclient.c", i32 244, i32 2}
!53 = !{ptr @afs_deliver_vl_get_addrs_u._entry_ptr.19, !52, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/afs/vlclient.c", i32 366, i32 11}
!56 = !{ptr @afs_RXVLGetCapabilities, !57, !"afs_RXVLGetCapabilities", i1 false, i1 false}
!57 = !{!"../fs/afs/vlclient.c", i32 365, i32 35}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/afs/vlclient.c", i32 319, i32 2}
!60 = !{ptr @afs_deliver_vl_get_capabilities._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @afs_deliver_vl_get_capabilities._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @afs_deliver_vl_get_capabilities._entry.22, !63, !"_entry", i1 false, i1 false}
!63 = !{!"../fs/afs/vlclient.c", i32 352, i32 2}
!64 = !{ptr @afs_deliver_vl_get_capabilities._entry_ptr.23, !63, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/afs/vlclient.c", i32 610, i32 11}
!67 = !{ptr @afs_YFSVLGetEndpoints, !68, !"afs_YFSVLGetEndpoints", i1 false, i1 false}
!68 = !{!"../fs/afs/vlclient.c", i32 609, i32 35}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/afs/vlclient.c", i32 428, i32 2}
!71 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @afs_deliver_yfsvl_get_endpoints._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @afs_deliver_yfsvl_get_endpoints._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @afs_deliver_yfsvl_get_endpoints._entry.27, !75, !"_entry", i1 false, i1 false}
!75 = !{!"../fs/afs/vlclient.c", i32 602, i32 2}
!76 = !{ptr @afs_deliver_yfsvl_get_endpoints._entry_ptr.28, !75, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/afs/vlclient.c", i32 722, i32 11}
!79 = !{ptr @afs_YFSVLGetCellName, !80, !"afs_YFSVLGetCellName", i1 false, i1 false}
!80 = !{!"../fs/afs/vlclient.c", i32 721, i32 35}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/afs/vlclient.c", i32 659, i32 2}
!83 = !{ptr @afs_deliver_yfsvl_get_cell_name._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @afs_deliver_yfsvl_get_cell_name._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @afs_deliver_yfsvl_get_cell_name._entry.31, !86, !"_entry", i1 false, i1 false}
!86 = !{!"../fs/afs/vlclient.c", i32 708, i32 2}
!87 = !{ptr @afs_deliver_yfsvl_get_cell_name._entry_ptr.32, !86, !"_entry_ptr", i1 false, i1 false}
!88 = !{!"sp"}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{i64 2148194112, i64 2148194117, i64 2148194130, i64 2148194174, i64 2148194208, i64 2148194229}
!100 = !{i64 2157351567}
!101 = !{i64 2157351770}
!102 = !{i64 2149918816}
!103 = !{i64 2149919852}
!104 = !{i64 2148573386, i64 2148573412, i64 2148573441, i64 2148573475, i64 2148573506, i64 2148573529}
