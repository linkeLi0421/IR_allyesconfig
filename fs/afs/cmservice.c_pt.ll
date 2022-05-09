; ModuleID = '/llk/IR_all_yes/fs/afs/cmservice.c_pt.bc'
source_filename = "../fs/afs/cmservice.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.afs_call_type = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.65 }
%struct.atomic_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.55 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.afs_call = type { ptr, ptr, %struct.wait_queue_head, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.iov_iter, ptr, ptr, %union.anon.148, ptr, %union.anon.149, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, %union.anon.168, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.22, %union.anon.81 }
%union.anon.22 = type { ptr }
%union.anon.81 = type { i64 }
%union.anon.148 = type { [1 x %struct.bio_vec] }
%struct.bio_vec = type { ptr, i32, i32 }
%union.anon.149 = type { i32 }
%union.anon.168 = type { i64 }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon.0 }
%union.anon.0 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.1 }
%union.anon.1 = type { [4 x i32] }
%struct.anon.169 = type { i32, i32 }
%struct.afs_fid = type { i64, i64, i32, i32 }
%struct.afs_callback_break = type { %struct.afs_fid }
%struct.afs_net = type { ptr, %struct.afs_uuid, i8, ptr, ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.rb_root, ptr, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.rw_semaphore, %struct.mutex, %struct.mutex, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.seqlock_t, %struct.work_struct, %struct.timer_list, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, %struct.rwlock_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.afs_uuid = type { i32, i16, i16, i8, i8, [6 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_head = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.afs_server = type { %struct.callback_head, %union.anon.145, ptr, ptr, %struct.rb_node, ptr, ptr, %struct.list_head, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.work_struct, ptr, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, %struct.rwlock_t, i32, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.146 }
%union.anon.145 = type { %struct.afs_uuid }
%struct.anon.146 = type { i32, i32, i16, i8 }
%struct.anon.171 = type { %struct.anon.172, %struct.anon.173 }
%struct.anon.172 = type { i32, [11 x i32], [32 x i32], [32 x i32], [32 x i32] }
%struct.anon.173 = type { i32, [1 x i32] }
%struct.yfs_xdr_YFSFid = type { %struct.yfs_xdr_u64, %struct.yfs_xdr_vnode }
%struct.yfs_xdr_u64 = type { i32, i32 }
%struct.yfs_xdr_vnode = type { %struct.yfs_xdr_u64, i32, i32 }

@afs_debug = external dso_local local_unnamed_addr global i32, align 4
@afs_cm_incoming_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s] ==> %s({%u, CB.OP %u})\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"afs_cm_incoming_call\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/afs/cmservice.c\00", [45 x i8] zeroinitializer }, align 32
@afs_cm_incoming_call._entry_ptr = internal global ptr @afs_cm_incoming_call._entry, section ".printk_index", align 4
@afs_SRXCBCallBack = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.3, i32 0, ptr @afs_deliver_cb_callback, ptr @afs_cm_destructor, ptr @SRXAFSCB_CallBack, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_SRXCBInitCallBackState = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.35, i32 0, ptr @afs_deliver_cb_init_call_back_state, ptr @afs_cm_destructor, ptr @SRXAFSCB_InitCallBackState, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_SRXCBInitCallBackState3 = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.41, i32 0, ptr @afs_deliver_cb_init_call_back_state3, ptr @afs_cm_destructor, ptr @SRXAFSCB_InitCallBackState, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_SRXCBProbe = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.54, i32 0, ptr @afs_deliver_cb_probe, ptr @afs_cm_destructor, ptr @SRXAFSCB_Probe, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_SRXCBProbeUuid = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.59, i32 0, ptr @afs_deliver_cb_probe_uuid, ptr @afs_cm_destructor, ptr @SRXAFSCB_ProbeUuid, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_SRXCBTellMeAboutYourself = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.69, i32 0, ptr @afs_deliver_cb_tell_me_about_yourself, ptr @afs_cm_destructor, ptr @SRXAFSCB_TellMeAboutYourself, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_SRXYFSCB_CallBack = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.74, i32 0, ptr @afs_deliver_yfs_cb_callback, ptr @afs_cm_destructor, ptr @SRXAFSCB_CallBack, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CB.CallBack\00", [20 x i8] zeroinitializer }, align 32
@afs_deliver_cb_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] ==> %s({%u})\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"afs_deliver_cb_callback\00", [40 x i8] zeroinitializer }, align 32
@afs_deliver_cb_callback._entry_ptr = internal global ptr @afs_deliver_cb_callback._entry, section ".printk_index", align 4
@afs_deliver_cb_callback._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%-6.6s]     extract FID count\0A\00", [32 x i8] zeroinitializer }, align 32
@afs_deliver_cb_callback._entry_ptr.8 = internal global ptr @afs_deliver_cb_callback._entry.6, section ".printk_index", align 4
@afs_deliver_cb_callback._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s]     FID count: %u\0A\00", [36 x i8] zeroinitializer }, align 32
@afs_deliver_cb_callback._entry_ptr.11 = internal global ptr @afs_deliver_cb_callback._entry.9, section ".printk_index", align 4
@afs_deliver_cb_callback._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%-6.6s]     extract FID array\0A\00", [32 x i8] zeroinitializer }, align 32
@afs_deliver_cb_callback._entry_ptr.14 = internal global ptr @afs_deliver_cb_callback._entry.12, section ".printk_index", align 4
@afs_deliver_cb_callback._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%-6.6s]     unmarshall FID array\0A\00", [61 x i8] zeroinitializer }, align 32
@afs_deliver_cb_callback._entry_ptr.17 = internal global ptr @afs_deliver_cb_callback._entry.15, section ".printk_index", align 4
@afs_deliver_cb_callback._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s]     extract CB count\0A\00", [33 x i8] zeroinitializer }, align 32
@afs_deliver_cb_callback._entry_ptr.20 = internal global ptr @afs_deliver_cb_callback._entry.18, section ".printk_index", align 4
@afs_deliver_cb_callback._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s]     CB count: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_deliver_cb_callback._entry_ptr.23 = internal global ptr @afs_deliver_cb_callback._entry.21, section ".printk_index", align 4
@afs_deliver_cb_callback._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.5, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%-6.6s]     extract discard %zu/%u\0A\00", [59 x i8] zeroinitializer }, align 32
@afs_deliver_cb_callback._entry_ptr.26 = internal global ptr @afs_deliver_cb_callback._entry.24, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_afs_io_error = external dso_local global %struct.tracepoint, align 4
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/afs.h\00", [37 x i8] zeroinitializer }, align 32
@trace_afs_io_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_afs_cm_no_server = external dso_local global %struct.tracepoint, align 4
@trace_afs_cm_no_server.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@SRXAFSCB_CallBack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SRXAFSCB_CallBack\00", [46 x i8] zeroinitializer }, align 32
@SRXAFSCB_CallBack._entry_ptr = internal global ptr @SRXAFSCB_CallBack._entry, section ".printk_index", align 4
@SRXAFSCB_CallBack._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] <== %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@SRXAFSCB_CallBack._entry_ptr.34 = internal global ptr @SRXAFSCB_CallBack._entry.32, section ".printk_index", align 4
@__tracepoint_afs_server = external dso_local global %struct.tracepoint, align 4
@trace_afs_server.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CB.InitCallBackState\00", [43 x i8] zeroinitializer }, align 32
@afs_deliver_cb_init_call_back_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.36, ptr @.str.2, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"afs_deliver_cb_init_call_back_state\00", [60 x i8] zeroinitializer }, align 32
@afs_deliver_cb_init_call_back_state._entry_ptr = internal global ptr @afs_deliver_cb_init_call_back_state._entry, section ".printk_index", align 4
@SRXAFSCB_InitCallBackState._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] ==> %s({%p})\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SRXAFSCB_InitCallBackState\00", [37 x i8] zeroinitializer }, align 32
@SRXAFSCB_InitCallBackState._entry_ptr = internal global ptr @SRXAFSCB_InitCallBackState._entry, section ".printk_index", align 4
@SRXAFSCB_InitCallBackState._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.38, ptr @.str.2, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@SRXAFSCB_InitCallBackState._entry_ptr.40 = internal global ptr @SRXAFSCB_InitCallBackState._entry.39, section ".printk_index", align 4
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CB.InitCallBackState3\00", [42 x i8] zeroinitializer }, align 32
@afs_deliver_cb_init_call_back_state3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.42, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"afs_deliver_cb_init_call_back_state3\00", [59 x i8] zeroinitializer }, align 32
@afs_deliver_cb_init_call_back_state3._entry_ptr = internal global ptr @afs_deliver_cb_init_call_back_state3._entry, section ".printk_index", align 4
@afs_deliver_cb_init_call_back_state3._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.42, ptr @.str.2, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_deliver_cb_init_call_back_state3._entry_ptr.44 = internal global ptr @afs_deliver_cb_init_call_back_state3._entry.43, section ".printk_index", align 4
@afs_deliver_cb_init_call_back_state3._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.42, ptr @.str.2, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s]     extract UUID\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_deliver_cb_init_call_back_state3._entry_ptr.47 = internal global ptr @afs_deliver_cb_init_call_back_state3._entry.45, section ".printk_index", align 4
@afs_deliver_cb_init_call_back_state3._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.42, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s]     unmarshall UUID\0A\00", [34 x i8] zeroinitializer }, align 32
@afs_deliver_cb_init_call_back_state3._entry_ptr.50 = internal global ptr @afs_deliver_cb_init_call_back_state3._entry.48, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.53 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_afs_cm_no_server_u = external dso_local global %struct.tracepoint, align 4
@trace_afs_cm_no_server_u.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CB.Probe\00", [23 x i8] zeroinitializer }, align 32
@afs_deliver_cb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.55, ptr @.str.2, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"afs_deliver_cb_probe\00", [43 x i8] zeroinitializer }, align 32
@afs_deliver_cb_probe._entry_ptr = internal global ptr @afs_deliver_cb_probe._entry, section ".printk_index", align 4
@SRXAFSCB_Probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.56, ptr @.str.2, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SRXAFSCB_Probe\00", [17 x i8] zeroinitializer }, align 32
@SRXAFSCB_Probe._entry_ptr = internal global ptr @SRXAFSCB_Probe._entry, section ".printk_index", align 4
@SRXAFSCB_Probe._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.56, ptr @.str.2, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@SRXAFSCB_Probe._entry_ptr.58 = internal global ptr @SRXAFSCB_Probe._entry.57, section ".printk_index", align 4
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CB.ProbeUuid\00", [19 x i8] zeroinitializer }, align 32
@afs_deliver_cb_probe_uuid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.60, ptr @.str.2, i32 488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"afs_deliver_cb_probe_uuid\00", [38 x i8] zeroinitializer }, align 32
@afs_deliver_cb_probe_uuid._entry_ptr = internal global ptr @afs_deliver_cb_probe_uuid._entry, section ".printk_index", align 4
@afs_deliver_cb_probe_uuid._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.60, ptr @.str.2, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_deliver_cb_probe_uuid._entry_ptr.62 = internal global ptr @afs_deliver_cb_probe_uuid._entry.61, section ".printk_index", align 4
@afs_deliver_cb_probe_uuid._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.60, ptr @.str.2, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_deliver_cb_probe_uuid._entry_ptr.64 = internal global ptr @afs_deliver_cb_probe_uuid._entry.63, section ".printk_index", align 4
@SRXAFSCB_ProbeUuid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.65, ptr @.str.2, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SRXAFSCB_ProbeUuid\00", [45 x i8] zeroinitializer }, align 32
@SRXAFSCB_ProbeUuid._entry_ptr = internal global ptr @SRXAFSCB_ProbeUuid._entry, section ".printk_index", align 4
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"K-1\00", [28 x i8] zeroinitializer }, align 32
@SRXAFSCB_ProbeUuid._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.65, ptr @.str.2, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@SRXAFSCB_ProbeUuid._entry_ptr.68 = internal global ptr @SRXAFSCB_ProbeUuid._entry.67, section ".printk_index", align 4
@__tracepoint_afs_call_state = external dso_local global %struct.tracepoint, align 4
@trace_afs_call_state.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_afs_call_done = external dso_local global %struct.tracepoint, align 4
@trace_afs_call_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CB.TellMeAboutYourself\00", [41 x i8] zeroinitializer }, align 32
@afs_deliver_cb_tell_me_about_yourself._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.70, ptr @.str.2, i32 584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"afs_deliver_cb_tell_me_about_yourself\00", [58 x i8] zeroinitializer }, align 32
@afs_deliver_cb_tell_me_about_yourself._entry_ptr = internal global ptr @afs_deliver_cb_tell_me_about_yourself._entry, section ".printk_index", align 4
@SRXAFSCB_TellMeAboutYourself._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.71, ptr @.str.2, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SRXAFSCB_TellMeAboutYourself\00", [35 x i8] zeroinitializer }, align 32
@SRXAFSCB_TellMeAboutYourself._entry_ptr = internal global ptr @SRXAFSCB_TellMeAboutYourself._entry, section ".printk_index", align 4
@SRXAFSCB_TellMeAboutYourself._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.71, ptr @.str.2, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@SRXAFSCB_TellMeAboutYourself._entry_ptr.73 = internal global ptr @SRXAFSCB_TellMeAboutYourself._entry.72, section ".printk_index", align 4
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"YFSCB.CallBack\00", [17 x i8] zeroinitializer }, align 32
@afs_deliver_yfs_cb_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.75, ptr @.str.2, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"afs_deliver_yfs_cb_callback\00", [36 x i8] zeroinitializer }, align 32
@afs_deliver_yfs_cb_callback._entry_ptr = internal global ptr @afs_deliver_yfs_cb_callback._entry, section ".printk_index", align 4
@afs_deliver_yfs_cb_callback._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.75, ptr @.str.2, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_deliver_yfs_cb_callback._entry_ptr.77 = internal global ptr @afs_deliver_yfs_cb_callback._entry.76, section ".printk_index", align 4
@afs_deliver_yfs_cb_callback._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.75, ptr @.str.2, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_deliver_yfs_cb_callback._entry_ptr.79 = internal global ptr @afs_deliver_yfs_cb_callback._entry.78, section ".printk_index", align 4
@afs_deliver_yfs_cb_callback._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.75, ptr @.str.2, i32 635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_deliver_yfs_cb_callback._entry_ptr.81 = internal global ptr @afs_deliver_yfs_cb_callback._entry.80, section ".printk_index", align 4
@afs_deliver_yfs_cb_callback._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.75, ptr @.str.2, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_deliver_yfs_cb_callback._entry_ptr.83 = internal global ptr @afs_deliver_yfs_cb_callback._entry.82, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 204, i64 205, i64 206, i64 213, i64 214, i64 64204, i64 65538]
@__sancov_gen_cov_switch_values.84 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 108, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [18 x i8] c"afs_SRXCBCallBack\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 35, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant [27 x i8] c"afs_SRXCBInitCallBackState\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 45, i32 35 }
@___asan_gen_.108 = private unnamed_addr constant [28 x i8] c"afs_SRXCBInitCallBackState3\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 55, i32 35 }
@___asan_gen_.111 = private unnamed_addr constant [15 x i8] c"afs_SRXCBProbe\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 65, i32 35 }
@___asan_gen_.114 = private unnamed_addr constant [19 x i8] c"afs_SRXCBProbeUuid\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 75, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant [29 x i8] c"afs_SRXCBTellMeAboutYourself\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 85, i32 35 }
@___asan_gen_.120 = private unnamed_addr constant [22 x i8] c"afs_SRXYFSCB_CallBack\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 95, i32 35 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 36, i32 11 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 236, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 246, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 252, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 265, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 270, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 291, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 297, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 306, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [30 x i8] c"../include/trace/events/afs.h\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1174, i32 1 }
@___asan_gen_.184 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 108, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 208, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 224, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 46, i32 11 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 351, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 335, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 341, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 56, i32 11 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 373, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 375, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 387, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 395, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 695, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 723, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 66, i32 11 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 446, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 433, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 436, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 76, i32 11 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 488, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 500, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 508, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 467, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 472, i32 38 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 475, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 86, i32 11 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 584, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 558, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 574, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 96, i32 11 }
@___asan_gen_.324 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 606, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 616, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 622, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 635, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.337 = private constant [22 x i8] c"../fs/afs/cmservice.c\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 640, i32 3 }
@llvm.compiler.used = appending global [117 x ptr] [ptr @SRXAFSCB_CallBack._entry, ptr @SRXAFSCB_CallBack._entry.32, ptr @SRXAFSCB_CallBack._entry_ptr, ptr @SRXAFSCB_CallBack._entry_ptr.34, ptr @SRXAFSCB_InitCallBackState._entry, ptr @SRXAFSCB_InitCallBackState._entry.39, ptr @SRXAFSCB_InitCallBackState._entry_ptr, ptr @SRXAFSCB_InitCallBackState._entry_ptr.40, ptr @SRXAFSCB_Probe._entry, ptr @SRXAFSCB_Probe._entry.57, ptr @SRXAFSCB_Probe._entry_ptr, ptr @SRXAFSCB_Probe._entry_ptr.58, ptr @SRXAFSCB_ProbeUuid._entry, ptr @SRXAFSCB_ProbeUuid._entry.67, ptr @SRXAFSCB_ProbeUuid._entry_ptr, ptr @SRXAFSCB_ProbeUuid._entry_ptr.68, ptr @SRXAFSCB_TellMeAboutYourself._entry, ptr @SRXAFSCB_TellMeAboutYourself._entry.72, ptr @SRXAFSCB_TellMeAboutYourself._entry_ptr, ptr @SRXAFSCB_TellMeAboutYourself._entry_ptr.73, ptr @afs_cm_incoming_call._entry, ptr @afs_cm_incoming_call._entry_ptr, ptr @afs_deliver_cb_callback._entry, ptr @afs_deliver_cb_callback._entry.12, ptr @afs_deliver_cb_callback._entry.15, ptr @afs_deliver_cb_callback._entry.18, ptr @afs_deliver_cb_callback._entry.21, ptr @afs_deliver_cb_callback._entry.24, ptr @afs_deliver_cb_callback._entry.6, ptr @afs_deliver_cb_callback._entry.9, ptr @afs_deliver_cb_callback._entry_ptr, ptr @afs_deliver_cb_callback._entry_ptr.11, ptr @afs_deliver_cb_callback._entry_ptr.14, ptr @afs_deliver_cb_callback._entry_ptr.17, ptr @afs_deliver_cb_callback._entry_ptr.20, ptr @afs_deliver_cb_callback._entry_ptr.23, ptr @afs_deliver_cb_callback._entry_ptr.26, ptr @afs_deliver_cb_callback._entry_ptr.8, ptr @afs_deliver_cb_init_call_back_state._entry, ptr @afs_deliver_cb_init_call_back_state._entry_ptr, ptr @afs_deliver_cb_init_call_back_state3._entry, ptr @afs_deliver_cb_init_call_back_state3._entry.43, ptr @afs_deliver_cb_init_call_back_state3._entry.45, ptr @afs_deliver_cb_init_call_back_state3._entry.48, ptr @afs_deliver_cb_init_call_back_state3._entry_ptr, ptr @afs_deliver_cb_init_call_back_state3._entry_ptr.44, ptr @afs_deliver_cb_init_call_back_state3._entry_ptr.47, ptr @afs_deliver_cb_init_call_back_state3._entry_ptr.50, ptr @afs_deliver_cb_probe._entry, ptr @afs_deliver_cb_probe._entry_ptr, ptr @afs_deliver_cb_probe_uuid._entry, ptr @afs_deliver_cb_probe_uuid._entry.61, ptr @afs_deliver_cb_probe_uuid._entry.63, ptr @afs_deliver_cb_probe_uuid._entry_ptr, ptr @afs_deliver_cb_probe_uuid._entry_ptr.62, ptr @afs_deliver_cb_probe_uuid._entry_ptr.64, ptr @afs_deliver_cb_tell_me_about_yourself._entry, ptr @afs_deliver_cb_tell_me_about_yourself._entry_ptr, ptr @afs_deliver_yfs_cb_callback._entry, ptr @afs_deliver_yfs_cb_callback._entry.76, ptr @afs_deliver_yfs_cb_callback._entry.78, ptr @afs_deliver_yfs_cb_callback._entry.80, ptr @afs_deliver_yfs_cb_callback._entry.82, ptr @afs_deliver_yfs_cb_callback._entry_ptr, ptr @afs_deliver_yfs_cb_callback._entry_ptr.77, ptr @afs_deliver_yfs_cb_callback._entry_ptr.79, ptr @afs_deliver_yfs_cb_callback._entry_ptr.81, ptr @afs_deliver_yfs_cb_callback._entry_ptr.83, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @afs_SRXCBCallBack, ptr @afs_SRXCBInitCallBackState, ptr @afs_SRXCBInitCallBackState3, ptr @afs_SRXCBProbe, ptr @afs_SRXCBProbeUuid, ptr @afs_SRXCBTellMeAboutYourself, ptr @afs_SRXYFSCB_CallBack, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.41, ptr @.str.42, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.59, ptr @.str.60, ptr @.str.65, ptr @.str.66, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.74, ptr @.str.75], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_cm_incoming_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_SRXCBCallBack to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_SRXCBInitCallBackState to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_SRXCBInitCallBackState3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_SRXCBProbe to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_SRXCBProbeUuid to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_SRXCBTellMeAboutYourself to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_SRXYFSCB_CallBack to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_cb_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_cb_callback._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_cb_callback._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_cb_callback._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_cb_callback._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_cb_callback._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_cb_callback._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_cb_callback._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SRXAFSCB_CallBack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SRXAFSCB_CallBack._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_cb_init_call_back_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SRXAFSCB_InitCallBackState._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SRXAFSCB_InitCallBackState._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_cb_init_call_back_state3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_cb_init_call_back_state3._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_cb_init_call_back_state3._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_cb_init_call_back_state3._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_cb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SRXAFSCB_Probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SRXAFSCB_Probe._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_cb_probe_uuid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_cb_probe_uuid._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_cb_probe_uuid._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SRXAFSCB_ProbeUuid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SRXAFSCB_ProbeUuid._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_cb_tell_me_about_yourself._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SRXAFSCB_TellMeAboutYourself._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SRXAFSCB_TellMeAboutYourself._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_yfs_cb_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_yfs_cb_callback._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_yfs_cb_callback._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_yfs_cb_callback._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_yfs_cb_callback._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @afs_cm_incoming_call(ptr nocapture noundef %call) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !200

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %service_id = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 38
  %5 = ptrtoint ptr %service_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %service_id, align 2
  %conv = zext i16 %6 to i32
  %operation_ID = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 40
  %7 = ptrtoint ptr %operation_ID to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %operation_ID, align 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %8) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %operation_ID7 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 40
  %9 = ptrtoint ptr %operation_ID7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %operation_ID7, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %do.end6.return_crit_edge [
    i32 204, label %do.end6.return.sink.split_crit_edge
    i32 205, label %sw.bb8
    i32 213, label %sw.bb10
    i32 206, label %sw.bb12
    i32 214, label %sw.bb14
    i32 65538, label %sw.bb16
    i32 64204, label %sw.bb18
  ]

do.end6.return.sink.split_crit_edge:              ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

do.end6.return_crit_edge:                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb8:                                           ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

sw.bb10:                                          ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

sw.bb12:                                          ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

sw.bb14:                                          ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

sw.bb16:                                          ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

sw.bb18:                                          ; preds = %do.end6
  %service_id19 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 38
  %12 = ptrtoint ptr %service_id19 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %service_id19, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2501, i16 %13)
  %cmp.not = icmp eq i16 %13, 2501
  br i1 %cmp.not, label %sw.bb18.return.sink.split_crit_edge, label %sw.bb18.return_crit_edge

sw.bb18.return_crit_edge:                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb18.return.sink.split_crit_edge:              ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb18.return.sink.split_crit_edge, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %do.end6.return.sink.split_crit_edge
  %afs_SRXYFSCB_CallBack.sink = phi ptr [ @afs_SRXCBTellMeAboutYourself, %sw.bb16 ], [ @afs_SRXCBProbeUuid, %sw.bb14 ], [ @afs_SRXCBProbe, %sw.bb12 ], [ @afs_SRXCBInitCallBackState3, %sw.bb10 ], [ @afs_SRXCBInitCallBackState, %sw.bb8 ], [ @afs_SRXCBCallBack, %do.end6.return.sink.split_crit_edge ], [ @afs_SRXYFSCB_CallBack, %sw.bb18.return.sink.split_crit_edge ]
  %14 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %afs_SRXYFSCB_CallBack.sink, ptr %call, align 8
  br label %return

return:                                           ; preds = %return.sink.split, %sw.bb18.return_crit_edge, %do.end6.return_crit_edge
  %retval.0 = phi i1 [ false, %sw.bb18.return_crit_edge ], [ false, %do.end6.return_crit_edge ], [ true, %return.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_deliver_cb_callback(ptr noundef %call) #0 align 64 {
entry:
  %srx.i = alloca %struct.sockaddr_rxrpc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !200

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !190) #10
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
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm, ptr noundef nonnull @.str.5, i32 noundef %conv) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %unmarshall8 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %7 = ptrtoint ptr %unmarshall8 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %unmarshall8, align 8
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %8, label %do.end7.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %do.end7.do.body12_crit_edge
    i8 2, label %do.end7.do.body80_crit_edge
    i8 3, label %do.end7.do.body150_crit_edge
    i8 4, label %do.end7.do.body218_crit_edge
  ]

do.end7.do.body218_crit_edge:                     ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body218

do.end7.do.body150_crit_edge:                     ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body150

do.end7.do.body80_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body80

do.end7.do.body12_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12

do.end7.sw.epilog_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %iov_len.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %10 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp.i = getelementptr inbounds %struct.anon.169, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %iov_len.i, align 4
  %12 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %tmp.i, ptr %12, align 8
  %iov_len2.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %iov_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %iov_len2.i.i, align 4
  %def_iter.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i, i32 noundef 0, ptr noundef %12, i32 noundef 1, i32 noundef 4) #10
  %15 = ptrtoint ptr %unmarshall8 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %unmarshall8, align 8
  %inc = add i8 %16, 1
  store i8 %inc, ptr %unmarshall8, align 8
  br label %do.body12

do.body12:                                        ; preds = %sw.bb, %do.end7.do.body12_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %17 = load i32, ptr @afs_debug, align 4
  %and13 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body12.do.end33_crit_edge, label %do.end24, !prof !200

do.body12.do.end33_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

do.end24:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  %18 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i318 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i318 to ptr
  %task27 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task27, align 8
  %comm28 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 101
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm28) #13
  br label %do.end33

do.end33:                                         ; preds = %do.end24, %do.body12.do.end33_crit_edge
  %call34 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp = icmp slt i32 %call34, 0
  br i1 %cmp, label %do.end33.cleanup_crit_edge, label %if.end37

do.end33.cleanup_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end37:                                         ; preds = %do.end33
  %22 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp38 = getelementptr inbounds %struct.anon.169, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %tmp38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tmp38, align 4
  %count = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %25 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %count, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %26 = load i32, ptr @afs_debug, align 4
  %and40 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end37.do.end61_crit_edge, label %do.end51, !prof !200

if.end37.do.end61_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end61

do.end51:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %27 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i319 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i319 to ptr
  %task54 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task54 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task54, align 8
  %comm55 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 101
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %comm55, i32 noundef %24) #13
  %31 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr = load i32, ptr %count, align 4
  br label %do.end61

do.end61:                                         ; preds = %do.end51, %if.end37.do.end61_crit_edge
  %32 = phi i32 [ %.pr, %do.end51 ], [ %24, %if.end37.do.end61_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %32)
  %cmp63 = icmp ugt i32 %32, 50
  br i1 %cmp63, label %if.then65, label %if.end8.i

if.then65:                                        ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #12
  %call66 = tail call i32 @afs_protocol_error(ptr noundef %call, i32 noundef 2) #10
  br label %cleanup

if.end8.i:                                        ; preds = %do.end61
  %33 = mul nuw nsw i32 %32, 12
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %33, i32 noundef 3264) #14
  %buffer = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %34 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call9.i, ptr %buffer, align 4
  %tobool72.not = icmp eq ptr %call9.i, null
  br i1 %tobool72.not, label %if.end8.i.cleanup_crit_edge, label %if.end74

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end74:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count, align 4
  %mul76 = mul i32 %36, 12
  %iov_len.i321 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %37 = ptrtoint ptr %iov_len.i321 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %mul76, ptr %iov_len.i321, align 4
  %38 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call9.i, ptr %38, align 8
  %iov_len2.i.i322 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %40 = ptrtoint ptr %iov_len2.i.i322 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul76, ptr %iov_len2.i.i322, align 4
  %def_iter.i.i323 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i323, i32 noundef 0, ptr noundef %38, i32 noundef 1, i32 noundef %mul76) #10
  %41 = ptrtoint ptr %unmarshall8 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %unmarshall8, align 8
  %inc78 = add i8 %42, 1
  store i8 %inc78, ptr %unmarshall8, align 8
  br label %do.body80

do.body80:                                        ; preds = %if.end74, %do.end7.do.body80_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %43 = load i32, ptr @afs_debug, align 4
  %and81 = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %do.body80.do.end101_crit_edge, label %do.end92, !prof !200

do.body80.do.end101_crit_edge:                    ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end101

do.end92:                                         ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #12
  %44 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i324 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i324 to ptr
  %task95 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task95 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task95, align 8
  %comm96 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 101
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %comm96) #13
  br label %do.end101

do.end101:                                        ; preds = %do.end92, %do.body80.do.end101_crit_edge
  %call102 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %do.end101.cleanup_crit_edge, label %do.body107

do.end101.cleanup_crit_edge:                      ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body107:                                       ; preds = %do.end101
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %48 = load i32, ptr @afs_debug, align 4
  %and108 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %do.body107.do.end128_crit_edge, label %do.end119, !prof !200

do.body107.do.end128_crit_edge:                   ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end128

do.end119:                                        ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #12
  %49 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i325 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i325 to ptr
  %task122 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task122 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task122, align 8
  %comm123 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 101
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %comm123) #13
  br label %do.end128

do.end128:                                        ; preds = %do.end119, %do.body107.do.end128_crit_edge
  %count129 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %53 = ptrtoint ptr %count129 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count129, align 4
  %55 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %54, i32 24) #10
  %56 = extractvalue { i32, i1 } %55, 1
  br i1 %56, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !201

kcalloc.exit.thread:                              ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #12
  %request342 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 10
  %57 = ptrtoint ptr %request342 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %request342, align 8
  br label %cleanup

if.end7.i.i:                                      ; preds = %do.end128
  %58 = extractvalue { i32, i1 } %55, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %58, i32 noundef 3520) #14
  %request = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 10
  %59 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call8.i.i, ptr %request, align 8
  %tobool132.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool132.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end134

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end134:                                        ; preds = %if.end7.i.i
  %60 = ptrtoint ptr %count129 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %count129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp138349 = icmp sgt i32 %61, 0
  br i1 %cmp138349, label %for.body.preheader, label %if.end134.for.end_crit_edge

if.end134.for.end_crit_edge:                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %if.end134
  %buffer136 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %62 = ptrtoint ptr %buffer136 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %buffer136, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %cb.0352 = phi ptr [ %incdec.ptr146, %for.body.for.body_crit_edge ], [ %call8.i.i, %for.body.preheader ]
  %bp.0351 = phi ptr [ %incdec.ptr144, %for.body.for.body_crit_edge ], [ %63, %for.body.preheader ]
  %loop.0350 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %61, %for.body.preheader ]
  %incdec.ptr = getelementptr i32, ptr %bp.0351, i32 1
  %64 = ptrtoint ptr %bp.0351 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bp.0351, align 4
  %conv140 = zext i32 %65 to i64
  %66 = ptrtoint ptr %cb.0352 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %conv140, ptr %cb.0352, align 8
  %incdec.ptr141 = getelementptr i32, ptr %bp.0351, i32 2
  %67 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %incdec.ptr, align 4
  %conv142 = zext i32 %68 to i64
  %vnode = getelementptr inbounds %struct.afs_fid, ptr %cb.0352, i32 0, i32 1
  %69 = ptrtoint ptr %vnode to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %conv142, ptr %vnode, align 8
  %incdec.ptr144 = getelementptr i32, ptr %bp.0351, i32 3
  %70 = ptrtoint ptr %incdec.ptr141 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %incdec.ptr141, align 4
  %unique = getelementptr inbounds %struct.afs_fid, ptr %cb.0352, i32 0, i32 3
  %72 = ptrtoint ptr %unique to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %unique, align 4
  %dec = add nsw i32 %loop.0350, -1
  %incdec.ptr146 = getelementptr %struct.afs_callback_break, ptr %cb.0352, i32 1
  %cmp138 = icmp ugt i32 %loop.0350, 1
  br i1 %cmp138, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end134.for.end_crit_edge
  %iov_len.i327 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %73 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp.i328 = getelementptr inbounds %struct.anon.169, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %iov_len.i327 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 4, ptr %iov_len.i327, align 4
  %75 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %tmp.i328, ptr %75, align 8
  %iov_len2.i.i329 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %77 = ptrtoint ptr %iov_len2.i.i329 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 4, ptr %iov_len2.i.i329, align 4
  %def_iter.i.i330 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i330, i32 noundef 0, ptr noundef %75, i32 noundef 1, i32 noundef 4) #10
  %78 = ptrtoint ptr %unmarshall8 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %unmarshall8, align 8
  %inc148 = add i8 %79, 1
  store i8 %inc148, ptr %unmarshall8, align 8
  br label %do.body150

do.body150:                                       ; preds = %for.end, %do.end7.do.body150_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %80 = load i32, ptr @afs_debug, align 4
  %and151 = and i32 %80, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %do.body150.do.end171_crit_edge, label %do.end162, !prof !200

do.body150.do.end171_crit_edge:                   ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end171

do.end162:                                        ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #12
  %81 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i331 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i331 to ptr
  %task165 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %task165 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %task165, align 8
  %comm166 = getelementptr inbounds %struct.task_struct, ptr %84, i32 0, i32 101
  %call168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %comm166) #13
  br label %do.end171

do.end171:                                        ; preds = %do.end162, %do.body150.do.end171_crit_edge
  %call172 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %cmp173 = icmp slt i32 %call172, 0
  br i1 %cmp173, label %do.end171.cleanup_crit_edge, label %if.end176

do.end171.cleanup_crit_edge:                      ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end176:                                        ; preds = %do.end171
  %85 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp177 = getelementptr inbounds %struct.anon.169, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %tmp177 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tmp177, align 4
  %count2 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 28
  %88 = ptrtoint ptr %count2 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %count2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %89 = load i32, ptr @afs_debug, align 4
  %and179 = and i32 %89, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %if.end176.do.end200_crit_edge, label %do.end190, !prof !200

if.end176.do.end200_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end200

do.end190:                                        ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #12
  %90 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i332 = and i32 %90, -16384
  %91 = inttoptr i32 %and.i332 to ptr
  %task193 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %task193 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task193, align 8
  %comm194 = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 101
  %call197 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %comm194, i32 noundef %87) #13
  br label %do.end200

do.end200:                                        ; preds = %do.end190, %if.end176.do.end200_crit_edge
  %94 = ptrtoint ptr %count2 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %count2, align 4
  %count202 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %96 = ptrtoint ptr %count202 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %count202, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %97)
  %cmp203.not = icmp eq i32 %95, %97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp206.not = icmp eq i32 %95, 0
  %or.cond = or i1 %cmp206.not, %cmp203.not
  br i1 %or.cond, label %if.end210, label %if.then208

if.then208:                                       ; preds = %do.end200
  call void @__sanitizer_cov_trace_pc() #12
  %call209 = tail call i32 @afs_protocol_error(ptr noundef %call, i32 noundef 1) #10
  br label %cleanup

if.end210:                                        ; preds = %do.end200
  call void @__sanitizer_cov_trace_pc() #12
  %def_iter = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  %iter = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 14
  %98 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %def_iter, ptr %iter, align 4
  %mul214 = mul i32 %95, 12
  tail call void @iov_iter_discard(ptr noundef %def_iter, i32 noundef 0, i32 noundef %mul214) #10
  %99 = ptrtoint ptr %unmarshall8 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %unmarshall8, align 8
  %inc216 = add i8 %100, 1
  store i8 %inc216, ptr %unmarshall8, align 8
  br label %do.body218

do.body218:                                       ; preds = %if.end210, %do.end7.do.body218_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %101 = load i32, ptr @afs_debug, align 4
  %and219 = and i32 %101, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and219)
  %tobool220.not = icmp eq i32 %and219, 0
  br i1 %tobool220.not, label %do.body218.do.end244_crit_edge, label %do.end230, !prof !200

do.body218.do.end244_crit_edge:                   ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end244

do.end230:                                        ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #12
  %102 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i333 = and i32 %102, -16384
  %103 = inttoptr i32 %and.i333 to ptr
  %task233 = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %task233 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %task233, align 8
  %comm234 = getelementptr inbounds %struct.task_struct, ptr %105, i32 0, i32 101
  %iter236 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 14
  %106 = ptrtoint ptr %iter236 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %iter236, align 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %107, i32 0, i32 4
  %108 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %count.i, align 8
  %count2238 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 28
  %110 = ptrtoint ptr %count2238 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %count2238, align 4
  %mul240 = mul i32 %111, 12
  %call241 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %comm234, i32 noundef %109, i32 noundef %mul240) #13
  br label %do.end244

do.end244:                                        ; preds = %do.end230, %do.body218.do.end244_crit_edge
  %call245 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245)
  %cmp246 = icmp slt i32 %call245, 0
  br i1 %cmp246, label %do.end244.cleanup_crit_edge, label %if.end249

do.end244.cleanup_crit_edge:                      ; preds = %do.end244
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end249:                                        ; preds = %do.end244
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %unmarshall8 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %unmarshall8, align 8
  %inc251 = add i8 %113, 1
  store i8 %inc251, ptr %unmarshall8, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end249, %do.end7.sw.epilog_crit_edge
  %state1.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 21
  %114 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %state1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %115)
  %cmp.i334 = icmp eq i32 %115, 5
  br i1 %cmp.i334, label %if.end255, label %if.then253

if.then253:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %debug_id.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 39
  %116 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %debug_id.i, align 4
  tail call fastcc void @trace_afs_io_error(i32 noundef %117) #10
  br label %cleanup

if.end255:                                        ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %srx.i) #10
  %118 = call ptr @memset(ptr %srx.i, i32 255, i32 36)
  %net.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 7
  %119 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %net.i, align 4
  %socket.i = getelementptr inbounds %struct.afs_net, ptr %120, i32 0, i32 3
  %121 = ptrtoint ptr %socket.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %socket.i, align 4
  %rxcall.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 5
  %123 = ptrtoint ptr %rxcall.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rxcall.i, align 4
  call void @rxrpc_kernel_get_peer(ptr noundef %122, ptr noundef %124, ptr noundef nonnull %srx.i) #10
  %125 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %net.i, align 4
  %call2.i = call ptr @afs_find_server(ptr noundef %126, ptr noundef nonnull %srx.i) #10
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.then.i335, label %if.end.i336

if.then.i335:                                     ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @trace_afs_cm_no_server(ptr noundef %call, ptr noundef nonnull %srx.i) #10
  br label %afs_find_cm_server_by_peer.exit

if.end.i336:                                      ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #12
  %server3.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 8
  %127 = ptrtoint ptr %server3.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call2.i, ptr %server3.i, align 8
  br label %afs_find_cm_server_by_peer.exit

afs_find_cm_server_by_peer.exit:                  ; preds = %if.end.i336, %if.then.i335
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %srx.i) #10
  br label %cleanup

cleanup:                                          ; preds = %afs_find_cm_server_by_peer.exit, %if.then253, %do.end244.cleanup_crit_edge, %if.then208, %do.end171.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread, %do.end101.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.then65, %do.end33.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %afs_find_cm_server_by_peer.exit ], [ -5, %if.then253 ], [ %call209, %if.then208 ], [ %call66, %if.then65 ], [ %call34, %do.end33.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ %call102, %do.end101.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ %call172, %do.end171.cleanup_crit_edge ], [ %call245, %do.end244.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_cm_destructor(ptr nocapture noundef %call) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  tail call void @kfree(ptr noundef %1) #10
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %buffer, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @SRXAFSCB_CallBack(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !200

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %comm, ptr noundef nonnull @.str.31) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %server = getelementptr i8, ptr %work, i32 56
  %5 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %server, align 8
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.end8.if.end17_crit_edge, label %if.then10

do.end8.if.end17_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then10:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %ref = getelementptr inbounds %struct.afs_server, ptr %6, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #10
  %7 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %ref, align 4
  %9 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %server, align 8
  %active = getelementptr inbounds %struct.afs_server, ptr %10, i32 0, i32 16
  %call.i.i48 = tail call zeroext i1 @__kasan_check_read(ptr noundef %active, i32 noundef 4) #10
  %11 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %active, align 4
  tail call fastcc void @trace_afs_server(ptr noundef nonnull %6, i32 noundef %8, i32 noundef %12)
  %13 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %server, align 8
  %count = getelementptr i8, ptr %work, i32 228
  %15 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count, align 4
  %request = getelementptr i8, ptr %work, i32 64
  %17 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %request, align 8
  tail call void @afs_break_callbacks(ptr noundef %14, i32 noundef %16, ptr noundef %18) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then10, %do.end8.if.end17_crit_edge
  tail call void @afs_send_empty_reply(ptr noundef %add.ptr) #10
  tail call void @afs_put_call(ptr noundef %add.ptr) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %19 = load i32, ptr @afs_debug, align 4
  %and19 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end17.do.end39_crit_edge, label %do.end30, !prof !200

if.end17.do.end39_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end39

do.end30:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %20 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i49 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i49 to ptr
  %task33 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task33, align 8
  %comm34 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 101
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %comm34, ptr noundef nonnull @.str.31) #13
  br label %do.end39

do.end39:                                         ; preds = %do.end30, %if.end17.do.end39_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_extract_data(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_protocol_error(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_discard(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_io_error(i32 noundef %call) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_io_error, i32 0, i32 1), ptr blockaddress(@trace_afs_io_error, %do.body)) #10
          to label %if.end49 [label %do.body], !srcloc !202

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !190) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !200

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !203
  %call43 = tail call i32 @__traceiter_afs_io_error(ptr noundef null, i32 noundef %call, i32 noundef -5, i32 noundef 0) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  %13 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end49.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end49.cpu_online.exit14_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !200

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end49.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end70_crit_edge, label %if.then53

cpu_online.exit14.if.end70_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_io_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_io_error, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_afs_io_error.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_afs_io_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 1194, ptr noundef nonnull @.str.28) #10
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit14.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_io_error(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_kernel_get_peer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_find_server(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_cm_no_server(ptr noundef %call, ptr noundef %srx) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_cm_no_server, i32 0, i32 1), ptr blockaddress(@trace_afs_cm_no_server, %do.body)) #10
          to label %if.end49 [label %do.body], !srcloc !202

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !190) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !200

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !207
  %call43 = tail call i32 @__traceiter_afs_cm_no_server(ptr noundef null, ptr noundef %call, ptr noundef %srx) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !208
  %13 = tail call i32 @llvm.read_register.i32(metadata !190) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !190) #10
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
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !200

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_cm_no_server, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_cm_no_server, i32 0, i32 7), align 4
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
  %.b73 = load i1, ptr @trace_afs_cm_no_server.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_afs_cm_no_server.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 1238, ptr noundef nonnull @.str.28) #10
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !190) #10
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
declare dso_local i32 @__traceiter_afs_cm_no_server(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_server(ptr noundef %server, i32 noundef %ref, i32 noundef %active) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_server, i32 0, i32 1), ptr blockaddress(@trace_afs_server, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !202

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !190) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !200

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !209
  %call42 = tail call i32 @__traceiter_afs_server(ptr noundef null, ptr noundef %server, i32 noundef %ref, i32 noundef %active, i32 noundef 1) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !210
  %13 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !200

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_server, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_server, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_afs_server.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_afs_server.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 1460, ptr noundef nonnull @.str.28) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_break_callbacks(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_send_empty_reply(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_put_call(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_server(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_deliver_cb_init_call_back_state(ptr noundef %call) #0 align 64 {
entry:
  %srx.i = alloca %struct.sockaddr_rxrpc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !200

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %comm, ptr noundef nonnull @.str.36) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %iov_len.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %5 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %iov_len.i, align 4
  %def_iter.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_discard(ptr noundef %def_iter.i, i32 noundef 0, i32 noundef 0) #10
  %call8 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end7.cleanup_crit_edge, label %if.end10

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %do.end7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %srx.i) #10
  %6 = call ptr @memset(ptr %srx.i, i32 255, i32 36)
  %net.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 7
  %7 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net.i, align 4
  %socket.i = getelementptr inbounds %struct.afs_net, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %socket.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %socket.i, align 4
  %rxcall.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 5
  %11 = ptrtoint ptr %rxcall.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rxcall.i, align 4
  call void @rxrpc_kernel_get_peer(ptr noundef %10, ptr noundef %12, ptr noundef nonnull %srx.i) #10
  %13 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net.i, align 4
  %call2.i = call ptr @afs_find_server(ptr noundef %14, ptr noundef nonnull %srx.i) #10
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @trace_afs_cm_no_server(ptr noundef %call, ptr noundef nonnull %srx.i) #10
  br label %afs_find_cm_server_by_peer.exit

if.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %server3.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 8
  %15 = ptrtoint ptr %server3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call2.i, ptr %server3.i, align 8
  br label %afs_find_cm_server_by_peer.exit

afs_find_cm_server_by_peer.exit:                  ; preds = %if.end.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %srx.i) #10
  br label %cleanup

cleanup:                                          ; preds = %afs_find_cm_server_by_peer.exit, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %afs_find_cm_server_by_peer.exit ], [ %call8, %do.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @SRXAFSCB_InitCallBackState(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !200

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %server = getelementptr i8, ptr %work, i32 56
  %5 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %server, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %comm, ptr noundef nonnull @.str.38, ptr noundef %6) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %server9 = getelementptr i8, ptr %work, i32 56
  %7 = ptrtoint ptr %server9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %server9, align 8
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %do.end8.if.end13_crit_edge, label %if.then11

do.end8.if.end13_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @afs_init_callback_state(ptr noundef nonnull %8) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.end8.if.end13_crit_edge
  tail call void @afs_send_empty_reply(ptr noundef %add.ptr) #10
  tail call void @afs_put_call(ptr noundef %add.ptr) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %9 = load i32, ptr @afs_debug, align 4
  %and15 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.do.end35_crit_edge, label %do.end26, !prof !200

if.end13.do.end35_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35

do.end26:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %10 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i40 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i40 to ptr
  %task29 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task29, align 8
  %comm30 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 101
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %comm30, ptr noundef nonnull @.str.38) #13
  br label %do.end35

do.end35:                                         ; preds = %do.end26, %if.end13.do.end35_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_init_callback_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_deliver_cb_init_call_back_state3(ptr noundef %call) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body8_crit_edge, label %do.end, !prof !200

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %comm, ptr noundef nonnull @.str.42) #13
  br label %do.body8

do.body8:                                         ; preds = %do.end, %entry.do.body8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %5 = load i32, ptr @afs_debug, align 4
  %and9 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body8.do.end29_crit_edge, label %do.end20, !prof !200

do.body8.do.end29_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

do.end20:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  %6 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i146 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i146 to ptr
  %task23 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task23, align 8
  %comm24 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 101
  %unmarshall = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %10 = ptrtoint ptr %unmarshall to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %unmarshall, align 8
  %conv = zext i8 %11 to i32
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm24, ptr noundef nonnull @.str.42, i32 noundef %conv) #13
  br label %do.end29

do.end29:                                         ; preds = %do.end20, %do.body8.do.end29_crit_edge
  %unmarshall30 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %12 = ptrtoint ptr %unmarshall30 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %unmarshall30, align 8
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %13, label %do.end29.sw.epilog107_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %do.end29.do.body39_crit_edge
  ]

do.end29.do.body39_crit_edge:                     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body39

do.end29.sw.epilog107_crit_edge:                  ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog107

sw.bb:                                            ; preds = %do.end29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 44) #15
  %buffer = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %buffer, align 4
  %tobool34.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool34.not, label %sw.bb.cleanup_crit_edge, label %if.end36

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %iov_len.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %17 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 44, ptr %iov_len.i, align 4
  %18 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %18, align 8
  %iov_len2.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %iov_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 44, ptr %iov_len2.i.i, align 4
  %def_iter.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i, i32 noundef 0, ptr noundef %18, i32 noundef 1, i32 noundef 44) #10
  %21 = ptrtoint ptr %unmarshall30 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %unmarshall30, align 8
  %inc = add i8 %22, 1
  store i8 %inc, ptr %unmarshall30, align 8
  br label %do.body39

do.body39:                                        ; preds = %if.end36, %do.end29.do.body39_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %23 = load i32, ptr @afs_debug, align 4
  %and40 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body39.do.end60_crit_edge, label %do.end51, !prof !200

do.body39.do.end60_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60

do.end51:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #12
  %24 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i147 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i147 to ptr
  %task54 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task54 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task54, align 8
  %comm55 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 101
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %comm55) #13
  br label %do.end60

do.end60:                                         ; preds = %do.end51, %do.body39.do.end60_crit_edge
  %call61 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #10
  %28 = zext i32 %call61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %call61, label %sw.default [
    i32 0, label %do.body63
    i32 -11, label %do.end60.cleanup_crit_edge
  ]

do.end60.cleanup_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.default:                                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body63:                                        ; preds = %do.end60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %29 = load i32, ptr @afs_debug, align 4
  %and64 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %do.body63.do.end84_crit_edge, label %do.end75, !prof !200

do.body63.do.end84_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end84

do.end75:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #12
  %30 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i148 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i148 to ptr
  %task78 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task78 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task78, align 8
  %comm79 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 101
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %comm79) #13
  br label %do.end84

do.end84:                                         ; preds = %do.end75, %do.body63.do.end84_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3264, i32 noundef 16) #15
  %request = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 10
  %35 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i, ptr %request, align 8
  %tobool87.not = icmp eq ptr %call7.i, null
  br i1 %tobool87.not, label %do.end84.cleanup_crit_edge, label %if.end89

do.end84.cleanup_crit_edge:                       ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end89:                                         ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #12
  %buffer90 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %36 = ptrtoint ptr %buffer90 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buffer90, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %40 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %call7.i, align 8
  %arrayidx92 = getelementptr i32, ptr %37, i32 1
  %41 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx92, align 4
  %conv93 = trunc i32 %42 to i16
  %time_mid = getelementptr inbounds %struct.afs_uuid, ptr %call7.i, i32 0, i32 1
  %43 = ptrtoint ptr %time_mid to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv93, ptr %time_mid, align 4
  %arrayidx94 = getelementptr i32, ptr %37, i32 2
  %44 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx94, align 4
  %conv95 = trunc i32 %45 to i16
  %time_hi_and_version = getelementptr inbounds %struct.afs_uuid, ptr %call7.i, i32 0, i32 2
  %46 = ptrtoint ptr %time_hi_and_version to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv95, ptr %time_hi_and_version, align 2
  %arrayidx96 = getelementptr i32, ptr %37, i32 3
  %47 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx96, align 4
  %conv97 = trunc i32 %48 to i8
  %clock_seq_hi_and_reserved = getelementptr inbounds %struct.afs_uuid, ptr %call7.i, i32 0, i32 3
  %49 = ptrtoint ptr %clock_seq_hi_and_reserved to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv97, ptr %clock_seq_hi_and_reserved, align 8
  %arrayidx98 = getelementptr i32, ptr %37, i32 4
  %50 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx98, align 4
  %conv99 = trunc i32 %51 to i8
  %clock_seq_low = getelementptr inbounds %struct.afs_uuid, ptr %call7.i, i32 0, i32 4
  %52 = ptrtoint ptr %clock_seq_low to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv99, ptr %clock_seq_low, align 1
  %arrayidx101 = getelementptr i32, ptr %37, i32 5
  %53 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx101, align 4
  %conv102 = trunc i32 %54 to i8
  %arrayidx103 = getelementptr %struct.afs_uuid, ptr %call7.i, i32 0, i32 5, i32 0
  %55 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv102, ptr %arrayidx103, align 2
  %arrayidx101.1 = getelementptr i32, ptr %37, i32 6
  %56 = ptrtoint ptr %arrayidx101.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx101.1, align 4
  %conv102.1 = trunc i32 %57 to i8
  %arrayidx103.1 = getelementptr %struct.afs_uuid, ptr %call7.i, i32 0, i32 5, i32 1
  %58 = ptrtoint ptr %arrayidx103.1 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv102.1, ptr %arrayidx103.1, align 1
  %arrayidx101.2 = getelementptr i32, ptr %37, i32 7
  %59 = ptrtoint ptr %arrayidx101.2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx101.2, align 4
  %conv102.2 = trunc i32 %60 to i8
  %arrayidx103.2 = getelementptr %struct.afs_uuid, ptr %call7.i, i32 0, i32 5, i32 2
  %61 = ptrtoint ptr %arrayidx103.2 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv102.2, ptr %arrayidx103.2, align 4
  %arrayidx101.3 = getelementptr i32, ptr %37, i32 8
  %62 = ptrtoint ptr %arrayidx101.3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx101.3, align 4
  %conv102.3 = trunc i32 %63 to i8
  %arrayidx103.3 = getelementptr %struct.afs_uuid, ptr %call7.i, i32 0, i32 5, i32 3
  %64 = ptrtoint ptr %arrayidx103.3 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv102.3, ptr %arrayidx103.3, align 1
  %arrayidx101.4 = getelementptr i32, ptr %37, i32 9
  %65 = ptrtoint ptr %arrayidx101.4 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx101.4, align 4
  %conv102.4 = trunc i32 %66 to i8
  %arrayidx103.4 = getelementptr %struct.afs_uuid, ptr %call7.i, i32 0, i32 5, i32 4
  %67 = ptrtoint ptr %arrayidx103.4 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv102.4, ptr %arrayidx103.4, align 2
  %arrayidx101.5 = getelementptr i32, ptr %37, i32 10
  %68 = ptrtoint ptr %arrayidx101.5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx101.5, align 4
  %conv102.5 = trunc i32 %69 to i8
  %arrayidx103.5 = getelementptr %struct.afs_uuid, ptr %call7.i, i32 0, i32 5, i32 5
  %70 = ptrtoint ptr %arrayidx103.5 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv102.5, ptr %arrayidx103.5, align 1
  %71 = ptrtoint ptr %unmarshall30 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %unmarshall30, align 8
  %inc106 = add i8 %72, 1
  store i8 %inc106, ptr %unmarshall30, align 8
  br label %sw.epilog107

sw.epilog107:                                     ; preds = %if.end89, %do.end29.sw.epilog107_crit_edge
  %state1.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 21
  %73 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %state1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %74)
  %cmp.i = icmp eq i32 %74, 5
  br i1 %cmp.i, label %if.end111, label %if.then109

if.then109:                                       ; preds = %sw.epilog107
  call void @__sanitizer_cov_trace_pc() #12
  %debug_id.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 39
  %75 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %debug_id.i, align 4
  tail call fastcc void @trace_afs_io_error(i32 noundef %76) #10
  br label %cleanup

if.end111:                                        ; preds = %sw.epilog107
  %77 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i.i.i.i.i.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %80, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !211
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %if.end111.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end111.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end111
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 696, ptr noundef nonnull @.str.52) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end111.rcu_read_lock.exit.i_crit_edge
  %net.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 7
  %81 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %net.i, align 4
  %request.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 10
  %83 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %request.i, align 8
  %call1.i = tail call ptr @afs_find_server_by_uuid(ptr noundef %82, ptr noundef %84) #10
  %call.i1.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i1.i, label %rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i4.i

rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true.i4.i:                               ; preds = %rcu_read_lock.exit.i
  %call1.i2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i)
  %tobool.not.i3.i = icmp eq i32 %call1.i2.i, 0
  br i1 %tobool.not.i3.i, label %land.lhs.true.i4.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i6.i

land.lhs.true.i4.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i6.i:                              ; preds = %land.lhs.true.i4.i
  %.b4.i5.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5.i, label %land.lhs.true2.i6.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i7.i

land.lhs.true2.i6.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

if.then.i7.i:                                     ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 724, ptr noundef nonnull @.str.53) #10
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i7.i, %land.lhs.true2.i6.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i4.i.rcu_read_unlock.exit.i_crit_edge, %rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !212
  %85 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i.i.i.i.i8.i = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i.i.i.i8.i to ptr
  %preempt_count.i.i.i.i9.i = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %preempt_count.i.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %preempt_count.i.i.i.i9.i, align 4
  %sub.i.i.i.i = add i32 %88, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i9.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %request.i, align 8
  tail call fastcc void @trace_afs_cm_no_server_u(ptr noundef %call, ptr noundef %90) #10
  br label %cleanup

if.end.i:                                         ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %server3.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 8
  %91 = ptrtoint ptr %server3.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call1.i, ptr %server3.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i, %if.then109, %do.end84.cleanup_crit_edge, %sw.default, %do.end60.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then109 ], [ %call61, %sw.default ], [ -12, %sw.bb.cleanup_crit_edge ], [ 0, %do.end60.cleanup_crit_edge ], [ -12, %do.end84.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_find_server_by_uuid(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_cm_no_server_u(ptr noundef %call, ptr noundef %uuid) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_cm_no_server_u, i32 0, i32 1), ptr blockaddress(@trace_afs_cm_no_server_u, %do.body)) #10
          to label %if.end49 [label %do.body], !srcloc !202

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !190) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !200

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !213
  %call43 = tail call i32 @__traceiter_afs_cm_no_server_u(ptr noundef null, ptr noundef %call, ptr noundef %uuid) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !214
  %13 = tail call i32 @llvm.read_register.i32(metadata !190) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !190) #10
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
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !200

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_cm_no_server_u, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_cm_no_server_u, i32 0, i32 7), align 4
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
  %.b73 = load i1, ptr @trace_afs_cm_no_server_u.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_afs_cm_no_server_u.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 1259, ptr noundef nonnull @.str.28) #10
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !190) #10
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_cm_no_server_u(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_deliver_cb_probe(ptr noundef %call) #0 align 64 {
entry:
  %srx.i = alloca %struct.sockaddr_rxrpc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !200

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %comm, ptr noundef nonnull @.str.55) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %iov_len.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %5 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %iov_len.i, align 4
  %def_iter.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_discard(ptr noundef %def_iter.i, i32 noundef 0, i32 noundef 0) #10
  %call8 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end7.cleanup_crit_edge, label %if.end10

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %do.end7
  %state1.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 21
  %6 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp.i = icmp eq i32 %7, 5
  br i1 %cmp.i, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %debug_id.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 39
  %8 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug_id.i, align 4
  tail call fastcc void @trace_afs_io_error(i32 noundef %9) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %srx.i) #10
  %10 = call ptr @memset(ptr %srx.i, i32 255, i32 36)
  %net.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 7
  %11 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i, align 4
  %socket.i = getelementptr inbounds %struct.afs_net, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %socket.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %socket.i, align 4
  %rxcall.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 5
  %15 = ptrtoint ptr %rxcall.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rxcall.i, align 4
  call void @rxrpc_kernel_get_peer(ptr noundef %14, ptr noundef %16, ptr noundef nonnull %srx.i) #10
  %17 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net.i, align 4
  %call2.i = call ptr @afs_find_server(ptr noundef %18, ptr noundef nonnull %srx.i) #10
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @trace_afs_cm_no_server(ptr noundef %call, ptr noundef nonnull %srx.i) #10
  br label %afs_find_cm_server_by_peer.exit

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %server3.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 8
  %19 = ptrtoint ptr %server3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call2.i, ptr %server3.i, align 8
  br label %afs_find_cm_server_by_peer.exit

afs_find_cm_server_by_peer.exit:                  ; preds = %if.end.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %srx.i) #10
  br label %cleanup

cleanup:                                          ; preds = %afs_find_cm_server_by_peer.exit, %if.then12, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %afs_find_cm_server_by_peer.exit ], [ -5, %if.then12 ], [ %call8, %do.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @SRXAFSCB_Probe(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !200

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %comm, ptr noundef nonnull @.str.56) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  tail call void @afs_send_empty_reply(ptr noundef %add.ptr) #10
  tail call void @afs_put_call(ptr noundef %add.ptr) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %5 = load i32, ptr @afs_debug, align 4
  %and10 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.end8.do.end30_crit_edge, label %do.end21, !prof !200

do.end8.do.end30_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30

do.end21:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %6 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i32 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i32 to ptr
  %task24 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task24, align 8
  %comm25 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 101
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %comm25, ptr noundef nonnull @.str.56) #13
  br label %do.end30

do.end30:                                         ; preds = %do.end21, %do.end8.do.end30_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_deliver_cb_probe_uuid(ptr noundef %call) #0 align 64 {
entry:
  %srx.i = alloca %struct.sockaddr_rxrpc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !200

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !190) #10
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
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm, ptr noundef nonnull @.str.60, i32 noundef %conv) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %unmarshall8 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %7 = ptrtoint ptr %unmarshall8 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %unmarshall8, align 8
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %8, label %do.end7.sw.epilog85_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %do.end7.do.body17_crit_edge
  ]

do.end7.do.body17_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

do.end7.sw.epilog85_crit_edge:                    ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog85

sw.bb:                                            ; preds = %do.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 44) #15
  %buffer = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %buffer, align 4
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %sw.bb.cleanup_crit_edge, label %if.end14

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %iov_len.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %12 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 44, ptr %iov_len.i, align 4
  %13 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %13, align 8
  %iov_len2.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %iov_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 44, ptr %iov_len2.i.i, align 4
  %def_iter.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i, i32 noundef 0, ptr noundef %13, i32 noundef 1, i32 noundef 44) #10
  %16 = ptrtoint ptr %unmarshall8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %unmarshall8, align 8
  %inc = add i8 %17, 1
  store i8 %inc, ptr %unmarshall8, align 8
  br label %do.body17

do.body17:                                        ; preds = %if.end14, %do.end7.do.body17_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %18 = load i32, ptr @afs_debug, align 4
  %and18 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body17.do.end38_crit_edge, label %do.end29, !prof !200

do.body17.do.end38_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end38

do.end29:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %19 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i122 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i122 to ptr
  %task32 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task32, align 8
  %comm33 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 101
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %comm33) #13
  br label %do.end38

do.end38:                                         ; preds = %do.end29, %do.body17.do.end38_crit_edge
  %call39 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #10
  %23 = zext i32 %call39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %call39, label %sw.default [
    i32 0, label %do.body41
    i32 -11, label %do.end38.cleanup_crit_edge
  ]

do.end38.cleanup_crit_edge:                       ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.default:                                       ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body41:                                        ; preds = %do.end38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %24 = load i32, ptr @afs_debug, align 4
  %and42 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %do.body41.do.end62_crit_edge, label %do.end53, !prof !200

do.body41.do.end62_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end62

do.end53:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  %25 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i123 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i123 to ptr
  %task56 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task56 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task56, align 8
  %comm57 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 101
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %comm57) #13
  br label %do.end62

do.end62:                                         ; preds = %do.end53, %do.body41.do.end62_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3264, i32 noundef 16) #15
  %request = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 10
  %30 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i, ptr %request, align 8
  %tobool65.not = icmp eq ptr %call7.i, null
  br i1 %tobool65.not, label %do.end62.cleanup_crit_edge, label %if.end67

do.end62.cleanup_crit_edge:                       ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end67:                                         ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #12
  %buffer68 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %31 = ptrtoint ptr %buffer68 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buffer68, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %35 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %call7.i, align 8
  %arrayidx70 = getelementptr i32, ptr %32, i32 1
  %36 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx70, align 4
  %conv71 = trunc i32 %37 to i16
  %time_mid = getelementptr inbounds %struct.afs_uuid, ptr %call7.i, i32 0, i32 1
  %38 = ptrtoint ptr %time_mid to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv71, ptr %time_mid, align 4
  %arrayidx72 = getelementptr i32, ptr %32, i32 2
  %39 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx72, align 4
  %conv73 = trunc i32 %40 to i16
  %time_hi_and_version = getelementptr inbounds %struct.afs_uuid, ptr %call7.i, i32 0, i32 2
  %41 = ptrtoint ptr %time_hi_and_version to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv73, ptr %time_hi_and_version, align 2
  %arrayidx74 = getelementptr i32, ptr %32, i32 3
  %42 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx74, align 4
  %conv75 = trunc i32 %43 to i8
  %clock_seq_hi_and_reserved = getelementptr inbounds %struct.afs_uuid, ptr %call7.i, i32 0, i32 3
  %44 = ptrtoint ptr %clock_seq_hi_and_reserved to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv75, ptr %clock_seq_hi_and_reserved, align 8
  %arrayidx76 = getelementptr i32, ptr %32, i32 4
  %45 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx76, align 4
  %conv77 = trunc i32 %46 to i8
  %clock_seq_low = getelementptr inbounds %struct.afs_uuid, ptr %call7.i, i32 0, i32 4
  %47 = ptrtoint ptr %clock_seq_low to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv77, ptr %clock_seq_low, align 1
  %arrayidx79 = getelementptr i32, ptr %32, i32 5
  %48 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx79, align 4
  %conv80 = trunc i32 %49 to i8
  %arrayidx81 = getelementptr %struct.afs_uuid, ptr %call7.i, i32 0, i32 5, i32 0
  %50 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv80, ptr %arrayidx81, align 2
  %arrayidx79.1 = getelementptr i32, ptr %32, i32 6
  %51 = ptrtoint ptr %arrayidx79.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx79.1, align 4
  %conv80.1 = trunc i32 %52 to i8
  %arrayidx81.1 = getelementptr %struct.afs_uuid, ptr %call7.i, i32 0, i32 5, i32 1
  %53 = ptrtoint ptr %arrayidx81.1 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv80.1, ptr %arrayidx81.1, align 1
  %arrayidx79.2 = getelementptr i32, ptr %32, i32 7
  %54 = ptrtoint ptr %arrayidx79.2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx79.2, align 4
  %conv80.2 = trunc i32 %55 to i8
  %arrayidx81.2 = getelementptr %struct.afs_uuid, ptr %call7.i, i32 0, i32 5, i32 2
  %56 = ptrtoint ptr %arrayidx81.2 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv80.2, ptr %arrayidx81.2, align 4
  %arrayidx79.3 = getelementptr i32, ptr %32, i32 8
  %57 = ptrtoint ptr %arrayidx79.3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx79.3, align 4
  %conv80.3 = trunc i32 %58 to i8
  %arrayidx81.3 = getelementptr %struct.afs_uuid, ptr %call7.i, i32 0, i32 5, i32 3
  %59 = ptrtoint ptr %arrayidx81.3 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv80.3, ptr %arrayidx81.3, align 1
  %arrayidx79.4 = getelementptr i32, ptr %32, i32 9
  %60 = ptrtoint ptr %arrayidx79.4 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx79.4, align 4
  %conv80.4 = trunc i32 %61 to i8
  %arrayidx81.4 = getelementptr %struct.afs_uuid, ptr %call7.i, i32 0, i32 5, i32 4
  %62 = ptrtoint ptr %arrayidx81.4 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv80.4, ptr %arrayidx81.4, align 2
  %arrayidx79.5 = getelementptr i32, ptr %32, i32 10
  %63 = ptrtoint ptr %arrayidx79.5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx79.5, align 4
  %conv80.5 = trunc i32 %64 to i8
  %arrayidx81.5 = getelementptr %struct.afs_uuid, ptr %call7.i, i32 0, i32 5, i32 5
  %65 = ptrtoint ptr %arrayidx81.5 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv80.5, ptr %arrayidx81.5, align 1
  %66 = ptrtoint ptr %unmarshall8 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %unmarshall8, align 8
  %inc84 = add i8 %67, 1
  store i8 %inc84, ptr %unmarshall8, align 8
  br label %sw.epilog85

sw.epilog85:                                      ; preds = %if.end67, %do.end7.sw.epilog85_crit_edge
  %state1.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 21
  %68 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %state1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %69)
  %cmp.i = icmp eq i32 %69, 5
  br i1 %cmp.i, label %if.end89, label %if.then87

if.then87:                                        ; preds = %sw.epilog85
  call void @__sanitizer_cov_trace_pc() #12
  %debug_id.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 39
  %70 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %debug_id.i, align 4
  tail call fastcc void @trace_afs_io_error(i32 noundef %71) #10
  br label %cleanup

if.end89:                                         ; preds = %sw.epilog85
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %srx.i) #10
  %72 = call ptr @memset(ptr %srx.i, i32 255, i32 36)
  %net.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 7
  %73 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %net.i, align 4
  %socket.i = getelementptr inbounds %struct.afs_net, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %socket.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %socket.i, align 4
  %rxcall.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 5
  %77 = ptrtoint ptr %rxcall.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rxcall.i, align 4
  call void @rxrpc_kernel_get_peer(ptr noundef %76, ptr noundef %78, ptr noundef nonnull %srx.i) #10
  %79 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %net.i, align 4
  %call2.i = call ptr @afs_find_server(ptr noundef %80, ptr noundef nonnull %srx.i) #10
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @trace_afs_cm_no_server(ptr noundef %call, ptr noundef nonnull %srx.i) #10
  br label %afs_find_cm_server_by_peer.exit

if.end.i:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  %server3.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 8
  %81 = ptrtoint ptr %server3.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call2.i, ptr %server3.i, align 8
  br label %afs_find_cm_server_by_peer.exit

afs_find_cm_server_by_peer.exit:                  ; preds = %if.end.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %srx.i) #10
  br label %cleanup

cleanup:                                          ; preds = %afs_find_cm_server_by_peer.exit, %if.then87, %do.end62.cleanup_crit_edge, %sw.default, %do.end38.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %afs_find_cm_server_by_peer.exit ], [ -5, %if.then87 ], [ %call39, %sw.default ], [ -12, %sw.bb.cleanup_crit_edge ], [ 0, %do.end38.cleanup_crit_edge ], [ -12, %do.end62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @SRXAFSCB_ProbeUuid(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -104
  %request = getelementptr i8, ptr %work, i32 64
  %0 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !200

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %comm, ptr noundef nonnull @.str.65) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %net = getelementptr i8, ptr %work, i32 52
  %7 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net, align 4
  %uuid = getelementptr inbounds %struct.afs_net, ptr %8, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %1, ptr noundef dereferenceable(16) %uuid, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @afs_send_empty_reply(ptr noundef %add.ptr) #10
  br label %if.end11

if.else:                                          ; preds = %do.end8
  %9 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net, align 4
  %socket.i = getelementptr inbounds %struct.afs_net, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %socket.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %socket.i, align 4
  %rxcall.i = getelementptr i8, ptr %work, i32 44
  %13 = ptrtoint ptr %rxcall.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rxcall.i, align 4
  %call1.i = tail call zeroext i1 @rxrpc_kernel_abort_call(ptr noundef %12, ptr noundef %14, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.66) #10
  %state_lock.i.i = getelementptr i8, ptr %work, i32 140
  tail call void @_raw_spin_lock_bh(ptr noundef %state_lock.i.i) #10
  %state1.i.i = getelementptr i8, ptr %work, i32 136
  %15 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %16)
  %cmp.not.i.i = icmp eq i32 %16, 7
  br i1 %cmp.not.i.i, label %if.end9.critedge.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.else
  %abort_code.i.i = getelementptr i8, ptr %work, i32 188
  %17 = ptrtoint ptr %abort_code.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %abort_code.i.i, align 4
  %error2.i.i = getelementptr i8, ptr %work, i32 184
  %18 = ptrtoint ptr %error2.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %error2.i.i, align 8
  %19 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 7, ptr %state1.i.i, align 8
  tail call fastcc void @trace_afs_call_state(ptr noundef %add.ptr, i32 noundef %16) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock.i.i) #10
  tail call fastcc void @trace_afs_call_done(ptr noundef %add.ptr) #10
  %drop_ref.i.i = getelementptr i8, ptr %work, i32 210
  %20 = ptrtoint ptr %drop_ref.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %drop_ref.i.i, align 2, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool6.not.i.i = icmp eq i8 %21, 0
  br i1 %tobool6.not.i.i, label %if.then.i.i.if.end11_crit_edge, label %if.then7.i.i

if.then.i.i.if.end11_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then7.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @afs_put_call(ptr noundef %add.ptr) #10
  br label %if.end11

if.end9.critedge.i.i:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock.i.i) #10
  br label %if.end11

if.end11:                                         ; preds = %if.end9.critedge.i.i, %if.then7.i.i, %if.then.i.i.if.end11_crit_edge, %if.then10
  tail call void @afs_put_call(ptr noundef %add.ptr) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %22 = load i32, ptr @afs_debug, align 4
  %and13 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end11.do.end33_crit_edge, label %do.end24, !prof !200

if.end11.do.end33_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

do.end24:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %23 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i38 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i38 to ptr
  %task27 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task27, align 8
  %comm28 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 101
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %comm28, ptr noundef nonnull @.str.65) #13
  br label %do.end33

do.end33:                                         ; preds = %do.end24, %if.end11.do.end33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rxrpc_kernel_abort_call(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_call_state(ptr noundef %call, i32 noundef %from) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_call_state, i32 0, i32 1), ptr blockaddress(@trace_afs_call_state, %do.body)) #10
          to label %if.end49 [label %do.body], !srcloc !202

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !190) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !200

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !216
  %call43 = tail call i32 @__traceiter_afs_call_state(ptr noundef null, ptr noundef %call, i32 noundef %from, i32 noundef 7, i32 noundef 1, i32 noundef 0) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !217
  %13 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end49.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end49.cpu_online.exit14_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !200

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end49.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end70_crit_edge, label %if.then53

cpu_online.exit14.if.end70_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_call_state, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_call_state, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_afs_call_state.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_afs_call_state.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 1078, ptr noundef nonnull @.str.28) #10
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit14.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_call_done(ptr noundef %call) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_call_done, i32 0, i32 1), ptr blockaddress(@trace_afs_call_done, %do.body)) #10
          to label %if.end49 [label %do.body], !srcloc !202

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !190) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !200

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !218
  %call43 = tail call i32 @__traceiter_afs_call_done(ptr noundef null, ptr noundef %call) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !219
  %13 = tail call i32 @llvm.read_register.i32(metadata !190) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !190) #10
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
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !200

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_call_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_call_done, i32 0, i32 7), align 4
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
  %.b73 = load i1, ptr @trace_afs_call_done.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_afs_call_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 948, ptr noundef nonnull @.str.28) #10
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !190) #10
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
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_call_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_call_done(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_deliver_cb_tell_me_about_yourself(ptr noundef %call) #0 align 64 {
entry:
  %srx.i = alloca %struct.sockaddr_rxrpc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !200

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %comm, ptr noundef nonnull @.str.70) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %iov_len.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %5 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %iov_len.i, align 4
  %def_iter.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_discard(ptr noundef %def_iter.i, i32 noundef 0, i32 noundef 0) #10
  %call8 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end7.cleanup_crit_edge, label %if.end10

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %do.end7
  %state1.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 21
  %6 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp.i = icmp eq i32 %7, 5
  br i1 %cmp.i, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %debug_id.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 39
  %8 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug_id.i, align 4
  tail call fastcc void @trace_afs_io_error(i32 noundef %9) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %srx.i) #10
  %10 = call ptr @memset(ptr %srx.i, i32 255, i32 36)
  %net.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 7
  %11 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i, align 4
  %socket.i = getelementptr inbounds %struct.afs_net, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %socket.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %socket.i, align 4
  %rxcall.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 5
  %15 = ptrtoint ptr %rxcall.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rxcall.i, align 4
  call void @rxrpc_kernel_get_peer(ptr noundef %14, ptr noundef %16, ptr noundef nonnull %srx.i) #10
  %17 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net.i, align 4
  %call2.i = call ptr @afs_find_server(ptr noundef %18, ptr noundef nonnull %srx.i) #10
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @trace_afs_cm_no_server(ptr noundef %call, ptr noundef nonnull %srx.i) #10
  br label %afs_find_cm_server_by_peer.exit

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %server3.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 8
  %19 = ptrtoint ptr %server3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call2.i, ptr %server3.i, align 8
  br label %afs_find_cm_server_by_peer.exit

afs_find_cm_server_by_peer.exit:                  ; preds = %if.end.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %srx.i) #10
  br label %cleanup

cleanup:                                          ; preds = %afs_find_cm_server_by_peer.exit, %if.then12, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %afs_find_cm_server_by_peer.exit ], [ -5, %if.then12 ], [ %call8, %do.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @SRXAFSCB_TellMeAboutYourself(ptr noundef %work) #0 align 64 {
entry:
  %reply = alloca %struct.anon.171, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -104
  call void @llvm.lifetime.start.p0(i64 440, ptr nonnull %reply) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !200

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %comm, ptr noundef nonnull @.str.71) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %5 = call ptr @memset(ptr %reply, i32 0, i32 432)
  %net = getelementptr i8, ptr %work, i32 52
  %6 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net, align 4
  %uuid = getelementptr inbounds %struct.afs_net, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %uuid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %uuid, align 4
  %uuid9 = getelementptr inbounds %struct.anon.172, ptr %reply, i32 0, i32 1
  %10 = ptrtoint ptr %uuid9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %uuid9, align 4
  %time_mid = getelementptr inbounds %struct.afs_net, ptr %7, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %time_mid to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %time_mid, align 4
  %conv = zext i16 %12 to i32
  %arrayidx14 = getelementptr inbounds %struct.anon.172, ptr %reply, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %arrayidx14, align 4
  %time_hi_and_version = getelementptr inbounds %struct.afs_net, ptr %7, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %time_hi_and_version to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %time_hi_and_version, align 2
  %conv17 = zext i16 %15 to i32
  %arrayidx20 = getelementptr inbounds %struct.anon.172, ptr %reply, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv17, ptr %arrayidx20, align 4
  %clock_seq_hi_and_reserved = getelementptr inbounds %struct.afs_net, ptr %7, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %clock_seq_hi_and_reserved to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %clock_seq_hi_and_reserved, align 4
  %conv23 = sext i8 %18 to i32
  %arrayidx26 = getelementptr inbounds %struct.anon.172, ptr %reply, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv23, ptr %arrayidx26, align 4
  %clock_seq_low = getelementptr inbounds %struct.afs_net, ptr %7, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %clock_seq_low to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %clock_seq_low, align 1
  %conv29 = sext i8 %21 to i32
  %arrayidx32 = getelementptr inbounds %struct.anon.172, ptr %reply, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv29, ptr %arrayidx32, align 4
  %arrayidx36 = getelementptr %struct.afs_net, ptr %7, i32 0, i32 1, i32 5, i32 0
  %23 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx36, align 1
  %conv37 = sext i8 %24 to i32
  %arrayidx40 = getelementptr inbounds %struct.anon.172, ptr %reply, i32 0, i32 1, i32 5
  %25 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv37, ptr %arrayidx40, align 4
  %arrayidx36.1 = getelementptr %struct.afs_net, ptr %7, i32 0, i32 1, i32 5, i32 1
  %26 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx36.1, align 1
  %conv37.1 = sext i8 %27 to i32
  %arrayidx40.1 = getelementptr inbounds %struct.anon.172, ptr %reply, i32 0, i32 1, i32 6
  %28 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv37.1, ptr %arrayidx40.1, align 4
  %arrayidx36.2 = getelementptr %struct.afs_net, ptr %7, i32 0, i32 1, i32 5, i32 2
  %29 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx36.2, align 1
  %conv37.2 = sext i8 %30 to i32
  %arrayidx40.2 = getelementptr inbounds %struct.anon.172, ptr %reply, i32 0, i32 1, i32 7
  %31 = ptrtoint ptr %arrayidx40.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv37.2, ptr %arrayidx40.2, align 4
  %arrayidx36.3 = getelementptr %struct.afs_net, ptr %7, i32 0, i32 1, i32 5, i32 3
  %32 = ptrtoint ptr %arrayidx36.3 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx36.3, align 1
  %conv37.3 = sext i8 %33 to i32
  %arrayidx40.3 = getelementptr inbounds %struct.anon.172, ptr %reply, i32 0, i32 1, i32 8
  %34 = ptrtoint ptr %arrayidx40.3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv37.3, ptr %arrayidx40.3, align 4
  %arrayidx36.4 = getelementptr %struct.afs_net, ptr %7, i32 0, i32 1, i32 5, i32 4
  %35 = ptrtoint ptr %arrayidx36.4 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx36.4, align 1
  %conv37.4 = sext i8 %36 to i32
  %arrayidx40.4 = getelementptr inbounds %struct.anon.172, ptr %reply, i32 0, i32 1, i32 9
  %37 = ptrtoint ptr %arrayidx40.4 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv37.4, ptr %arrayidx40.4, align 4
  %arrayidx36.5 = getelementptr %struct.afs_net, ptr %7, i32 0, i32 1, i32 5, i32 5
  %38 = ptrtoint ptr %arrayidx36.5 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx36.5, align 1
  %conv37.5 = sext i8 %39 to i32
  %arrayidx40.5 = getelementptr inbounds %struct.anon.172, ptr %reply, i32 0, i32 1, i32 10
  %40 = ptrtoint ptr %arrayidx40.5 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv37.5, ptr %arrayidx40.5, align 4
  %cap = getelementptr inbounds %struct.anon.171, ptr %reply, i32 0, i32 1
  %41 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %cap, align 4
  %caps = getelementptr inbounds %struct.anon.171, ptr %reply, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %caps, align 4
  call void @afs_send_simple_reply(ptr noundef %add.ptr, ptr noundef nonnull %reply, i32 noundef 440) #10
  call void @afs_put_call(ptr noundef %add.ptr) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %43 = load i32, ptr @afs_debug, align 4
  %and44 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.end8.do.end64_crit_edge, label %do.end55, !prof !200

do.end8.do.end64_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end64

do.end55:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %44 = call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i75 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i75 to ptr
  %task58 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task58 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task58, align 8
  %comm59 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 101
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %comm59, ptr noundef nonnull @.str.71) #13
  br label %do.end64

do.end64:                                         ; preds = %do.end55, %do.end8.do.end64_crit_edge
  call void @llvm.lifetime.end.p0(i64 440, ptr nonnull %reply) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_send_simple_reply(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_deliver_yfs_cb_callback(ptr noundef %call) #0 align 64 {
entry:
  %srx.i = alloca %struct.sockaddr_rxrpc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !200

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !190) #10
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
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm, ptr noundef nonnull @.str.75, i32 noundef %conv) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %unmarshall8 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 29
  %7 = ptrtoint ptr %unmarshall8 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %unmarshall8, align 8
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %8, label %do.end7.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %do.end7.do.body12_crit_edge
    i8 2, label %do.end7.do.body78_crit_edge
  ]

do.end7.do.body78_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body78

do.end7.do.body12_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12

do.end7.sw.epilog_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %iov_len.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %10 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp.i = getelementptr inbounds %struct.anon.169, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %iov_len.i, align 4
  %12 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %tmp.i, ptr %12, align 8
  %iov_len2.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %iov_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %iov_len2.i.i, align 4
  %def_iter.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i, i32 noundef 0, ptr noundef %12, i32 noundef 1, i32 noundef 4) #10
  %15 = ptrtoint ptr %unmarshall8 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %unmarshall8, align 8
  %inc = add i8 %16, 1
  store i8 %inc, ptr %unmarshall8, align 8
  br label %do.body12

do.body12:                                        ; preds = %sw.bb, %do.end7.do.body12_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %17 = load i32, ptr @afs_debug, align 4
  %and13 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body12.do.end33_crit_edge, label %do.end24, !prof !200

do.body12.do.end33_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

do.end24:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  %18 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i203 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i203 to ptr
  %task27 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task27, align 8
  %comm28 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 101
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm28) #13
  br label %do.end33

do.end33:                                         ; preds = %do.end24, %do.body12.do.end33_crit_edge
  %call34 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp = icmp slt i32 %call34, 0
  br i1 %cmp, label %do.end33.cleanup_crit_edge, label %if.end37

do.end33.cleanup_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end37:                                         ; preds = %do.end33
  %22 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp38 = getelementptr inbounds %struct.anon.169, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %tmp38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tmp38, align 4
  %count = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %25 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %count, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %26 = load i32, ptr @afs_debug, align 4
  %and40 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end37.do.end61_crit_edge, label %do.end51, !prof !200

if.end37.do.end61_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end61

do.end51:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %27 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i204 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i204 to ptr
  %task54 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task54 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task54, align 8
  %comm55 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 101
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %comm55, i32 noundef %24) #13
  %31 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr = load i32, ptr %count, align 4
  br label %do.end61

do.end61:                                         ; preds = %do.end51, %if.end37.do.end61_crit_edge
  %32 = phi i32 [ %.pr, %do.end51 ], [ %24, %if.end37.do.end61_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %32)
  %cmp63 = icmp ugt i32 %32, 1024
  br i1 %cmp63, label %if.then65, label %if.end67

if.then65:                                        ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #12
  %call66 = tail call i32 @afs_protocol_error(ptr noundef %call, i32 noundef 2) #10
  br label %cleanup

if.end67:                                         ; preds = %do.end61
  %33 = mul nuw nsw i32 %32, 24
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %33, i32 noundef 3264) #14
  %buffer = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %34 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call9.i, ptr %buffer, align 4
  %tobool72.not = icmp eq ptr %call9.i, null
  br i1 %tobool72.not, label %if.end67.cleanup_crit_edge, label %if.end74

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end74:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %iov_len.i205 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %35 = ptrtoint ptr %iov_len.i205 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %33, ptr %iov_len.i205, align 4
  %36 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call9.i, ptr %36, align 8
  %iov_len2.i.i206 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %iov_len2.i.i206 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %33, ptr %iov_len2.i.i206, align 4
  %def_iter.i.i207 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i207, i32 noundef 0, ptr noundef %36, i32 noundef 1, i32 noundef %33) #10
  %39 = ptrtoint ptr %unmarshall8 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %unmarshall8, align 8
  %inc76 = add i8 %40, 1
  store i8 %inc76, ptr %unmarshall8, align 8
  br label %do.body78

do.body78:                                        ; preds = %if.end74, %do.end7.do.body78_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %41 = load i32, ptr @afs_debug, align 4
  %and79 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %do.body78.do.end99_crit_edge, label %do.end90, !prof !200

do.body78.do.end99_crit_edge:                     ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end99

do.end90:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #12
  %42 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i208 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i208 to ptr
  %task93 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task93 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task93, align 8
  %comm94 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 101
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %comm94) #13
  br label %do.end99

do.end99:                                         ; preds = %do.end90, %do.body78.do.end99_crit_edge
  %call100 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %do.end99.cleanup_crit_edge, label %do.body105

do.end99.cleanup_crit_edge:                       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body105:                                       ; preds = %do.end99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %46 = load i32, ptr @afs_debug, align 4
  %and106 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %do.body105.do.end126_crit_edge, label %do.end117, !prof !200

do.body105.do.end126_crit_edge:                   ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end126

do.end117:                                        ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #12
  %47 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i209 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i209 to ptr
  %task120 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task120 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task120, align 8
  %comm121 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 101
  %call123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %comm121) #13
  br label %do.end126

do.end126:                                        ; preds = %do.end117, %do.body105.do.end126_crit_edge
  %count127 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 41
  %51 = ptrtoint ptr %count127 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %count127, align 4
  %53 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %52, i32 24) #10
  %54 = extractvalue { i32, i1 } %53, 1
  br i1 %54, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !201

kcalloc.exit.thread:                              ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #12
  %request227 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 10
  %55 = ptrtoint ptr %request227 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %request227, align 8
  br label %cleanup

if.end7.i.i:                                      ; preds = %do.end126
  %56 = extractvalue { i32, i1 } %53, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %56, i32 noundef 3520) #14
  %request = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 10
  %57 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call8.i.i, ptr %request, align 8
  %tobool130.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool130.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end132

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end132:                                        ; preds = %if.end7.i.i
  %58 = ptrtoint ptr %count127 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %count127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp136234 = icmp sgt i32 %59, 0
  br i1 %cmp136234, label %for.body.preheader, label %if.end132.for.end_crit_edge

if.end132.for.end_crit_edge:                      ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %if.end132
  %buffer134 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %60 = ptrtoint ptr %buffer134 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buffer134, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %cb.0237 = phi ptr [ %incdec.ptr147, %for.body.for.body_crit_edge ], [ %call8.i.i, %for.body.preheader ]
  %bp.0236 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %61, %for.body.preheader ]
  %loop.0235 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %59, %for.body.preheader ]
  %62 = ptrtoint ptr %bp.0236 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %.unpack = load i32, ptr %bp.0236, align 1
  %.elt198 = getelementptr inbounds [2 x i32], ptr %bp.0236, i32 0, i32 1
  %63 = ptrtoint ptr %.elt198 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %.unpack199 = load i32, ptr %.elt198, align 1
  %conv.i = zext i32 %.unpack to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %conv1.i = zext i32 %.unpack199 to i64
  %or.i = or i64 %shl.i, %conv1.i
  %64 = ptrtoint ptr %cb.0237 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %or.i, ptr %cb.0237, align 8
  %vnode = getelementptr inbounds %struct.yfs_xdr_YFSFid, ptr %bp.0236, i32 0, i32 1
  %65 = ptrtoint ptr %vnode to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %.unpack200 = load i32, ptr %vnode, align 1
  %.elt201 = getelementptr inbounds %struct.yfs_xdr_YFSFid, ptr %bp.0236, i32 0, i32 1, i32 0, i32 1
  %66 = ptrtoint ptr %.elt201 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %.unpack202 = load i32, ptr %.elt201, align 1
  %conv.i211 = zext i32 %.unpack200 to i64
  %shl.i212 = shl nuw i64 %conv.i211, 32
  %conv1.i213 = zext i32 %.unpack202 to i64
  %or.i214 = or i64 %shl.i212, %conv1.i213
  %vnode141 = getelementptr inbounds %struct.afs_fid, ptr %cb.0237, i32 0, i32 1
  %67 = ptrtoint ptr %vnode141 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %or.i214, ptr %vnode141, align 8
  %hi = getelementptr inbounds %struct.yfs_xdr_YFSFid, ptr %bp.0236, i32 0, i32 1, i32 1
  %68 = ptrtoint ptr %hi to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %hi, align 1
  %vnode_hi = getelementptr inbounds %struct.afs_fid, ptr %cb.0237, i32 0, i32 2
  %70 = ptrtoint ptr %vnode_hi to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %vnode_hi, align 8
  %unique = getelementptr inbounds %struct.yfs_xdr_YFSFid, ptr %bp.0236, i32 0, i32 1, i32 2
  %71 = ptrtoint ptr %unique to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %unique, align 1
  %unique146 = getelementptr inbounds %struct.afs_fid, ptr %cb.0237, i32 0, i32 3
  %73 = ptrtoint ptr %unique146 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %unique146, align 4
  %incdec.ptr = getelementptr %struct.yfs_xdr_YFSFid, ptr %bp.0236, i32 1
  %dec = add nsw i32 %loop.0235, -1
  %incdec.ptr147 = getelementptr %struct.afs_callback_break, ptr %cb.0237, i32 1
  %cmp136 = icmp ugt i32 %loop.0235, 1
  br i1 %cmp136, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end132.for.end_crit_edge
  %iov_len.i215 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %74 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp.i216 = getelementptr inbounds %struct.anon.169, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %iov_len.i215 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 4, ptr %iov_len.i215, align 4
  %76 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %tmp.i216, ptr %76, align 8
  %iov_len2.i.i217 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 1
  %78 = ptrtoint ptr %iov_len2.i.i217 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 4, ptr %iov_len2.i.i217, align 4
  %def_iter.i.i218 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i218, i32 noundef 0, ptr noundef %76, i32 noundef 1, i32 noundef 4) #10
  %79 = ptrtoint ptr %unmarshall8 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %unmarshall8, align 8
  %inc149 = add i8 %80, 1
  store i8 %inc149, ptr %unmarshall8, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %do.end7.sw.epilog_crit_edge
  %state1.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 21
  %81 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %state1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %82)
  %cmp.i219 = icmp eq i32 %82, 5
  br i1 %cmp.i219, label %if.end153, label %if.then151

if.then151:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %debug_id.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 39
  %83 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %debug_id.i, align 4
  tail call fastcc void @trace_afs_io_error(i32 noundef %84) #10
  br label %cleanup

if.end153:                                        ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %srx.i) #10
  %85 = call ptr @memset(ptr %srx.i, i32 255, i32 36)
  %net.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 7
  %86 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %net.i, align 4
  %socket.i = getelementptr inbounds %struct.afs_net, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %socket.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %socket.i, align 4
  %rxcall.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 5
  %90 = ptrtoint ptr %rxcall.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rxcall.i, align 4
  call void @rxrpc_kernel_get_peer(ptr noundef %89, ptr noundef %91, ptr noundef nonnull %srx.i) #10
  %92 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %net.i, align 4
  %call2.i = call ptr @afs_find_server(ptr noundef %93, ptr noundef nonnull %srx.i) #10
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.then.i220, label %if.end.i221

if.then.i220:                                     ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @trace_afs_cm_no_server(ptr noundef %call, ptr noundef nonnull %srx.i) #10
  br label %afs_find_cm_server_by_peer.exit

if.end.i221:                                      ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  %server3.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 8
  %94 = ptrtoint ptr %server3.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call2.i, ptr %server3.i, align 8
  br label %afs_find_cm_server_by_peer.exit

afs_find_cm_server_by_peer.exit:                  ; preds = %if.end.i221, %if.then.i220
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %srx.i) #10
  br label %cleanup

cleanup:                                          ; preds = %afs_find_cm_server_by_peer.exit, %if.then151, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread, %do.end99.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %if.then65, %do.end33.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %afs_find_cm_server_by_peer.exit ], [ -5, %if.then151 ], [ %call66, %if.then65 ], [ %call34, %do.end33.cleanup_crit_edge ], [ -12, %if.end67.cleanup_crit_edge ], [ %call100, %do.end99.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind readonly }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !68, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !84, !86, !88, !89, !90, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !110, !111, !113, !115, !117, !118, !119, !121, !122, !123, !125, !126, !128, !130, !132, !133, !134, !136, !137, !139, !140, !142, !143, !144, !146, !148, !149, !151, !152, !154, !155, !157, !159, !161, !162, !163, !165, !166, !167, !169, !170, !172, !174, !176, !177, !178, !180, !181, !183, !184, !186, !187, !189}
!llvm.named.register.sp = !{!190}
!llvm.module.flags = !{!191, !192, !193, !194, !195, !196, !197, !198}
!llvm.ident = !{!199}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/afs/cmservice.c", i32 108, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @afs_cm_incoming_call._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @afs_cm_incoming_call._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/afs/cmservice.c", i32 36, i32 11}
!8 = !{ptr @afs_SRXCBCallBack, !9, !"afs_SRXCBCallBack", i1 false, i1 false}
!9 = !{!"../fs/afs/cmservice.c", i32 35, i32 35}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/afs/cmservice.c", i32 236, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @afs_deliver_cb_callback._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @afs_deliver_cb_callback._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/afs/cmservice.c", i32 246, i32 3}
!17 = !{ptr @afs_deliver_cb_callback._entry.6, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @afs_deliver_cb_callback._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/afs/cmservice.c", i32 252, i32 3}
!21 = !{ptr @afs_deliver_cb_callback._entry.9, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @afs_deliver_cb_callback._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/afs/cmservice.c", i32 265, i32 3}
!25 = !{ptr @afs_deliver_cb_callback._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @afs_deliver_cb_callback._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/afs/cmservice.c", i32 270, i32 3}
!29 = !{ptr @afs_deliver_cb_callback._entry.15, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @afs_deliver_cb_callback._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/afs/cmservice.c", i32 291, i32 3}
!33 = !{ptr @afs_deliver_cb_callback._entry.18, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @afs_deliver_cb_callback._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/afs/cmservice.c", i32 297, i32 3}
!37 = !{ptr @afs_deliver_cb_callback._entry.21, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @afs_deliver_cb_callback._entry_ptr.23, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/afs/cmservice.c", i32 306, i32 3}
!41 = !{ptr @afs_deliver_cb_callback._entry.24, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @afs_deliver_cb_callback._entry_ptr.26, !40, !"_entry_ptr", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/trace/events/afs.h", i32 1174, i32 1}
!45 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!47 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!50 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/trace/events/afs.h", i32 1219, i32 1}
!53 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/afs/cmservice.c", i32 208, i32 2}
!56 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @SRXAFSCB_CallBack._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @SRXAFSCB_CallBack._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/afs/cmservice.c", i32 224, i32 2}
!61 = !{ptr @SRXAFSCB_CallBack._entry.32, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @SRXAFSCB_CallBack._entry_ptr.34, !60, !"_entry_ptr", i1 false, i1 false}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../include/trace/events/afs.h", i32 1435, i32 1}
!65 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/afs/cmservice.c", i32 46, i32 11}
!68 = !{ptr @afs_SRXCBInitCallBackState, !69, !"afs_SRXCBInitCallBackState", i1 false, i1 false}
!69 = !{!"../fs/afs/cmservice.c", i32 45, i32 35}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/afs/cmservice.c", i32 351, i32 2}
!72 = !{ptr @afs_deliver_cb_init_call_back_state._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @afs_deliver_cb_init_call_back_state._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/afs/cmservice.c", i32 335, i32 2}
!76 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @SRXAFSCB_InitCallBackState._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @SRXAFSCB_InitCallBackState._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @SRXAFSCB_InitCallBackState._entry.39, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../fs/afs/cmservice.c", i32 341, i32 2}
!81 = !{ptr @SRXAFSCB_InitCallBackState._entry_ptr.40, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/afs/cmservice.c", i32 56, i32 11}
!84 = !{ptr @afs_SRXCBInitCallBackState3, !85, !"afs_SRXCBInitCallBackState3", i1 false, i1 false}
!85 = !{!"../fs/afs/cmservice.c", i32 55, i32 35}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/afs/cmservice.c", i32 373, i32 2}
!88 = !{ptr @afs_deliver_cb_init_call_back_state3._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @afs_deliver_cb_init_call_back_state3._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @afs_deliver_cb_init_call_back_state3._entry.43, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../fs/afs/cmservice.c", i32 375, i32 2}
!92 = !{ptr @afs_deliver_cb_init_call_back_state3._entry_ptr.44, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/afs/cmservice.c", i32 387, i32 3}
!95 = !{ptr @afs_deliver_cb_init_call_back_state3._entry.45, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @afs_deliver_cb_init_call_back_state3._entry_ptr.47, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/afs/cmservice.c", i32 395, i32 3}
!99 = !{ptr @afs_deliver_cb_init_call_back_state3._entry.48, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @afs_deliver_cb_init_call_back_state3._entry_ptr.50, !98, !"_entry_ptr", i1 false, i1 false}
!101 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!102 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!103 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!105 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!106 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!107 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!108 = distinct !{null, !109, !"__already_done", i1 false, i1 false}
!109 = !{!"../include/trace/events/afs.h", i32 1240, i32 1}
!110 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/afs/cmservice.c", i32 66, i32 11}
!113 = !{ptr @afs_SRXCBProbe, !114, !"afs_SRXCBProbe", i1 false, i1 false}
!114 = !{!"../fs/afs/cmservice.c", i32 65, i32 35}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/afs/cmservice.c", i32 446, i32 2}
!117 = !{ptr @afs_deliver_cb_probe._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @afs_deliver_cb_probe._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/afs/cmservice.c", i32 433, i32 2}
!121 = !{ptr @SRXAFSCB_Probe._entry, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @SRXAFSCB_Probe._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @SRXAFSCB_Probe._entry.57, !124, !"_entry", i1 false, i1 false}
!124 = !{!"../fs/afs/cmservice.c", i32 436, i32 2}
!125 = !{ptr @SRXAFSCB_Probe._entry_ptr.58, !124, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/afs/cmservice.c", i32 76, i32 11}
!128 = !{ptr @afs_SRXCBProbeUuid, !129, !"afs_SRXCBProbeUuid", i1 false, i1 false}
!129 = !{!"../fs/afs/cmservice.c", i32 75, i32 35}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/afs/cmservice.c", i32 488, i32 2}
!132 = !{ptr @afs_deliver_cb_probe_uuid._entry, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @afs_deliver_cb_probe_uuid._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @afs_deliver_cb_probe_uuid._entry.61, !135, !"_entry", i1 false, i1 false}
!135 = !{!"../fs/afs/cmservice.c", i32 500, i32 3}
!136 = !{ptr @afs_deliver_cb_probe_uuid._entry_ptr.62, !135, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @afs_deliver_cb_probe_uuid._entry.63, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../fs/afs/cmservice.c", i32 508, i32 3}
!139 = !{ptr @afs_deliver_cb_probe_uuid._entry_ptr.64, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/afs/cmservice.c", i32 467, i32 2}
!142 = !{ptr @SRXAFSCB_ProbeUuid._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @SRXAFSCB_ProbeUuid._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/afs/cmservice.c", i32 472, i32 38}
!146 = !{ptr @SRXAFSCB_ProbeUuid._entry.67, !147, !"_entry", i1 false, i1 false}
!147 = !{!"../fs/afs/cmservice.c", i32 475, i32 2}
!148 = !{ptr @SRXAFSCB_ProbeUuid._entry_ptr.68, !147, !"_entry_ptr", i1 false, i1 false}
!149 = distinct !{null, !150, !"__already_done", i1 false, i1 false}
!150 = !{!"../include/trace/events/afs.h", i32 1050, i32 1}
!151 = distinct !{null, !150, !"__warned", i1 false, i1 false}
!152 = distinct !{null, !153, !"__already_done", i1 false, i1 false}
!153 = !{!"../include/trace/events/afs.h", i32 924, i32 1}
!154 = distinct !{null, !153, !"__warned", i1 false, i1 false}
!155 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../fs/afs/cmservice.c", i32 86, i32 11}
!157 = !{ptr @afs_SRXCBTellMeAboutYourself, !158, !"afs_SRXCBTellMeAboutYourself", i1 false, i1 false}
!158 = !{!"../fs/afs/cmservice.c", i32 85, i32 35}
!159 = !{ptr @.str.70, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/afs/cmservice.c", i32 584, i32 2}
!161 = !{ptr @afs_deliver_cb_tell_me_about_yourself._entry, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @afs_deliver_cb_tell_me_about_yourself._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.71, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/afs/cmservice.c", i32 558, i32 2}
!165 = !{ptr @SRXAFSCB_TellMeAboutYourself._entry, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @SRXAFSCB_TellMeAboutYourself._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @SRXAFSCB_TellMeAboutYourself._entry.72, !168, !"_entry", i1 false, i1 false}
!168 = !{!"../fs/afs/cmservice.c", i32 574, i32 2}
!169 = !{ptr @SRXAFSCB_TellMeAboutYourself._entry_ptr.73, !168, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.74, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/afs/cmservice.c", i32 96, i32 11}
!172 = !{ptr @afs_SRXYFSCB_CallBack, !173, !"afs_SRXYFSCB_CallBack", i1 false, i1 false}
!173 = !{!"../fs/afs/cmservice.c", i32 95, i32 35}
!174 = !{ptr @.str.75, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/afs/cmservice.c", i32 606, i32 2}
!176 = !{ptr @afs_deliver_yfs_cb_callback._entry, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @afs_deliver_yfs_cb_callback._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @afs_deliver_yfs_cb_callback._entry.76, !179, !"_entry", i1 false, i1 false}
!179 = !{!"../fs/afs/cmservice.c", i32 616, i32 3}
!180 = !{ptr @afs_deliver_yfs_cb_callback._entry_ptr.77, !179, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @afs_deliver_yfs_cb_callback._entry.78, !182, !"_entry", i1 false, i1 false}
!182 = !{!"../fs/afs/cmservice.c", i32 622, i32 3}
!183 = !{ptr @afs_deliver_yfs_cb_callback._entry_ptr.79, !182, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @afs_deliver_yfs_cb_callback._entry.80, !185, !"_entry", i1 false, i1 false}
!185 = !{!"../fs/afs/cmservice.c", i32 635, i32 3}
!186 = !{ptr @afs_deliver_yfs_cb_callback._entry_ptr.81, !185, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @afs_deliver_yfs_cb_callback._entry.82, !188, !"_entry", i1 false, i1 false}
!188 = !{!"../fs/afs/cmservice.c", i32 640, i32 3}
!189 = !{ptr @afs_deliver_yfs_cb_callback._entry_ptr.83, !188, !"_entry_ptr", i1 false, i1 false}
!190 = !{!"sp"}
!191 = !{i32 1, !"wchar_size", i32 2}
!192 = !{i32 1, !"min_enum_size", i32 4}
!193 = !{i32 8, !"branch-target-enforcement", i32 0}
!194 = !{i32 8, !"sign-return-address", i32 0}
!195 = !{i32 8, !"sign-return-address-all", i32 0}
!196 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!197 = !{i32 7, !"uwtable", i32 1}
!198 = !{i32 7, !"frame-pointer", i32 2}
!199 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!200 = !{!"branch_weights", i32 2000, i32 1}
!201 = !{!"branch_weights", i32 1, i32 2000}
!202 = !{i64 2148967473, i64 2148967478, i64 2148967491, i64 2148967535, i64 2148967569, i64 2148967590}
!203 = !{i64 2157535587}
!204 = !{i64 2157535810}
!205 = !{i64 2149378814}
!206 = !{i64 2149379850}
!207 = !{i64 2157568945}
!208 = !{i64 2157569158}
!209 = !{i64 2157727382}
!210 = !{i64 2157727619}
!211 = !{i64 2149370255}
!212 = !{i64 2149370521}
!213 = !{i64 2157589637}
!214 = !{i64 2157589856}
!215 = !{i8 0, i8 2}
!216 = !{i64 2157461143}
!217 = !{i64 2157461400}
!218 = !{i64 2157372678}
!219 = !{i64 2157372875}
