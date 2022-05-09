; ModuleID = '/llk/IR_all_yes/net/9p/trans_fd.c_pt.bc'
source_filename = "../net/9p/trans_fd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.p9_trans_module = type { %struct.list_head, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.match_token = type { i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.p9_client = type { %struct.spinlock, i32, i8, ptr, i32, ptr, ptr, %union.anon.150, %struct.idr, %struct.idr, [65 x i8] }
%union.anon.150 = type { %struct.anon.151 }
%struct.anon.151 = type { i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.p9_trans_fd = type { ptr, ptr, %struct.p9_conn }
%struct.p9_conn = type { %struct.list_head, ptr, i32, %struct.list_head, %struct.list_head, ptr, ptr, [7 x i8], %struct.p9_fcall, i32, i32, ptr, %struct.list_head, [2 x %struct.p9_poll_wait], %struct.poll_table_struct, %struct.work_struct, %struct.work_struct, i32 }
%struct.p9_fcall = type { i32, i8, i16, i32, i32, ptr, ptr }
%struct.p9_poll_wait = type { ptr, %struct.wait_queue_entry, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.poll_table_struct = type { ptr, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.p9_fd_opts = type { i32, i32, i16, i8 }
%struct.anon.152 = type { i16, i8 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.133, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.133 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.p9_req_t = type { i32, i32, %struct.kref, %struct.wait_queue_head, %struct.p9_fcall, %struct.p9_fcall, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.substring_t = type { ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.80 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.81 = type { ptr }
%union.anon.82 = type { ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.sockaddr_un = type { i16, [108 x i8] }

@__UNIQUE_ID_alias483 = internal constant [22 x i8] c"9pnet_fd.alias=9p-tcp\00", section ".modinfo", align 1
@__UNIQUE_ID_alias484 = internal constant [23 x i8] c"9pnet_fd.alias=9p-unix\00", section ".modinfo", align 1
@__UNIQUE_ID_alias485 = internal constant [21 x i8] c"9pnet_fd.alias=9p-fd\00", section ".modinfo", align 1
@p9_poll_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @p9_poll_work, i64 4), ptr getelementptr (i8, ptr @p9_poll_work, i64 4) }, ptr @p9_poll_workfn, %struct.lockdep_map { ptr @p9_poll_work, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@p9_tcp_trans = internal global { %struct.p9_trans_module, [44 x i8] } { %struct.p9_trans_module { %struct.list_head zeroinitializer, ptr @.str.11, i32 1048576, i32 0, ptr null, ptr @p9_fd_create_tcp, ptr @p9_fd_close, ptr @p9_fd_request, ptr @p9_fd_cancel, ptr @p9_fd_cancelled, ptr null, ptr @p9_fd_show_options }, [44 x i8] zeroinitializer }, align 32
@p9_unix_trans = internal global { %struct.p9_trans_module, [44 x i8] } { %struct.p9_trans_module { %struct.list_head zeroinitializer, ptr @.str.59, i32 1048576, i32 0, ptr null, ptr @p9_fd_create_unix, ptr @p9_fd_close, ptr @p9_fd_request, ptr @p9_fd_cancel, ptr @p9_fd_cancelled, ptr null, ptr @p9_fd_show_options }, [44 x i8] zeroinitializer }, align 32
@p9_fd_trans = internal global { %struct.p9_trans_module, [44 x i8] } { %struct.p9_trans_module { %struct.list_head zeroinitializer, ptr @.str.67, i32 1048576, i32 0, ptr null, ptr @p9_fd_create, ptr @p9_fd_close, ptr @p9_fd_request, ptr @p9_fd_cancel, ptr @p9_fd_cancelled, ptr null, ptr @p9_fd_show_options }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_9pnet_fd__486_1172_p9_trans_fd_init6 = internal global ptr @p9_trans_fd_init, section ".initcall6.init", align 4
@__exitcall_p9_trans_fd_exit = internal global ptr @p9_trans_fd_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author487 = internal constant [55 x i8] c"9pnet_fd.author=Eric Van Hensbergen <ericvh@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description488 = internal constant [53 x i8] c"9pnet_fd.description=Filedescriptor Transport for 9P\00", section ".modinfo", align 1
@__UNIQUE_ID_file489 = internal constant [30 x i8] c"9pnet_fd.file=net/9p/9pnet_fd\00", section ".modinfo", align 1
@__UNIQUE_ID_license490 = internal constant [21 x i8] c"9pnet_fd.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p9_poll_work\00", [19 x i8] zeroinitializer }, align 32
@__func__.p9_poll_workfn = private unnamed_addr constant [15 x i8] c"p9_poll_workfn\00", align 1
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"start %p\0A\00", [22 x i8] zeroinitializer }, align 32
@p9_poll_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@p9_poll_pending_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @p9_poll_pending_list, ptr @p9_poll_pending_list }, [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"finish\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p9_poll_lock\00", [19 x i8] zeroinitializer }, align 32
@__func__.p9_poll_mux = private unnamed_addr constant [12 x i8] c"p9_poll_mux\00", align 1
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error mux %p err %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mux %p can read\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sched read work %p\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mux %p can write\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sched write work %p\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.p9_conn_cancel = private unnamed_addr constant [15 x i8] c"p9_conn_cancel\00", align 1
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mux %p err %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"call back req %p\0A\00", [46 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tcp\00", [28 x i8] zeroinitializer }, align 32
@p9_fd_create_tcp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\0139pnet_fd: %s (%d): problem creating socket\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"p9_fd_create_tcp\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/9p/trans_fd.c\00", [46 x i8] zeroinitializer }, align 32
@p9_fd_create_tcp._entry_ptr = internal global ptr @p9_fd_create_tcp._entry, section ".printk_index", align 4
@p9_fd_create_tcp._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.14, i32 998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\0139pnet_fd: %s (%d): problem binding to privport\0A\00", [46 x i8] zeroinitializer }, align 32
@p9_fd_create_tcp._entry_ptr.17 = internal global ptr @p9_fd_create_tcp._entry.15, section ".printk_index", align 4
@p9_fd_create_tcp._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.14, i32 1009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\0139pnet_fd: %s (%d): problem connecting socket to %s\0A\00", [42 x i8] zeroinitializer }, align 32
@p9_fd_create_tcp._entry_ptr.20 = internal global ptr @p9_fd_create_tcp._entry.18, section ".printk_index", align 4
@__func__.parse_opts = private unnamed_addr constant [11 x i8] c"parse_opts\00", align 1
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to allocate copy of option string\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@tokens = internal constant { [5 x %struct.match_token], [56 x i8] } { [5 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.24 }, %struct.match_token { i32 1, ptr @.str.25 }, %struct.match_token { i32 2, ptr @.str.26 }, %struct.match_token { i32 4, ptr @.str.27 }, %struct.match_token { i32 3, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"integer field, but no integer?\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"port=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rfdno=%u\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wfdno=%u\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"privport\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%d.%d.%d.%d\00", [20 x i8] zeroinitializer }, align 32
@p9_socket_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.14, i32 856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\0139pnet_fd: %s (%d): failed to map fd\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"p9_socket_open\00", [17 x i8] zeroinitializer }, align 32
@p9_socket_open._entry_ptr = internal global ptr @p9_socket_open._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.p9_conn_create = private unnamed_addr constant [15 x i8] c"p9_conn_create\00", align 1
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"client %p msize %d\0A\00", [44 x i8] zeroinitializer }, align 32
@p9_conn_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(work_completion)(&m->rq)\00", [38 x i8] zeroinitializer }, align 32
@p9_conn_create.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(work_completion)(&m->wq)\00", [38 x i8] zeroinitializer }, align 32
@__func__.p9_read_work = private unnamed_addr constant [13 x i8] c"p9_read_work\00", align 1
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"start mux %p pos %zd\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"read mux %p pos %zd size: %zd = %zd\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mux %p got %d bytes\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"got new header\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error parsing header: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"requested packet size too big: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mux %p pkt: size: %d bytes tag: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unexpected packet tag %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"No recv fcall for tag %d (req %p), disconnecting!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"got new packet\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Ignore replies associated with a cancelled request\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Request tag %d errored out while we were reading the reply\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.p9_fd_read = private unnamed_addr constant [11 x i8] c"p9_fd_read\00", align 1
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"blocking read ...\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.p9_write_work = private unnamed_addr constant [14 x i8] c"p9_write_work\00", align 1
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"move req %p\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mux %p pos %d size %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mux %p sent %d bytes\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.p9_fd_write = private unnamed_addr constant [12 x i8] c"p9_fd_write\00", align 1
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"blocking write ...\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.p9_pollwait = private unnamed_addr constant [12 x i8] c"p9_pollwait\00", align 1
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"not enough wait_address slots\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.p9_conn_destroy = private unnamed_addr constant [16 x i8] c"p9_conn_destroy\00", align 1
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mux %p prev %p next %p\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.p9_fd_request = private unnamed_addr constant [14 x i8] c"p9_fd_request\00", align 1
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mux %p task %p tcall %p id %d\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.p9_fd_cancel = private unnamed_addr constant [13 x i8] c"p9_fd_cancel\00", align 1
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"client %p req %p\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.p9_fd_cancelled = private unnamed_addr constant [16 x i8] c"p9_fd_cancelled\00", align 1
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",port=%u\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",rfd=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",wfd=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"unix\00", [27 x i8] zeroinitializer }, align 32
@p9_fd_create_unix._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.14, i32 1031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\0139pnet_fd: %s (%d): address too long: %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"p9_fd_create_unix\00", [46 x i8] zeroinitializer }, align 32
@p9_fd_create_unix._entry_ptr = internal global ptr @p9_fd_create_unix._entry, section ".printk_index", align 4
@p9_fd_create_unix._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.61, ptr @.str.14, i32 1041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@p9_fd_create_unix._entry_ptr.63 = internal global ptr @p9_fd_create_unix._entry.62, section ".printk_index", align 4
@p9_fd_create_unix._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.61, ptr @.str.14, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\0139pnet_fd: %s (%d): problem connecting socket: %s: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@p9_fd_create_unix._entry_ptr.66 = internal global ptr @p9_fd_create_unix._entry.64, section ".printk_index", align 4
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fd\00", [29 x i8] zeroinitializer }, align 32
@p9_fd_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.14, i32 1068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\0139pnet_fd: Insufficient options for proto=fd\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p9_fd_create\00", [19 x i8] zeroinitializer }, align 32
@p9_fd_create._entry_ptr = internal global ptr @p9_fd_create._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 4294966784, i64 4294967285]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 4294966784, i64 4294967285]
@___asan_gen_.74 = private unnamed_addr constant [13 x i8] c"p9_poll_work\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [13 x i8] c"p9_tcp_trans\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1081, i32 31 }
@___asan_gen_.80 = private unnamed_addr constant [14 x i8] c"p9_unix_trans\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1095, i32 31 }
@___asan_gen_.83 = private unnamed_addr constant [12 x i8] c"p9_fd_trans\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1109, i32 31 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 152, i32 8 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1136, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [13 x i8] c"p9_poll_lock\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [21 x i8] c"p9_poll_pending_list\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 151, i32 8 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1152, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 150, i32 8 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 625, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 631, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 633, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 640, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 643, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 190, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 209, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1082, i32 10 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 989, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 997, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1008, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 769, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 775, i32 31 }
@___asan_gen_.158 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 68, i32 28 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 784, i32 5 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 69, i32 13 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 70, i32 14 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 71, i32 14 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 72, i32 17 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 936, i32 19 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 855, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 585, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 592, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 593, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 286, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 295, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 300, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 311, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 317, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 323, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 330, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 336, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 343, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 359, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 367, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 371, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 260, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 465, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 476, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 480, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 426, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 562, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 880, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 666, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 691, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 734, i32 18 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 737, i32 18 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 739, i32 18 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1096, i32 10 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1030, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1040, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1048, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1110, i32 10 }
@___asan_gen_.299 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.306 = private constant [21 x i8] c"../net/9p/trans_fd.c\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1068, i32 3 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @__UNIQUE_ID_alias483, ptr @__UNIQUE_ID_alias484, ptr @__UNIQUE_ID_alias485, ptr @__UNIQUE_ID_author487, ptr @__UNIQUE_ID_description488, ptr @__UNIQUE_ID_file489, ptr @__UNIQUE_ID_license490, ptr @__exitcall_p9_trans_fd_exit, ptr @__initcall__kmod_9pnet_fd__486_1172_p9_trans_fd_init6, ptr @p9_fd_create._entry, ptr @p9_fd_create._entry_ptr, ptr @p9_fd_create_tcp._entry, ptr @p9_fd_create_tcp._entry.15, ptr @p9_fd_create_tcp._entry.18, ptr @p9_fd_create_tcp._entry_ptr, ptr @p9_fd_create_tcp._entry_ptr.17, ptr @p9_fd_create_tcp._entry_ptr.20, ptr @p9_fd_create_unix._entry, ptr @p9_fd_create_unix._entry.62, ptr @p9_fd_create_unix._entry.64, ptr @p9_fd_create_unix._entry_ptr, ptr @p9_fd_create_unix._entry_ptr.63, ptr @p9_fd_create_unix._entry_ptr.66, ptr @p9_socket_open._entry, ptr @p9_socket_open._entry_ptr, ptr @p9_trans_fd_exit, ptr @p9_poll_work, ptr @p9_tcp_trans, ptr @p9_unix_trans, ptr @p9_fd_trans, ptr @.str, ptr @.str.1, ptr @p9_poll_lock, ptr @p9_poll_pending_list, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @tokens, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @p9_conn_create.__key, ptr @.str.32, ptr @p9_conn_create.__key.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_poll_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_tcp_trans to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_unix_trans to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_fd_trans to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_poll_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_poll_pending_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_fd_create_tcp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_fd_create_tcp._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_fd_create_tcp._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_socket_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_conn_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_conn_create.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_fd_create_unix._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_fd_create_unix._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_fd_create_unix._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_fd_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @p9_trans_fd_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call zeroext i1 @flush_work(ptr noundef nonnull @p9_poll_work) #11
  tail call void @v9fs_unregister_trans(ptr noundef nonnull @p9_tcp_trans) #11
  tail call void @v9fs_unregister_trans(ptr noundef nonnull @p9_unix_trans) #11
  tail call void @v9fs_unregister_trans(ptr noundef nonnull @p9_fd_trans) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v9fs_unregister_trans(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @p9_trans_fd_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @v9fs_register_trans(ptr noundef nonnull @p9_tcp_trans) #11
  tail call void @v9fs_register_trans(ptr noundef nonnull @p9_unix_trans) #11
  tail call void @v9fs_register_trans(ptr noundef nonnull @p9_fd_trans) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p9_poll_workfn(ptr nocapture noundef readnone %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_poll_workfn, ptr noundef nonnull @.str.1, ptr noundef %3) #11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @p9_poll_lock) #11
  %4 = load volatile ptr, ptr @p9_poll_pending_list, align 4
  %cmp.i.not26 = icmp eq ptr %4, @p9_poll_pending_list
  br i1 %cmp.i.not26, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %p9_poll_mux.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %5 = phi ptr [ %42, %p9_poll_mux.exit.while.body_crit_edge ], [ %4, %entry.while.body_crit_edge ]
  %flags.027 = phi i32 [ %call16, %p9_poll_mux.exit.while.body_crit_edge ], [ %call3, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %5, i32 -84
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #11
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %5, ptr %5, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %5, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @p9_poll_lock, i32 noundef %flags.027) #11
  %err1.i = getelementptr i8, ptr %5, i32 -72
  %14 = ptrtoint ptr %err1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %err1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i23 = icmp slt i32 %15, 0
  br i1 %cmp.i23, label %list_del_init.exit.p9_poll_mux.exit_crit_edge, label %if.end.i

list_del_init.exit.p9_poll_mux.exit_crit_edge:    ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %p9_poll_mux.exit

if.end.i:                                         ; preds = %list_del_init.exit
  %client.i = getelementptr i8, ptr %5, i32 -76
  %16 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end.i.if.then2.i_crit_edge, label %land.lhs.true.i.i

if.end.i.if.then2.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %status.i.i = getelementptr inbounds %struct.p9_client, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.i = icmp eq i32 %19, 0
  br i1 %cmp.i.i, label %if.end.i.i24, label %land.lhs.true.i.i.if.then2.i_crit_edge

land.lhs.true.i.i.if.then2.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2.i

if.end.i.i24:                                     ; preds = %land.lhs.true.i.i
  %trans.i.i = getelementptr inbounds %struct.p9_client, ptr %17, i32 0, i32 5
  %20 = ptrtoint ptr %trans.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trans.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %21, null
  br i1 %tobool1.not.i.i, label %if.end.i.i24.if.then2.i_crit_edge, label %if.end6.i.i

if.end.i.i24.if.then2.i_crit_edge:                ; preds = %if.end.i.i24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2.i

if.end6.i.i:                                      ; preds = %if.end.i.i24
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %f_op.i.i.i = getelementptr inbounds %struct.file, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %f_op.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %f_op.i.i.i, align 4
  %poll.i.i.i = getelementptr inbounds %struct.file_operations, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %poll.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %poll.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i, label %if.end6.i.i.vfs_poll.exit.i.i_crit_edge, label %if.end.i.i.i, !prof !194

if.end6.i.i.vfs_poll.exit.i.i_crit_edge:          ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vfs_poll.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call i32 %27(ptr noundef %23, ptr noundef null) #11
  br label %vfs_poll.exit.i.i

vfs_poll.exit.i.i:                                ; preds = %if.end.i.i.i, %if.end6.i.i.vfs_poll.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %if.end.i.i.i ], [ 325, %if.end6.i.i.vfs_poll.exit.i.i_crit_edge ]
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %21, align 4
  %wr.i.i = getelementptr inbounds %struct.p9_trans_fd, ptr %21, i32 0, i32 1
  %30 = ptrtoint ptr %wr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wr.i.i, align 4
  %cmp8.not.i.i = icmp eq ptr %29, %31
  br i1 %cmp8.not.i.i, label %vfs_poll.exit.i.i.p9_fd_poll.exit.i_crit_edge, label %if.then9.i.i

vfs_poll.exit.i.i.p9_fd_poll.exit.i_crit_edge:    ; preds = %vfs_poll.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %p9_fd_poll.exit.i

if.then9.i.i:                                     ; preds = %vfs_poll.exit.i.i
  %and.i.i = and i32 %retval.0.i.i.i, -5
  %f_op.i24.i.i = getelementptr inbounds %struct.file, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %f_op.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %f_op.i24.i.i, align 4
  %poll.i25.i.i = getelementptr inbounds %struct.file_operations, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %poll.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %poll.i25.i.i, align 4
  %tobool.not.i26.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i26.i.i, label %if.then9.i.i.vfs_poll.exit30.i.i_crit_edge, label %if.end.i28.i.i, !prof !194

if.then9.i.i.vfs_poll.exit30.i.i_crit_edge:       ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vfs_poll.exit30.i.i

if.end.i28.i.i:                                   ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i27.i.i = tail call i32 %35(ptr noundef %31, ptr noundef null) #11
  %phi.bo.i.i = and i32 %call.i27.i.i, -2
  br label %vfs_poll.exit30.i.i

vfs_poll.exit30.i.i:                              ; preds = %if.end.i28.i.i, %if.then9.i.i.vfs_poll.exit30.i.i_crit_edge
  %retval.0.i29.i.i = phi i32 [ %phi.bo.i.i, %if.end.i28.i.i ], [ 324, %if.then9.i.i.vfs_poll.exit30.i.i_crit_edge ]
  %or.i.i = or i32 %retval.0.i29.i.i, %and.i.i
  br label %p9_fd_poll.exit.i

p9_fd_poll.exit.i:                                ; preds = %vfs_poll.exit30.i.i, %vfs_poll.exit.i.i.p9_fd_poll.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %or.i.i, %vfs_poll.exit30.i.i ], [ %retval.0.i.i.i, %vfs_poll.exit.i.i.p9_fd_poll.exit.i_crit_edge ]
  %and.i25 = and i32 %retval.0.i.i, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25)
  %tobool.not.i = icmp eq i32 %and.i25, 0
  br i1 %tobool.not.i, label %p9_fd_poll.exit.i.if.end3.i_crit_edge, label %p9_fd_poll.exit.i.if.then2.i_crit_edge

p9_fd_poll.exit.i.if.then2.i_crit_edge:           ; preds = %p9_fd_poll.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2.i

p9_fd_poll.exit.i.if.end3.i_crit_edge:            ; preds = %p9_fd_poll.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

if.then2.i:                                       ; preds = %p9_fd_poll.exit.i.if.then2.i_crit_edge, %if.end.i.i24.if.then2.i_crit_edge, %land.lhs.true.i.i.if.then2.i_crit_edge, %if.end.i.if.then2.i_crit_edge
  %retval.0.i55.i = phi i32 [ %retval.0.i.i, %p9_fd_poll.exit.i.if.then2.i_crit_edge ], [ 8, %if.end.i.i24.if.then2.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then2.i_crit_edge ], [ 8, %if.end.i.if.then2.i_crit_edge ]
  %err.054.i = phi i32 [ -104, %p9_fd_poll.exit.i.if.then2.i_crit_edge ], [ -121, %if.end.i.i24.if.then2.i_crit_edge ], [ -121, %land.lhs.true.i.i.if.then2.i_crit_edge ], [ -121, %if.end.i.if.then2.i_crit_edge ]
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_poll_mux, ptr noundef nonnull @.str.4, ptr noundef %add.ptr, i32 noundef %retval.0.i55.i) #11
  tail call fastcc void @p9_conn_cancel(ptr noundef %add.ptr, i32 noundef %err.054.i) #11
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %p9_fd_poll.exit.i.if.end3.i_crit_edge
  %retval.0.i56.i = phi i32 [ %retval.0.i55.i, %if.then2.i ], [ %retval.0.i.i, %p9_fd_poll.exit.i.if.end3.i_crit_edge ]
  %and4.i = and i32 %retval.0.i56.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end3.i.if.end13.i_crit_edge, label %if.then6.i

if.end3.i.if.end13.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.then6.i:                                       ; preds = %if.end3.i
  %wsched.i = getelementptr i8, ptr %5, i32 160
  tail call void @_set_bit(i32 noundef 2, ptr noundef %wsched.i) #11
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_poll_mux, ptr noundef nonnull @.str.5, ptr noundef %add.ptr) #11
  %call8.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %wsched.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.then6.i.if.end13.i_crit_edge

if.then6.i.if.end13.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_poll_mux, ptr noundef nonnull @.str.6, ptr noundef %add.ptr) #11
  %rq.i = getelementptr i8, ptr %5, i32 72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %36 = load ptr, ptr @system_wq, align 4
  %call.i.i47.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %rq.i) #11
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.then6.i.if.end13.i_crit_edge, %if.end3.i.if.end13.i_crit_edge
  %and14.i = and i32 %retval.0.i56.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end13.i.p9_poll_mux.exit_crit_edge, label %if.then16.i

if.end13.i.p9_poll_mux.exit_crit_edge:            ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %p9_poll_mux.exit

if.then16.i:                                      ; preds = %if.end13.i
  %wsched17.i = getelementptr i8, ptr %5, i32 160
  tail call void @_set_bit(i32 noundef 8, ptr noundef %wsched17.i) #11
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_poll_mux, ptr noundef nonnull @.str.7, ptr noundef %add.ptr) #11
  %wsize.i = getelementptr i8, ptr %5, i32 -8
  %37 = ptrtoint ptr %wsize.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %wsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool18.not.i = icmp eq i32 %38, 0
  br i1 %tobool18.not.i, label %lor.lhs.false.i, label %if.then16.i.land.lhs.true.i_crit_edge

if.then16.i.land.lhs.true.i_crit_edge:            ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %if.then16.i
  %unsent_req_list.i = getelementptr i8, ptr %5, i32 -60
  %39 = ptrtoint ptr %unsent_req_list.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %unsent_req_list.i, align 4
  %cmp.i48.not.i = icmp eq ptr %40, %unsent_req_list.i
  br i1 %cmp.i48.not.i, label %lor.lhs.false.i.p9_poll_mux.exit_crit_edge, label %lor.lhs.false.i.land.lhs.true.i_crit_edge

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

lor.lhs.false.i.p9_poll_mux.exit_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %p9_poll_mux.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %if.then16.i.land.lhs.true.i_crit_edge
  %call22.i = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %wsched17.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %land.lhs.true.i.p9_poll_mux.exit_crit_edge

land.lhs.true.i.p9_poll_mux.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %p9_poll_mux.exit

if.then24.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_poll_mux, ptr noundef nonnull @.str.8, ptr noundef %add.ptr) #11
  %wq.i = getelementptr i8, ptr %5, i32 116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %41 = load ptr, ptr @system_wq, align 4
  %call.i.i49.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %41, ptr noundef %wq.i) #11
  br label %p9_poll_mux.exit

p9_poll_mux.exit:                                 ; preds = %if.then24.i, %land.lhs.true.i.p9_poll_mux.exit_crit_edge, %lor.lhs.false.i.p9_poll_mux.exit_crit_edge, %if.end13.i.p9_poll_mux.exit_crit_edge, %list_del_init.exit.p9_poll_mux.exit_crit_edge
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @p9_poll_lock) #11
  %42 = load volatile ptr, ptr @p9_poll_pending_list, align 4
  %cmp.i.not = icmp eq ptr %42, @p9_poll_pending_list
  br i1 %cmp.i.not, label %p9_poll_mux.exit.while.end_crit_edge, label %p9_poll_mux.exit.while.body_crit_edge

p9_poll_mux.exit.while.body_crit_edge:            ; preds = %p9_poll_mux.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

p9_poll_mux.exit.while.end_crit_edge:             ; preds = %p9_poll_mux.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %p9_poll_mux.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call3, %entry.while.end_crit_edge ], [ %call16, %p9_poll_mux.exit.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @p9_poll_lock, i32 noundef %flags.0.lcssa) #11
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_poll_workfn, ptr noundef nonnull @.str.2) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_p9_debug(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @p9_conn_cancel(ptr noundef %m, i32 noundef %err) unnamed_addr #2 align 64 {
entry:
  %cancel_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cancel_list) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %cancel_list, i32 0, i32 1
  %1 = ptrtoint ptr %cancel_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cancel_list, ptr %cancel_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cancel_list, ptr %0, align 4
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.p9_conn_cancel, ptr noundef nonnull @.str.9, ptr noundef %m, i32 noundef %err) #11
  %client = getelementptr inbounds %struct.p9_conn, ptr %m, i32 0, i32 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  call void @_raw_spin_lock(ptr noundef %4) #11
  %err1 = getelementptr inbounds %struct.p9_conn, ptr %m, i32 0, i32 2
  %5 = ptrtoint ptr %err1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %err1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %err1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %err, ptr %err1, align 4
  %req_list = getelementptr inbounds %struct.p9_conn, ptr %m, i32 0, i32 3
  %8 = ptrtoint ptr %req_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req_list, align 4
  %cmp.not120 = icmp eq ptr %9, %req_list
  br i1 %cmp.not120, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %list_move.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %10 = phi ptr [ %.pn, %list_move.exit.for.body_crit_edge ], [ %9, %if.end.for.body_crit_edge ]
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %10, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.__list_del_entry.exit.i_crit_edge

for.body.__list_del_entry.exit.i_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %10, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %for.body.__list_del_entry.exit.i_crit_edge
  %18 = ptrtoint ptr %cancel_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cancel_list, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %10, ptr noundef nonnull %cancel_list, ptr noundef %19) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %10, ptr %prev1.i.i2.i, align 4
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %10, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %cancel_list, ptr %prev3.i.i.i, align 4
  %23 = ptrtoint ptr %cancel_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %10, ptr %cancel_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn, %req_list
  br i1 %cmp.not, label %list_move.exit.for.end_crit_edge, label %list_move.exit.for.body_crit_edge

list_move.exit.for.body_crit_edge:                ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_move.exit.for.end_crit_edge:                 ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_move.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %unsent_req_list = getelementptr inbounds %struct.p9_conn, ptr %m, i32 0, i32 4
  %24 = ptrtoint ptr %unsent_req_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %unsent_req_list, align 4
  %cmp31.not121 = icmp eq ptr %25, %unsent_req_list
  br i1 %cmp31.not121, label %for.end.for.end41_crit_edge, label %for.end.for.body33_crit_edge

for.end.for.body33_crit_edge:                     ; preds = %for.end
  br label %for.body33

for.end.for.end41_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end41

for.body33:                                       ; preds = %list_move.exit114.for.body33_crit_edge, %for.end.for.body33_crit_edge
  %26 = phi ptr [ %.pn102, %list_move.exit114.for.body33_crit_edge ], [ %25, %for.end.for.body33_crit_edge ]
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn102 = load ptr, ptr %26, align 4
  %call.i.i105 = call zeroext i1 @__list_del_entry_valid(ptr noundef %26) #11
  br i1 %call.i.i105, label %if.end.i.i108, label %for.body33.__list_del_entry.exit.i110_crit_edge

for.body33.__list_del_entry.exit.i110_crit_edge:  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i110

if.end.i.i108:                                    ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i106 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i106 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i106, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %26, align 4
  %prev1.i.i.i107 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i107 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i107, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %__list_del_entry.exit.i110

__list_del_entry.exit.i110:                       ; preds = %if.end.i.i108, %for.body33.__list_del_entry.exit.i110_crit_edge
  %34 = ptrtoint ptr %cancel_list to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cancel_list, align 4
  %call.i.i.i109 = call zeroext i1 @__list_add_valid(ptr noundef %26, ptr noundef nonnull %cancel_list, ptr noundef %35) #11
  br i1 %call.i.i.i109, label %if.end.i.i.i113, label %__list_del_entry.exit.i110.list_move.exit114_crit_edge

__list_del_entry.exit.i110.list_move.exit114_crit_edge: ; preds = %__list_del_entry.exit.i110
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_move.exit114

if.end.i.i.i113:                                  ; preds = %__list_del_entry.exit.i110
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i2.i111 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i2.i111 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %26, ptr %prev1.i.i2.i111, align 4
  %37 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %26, align 4
  %prev3.i.i.i112 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i112 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %cancel_list, ptr %prev3.i.i.i112, align 4
  %39 = ptrtoint ptr %cancel_list to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %26, ptr %cancel_list, align 4
  br label %list_move.exit114

list_move.exit114:                                ; preds = %if.end.i.i.i113, %__list_del_entry.exit.i110.list_move.exit114_crit_edge
  %cmp31.not = icmp eq ptr %.pn102, %unsent_req_list
  br i1 %cmp31.not, label %list_move.exit114.for.end41_crit_edge, label %list_move.exit114.for.body33_crit_edge

list_move.exit114.for.body33_crit_edge:           ; preds = %list_move.exit114
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body33

list_move.exit114.for.end41_crit_edge:            ; preds = %list_move.exit114
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end41

for.end41:                                        ; preds = %list_move.exit114.for.end41_crit_edge, %for.end.for.end41_crit_edge
  %40 = ptrtoint ptr %cancel_list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cancel_list, align 4
  %cmp53.not124 = icmp eq ptr %41, %cancel_list
  br i1 %cmp53.not124, label %for.end41.cleanup_crit_edge, label %for.end41.for.body55_crit_edge

for.end41.for.body55_crit_edge:                   ; preds = %for.end41
  br label %for.body55

for.end41.cleanup_crit_edge:                      ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body55:                                       ; preds = %if.end60.for.body55_crit_edge, %for.end41.for.body55_crit_edge
  %.pn103.in125 = phi ptr [ %.pn103128, %if.end60.for.body55_crit_edge ], [ %41, %for.end41.for.body55_crit_edge ]
  %req.2127 = getelementptr i8, ptr %.pn103.in125, i32 -112
  %42 = ptrtoint ptr %.pn103.in125 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn103128 = load ptr, ptr %.pn103.in125, align 4
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.p9_conn_cancel, ptr noundef nonnull @.str.10, ptr noundef %req.2127) #11
  %call.i.i115 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn103.in125) #11
  br i1 %call.i.i115, label %if.end.i.i118, label %for.body55.list_del.exit_crit_edge

for.body55.list_del.exit_crit_edge:               ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i118:                                    ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i116 = getelementptr inbounds %struct.list_head, ptr %.pn103.in125, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i116 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i116, align 4
  %45 = ptrtoint ptr %.pn103.in125 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %.pn103.in125, align 4
  %prev1.i.i.i117 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev1.i.i.i117, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %44, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i118, %for.body55.list_del.exit_crit_edge
  %49 = ptrtoint ptr %.pn103.in125 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn103.in125, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn103.in125, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %t_err = getelementptr i8, ptr %.pn103.in125, i32 -108
  %51 = ptrtoint ptr %t_err to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %t_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool57.not = icmp eq i32 %52, 0
  br i1 %tobool57.not, label %if.then58, label %list_del.exit.if.end60_crit_edge

list_del.exit.if.end60_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.then58:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %t_err to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %err, ptr %t_err, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %list_del.exit.if.end60_crit_edge
  %54 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %client, align 4
  call void @p9_client_cb(ptr noundef %55, ptr noundef %req.2127, i32 noundef 5) #11
  %cmp53.not = icmp eq ptr %.pn103128, %cancel_list
  br i1 %cmp53.not, label %if.end60.cleanup_crit_edge, label %if.end60.for.body55_crit_edge

if.end60.for.body55_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body55

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end60.cleanup_crit_edge, %for.end41.cleanup_crit_edge, %entry.cleanup_crit_edge
  %56 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %client, align 4
  call void @_raw_spin_unlock(ptr noundef %57) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cancel_list) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @p9_client_cb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p9_fd_create_tcp(ptr noundef %client, ptr noundef %addr, ptr noundef %args) #2 align 64 {
entry:
  %cl.i = alloca %struct.sockaddr_in, align 4
  %in.i = alloca [4 x i32], align 4
  %csocket = alloca ptr, align 4
  %sin_server = alloca %struct.sockaddr_in, align 4
  %opts = alloca %struct.p9_fd_opts, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %csocket) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sin_server) #11
  %0 = getelementptr inbounds %struct.sockaddr_in, ptr %sin_server, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sockaddr_in, ptr %sin_server, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %sin_server, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 -1, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %opts) #11
  %4 = call ptr @memset(ptr %opts, i32 255, i32 12)
  %call = call fastcc i32 @parse_opts(ptr noundef %args, ptr noundef nonnull %opts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq ptr %addr, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #11
  %5 = getelementptr inbounds [4 x i32], ptr %in.i, i32 0, i32 1
  %6 = getelementptr inbounds [4 x i32], ptr %in.i, i32 0, i32 2
  %7 = getelementptr inbounds [4 x i32], ptr %in.i, i32 0, i32 3
  %8 = call ptr @memset(ptr %in.i, i32 255, i32 16)
  %call.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %addr, ptr noundef nonnull @.str.28, ptr noundef nonnull %in.i, ptr noundef %5, ptr noundef %6, ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 4
  br i1 %cmp.not.i, label %for.body.preheader.i, label %lor.lhs.false.valid_ipaddr4.exit.thread_crit_edge

lor.lhs.false.valid_ipaddr4.exit.thread_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %valid_ipaddr4.exit.thread

for.body.preheader.i:                             ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %10)
  %cmp6.i = icmp sgt i32 %10, 255
  br i1 %cmp6.i, label %for.body.preheader.i.valid_ipaddr4.exit.thread_crit_edge, label %for.cond.i

for.body.preheader.i.valid_ipaddr4.exit.thread_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %valid_ipaddr4.exit.thread

for.cond.i:                                       ; preds = %for.body.preheader.i
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %12)
  %cmp6.1.i = icmp sgt i32 %12, 255
  br i1 %cmp6.1.i, label %for.cond.i.valid_ipaddr4.exit.thread_crit_edge, label %for.cond.1.i

for.cond.i.valid_ipaddr4.exit.thread_crit_edge:   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %valid_ipaddr4.exit.thread

for.cond.1.i:                                     ; preds = %for.cond.i
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %14)
  %cmp6.2.i = icmp sgt i32 %14, 255
  br i1 %cmp6.2.i, label %for.cond.1.i.valid_ipaddr4.exit.thread_crit_edge, label %for.cond.2.i

for.cond.1.i.valid_ipaddr4.exit.thread_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %valid_ipaddr4.exit.thread

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %16)
  %cmp6.3.i = icmp sgt i32 %16, 255
  br i1 %cmp6.3.i, label %for.cond.2.i.valid_ipaddr4.exit.thread_crit_edge, label %if.end5

for.cond.2.i.valid_ipaddr4.exit.thread_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %valid_ipaddr4.exit.thread

valid_ipaddr4.exit.thread:                        ; preds = %for.cond.2.i.valid_ipaddr4.exit.thread_crit_edge, %for.cond.1.i.valid_ipaddr4.exit.thread_crit_edge, %for.cond.i.valid_ipaddr4.exit.thread_crit_edge, %for.body.preheader.i.valid_ipaddr4.exit.thread_crit_edge, %lor.lhs.false.valid_ipaddr4.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #11
  br label %cleanup

if.end5:                                          ; preds = %for.cond.2.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #11
  %17 = ptrtoint ptr %csocket to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %csocket, align 4
  %port = getelementptr inbounds %struct.p9_fd_opts, ptr %opts, i32 0, i32 2
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %port, align 4
  %trans_opts = getelementptr inbounds %struct.p9_client, ptr %client, i32 0, i32 7
  %20 = ptrtoint ptr %trans_opts to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %trans_opts, align 4
  %privport = getelementptr inbounds %struct.p9_fd_opts, ptr %opts, i32 0, i32 3
  %21 = ptrtoint ptr %privport to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %privport, align 2, !range !195
  %privport8 = getelementptr inbounds %struct.anon.152, ptr %trans_opts, i32 0, i32 1
  %23 = ptrtoint ptr %privport8 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %privport8, align 2
  %24 = ptrtoint ptr %sin_server to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 2, ptr %sin_server, align 4
  %call9 = call i32 @in_aton(ptr noundef nonnull %addr) #11
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call9, ptr %1, align 4
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %19, ptr %0, align 2
  %27 = call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 110
  %31 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nsproxy, align 4
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %net_ns, align 4
  %call12 = call i32 @__sock_create(ptr noundef %34, i32 noundef 2, i32 noundef 1, i32 noundef 6, ptr noundef nonnull %csocket, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end19, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 68
  %37 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pid.i, align 8
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %38) #14
  br label %cleanup

if.end19:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool21.not = icmp eq i8 %22, 0
  br i1 %tobool21.not, label %if.end19.if.end35_crit_edge, label %if.then22

if.end19.if.end35_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then22:                                        ; preds = %if.end19
  %39 = ptrtoint ptr %csocket to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %csocket, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cl.i) #11
  %41 = getelementptr inbounds %struct.sockaddr_in, ptr %cl.i, i32 0, i32 1
  %42 = getelementptr inbounds %struct.sockaddr_in, ptr %cl.i, i32 0, i32 2
  %43 = getelementptr inbounds i8, ptr %cl.i, i32 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 8)
  store i64 0, ptr %43, align 4
  %45 = ptrtoint ptr %cl.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 2, ptr %cl.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %42, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then22
  %port.06.i = phi i32 [ 1023, %if.then22 ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %port.06.i to i16
  %47 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i, ptr %41, align 2
  %call.i64 = call i32 @kernel_bind(ptr noundef %40, ptr noundef nonnull %cl.i, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -98, i32 %call.i64)
  %cmp1.not.i = icmp eq i32 %call.i64, -98
  %dec.i = add nsw i32 %port.06.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 664, i32 %dec.i)
  %cmp.i = icmp ugt i32 %dec.i, 664
  %or.cond.i = select i1 %cmp1.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %for.body.i.for.body.i_crit_edge, label %p9_bind_privport.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

p9_bind_privport.exit:                            ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cl.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %cmp24 = icmp slt i32 %call.i64, 0
  br i1 %cmp24, label %do.end28, label %p9_bind_privport.exit.if.end35_crit_edge

p9_bind_privport.exit.if.end35_crit_edge:         ; preds = %p9_bind_privport.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

do.end28:                                         ; preds = %p9_bind_privport.exit
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task, align 8
  %pid.i65 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 68
  %50 = ptrtoint ptr %pid.i65 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pid.i65, align 8
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13, i32 noundef %51) #14
  %52 = ptrtoint ptr %csocket to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %csocket, align 4
  call void @sock_release(ptr noundef %53) #11
  br label %cleanup

if.end35:                                         ; preds = %p9_bind_privport.exit.if.end35_crit_edge, %if.end19.if.end35_crit_edge
  %54 = ptrtoint ptr %csocket to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %csocket, align 4
  %ops = getelementptr inbounds %struct.socket, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops, align 4
  %connect = getelementptr inbounds %struct.proto_ops, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %connect to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %connect, align 4
  %call36 = call i32 %59(ptr noundef %55, ptr noundef nonnull %sin_server, i32 noundef 16, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %do.end41, label %if.end47

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task, align 8
  %pid.i66 = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 68
  %62 = ptrtoint ptr %pid.i66 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pid.i66, align 8
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.13, i32 noundef %63, ptr noundef nonnull %addr) #14
  %64 = ptrtoint ptr %csocket to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %csocket, align 4
  call void @sock_release(ptr noundef %65) #11
  br label %cleanup

if.end47:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %csocket to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %csocket, align 4
  %call48 = call fastcc i32 @p9_socket_open(ptr noundef %client, ptr noundef %67)
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %do.end41, %do.end28, %do.end, %valid_ipaddr4.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %do.end ], [ %call.i64, %do.end28 ], [ %call36, %do.end41 ], [ %call48, %if.end47 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %valid_ipaddr4.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %opts) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sin_server) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csocket) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p9_fd_close(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %client, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %trans = getelementptr inbounds %struct.p9_client, ptr %client, i32 0, i32 5
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %status = getelementptr inbounds %struct.p9_client, ptr %client, i32 0, i32 4
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %status, align 4
  %conn = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %5 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %conn, align 4
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_conn_destroy, ptr noundef nonnull @.str.53, ptr noundef %conn, ptr noundef %4, ptr noundef %6) #11
  %wait_addr.i.i = getelementptr %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 13, i32 0, i32 2
  %7 = ptrtoint ptr %wait_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wait_addr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end3.if.end.i.i_crit_edge, label %if.then.i.i

if.end3.if.end.i.i_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %wait.i.i = getelementptr %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 13, i32 0, i32 1
  tail call void @remove_wait_queue(ptr noundef nonnull %8, ptr noundef %wait.i.i) #11
  %9 = ptrtoint ptr %wait_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %wait_addr.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end3.if.end.i.i_crit_edge
  %wait_addr.1.i.i = getelementptr %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 13, i32 1, i32 2
  %10 = ptrtoint ptr %wait_addr.1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wait_addr.1.i.i, align 4
  %tobool.not.1.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.1.i.i, label %if.end.i.i.if.end.1.i.i_crit_edge, label %if.then.1.i.i

if.end.i.i.if.end.1.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.1.i.i

if.then.1.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %wait.1.i.i = getelementptr %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 13, i32 1, i32 1
  tail call void @remove_wait_queue(ptr noundef nonnull %11, ptr noundef %wait.1.i.i) #11
  %12 = ptrtoint ptr %wait_addr.1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %wait_addr.1.i.i, align 4
  br label %if.end.1.i.i

if.end.1.i.i:                                     ; preds = %if.then.1.i.i, %if.end.i.i.if.end.1.i.i_crit_edge
  %call5.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @p9_poll_lock) #11
  %poll_pending_link.i.i = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 12
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %poll_pending_link.i.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.1.i.i.p9_mux_poll_stop.exit.i_crit_edge

if.end.1.i.i.p9_mux_poll_stop.exit.i_crit_edge:   ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %p9_mux_poll_stop.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 12, i32 1
  %13 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i.i, align 4
  %15 = ptrtoint ptr %poll_pending_link.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %poll_pending_link.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %p9_mux_poll_stop.exit.i

p9_mux_poll_stop.exit.i:                          ; preds = %if.end.i.i.i.i, %if.end.1.i.i.p9_mux_poll_stop.exit.i_crit_edge
  %19 = ptrtoint ptr %poll_pending_link.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %poll_pending_link.i.i, ptr %poll_pending_link.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 12, i32 1
  %20 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %poll_pending_link.i.i, ptr %prev.i3.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @p9_poll_lock, i32 noundef %call5.i.i) #11
  %call8.i.i = tail call zeroext i1 @flush_work(ptr noundef nonnull @p9_poll_work) #11
  %rq.i = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 15
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %rq.i) #11
  %rreq.i = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 5
  %21 = ptrtoint ptr %rreq.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rreq.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %p9_mux_poll_stop.exit.i.if.end.i_crit_edge, label %if.then.i

p9_mux_poll_stop.exit.i.if.end.i_crit_edge:       ; preds = %p9_mux_poll_stop.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %p9_mux_poll_stop.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 @p9_req_put(ptr noundef nonnull %22) #11
  %23 = ptrtoint ptr %rreq.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rreq.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %p9_mux_poll_stop.exit.i.if.end.i_crit_edge
  %wq.i = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 16
  %call5.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %wq.i) #11
  %wreq.i = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 6
  %24 = ptrtoint ptr %wreq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wreq.i, align 4
  %tobool6.not.i = icmp eq ptr %25, null
  br i1 %tobool6.not.i, label %if.end.i.p9_conn_destroy.exit_crit_edge, label %if.then7.i

if.end.i.p9_conn_destroy.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %p9_conn_destroy.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call9.i = tail call i32 @p9_req_put(ptr noundef nonnull %25) #11
  %26 = ptrtoint ptr %wreq.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %wreq.i, align 4
  br label %p9_conn_destroy.exit

p9_conn_destroy.exit:                             ; preds = %if.then7.i, %if.end.i.p9_conn_destroy.exit_crit_edge
  tail call fastcc void @p9_conn_cancel(ptr noundef %conn, i32 noundef -104) #11
  %client.i = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %client.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %client.i, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %tobool4.not = icmp eq ptr %29, null
  br i1 %tobool4.not, label %p9_conn_destroy.exit.if.end7_crit_edge, label %if.then5

p9_conn_destroy.exit.if.end7_crit_edge:           ; preds = %p9_conn_destroy.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %p9_conn_destroy.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fput(ptr noundef nonnull %29) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %p9_conn_destroy.exit.if.end7_crit_edge
  %wr = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wr, align 4
  %tobool8.not = icmp eq ptr %31, null
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fput(ptr noundef nonnull %31) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p9_fd_request(ptr noundef %client, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %trans = getelementptr inbounds %struct.p9_client, ptr %client, i32 0, i32 5
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans, align 4
  %conn = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2
  %2 = tail call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %tc = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 4
  %id = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 4
  %conv = zext i8 %7 to i32
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_fd_request, ptr noundef nonnull @.str.54, ptr noundef %conn, ptr noundef %5, ptr noundef %tc, i32 noundef %conv) #11
  %err = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %client) #11
  %10 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %req, align 4
  %req_list = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 6
  %unsent_req_list = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 4
  %prev.i = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 4, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %req_list, ptr noundef %12, ptr noundef %unsent_req_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %req_list, ptr %prev.i, align 4
  %14 = ptrtoint ptr %req_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %unsent_req_list, ptr %req_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %req_list, ptr %12, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %client) #11
  %wsched = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 17
  %call5 = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %wsched) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.else, label %list_add_tail.exit.land.lhs.true_crit_edge

list_add_tail.exit.land.lhs.true_crit_edge:       ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.else:                                          ; preds = %list_add_tail.exit
  %client7 = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client7, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.else.cleanup_crit_edge, label %land.lhs.true.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.else
  %status.i = getelementptr inbounds %struct.p9_client, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp eq i32 %20, 0
  br i1 %cmp.i, label %if.end.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true.i
  %trans.i = getelementptr inbounds %struct.p9_client, ptr %18, i32 0, i32 5
  %21 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %trans.i, align 4
  %tobool1.not.i = icmp eq ptr %22, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %f_op.i.i = getelementptr inbounds %struct.file, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %f_op.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %f_op.i.i, align 4
  %poll.i.i = getelementptr inbounds %struct.file_operations, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %poll.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %poll.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end6.i.vfs_poll.exit.i_crit_edge, label %if.end.i.i32, !prof !194

if.end6.i.vfs_poll.exit.i_crit_edge:              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vfs_poll.exit.i

if.end.i.i32:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i31 = tail call i32 %28(ptr noundef %24, ptr noundef null) #11
  br label %vfs_poll.exit.i

vfs_poll.exit.i:                                  ; preds = %if.end.i.i32, %if.end6.i.vfs_poll.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i31, %if.end.i.i32 ], [ 325, %if.end6.i.vfs_poll.exit.i_crit_edge ]
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %22, align 4
  %wr.i = getelementptr inbounds %struct.p9_trans_fd, ptr %22, i32 0, i32 1
  %31 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wr.i, align 4
  %cmp8.not.i = icmp eq ptr %30, %32
  br i1 %cmp8.not.i, label %vfs_poll.exit.i.p9_fd_poll.exit_crit_edge, label %if.then9.i

vfs_poll.exit.i.p9_fd_poll.exit_crit_edge:        ; preds = %vfs_poll.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %p9_fd_poll.exit

if.then9.i:                                       ; preds = %vfs_poll.exit.i
  %f_op.i24.i = getelementptr inbounds %struct.file, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %f_op.i24.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %f_op.i24.i, align 4
  %poll.i25.i = getelementptr inbounds %struct.file_operations, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %poll.i25.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %poll.i25.i, align 4
  %tobool.not.i26.i = icmp eq ptr %36, null
  br i1 %tobool.not.i26.i, label %if.then9.i.land.lhs.true_crit_edge, label %if.end.i28.i, !prof !194

if.then9.i.land.lhs.true_crit_edge:               ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.end.i28.i:                                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i27.i = tail call i32 %36(ptr noundef %32, ptr noundef null) #11
  %phi.bo.i = and i32 %call.i27.i, -2
  br label %p9_fd_poll.exit

p9_fd_poll.exit:                                  ; preds = %if.end.i28.i, %vfs_poll.exit.i.p9_fd_poll.exit_crit_edge
  %retval.0.i = phi i32 [ %retval.0.i.i, %vfs_poll.exit.i.p9_fd_poll.exit_crit_edge ], [ %phi.bo.i, %if.end.i28.i ]
  %phi.bo = and i32 %retval.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo)
  %phi.cmp = icmp eq i32 %phi.bo, 0
  br i1 %phi.cmp, label %p9_fd_poll.exit.cleanup_crit_edge, label %p9_fd_poll.exit.land.lhs.true_crit_edge

p9_fd_poll.exit.land.lhs.true_crit_edge:          ; preds = %p9_fd_poll.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

p9_fd_poll.exit.cleanup_crit_edge:                ; preds = %p9_fd_poll.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %p9_fd_poll.exit.land.lhs.true_crit_edge, %if.then9.i.land.lhs.true_crit_edge, %list_add_tail.exit.land.lhs.true_crit_edge
  %call12 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %wsched) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %wq = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %37 = load ptr, ptr @system_wq, align 4
  %call.i.i34 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %37, ptr noundef %wq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %land.lhs.true.cleanup_crit_edge, %p9_fd_poll.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %entry.cleanup_crit_edge ], [ 0, %if.then14 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %p9_fd_poll.exit.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p9_fd_cancel(ptr noundef %client, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_fd_cancel, ptr noundef nonnull @.str.55, ptr noundef %client, ptr noundef %req) #11
  tail call void @_raw_spin_lock(ptr noundef %client) #11
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %req_list = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %req_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %req_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %8 = ptrtoint ptr %req_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %req_list, align 4
  %prev.i = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %10 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %req, align 4
  %call = tail call i32 @p9_req_put(ptr noundef %req) #11
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %list_del.exit ], [ 1, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %client) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p9_fd_cancelled(ptr noundef %client, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_fd_cancelled, ptr noundef nonnull @.str.55, ptr noundef %client, ptr noundef %req) #11
  tail call void @_raw_spin_lock(ptr noundef %client) #11
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %client) #11
  br label %return

if.end:                                           ; preds = %entry
  %req_list = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %req_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %req_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %req_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %req_list, align 4
  %prev.i = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %10 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %req, align 4
  tail call void @_raw_spin_unlock(ptr noundef %client) #11
  %call = tail call i32 @p9_req_put(ptr noundef %req) #11
  br label %return

return:                                           ; preds = %list_del.exit, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p9_fd_show_options(ptr noundef %m, ptr nocapture noundef readonly %clnt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_mod = getelementptr inbounds %struct.p9_client, ptr %clnt, i32 0, i32 3
  %0 = ptrtoint ptr %trans_mod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans_mod, align 4
  %cmp = icmp eq ptr %1, @p9_tcp_trans
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %trans_opts = getelementptr inbounds %struct.p9_client, ptr %clnt, i32 0, i32 7
  %2 = ptrtoint ptr %trans_opts to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %trans_opts, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 564, i16 %3)
  %cmp1.not = icmp eq i16 %3, 564
  br i1 %cmp1.not, label %if.then.if.end26_crit_edge, label %if.then3

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.56, i32 noundef %conv) #11
  br label %if.end26

if.else:                                          ; preds = %entry
  %cmp8 = icmp eq ptr %1, @p9_fd_trans
  br i1 %cmp8, label %if.then10, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then10:                                        ; preds = %if.else
  %trans_opts11 = getelementptr inbounds %struct.p9_client, ptr %clnt, i32 0, i32 7
  %4 = ptrtoint ptr %trans_opts11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %trans_opts11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp12.not = icmp eq i32 %5, -1
  br i1 %cmp12.not, label %if.then10.if.end17_crit_edge, label %if.then14

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.57, i32 noundef %5) #11
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then10.if.end17_crit_edge
  %wfd = getelementptr inbounds %struct.p9_client, ptr %clnt, i32 0, i32 7, i32 0, i32 1
  %6 = ptrtoint ptr %wfd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wfd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp19.not = icmp eq i32 %7, -1
  br i1 %cmp19.not, label %if.end17.if.end26_crit_edge, label %if.then21

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.58, i32 noundef %7) #11
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end17.if.end26_crit_edge, %if.else.if.end26_crit_edge, %if.then3, %if.then.if.end26_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_opts(ptr noundef %params, ptr nocapture noundef writeonly %opts) unnamed_addr #2 align 64 {
entry:
  %args = alloca [3 x %struct.substring_t], align 4
  %option = alloca i32, align 4
  %options = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #11
  %0 = call ptr @memset(ptr %args, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #11
  %1 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %option, align 4, !annotation !196
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options) #11
  %port = getelementptr inbounds %struct.p9_fd_opts, ptr %opts, i32 0, i32 2
  %2 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 564, ptr %port, align 4
  %3 = ptrtoint ptr %opts to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %opts, align 4
  %wfd = getelementptr inbounds %struct.p9_fd_opts, ptr %opts, i32 0, i32 1
  %4 = ptrtoint ptr %wfd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %wfd, align 4
  %privport = getelementptr inbounds %struct.p9_fd_opts, ptr %opts, i32 0, i32 3
  %5 = ptrtoint ptr %privport to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %privport, align 2
  %tobool.not = icmp eq ptr %params, null
  br i1 %tobool.not, label %entry.cleanup25_crit_edge, label %if.end

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup25

if.end:                                           ; preds = %entry
  %call = tail call noalias ptr @kstrdup(ptr noundef nonnull %params, i32 noundef 3264) #11
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.parse_opts, ptr noundef nonnull @.str.21) #11
  br label %cleanup25

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %options, align 4
  %call443 = call ptr @strsep(ptr noundef nonnull %options, ptr noundef nonnull @.str.22) #11
  %cmp.not44 = icmp eq ptr %call443, null
  br i1 %cmp.not44, label %if.end3.while.end_crit_edge, label %if.end3.while.body_crit_edge

if.end3.while.body_crit_edge:                     ; preds = %if.end3
  br label %while.body

if.end3.while.end_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end3.while.body_crit_edge
  %call445 = phi ptr [ %call4, %cleanup.while.body_crit_edge ], [ %call443, %if.end3.while.body_crit_edge ]
  %7 = ptrtoint ptr %call445 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call445, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %while.body.cleanup_crit_edge, label %if.end7

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %while.body
  %call8 = call i32 @match_token(ptr noundef nonnull %call445, ptr noundef nonnull @tokens, ptr noundef nonnull %args) #11
  %9 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call8, label %if.then11 [
    i32 4, label %sw.bb22
    i32 3, label %if.end7.cleanup_crit_edge
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then11:                                        ; preds = %if.end7
  %call12 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %option) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.parse_opts, ptr noundef nonnull @.str.23) #11
  br label %cleanup

if.end16:                                         ; preds = %if.then11
  %10 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %call8, label %if.end16.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb18
    i32 2, label %sw.bb20
  ]

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %option, align 4
  %conv = trunc i32 %12 to i16
  %13 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %port, align 4
  br label %cleanup

sw.bb18:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %option, align 4
  %16 = ptrtoint ptr %opts to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %opts, align 4
  br label %cleanup

sw.bb20:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %option, align 4
  %19 = ptrtoint ptr %wfd to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %wfd, align 4
  br label %cleanup

sw.bb22:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %privport to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %privport, align 2
  br label %cleanup

cleanup:                                          ; preds = %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb, %if.end16.cleanup_crit_edge, %if.then14, %if.end7.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %call4 = call ptr @strsep(ptr noundef nonnull %options, ptr noundef nonnull @.str.22) #11
  %cmp.not = icmp eq ptr %call4, null
  br i1 %cmp.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end3.while.end_crit_edge
  call void @kfree(ptr noundef nonnull %call) #11
  br label %cleanup25

cleanup25:                                        ; preds = %while.end, %if.then2, %entry.cleanup25_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -12, %if.then2 ], [ 0, %entry.cleanup25_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_aton(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sock_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @p9_socket_open(ptr noundef %client, ptr noundef %csocket) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk = getelementptr inbounds %struct.socket, ptr %csocket, i32 0, i32 4
  %1 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk, align 16
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 41
  %3 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3072, ptr %sk_allocation, align 8
  %call1 = tail call ptr @sock_alloc_file(ptr noundef %csocket, i32 noundef 0, ptr noundef null) #11
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = tail call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid.i, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %9) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %10 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %f_count.i = getelementptr inbounds %struct.file, ptr %call1, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #11
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #11, !srcloc !197
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1, ptr %call7.i.i, align 8
  %wr = getelementptr inbounds %struct.p9_trans_fd, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %wr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call1, ptr %wr, align 4
  %trans = getelementptr inbounds %struct.p9_client, ptr %client, i32 0, i32 5
  %14 = ptrtoint ptr %trans to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %trans, align 4
  %status = getelementptr inbounds %struct.p9_client, ptr %client, i32 0, i32 4
  %15 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %status, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %call1, i32 0, i32 7
  %16 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %f_flags, align 4
  %or = or i32 %17, 2048
  store i32 %or, ptr %f_flags, align 4
  tail call fastcc void @p9_conn_create(ptr noundef %client)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %do.end ], [ 0, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_file(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @p9_conn_create(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %trans = getelementptr inbounds %struct.p9_client, ptr %client, i32 0, i32 5
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans, align 4
  %conn = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2
  %msize = getelementptr inbounds %struct.p9_client, ptr %client, i32 0, i32 1
  %2 = ptrtoint ptr %msize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msize, align 4
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_conn_create, ptr noundef nonnull @.str.31, ptr noundef %client, i32 noundef %3) #11
  %4 = ptrtoint ptr %conn to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %conn, ptr %conn, align 4
  %prev.i = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %conn, ptr %prev.i, align 4
  %client1 = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %client1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %client1, align 4
  %req_list = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %req_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %req_list, ptr %req_list, align 4
  %prev.i51 = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 3, i32 1
  %8 = ptrtoint ptr %prev.i51 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %req_list, ptr %prev.i51, align 4
  %unsent_req_list = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %unsent_req_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %unsent_req_list, ptr %unsent_req_list, align 4
  %prev.i52 = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 4, i32 1
  %10 = ptrtoint ptr %prev.i52 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %unsent_req_list, ptr %prev.i52, align 4
  %rq = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 15
  tail call void @__init_work(ptr noundef %rq, i32 noundef 0) #11
  %11 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %rq, align 4
  %lockdep_map = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 15, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.32, ptr noundef nonnull @p9_conn_create.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry5 = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 15, i32 1
  %12 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i53 = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 15, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i53 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry5, ptr %prev.i53, align 4
  %func = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 15, i32 2
  %14 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @p9_read_work, ptr %func, align 4
  %wq = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 16
  tail call void @__init_work(ptr noundef %wq, i32 noundef 0) #11
  %15 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %wq, align 4
  %lockdep_map13 = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 16, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map13, ptr noundef nonnull @.str.34, ptr noundef nonnull @p9_conn_create.__key.33, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry15 = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 16, i32 1
  %16 = ptrtoint ptr %entry15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry15, ptr %entry15, align 4
  %prev.i54 = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 16, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i54 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry15, ptr %prev.i54, align 4
  %func17 = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 16, i32 2
  %18 = ptrtoint ptr %func17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @p9_write_work, ptr %func17, align 4
  %poll_pending_link = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 12
  %19 = ptrtoint ptr %poll_pending_link to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %poll_pending_link, ptr %poll_pending_link, align 4
  %prev.i55 = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 12, i32 1
  %20 = ptrtoint ptr %prev.i55 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %poll_pending_link, ptr %prev.i55, align 4
  %pt = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 14
  %21 = ptrtoint ptr %pt to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @p9_pollwait, ptr %pt, align 4
  %_key.i = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 14, i32 1
  %22 = ptrtoint ptr %_key.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %_key.i, align 4
  %tobool.not.i = icmp eq ptr %client, null
  br i1 %tobool.not.i, label %entry.if.end25_crit_edge, label %land.lhs.true.i

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true.i:                                  ; preds = %entry
  %status.i = getelementptr inbounds %struct.p9_client, ptr %client, i32 0, i32 4
  %23 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i = icmp eq i32 %24, 0
  br i1 %cmp.i, label %if.end.i, label %land.lhs.true.i.if.end25_crit_edge

land.lhs.true.i.if.end25_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end.i:                                         ; preds = %land.lhs.true.i
  %25 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trans, align 4
  %tobool1.not.i = icmp eq ptr %26, null
  br i1 %tobool1.not.i, label %if.end.i.if.end25_crit_edge, label %if.end6.i

if.end.i.if.end25_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end6.i:                                        ; preds = %if.end.i
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %f_op.i.i = getelementptr inbounds %struct.file, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %f_op.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %f_op.i.i, align 4
  %poll.i.i = getelementptr inbounds %struct.file_operations, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %poll.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %poll.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end6.i.vfs_poll.exit.i_crit_edge, label %if.end.i.i, !prof !194

if.end6.i.vfs_poll.exit.i_crit_edge:              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vfs_poll.exit.i

if.end.i.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 %32(ptr noundef %28, ptr noundef %pt) #11
  br label %vfs_poll.exit.i

vfs_poll.exit.i:                                  ; preds = %if.end.i.i, %if.end6.i.vfs_poll.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.end.i.i ], [ 325, %if.end6.i.vfs_poll.exit.i_crit_edge ]
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %26, align 4
  %wr.i = getelementptr inbounds %struct.p9_trans_fd, ptr %26, i32 0, i32 1
  %35 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wr.i, align 4
  %cmp8.not.i = icmp eq ptr %34, %36
  br i1 %cmp8.not.i, label %vfs_poll.exit.i.p9_fd_poll.exit_crit_edge, label %if.then9.i

vfs_poll.exit.i.p9_fd_poll.exit_crit_edge:        ; preds = %vfs_poll.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %p9_fd_poll.exit

if.then9.i:                                       ; preds = %vfs_poll.exit.i
  %and.i = and i32 %retval.0.i.i, -5
  %f_op.i24.i = getelementptr inbounds %struct.file, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %f_op.i24.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %f_op.i24.i, align 4
  %poll.i25.i = getelementptr inbounds %struct.file_operations, ptr %38, i32 0, i32 9
  %39 = ptrtoint ptr %poll.i25.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %poll.i25.i, align 4
  %tobool.not.i26.i = icmp eq ptr %40, null
  br i1 %tobool.not.i26.i, label %if.then9.i.vfs_poll.exit30.i_crit_edge, label %if.end.i28.i, !prof !194

if.then9.i.vfs_poll.exit30.i_crit_edge:           ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vfs_poll.exit30.i

if.end.i28.i:                                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i27.i = tail call i32 %40(ptr noundef %36, ptr noundef %pt) #11
  %phi.bo.i = and i32 %call.i27.i, -2
  br label %vfs_poll.exit30.i

vfs_poll.exit30.i:                                ; preds = %if.end.i28.i, %if.then9.i.vfs_poll.exit30.i_crit_edge
  %retval.0.i29.i = phi i32 [ %phi.bo.i, %if.end.i28.i ], [ 324, %if.then9.i.vfs_poll.exit30.i_crit_edge ]
  %or.i = or i32 %retval.0.i29.i, %and.i
  br label %p9_fd_poll.exit

p9_fd_poll.exit:                                  ; preds = %vfs_poll.exit30.i, %vfs_poll.exit.i.p9_fd_poll.exit_crit_edge
  %retval.0.i = phi i32 [ %or.i, %vfs_poll.exit30.i ], [ %retval.0.i.i, %vfs_poll.exit.i.p9_fd_poll.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %p9_fd_poll.exit.if.end_crit_edge, label %if.then

p9_fd_poll.exit.if.end_crit_edge:                 ; preds = %p9_fd_poll.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %p9_fd_poll.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_conn_create, ptr noundef nonnull @.str.5, ptr noundef %conn) #11
  %wsched = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 17
  tail call void @_set_bit(i32 noundef 2, ptr noundef %wsched) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %p9_fd_poll.exit.if.end_crit_edge
  %and21 = and i32 %retval.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end.if.end25_crit_edge, label %if.then23

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_conn_create, ptr noundef nonnull @.str.7, ptr noundef %conn) #11
  %wsched24 = getelementptr inbounds %struct.p9_trans_fd, ptr %1, i32 0, i32 2, i32 17
  tail call void @_set_bit(i32 noundef 8, ptr noundef %wsched24) #11
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end.if.end25_crit_edge, %if.end.i.if.end25_crit_edge, %land.lhs.true.i.if.end25_crit_edge, %entry.if.end25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p9_read_work(ptr noundef %work) #2 align 64 {
entry:
  %pos.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -156
  %err1 = getelementptr i8, ptr %work, i32 -144
  %0 = ptrtoint ptr %err1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %err1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %rc = getelementptr i8, ptr %work, i32 -108
  %offset = getelementptr i8, ptr %work, i32 -100
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_read_work, ptr noundef nonnull @.str.35, ptr noundef %add.ptr, i32 noundef %3) #11
  %sdata = getelementptr i8, ptr %work, i32 -88
  %4 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdata, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then3, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %tmp_buf = getelementptr i8, ptr %work, i32 -116
  %6 = ptrtoint ptr %sdata to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tmp_buf, ptr %sdata, align 4
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %offset, align 4
  %capacity = getelementptr i8, ptr %work, i32 -96
  %8 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 7, ptr %capacity, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then3, %if.end.if.end9_crit_edge
  %wsched = getelementptr i8, ptr %work, i32 88
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %wsched) #11
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %capacity13 = getelementptr i8, ptr %work, i32 -96
  %11 = ptrtoint ptr %capacity13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %capacity13, align 4
  %sub = sub i32 %12, %10
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_read_work, ptr noundef nonnull @.str.36, ptr noundef %add.ptr, i32 noundef %10, i32 noundef %12, i32 noundef %sub) #11
  %client = getelementptr i8, ptr %work, i32 -148
  %13 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client, align 4
  %15 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sdata, align 4
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset, align 4
  %add.ptr22 = getelementptr i8, ptr %16, i32 %18
  %19 = ptrtoint ptr %capacity13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %capacity13, align 4
  %sub27 = sub i32 %20, %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.i) #11
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end9.if.end30.thread281_crit_edge, label %land.lhs.true.i

if.end9.if.end30.thread281_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.thread281

land.lhs.true.i:                                  ; preds = %if.end9
  %status.i = getelementptr inbounds %struct.p9_client, ptr %14, i32 0, i32 4
  %21 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp.not.i = icmp eq i32 %22, 2
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end30.thread281_crit_edge, label %if.end.i

land.lhs.true.i.if.end30.thread281_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.thread281

if.end.i:                                         ; preds = %land.lhs.true.i
  %trans.i = getelementptr inbounds %struct.p9_client, ptr %14, i32 0, i32 5
  %23 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %trans.i, align 4
  %tobool1.not.i = icmp eq ptr %24, null
  br i1 %tobool1.not.i, label %if.end.i.if.end30.thread281_crit_edge, label %if.end3.i

if.end.i.if.end30.thread281_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.thread281

if.end3.i:                                        ; preds = %if.end.i
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %f_flags.i = getelementptr inbounds %struct.file, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %28, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end3.i.if.end6.i_crit_edge

if.end3.i.if.end6.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.p9_fd_read, ptr noundef nonnull @.str.47) #11
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end3.i.if.end6.i_crit_edge
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %24, align 4
  %f_pos.i = getelementptr inbounds %struct.file, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %f_pos.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %f_pos.i, align 8
  %33 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %pos.i, align 8
  %34 = load ptr, ptr %24, align 4
  %call.i = call i32 @kernel_read(ptr noundef %34, ptr noundef %add.ptr22, i32 noundef %sub27, ptr noundef nonnull %pos.i) #11
  %call.fr.i = freeze i32 %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.fr.i)
  %cmp9.i = icmp sgt i32 %call.fr.i, 0
  br i1 %cmp9.i, label %if.end33, label %switch.early.test.i

switch.early.test.i:                              ; preds = %if.end6.i
  %35 = zext i32 %call.fr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %call.fr.i, label %if.then14.i [
    i32 -11, label %switch.early.test.i.p9_fd_read.exit_crit_edge
    i32 -512, label %switch.early.test.i.p9_fd_read.exit_crit_edge290
  ]

switch.early.test.i.p9_fd_read.exit_crit_edge290: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %p9_fd_read.exit

switch.early.test.i.p9_fd_read.exit_crit_edge:    ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %p9_fd_read.exit

if.then14.i:                                      ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %status.i, align 4
  br label %p9_fd_read.exit

p9_fd_read.exit:                                  ; preds = %if.then14.i, %switch.early.test.i.p9_fd_read.exit_crit_edge, %switch.early.test.i.p9_fd_read.exit_crit_edge290
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i) #11
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_read_work, ptr noundef nonnull @.str.37, ptr noundef %add.ptr, i32 noundef %call.fr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.fr.i)
  %cmp28 = icmp eq i32 %call.fr.i, -11
  br i1 %cmp28, label %p9_fd_read.exit.end_clear_crit_edge, label %p9_fd_read.exit.error_crit_edge

p9_fd_read.exit.error_crit_edge:                  ; preds = %p9_fd_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

p9_fd_read.exit.end_clear_crit_edge:              ; preds = %p9_fd_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %end_clear

if.end30.thread281:                               ; preds = %if.end.i.if.end30.thread281_crit_edge, %land.lhs.true.i.if.end30.thread281_crit_edge, %if.end9.if.end30.thread281_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i) #11
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_read_work, ptr noundef nonnull @.str.37, ptr noundef %add.ptr, i32 noundef -121) #11
  br label %error

if.end33:                                         ; preds = %if.end6.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i) #11
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_read_work, ptr noundef nonnull @.str.37, ptr noundef %add.ptr, i32 noundef %call.fr.i) #11
  %37 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offset, align 4
  %add = add i32 %38, %call.fr.i
  store i32 %add, ptr %offset, align 4
  %rreq = getelementptr i8, ptr %work, i32 -124
  %39 = ptrtoint ptr %rreq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rreq, align 4
  %tobool36.not = icmp eq ptr %40, null
  br i1 %tobool36.not, label %land.lhs.true, label %if.end33.land.lhs.true106_crit_edge

if.end33.land.lhs.true106_crit_edge:              ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true106

land.lhs.true:                                    ; preds = %if.end33
  %41 = ptrtoint ptr %capacity13 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %capacity13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %42)
  %cmp41 = icmp eq i32 %add, %42
  br i1 %cmp41, label %if.then42, label %land.lhs.true.end_clear_crit_edge

land.lhs.true.end_clear_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %end_clear

if.then42:                                        ; preds = %land.lhs.true
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_read_work, ptr noundef nonnull @.str.38) #11
  %43 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 7, ptr %rc, align 4
  %call47 = call i32 @p9_parse_header(ptr noundef %rc, ptr noundef %rc, ptr noundef null, ptr noundef null, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.p9_read_work, ptr noundef nonnull @.str.39, i32 noundef %call47) #11
  br label %error

if.end50:                                         ; preds = %if.then42
  %44 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rc, align 4
  %46 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %client, align 4
  %msize = getelementptr inbounds %struct.p9_client, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %msize to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %msize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %49)
  %cmp54.not = icmp ult i32 %45, %49
  br i1 %cmp54.not, label %if.end58, label %if.then55

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.p9_read_work, ptr noundef nonnull @.str.40, i32 noundef %45) #11
  br label %error

if.end58:                                         ; preds = %if.end50
  %tag = getelementptr i8, ptr %work, i32 -102
  %50 = ptrtoint ptr %tag to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %tag, align 2
  %conv = zext i16 %51 to i32
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_read_work, ptr noundef nonnull @.str.41, ptr noundef %add.ptr, i32 noundef %45, i32 noundef %conv) #11
  %52 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %client, align 4
  %54 = ptrtoint ptr %tag to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %tag, align 2
  %call65 = call ptr @p9_tag_lookup(ptr noundef %53, i16 noundef zeroext %55) #11
  %56 = ptrtoint ptr %rreq to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call65, ptr %rreq, align 4
  %tobool68.not = icmp eq ptr %call65, null
  br i1 %tobool68.not, label %if.end58.if.then72_crit_edge, label %lor.lhs.false

if.end58.if.then72_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then72

lor.lhs.false:                                    ; preds = %if.end58
  %57 = ptrtoint ptr %call65 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %call65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %cmp70.not = icmp eq i32 %58, 2
  br i1 %cmp70.not, label %if.end76, label %lor.lhs.false.if.then72_crit_edge

lor.lhs.false.if.then72_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then72

if.then72:                                        ; preds = %lor.lhs.false.if.then72_crit_edge, %if.end58.if.then72_crit_edge
  %59 = ptrtoint ptr %tag to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %tag, align 2
  %conv75 = zext i16 %60 to i32
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.p9_read_work, ptr noundef nonnull @.str.42, i32 noundef %conv75) #11
  br label %error

if.end76:                                         ; preds = %lor.lhs.false
  %sdata79 = getelementptr inbounds %struct.p9_req_t, ptr %call65, i32 0, i32 5, i32 6
  %61 = ptrtoint ptr %sdata79 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sdata79, align 4
  %tobool80.not = icmp eq ptr %62, null
  br i1 %tobool80.not, label %if.then81, label %if.end103

if.then81:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %tag to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %tag, align 2
  %conv84 = zext i16 %64 to i32
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.p9_read_work, ptr noundef nonnull @.str.43, i32 noundef %conv84, ptr noundef nonnull %call65) #11
  %65 = ptrtoint ptr %rreq to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %rreq, align 4
  br label %error

if.end103:                                        ; preds = %if.end76
  %66 = ptrtoint ptr %sdata to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %62, ptr %sdata, align 4
  %tmp_buf95 = getelementptr i8, ptr %work, i32 -116
  %67 = ptrtoint ptr %capacity13 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %capacity13, align 4
  %69 = call ptr @memcpy(ptr %62, ptr %tmp_buf95, i32 %68)
  %70 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rc, align 4
  store i32 %71, ptr %capacity13, align 4
  %72 = ptrtoint ptr %rreq to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pr = load ptr, ptr %rreq, align 4
  %tobool105.not = icmp eq ptr %.pr, null
  br i1 %tobool105.not, label %if.end103.end_clear_crit_edge, label %if.end103.land.lhs.true106_crit_edge

if.end103.land.lhs.true106_crit_edge:             ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true106

if.end103.end_clear_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %end_clear

land.lhs.true106:                                 ; preds = %if.end103.land.lhs.true106_crit_edge, %if.end33.land.lhs.true106_crit_edge
  %73 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %offset, align 4
  %75 = ptrtoint ptr %capacity13 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %capacity13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp111 = icmp eq i32 %74, %76
  br i1 %cmp111, label %if.then113, label %land.lhs.true106.end_clear_crit_edge

land.lhs.true106.end_clear_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #13
  br label %end_clear

if.then113:                                       ; preds = %land.lhs.true106
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_read_work, ptr noundef nonnull @.str.44) #11
  %77 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %offset, align 4
  %79 = ptrtoint ptr %rreq to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rreq, align 4
  %rc117 = getelementptr inbounds %struct.p9_req_t, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %rc117 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %78, ptr %rc117, align 4
  %82 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %client, align 4
  call void @_raw_spin_lock(ptr noundef %83) #11
  %84 = ptrtoint ptr %rreq to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rreq, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %87, label %if.else133 [
    i32 2, label %if.then124
    i32 4, label %if.then132
  ]

if.then124:                                       ; preds = %if.then113
  %req_list = getelementptr inbounds %struct.p9_req_t, ptr %85, i32 0, i32 6
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %req_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then124.list_del.exit_crit_edge

if.then124.list_del.exit_crit_edge:               ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.p9_req_t, ptr %85, i32 0, i32 6, i32 1
  %89 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev.i.i, align 4
  %91 = ptrtoint ptr %req_list to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %req_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev1.i.i.i, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %92, ptr %90, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then124.list_del.exit_crit_edge
  %95 = ptrtoint ptr %req_list to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr inttoptr (i32 256 to ptr), ptr %req_list, align 4
  %prev.i = getelementptr inbounds %struct.p9_req_t, ptr %85, i32 0, i32 6, i32 1
  %96 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %97 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %client, align 4
  %99 = ptrtoint ptr %rreq to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rreq, align 4
  call void @p9_client_cb(ptr noundef %98, ptr noundef %100, i32 noundef 3) #11
  br label %if.end140

if.then132:                                       ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #13
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_read_work, ptr noundef nonnull @.str.45) #11
  br label %if.end140

if.else133:                                       ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #13
  %101 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %client, align 4
  call void @_raw_spin_unlock(ptr noundef %102) #11
  %tag137 = getelementptr i8, ptr %work, i32 -102
  %103 = ptrtoint ptr %tag137 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %tag137, align 2
  %conv138 = zext i16 %104 to i32
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.p9_read_work, ptr noundef nonnull @.str.46, i32 noundef %conv138) #11
  br label %error

if.end140:                                        ; preds = %if.then132, %list_del.exit
  %105 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %client, align 4
  call void @_raw_spin_unlock(ptr noundef %106) #11
  %107 = ptrtoint ptr %sdata to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %sdata, align 4
  %108 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %offset, align 4
  %109 = ptrtoint ptr %capacity13 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %capacity13, align 4
  %110 = ptrtoint ptr %rreq to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rreq, align 4
  %call150 = call i32 @p9_req_put(ptr noundef %111) #11
  %112 = ptrtoint ptr %rreq to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %rreq, align 4
  br label %end_clear

end_clear:                                        ; preds = %if.end140, %land.lhs.true106.end_clear_crit_edge, %if.end103.end_clear_crit_edge, %land.lhs.true.end_clear_crit_edge, %p9_fd_read.exit.end_clear_crit_edge
  call void @_clear_bit(i32 noundef 1, ptr noundef %wsched) #11
  %req_list154 = getelementptr i8, ptr %work, i32 -140
  %113 = ptrtoint ptr %req_list154 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile ptr, ptr %req_list154, align 4
  %cmp.i.not = icmp eq ptr %114, %req_list154
  br i1 %cmp.i.not, label %end_clear.cleanup_crit_edge, label %if.then157

end_clear.cleanup_crit_edge:                      ; preds = %end_clear
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then157:                                       ; preds = %end_clear
  %call159 = call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %wsched) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.else162, label %if.then157.land.lhs.true167_crit_edge

if.then157.land.lhs.true167_crit_edge:            ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true167

if.else162:                                       ; preds = %if.then157
  %115 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %client, align 4
  %tobool.not.i263 = icmp eq ptr %116, null
  br i1 %tobool.not.i263, label %if.else162.cleanup_crit_edge, label %land.lhs.true.i266

if.else162.cleanup_crit_edge:                     ; preds = %if.else162
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.i266:                               ; preds = %if.else162
  %status.i264 = getelementptr inbounds %struct.p9_client, ptr %116, i32 0, i32 4
  %117 = ptrtoint ptr %status.i264 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %status.i264, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp.i265 = icmp eq i32 %118, 0
  br i1 %cmp.i265, label %if.end.i269, label %land.lhs.true.i266.cleanup_crit_edge

land.lhs.true.i266.cleanup_crit_edge:             ; preds = %land.lhs.true.i266
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i269:                                      ; preds = %land.lhs.true.i266
  %trans.i267 = getelementptr inbounds %struct.p9_client, ptr %116, i32 0, i32 5
  %119 = ptrtoint ptr %trans.i267 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %trans.i267, align 4
  %tobool1.not.i268 = icmp eq ptr %120, null
  br i1 %tobool1.not.i268, label %if.end.i269.cleanup_crit_edge, label %if.end6.i270

if.end.i269.cleanup_crit_edge:                    ; preds = %if.end.i269
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6.i270:                                     ; preds = %if.end.i269
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  %f_op.i.i = getelementptr inbounds %struct.file, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %f_op.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %f_op.i.i, align 4
  %poll.i.i = getelementptr inbounds %struct.file_operations, ptr %124, i32 0, i32 9
  %125 = ptrtoint ptr %poll.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %poll.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %126, null
  br i1 %tobool.not.i.i, label %if.end6.i270.vfs_poll.exit.i_crit_edge, label %if.end.i.i272, !prof !194

if.end6.i270.vfs_poll.exit.i_crit_edge:           ; preds = %if.end6.i270
  call void @__sanitizer_cov_trace_pc() #13
  br label %vfs_poll.exit.i

if.end.i.i272:                                    ; preds = %if.end6.i270
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i271 = call i32 %126(ptr noundef %122, ptr noundef null) #11
  br label %vfs_poll.exit.i

vfs_poll.exit.i:                                  ; preds = %if.end.i.i272, %if.end6.i270.vfs_poll.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i271, %if.end.i.i272 ], [ 325, %if.end6.i270.vfs_poll.exit.i_crit_edge ]
  %127 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %120, align 4
  %wr.i = getelementptr inbounds %struct.p9_trans_fd, ptr %120, i32 0, i32 1
  %129 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %wr.i, align 4
  %cmp8.not.i = icmp eq ptr %128, %130
  br i1 %cmp8.not.i, label %vfs_poll.exit.i.p9_fd_poll.exit_crit_edge, label %if.then9.i

vfs_poll.exit.i.p9_fd_poll.exit_crit_edge:        ; preds = %vfs_poll.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %p9_fd_poll.exit

if.then9.i:                                       ; preds = %vfs_poll.exit.i
  %and.i273 = and i32 %retval.0.i.i, -5
  %f_op.i24.i = getelementptr inbounds %struct.file, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %f_op.i24.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %f_op.i24.i, align 4
  %poll.i25.i = getelementptr inbounds %struct.file_operations, ptr %132, i32 0, i32 9
  %133 = ptrtoint ptr %poll.i25.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %poll.i25.i, align 4
  %tobool.not.i26.i = icmp eq ptr %134, null
  br i1 %tobool.not.i26.i, label %if.then9.i.vfs_poll.exit30.i_crit_edge, label %if.end.i28.i, !prof !194

if.then9.i.vfs_poll.exit30.i_crit_edge:           ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vfs_poll.exit30.i

if.end.i28.i:                                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i27.i = call i32 %134(ptr noundef %130, ptr noundef null) #11
  br label %vfs_poll.exit30.i

vfs_poll.exit30.i:                                ; preds = %if.end.i28.i, %if.then9.i.vfs_poll.exit30.i_crit_edge
  %retval.0.i29.i = phi i32 [ 0, %if.end.i28.i ], [ 324, %if.then9.i.vfs_poll.exit30.i_crit_edge ]
  %or.i = or i32 %retval.0.i29.i, %and.i273
  br label %p9_fd_poll.exit

p9_fd_poll.exit:                                  ; preds = %vfs_poll.exit30.i, %vfs_poll.exit.i.p9_fd_poll.exit_crit_edge
  %retval.0.i274 = phi i32 [ %or.i, %vfs_poll.exit30.i ], [ %retval.0.i.i, %vfs_poll.exit.i.p9_fd_poll.exit_crit_edge ]
  %phi.bo = and i32 %retval.0.i274, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo)
  %phi.cmp = icmp eq i32 %phi.bo, 0
  br i1 %phi.cmp, label %p9_fd_poll.exit.cleanup_crit_edge, label %p9_fd_poll.exit.land.lhs.true167_crit_edge

p9_fd_poll.exit.land.lhs.true167_crit_edge:       ; preds = %p9_fd_poll.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true167

p9_fd_poll.exit.cleanup_crit_edge:                ; preds = %p9_fd_poll.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true167:                                 ; preds = %p9_fd_poll.exit.land.lhs.true167_crit_edge, %if.then157.land.lhs.true167_crit_edge
  %call169 = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %wsched) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.then171, label %land.lhs.true167.cleanup_crit_edge

land.lhs.true167.cleanup_crit_edge:               ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then171:                                       ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #13
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_read_work, ptr noundef nonnull @.str.6, ptr noundef %add.ptr) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %135 = load ptr, ptr @system_wq, align 4
  %call.i.i275 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %135, ptr noundef %work) #11
  br label %cleanup

error:                                            ; preds = %if.else133, %if.then81, %if.then72, %if.then55, %if.then49, %if.end30.thread281, %p9_fd_read.exit.error_crit_edge
  %err.0 = phi i32 [ -5, %if.else133 ], [ %call47, %if.then49 ], [ -5, %if.then55 ], [ -5, %if.then72 ], [ -5, %if.then81 ], [ -121, %if.end30.thread281 ], [ %call.fr.i, %p9_fd_read.exit.error_crit_edge ]
  call fastcc void @p9_conn_cancel(ptr noundef %add.ptr, i32 noundef %err.0)
  call void @_clear_bit(i32 noundef 1, ptr noundef %wsched) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %if.then171, %land.lhs.true167.cleanup_crit_edge, %p9_fd_poll.exit.cleanup_crit_edge, %if.end.i269.cleanup_crit_edge, %land.lhs.true.i266.cleanup_crit_edge, %if.else162.cleanup_crit_edge, %end_clear.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p9_write_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -200
  %err1 = getelementptr i8, ptr %work, i32 -188
  %0 = ptrtoint ptr %err1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %err1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %wsched = getelementptr i8, ptr %work, i32 44
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %wsched) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %wsize = getelementptr i8, ptr %work, i32 -124
  %2 = ptrtoint ptr %wsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then2, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then2:                                         ; preds = %if.end
  %client = getelementptr i8, ptr %work, i32 -192
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  tail call void @_raw_spin_lock(ptr noundef %5) #11
  %unsent_req_list = getelementptr i8, ptr %work, i32 -176
  %6 = ptrtoint ptr %unsent_req_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %unsent_req_list, align 4
  %cmp.i.not = icmp eq ptr %7, %unsent_req_list
  br i1 %cmp.i.not, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %wsched5 = getelementptr i8, ptr %work, i32 44
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %wsched5) #11
  %8 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client, align 4
  tail call void @_raw_spin_unlock(ptr noundef %9) #11
  br label %cleanup

if.end8:                                          ; preds = %if.then2
  %add.ptr12 = getelementptr i8, ptr %7, i32 -112
  %10 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %add.ptr12, align 4
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_write_work, ptr noundef nonnull @.str.48, ptr noundef %add.ptr12) #11
  %req_list13 = getelementptr i8, ptr %work, i32 -184
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.__list_del_entry.exit.i_crit_edge

if.end8.__list_del_entry.exit.i_crit_edge:        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end8.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr i8, ptr %work, i32 -180
  %17 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %7, ptr noundef %18, ptr noundef %req_list13) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %7, ptr %prev.i2.i, align 4
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %req_list13, ptr %7, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %7, ptr %18, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %tc = getelementptr i8, ptr %7, i32 -48
  %sdata = getelementptr i8, ptr %7, i32 -28
  %23 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sdata, align 4
  %wbuf = getelementptr i8, ptr %work, i32 -120
  %25 = ptrtoint ptr %wbuf to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %wbuf, align 4
  %26 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tc, align 4
  %28 = ptrtoint ptr %wsize to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %wsize, align 4
  %wpos = getelementptr i8, ptr %work, i32 -128
  %29 = ptrtoint ptr %wpos to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %wpos, align 4
  %refcount.i = getelementptr i8, ptr %7, i32 -104
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !198
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %list_move_tail.exit.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !194

list_move_tail.exit.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %list_move_tail.exit
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %31 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %.not.i.i.i.i.i = icmp sgt i32 %31, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.p9_req_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !199

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.p9_req_get.exit_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %p9_req_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %list_move_tail.exit.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %list_move_tail.exit.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %p9_req_get.exit

p9_req_get.exit:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.p9_req_get.exit_crit_edge
  %wreq = getelementptr i8, ptr %work, i32 -164
  %32 = ptrtoint ptr %wreq to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr12, ptr %wreq, align 4
  %33 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %client, align 4
  tail call void @_raw_spin_unlock(ptr noundef %34) #11
  br label %if.end18

if.end18:                                         ; preds = %p9_req_get.exit, %if.end.if.end18_crit_edge
  %wpos19 = getelementptr i8, ptr %work, i32 -128
  %35 = ptrtoint ptr %wpos19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %wpos19, align 4
  %37 = ptrtoint ptr %wsize to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %wsize, align 4
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_write_work, ptr noundef nonnull @.str.49, ptr noundef %add.ptr, i32 noundef %36, i32 noundef %38) #11
  %wsched21 = getelementptr i8, ptr %work, i32 44
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %wsched21) #11
  %client22 = getelementptr i8, ptr %work, i32 -192
  %39 = ptrtoint ptr %client22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %client22, align 4
  %wbuf23 = getelementptr i8, ptr %work, i32 -120
  %41 = ptrtoint ptr %wbuf23 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wbuf23, align 4
  %43 = ptrtoint ptr %wpos19 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %wpos19, align 4
  %add.ptr25 = getelementptr i8, ptr %42, i32 %44
  %45 = ptrtoint ptr %wsize to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %wsize, align 4
  %sub = sub i32 %46, %44
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %if.end18.p9_fd_write.exit.thread_crit_edge, label %land.lhs.true.i

if.end18.p9_fd_write.exit.thread_crit_edge:       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %p9_fd_write.exit.thread

land.lhs.true.i:                                  ; preds = %if.end18
  %status.i = getelementptr inbounds %struct.p9_client, ptr %40, i32 0, i32 4
  %47 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp.not.i = icmp eq i32 %48, 2
  br i1 %cmp.not.i, label %land.lhs.true.i.p9_fd_write.exit.thread_crit_edge, label %if.end.i

land.lhs.true.i.p9_fd_write.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %p9_fd_write.exit.thread

if.end.i:                                         ; preds = %land.lhs.true.i
  %trans.i = getelementptr inbounds %struct.p9_client, ptr %40, i32 0, i32 5
  %49 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %trans.i, align 4
  %tobool1.not.i = icmp eq ptr %50, null
  br i1 %tobool1.not.i, label %if.end.i.p9_fd_write.exit.thread_crit_edge, label %if.end3.i

if.end.i.p9_fd_write.exit.thread_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %p9_fd_write.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %wr.i = getelementptr inbounds %struct.p9_trans_fd, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wr.i, align 4
  %f_flags.i = getelementptr inbounds %struct.file, ptr %52, i32 0, i32 7
  %53 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %54, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end3.i.if.end6.i_crit_edge

if.end3.i.if.end6.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.p9_fd_write, ptr noundef nonnull @.str.51) #11
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end3.i.if.end6.i_crit_edge
  %55 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wr.i, align 4
  %f_pos.i = getelementptr inbounds %struct.file, ptr %56, i32 0, i32 10
  %call.i = tail call i32 @kernel_write(ptr noundef %56, ptr noundef %add.ptr25, i32 noundef %sub, ptr noundef %f_pos.i) #11
  %call.fr.i = freeze i32 %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.fr.i)
  %cmp9.i = icmp sgt i32 %call.fr.i, 0
  br i1 %cmp9.i, label %if.end6.i.p9_fd_write.exit.thread_crit_edge, label %switch.early.test.i

if.end6.i.p9_fd_write.exit.thread_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %p9_fd_write.exit.thread

switch.early.test.i:                              ; preds = %if.end6.i
  %57 = zext i32 %call.fr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %call.fr.i, label %if.then14.i [
    i32 -11, label %switch.early.test.i.p9_fd_write.exit_crit_edge
    i32 -512, label %switch.early.test.i.p9_fd_write.exit_crit_edge152
  ]

switch.early.test.i.p9_fd_write.exit_crit_edge152: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %p9_fd_write.exit

switch.early.test.i.p9_fd_write.exit_crit_edge:   ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %p9_fd_write.exit

if.then14.i:                                      ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %status.i, align 4
  br label %p9_fd_write.exit

p9_fd_write.exit.thread:                          ; preds = %if.end6.i.p9_fd_write.exit.thread_crit_edge, %if.end.i.p9_fd_write.exit.thread_crit_edge, %land.lhs.true.i.p9_fd_write.exit.thread_crit_edge, %if.end18.p9_fd_write.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -121, %if.end18.p9_fd_write.exit.thread_crit_edge ], [ -121, %land.lhs.true.i.p9_fd_write.exit.thread_crit_edge ], [ %call.fr.i, %if.end6.i.p9_fd_write.exit.thread_crit_edge ], [ -121, %if.end.i.p9_fd_write.exit.thread_crit_edge ]
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_write_work, ptr noundef nonnull @.str.50, ptr noundef %add.ptr, i32 noundef %retval.0.i.ph) #11
  br label %if.end31

p9_fd_write.exit:                                 ; preds = %if.then14.i, %switch.early.test.i.p9_fd_write.exit_crit_edge, %switch.early.test.i.p9_fd_write.exit_crit_edge152
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_write_work, ptr noundef nonnull @.str.50, ptr noundef %add.ptr, i32 noundef %call.fr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.fr.i)
  %cmp29 = icmp eq i32 %call.fr.i, -11
  br i1 %cmp29, label %p9_fd_write.exit.end_clear_crit_edge, label %p9_fd_write.exit.if.end31_crit_edge

p9_fd_write.exit.if.end31_crit_edge:              ; preds = %p9_fd_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

p9_fd_write.exit.end_clear_crit_edge:             ; preds = %p9_fd_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %end_clear

if.end31:                                         ; preds = %p9_fd_write.exit.if.end31_crit_edge, %p9_fd_write.exit.thread
  %retval.0.i145 = phi i32 [ %retval.0.i.ph, %p9_fd_write.exit.thread ], [ %call.fr.i, %p9_fd_write.exit.if.end31_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i145)
  %cmp32 = icmp slt i32 %retval.0.i145, 0
  br i1 %cmp32, label %if.end31.error_crit_edge, label %if.else

if.end31.error_crit_edge:                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.else:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i145)
  %cmp34 = icmp eq i32 %retval.0.i145, 0
  br i1 %cmp34, label %if.else.error_crit_edge, label %if.end37

if.else.error_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end37:                                         ; preds = %if.else
  %59 = ptrtoint ptr %wpos19 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %wpos19, align 4
  %add = add i32 %60, %retval.0.i145
  store i32 %add, ptr %wpos19, align 4
  %61 = ptrtoint ptr %wsize to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %wsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %62)
  %cmp41 = icmp eq i32 %add, %62
  br i1 %cmp41, label %if.then42, label %if.end37.end_clear_crit_edge

if.end37.end_clear_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %end_clear

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %wsize to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %wsize, align 4
  %64 = ptrtoint ptr %wpos19 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %wpos19, align 4
  %wreq45 = getelementptr i8, ptr %work, i32 -164
  %65 = ptrtoint ptr %wreq45 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %wreq45, align 4
  %call46 = tail call i32 @p9_req_put(ptr noundef %66) #11
  %67 = ptrtoint ptr %wreq45 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %wreq45, align 4
  br label %end_clear

end_clear:                                        ; preds = %if.then42, %if.end37.end_clear_crit_edge, %p9_fd_write.exit.end_clear_crit_edge
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %wsched21) #11
  %68 = ptrtoint ptr %wsize to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %wsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool51.not = icmp eq i32 %69, 0
  br i1 %tobool51.not, label %lor.lhs.false, label %end_clear.if.then55_crit_edge

end_clear.if.then55_crit_edge:                    ; preds = %end_clear
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55

lor.lhs.false:                                    ; preds = %end_clear
  %unsent_req_list52 = getelementptr i8, ptr %work, i32 -176
  %70 = ptrtoint ptr %unsent_req_list52 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %unsent_req_list52, align 4
  %cmp.i127.not = icmp eq ptr %71, %unsent_req_list52
  br i1 %cmp.i127.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then55_crit_edge

lor.lhs.false.if.then55_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then55:                                        ; preds = %lor.lhs.false.if.then55_crit_edge, %end_clear.if.then55_crit_edge
  %call57 = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %wsched21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.else60, label %if.then55.land.lhs.true_crit_edge

if.then55.land.lhs.true_crit_edge:                ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.else60:                                        ; preds = %if.then55
  %72 = ptrtoint ptr %client22 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %client22, align 4
  %tobool.not.i129 = icmp eq ptr %73, null
  br i1 %tobool.not.i129, label %if.else60.cleanup_crit_edge, label %land.lhs.true.i132

if.else60.cleanup_crit_edge:                      ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.i132:                               ; preds = %if.else60
  %status.i130 = getelementptr inbounds %struct.p9_client, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %status.i130 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %status.i130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i131 = icmp eq i32 %75, 0
  br i1 %cmp.i131, label %if.end.i135, label %land.lhs.true.i132.cleanup_crit_edge

land.lhs.true.i132.cleanup_crit_edge:             ; preds = %land.lhs.true.i132
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i135:                                      ; preds = %land.lhs.true.i132
  %trans.i133 = getelementptr inbounds %struct.p9_client, ptr %73, i32 0, i32 5
  %76 = ptrtoint ptr %trans.i133 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %trans.i133, align 4
  %tobool1.not.i134 = icmp eq ptr %77, null
  br i1 %tobool1.not.i134, label %if.end.i135.cleanup_crit_edge, label %if.end6.i136

if.end.i135.cleanup_crit_edge:                    ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6.i136:                                     ; preds = %if.end.i135
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %f_op.i.i = getelementptr inbounds %struct.file, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %f_op.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %f_op.i.i, align 4
  %poll.i.i = getelementptr inbounds %struct.file_operations, ptr %81, i32 0, i32 9
  %82 = ptrtoint ptr %poll.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %poll.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %83, null
  br i1 %tobool.not.i.i, label %if.end6.i136.vfs_poll.exit.i_crit_edge, label %if.end.i.i138, !prof !194

if.end6.i136.vfs_poll.exit.i_crit_edge:           ; preds = %if.end6.i136
  call void @__sanitizer_cov_trace_pc() #13
  br label %vfs_poll.exit.i

if.end.i.i138:                                    ; preds = %if.end6.i136
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i137 = tail call i32 %83(ptr noundef %79, ptr noundef null) #11
  br label %vfs_poll.exit.i

vfs_poll.exit.i:                                  ; preds = %if.end.i.i138, %if.end6.i136.vfs_poll.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i137, %if.end.i.i138 ], [ 325, %if.end6.i136.vfs_poll.exit.i_crit_edge ]
  %84 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %77, align 4
  %wr.i139 = getelementptr inbounds %struct.p9_trans_fd, ptr %77, i32 0, i32 1
  %86 = ptrtoint ptr %wr.i139 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %wr.i139, align 4
  %cmp8.not.i = icmp eq ptr %85, %87
  br i1 %cmp8.not.i, label %vfs_poll.exit.i.p9_fd_poll.exit_crit_edge, label %if.then9.i

vfs_poll.exit.i.p9_fd_poll.exit_crit_edge:        ; preds = %vfs_poll.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %p9_fd_poll.exit

if.then9.i:                                       ; preds = %vfs_poll.exit.i
  %f_op.i24.i = getelementptr inbounds %struct.file, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %f_op.i24.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %f_op.i24.i, align 4
  %poll.i25.i = getelementptr inbounds %struct.file_operations, ptr %89, i32 0, i32 9
  %90 = ptrtoint ptr %poll.i25.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %poll.i25.i, align 4
  %tobool.not.i26.i = icmp eq ptr %91, null
  br i1 %tobool.not.i26.i, label %if.then9.i.land.lhs.true_crit_edge, label %if.end.i28.i, !prof !194

if.then9.i.land.lhs.true_crit_edge:               ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.end.i28.i:                                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i27.i = tail call i32 %91(ptr noundef %87, ptr noundef null) #11
  %phi.bo.i = and i32 %call.i27.i, -2
  br label %p9_fd_poll.exit

p9_fd_poll.exit:                                  ; preds = %if.end.i28.i, %vfs_poll.exit.i.p9_fd_poll.exit_crit_edge
  %retval.0.i141 = phi i32 [ %retval.0.i.i, %vfs_poll.exit.i.p9_fd_poll.exit_crit_edge ], [ %phi.bo.i, %if.end.i28.i ]
  %phi.bo = and i32 %retval.0.i141, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo)
  %phi.cmp = icmp eq i32 %phi.bo, 0
  br i1 %phi.cmp, label %p9_fd_poll.exit.cleanup_crit_edge, label %p9_fd_poll.exit.land.lhs.true_crit_edge

p9_fd_poll.exit.land.lhs.true_crit_edge:          ; preds = %p9_fd_poll.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

p9_fd_poll.exit.cleanup_crit_edge:                ; preds = %p9_fd_poll.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %p9_fd_poll.exit.land.lhs.true_crit_edge, %if.then9.i.land.lhs.true_crit_edge, %if.then55.land.lhs.true_crit_edge
  %call66 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %wsched21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then68, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then68:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_write_work, ptr noundef nonnull @.str.8, ptr noundef %add.ptr) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %92 = load ptr, ptr @system_wq, align 4
  %call.i.i142 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %92, ptr noundef %work) #11
  br label %cleanup

error:                                            ; preds = %if.else.error_crit_edge, %if.end31.error_crit_edge
  %err.0 = phi i32 [ %retval.0.i145, %if.end31.error_crit_edge ], [ -121, %if.else.error_crit_edge ]
  tail call fastcc void @p9_conn_cancel(ptr noundef %add.ptr, i32 noundef %err.0)
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %wsched21) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %if.then68, %land.lhs.true.cleanup_crit_edge, %p9_fd_poll.exit.cleanup_crit_edge, %if.end.i135.cleanup_crit_edge, %land.lhs.true.i132.cleanup_crit_edge, %if.else60.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then4, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p9_pollwait(ptr nocapture noundef readnone %filp, ptr noundef %wait_address, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %p, i32 -148
  %poll_wait = getelementptr i8, ptr %p, i32 -56
  %wait_addr = getelementptr i8, ptr %p, i32 -32
  %0 = ptrtoint ptr %wait_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wait_addr, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %entry.for.end_crit_edge, label %for.cond

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr i8, ptr %p, i32 -28
  %wait_addr.1 = getelementptr i8, ptr %p, i32 -4
  %2 = ptrtoint ptr %wait_addr.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait_addr.1, align 4
  %cmp1.1 = icmp eq ptr %3, null
  br i1 %cmp1.1, label %for.cond.for.end_crit_edge, label %for.cond.if.then4_crit_edge

for.cond.if.then4_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %arrayidx.lcssa = phi ptr [ %poll_wait, %entry.for.end_crit_edge ], [ %arrayidx.1, %for.cond.for.end_crit_edge ]
  %tobool.not = icmp eq ptr %arrayidx.lcssa, null
  br i1 %tobool.not, label %for.end.if.then4_crit_edge, label %if.end5

for.end.if.then4_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

if.then4:                                         ; preds = %for.end.if.then4_crit_edge, %for.cond.if.then4_crit_edge
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.p9_pollwait, ptr noundef nonnull @.str.52) #11
  br label %cleanup

if.end5:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %arrayidx.lcssa, align 4
  %wait_addr6 = getelementptr inbounds %struct.p9_poll_wait, ptr %arrayidx.lcssa, i32 0, i32 2
  %5 = ptrtoint ptr %wait_addr6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %wait_address, ptr %wait_addr6, align 4
  %wait = getelementptr inbounds %struct.p9_poll_wait, ptr %arrayidx.lcssa, i32 0, i32 1
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait, align 4
  %private.i = getelementptr inbounds %struct.p9_poll_wait, ptr %arrayidx.lcssa, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %private.i, align 4
  %func1.i = getelementptr inbounds %struct.p9_poll_wait, ptr %arrayidx.lcssa, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %func1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @p9_pollwake, ptr %func1.i, align 4
  tail call void @add_wait_queue(ptr noundef %wait_address, ptr noundef %wait) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_parse_header(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @p9_tag_lookup(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_req_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p9_pollwake(ptr nocapture noundef readonly %wait, i32 noundef %mode, i32 noundef %sync, ptr nocapture noundef readnone %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wait, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @p9_poll_lock) #11
  %poll_pending_link = getelementptr inbounds %struct.p9_conn, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %poll_pending_link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %poll_pending_link, align 4
  %cmp.i.not = icmp eq ptr %3, %poll_pending_link
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @p9_poll_pending_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %poll_pending_link, ptr noundef %4, ptr noundef nonnull @p9_poll_pending_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %poll_pending_link, ptr getelementptr inbounds (%struct.list_head, ptr @p9_poll_pending_list, i32 0, i32 1), align 4
  %5 = ptrtoint ptr %poll_pending_link to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @p9_poll_pending_list, ptr %poll_pending_link, align 4
  %prev3.i.i = getelementptr inbounds %struct.p9_conn, ptr %1, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %poll_pending_link, ptr %4, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @p9_poll_lock, i32 noundef %call3) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i10 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef nonnull @p9_poll_work) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p9_fd_create_unix(ptr noundef %client, ptr noundef %addr, ptr nocapture noundef readnone %args) #2 align 64 {
entry:
  %csocket = alloca ptr, align 4
  %sun_server = alloca %struct.sockaddr_un, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %csocket) #11
  call void @llvm.lifetime.start.p0(i64 110, ptr nonnull %sun_server) #11
  %0 = getelementptr inbounds i8, ptr %sun_server, i32 2
  %1 = call ptr @memset(ptr %0, i32 255, i32 108)
  %2 = ptrtoint ptr %csocket to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %csocket, align 4
  %tobool.not = icmp eq ptr %addr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @strlen(ptr noundef nonnull %addr) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 107, i32 %call)
  %cmp = icmp ugt i32 %call, 107
  br i1 %cmp, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = tail call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 68
  %7 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pid.i, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef %8, ptr noundef nonnull %addr) #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %9 = ptrtoint ptr %sun_server to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %sun_server, align 2
  %sun_path = getelementptr inbounds %struct.sockaddr_un, ptr %sun_server, i32 0, i32 1
  %call8 = call ptr @strcpy(ptr noundef %sun_path, ptr noundef nonnull %addr) #16
  %10 = call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i47 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i47 to ptr
  %task10 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task10, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 110
  %14 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nsproxy, align 4
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net_ns, align 4
  %call11 = call i32 @__sock_create(ptr noundef %17, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %csocket, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end16, label %if.end22

do.end16:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %task10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task10, align 8
  %pid.i48 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid.i48 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid.i48, align 8
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.61, i32 noundef %21) #14
  br label %cleanup

if.end22:                                         ; preds = %if.end7
  %22 = ptrtoint ptr %csocket to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %csocket, align 4
  %ops = getelementptr inbounds %struct.socket, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %connect = getelementptr inbounds %struct.proto_ops, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %connect to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %connect, align 4
  %call23 = call i32 %27(ptr noundef %23, ptr noundef nonnull %sun_server, i32 noundef 109, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %do.end28, label %if.end34

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %task10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task10, align 8
  %pid.i49 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid.i49 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid.i49, align 8
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.61, i32 noundef %31, ptr noundef nonnull %addr, i32 noundef %call23) #14
  %32 = ptrtoint ptr %csocket to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %csocket, align 4
  call void @sock_release(ptr noundef %33) #11
  br label %cleanup

if.end34:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %csocket to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %csocket, align 4
  %call35 = call fastcc i32 @p9_socket_open(ptr noundef %client, ptr noundef %35)
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end28, %do.end16, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -36, %do.end ], [ %call11, %do.end16 ], [ %call23, %do.end28 ], [ %call35, %if.end34 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 110, ptr nonnull %sun_server) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csocket) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p9_fd_create(ptr noundef %client, ptr nocapture noundef readnone %addr, ptr noundef %args) #2 align 64 {
entry:
  %opts = alloca %struct.p9_fd_opts, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %opts) #11
  %0 = call ptr @memset(ptr %opts, i32 255, i32 12)
  %call = call fastcc i32 @parse_opts(ptr noundef %args, ptr noundef nonnull %opts)
  %1 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %opts, align 4
  %trans_opts = getelementptr inbounds %struct.p9_client, ptr %client, i32 0, i32 7
  %3 = ptrtoint ptr %trans_opts to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %trans_opts, align 4
  %wfd = getelementptr inbounds %struct.p9_fd_opts, ptr %opts, i32 0, i32 1
  %4 = ptrtoint ptr %wfd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wfd, align 4
  %wfd3 = getelementptr inbounds %struct.p9_client, ptr %client, i32 0, i32 7, i32 0, i32 1
  %6 = ptrtoint ptr %wfd3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %wfd3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp eq i32 %2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp6 = icmp eq i32 %5, -1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp6
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 256) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call ptr @fget(i32 noundef %2) #11
  %8 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1.i, ptr %call7.i.i.i, align 8
  %tobool3.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool3.not.i, label %if.end.i.out_free_ts.i_crit_edge, label %if.end5.i

if.end.i.out_free_ts.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_ts.i

if.end5.i:                                        ; preds = %if.end.i
  %f_mode.i = getelementptr inbounds %struct.file, ptr %call1.i, i32 0, i32 8
  %9 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.out_put_rd.i_crit_edge, label %if.end9.i

if.end5.i.out_put_rd.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_put_rd.i

if.end9.i:                                        ; preds = %if.end5.i
  %call10.i = tail call ptr @fget(i32 noundef %5) #11
  %wr.i = getelementptr inbounds %struct.p9_trans_fd, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %wr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call10.i, ptr %wr.i, align 4
  %tobool12.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool12.not.i, label %if.end9.i.out_put_rd.i_crit_edge, label %if.end14.i

if.end9.i.out_put_rd.i_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_put_rd.i

if.end14.i:                                       ; preds = %if.end9.i
  %f_mode16.i = getelementptr inbounds %struct.file, ptr %call10.i, i32 0, i32 8
  %12 = ptrtoint ptr %f_mode16.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %f_mode16.i, align 8
  %and17.i = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %out_put_wr.i, label %if.end13

out_put_wr.i:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fput(ptr noundef nonnull %call10.i) #11
  br label %out_put_rd.i

out_put_rd.i:                                     ; preds = %out_put_wr.i, %if.end9.i.out_put_rd.i_crit_edge, %if.end5.i.out_put_rd.i_crit_edge
  %14 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call7.i.i.i, align 8
  tail call void @fput(ptr noundef %15) #11
  br label %out_free_ts.i

out_free_ts.i:                                    ; preds = %out_put_rd.i, %if.end.i.out_free_ts.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %trans.i = getelementptr inbounds %struct.p9_client, ptr %client, i32 0, i32 5
  %16 = ptrtoint ptr %trans.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i.i, ptr %trans.i, align 4
  %status.i = getelementptr inbounds %struct.p9_client, ptr %client, i32 0, i32 4
  %17 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %status.i, align 4
  tail call fastcc void @p9_conn_create(ptr noundef %client)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %out_free_ts.i, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -92, %do.end ], [ 0, %if.end13 ], [ -12, %if.end.cleanup_crit_edge ], [ -5, %out_free_ts.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %opts) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v9fs_register_trans(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !39, !41, !43, !44, !46, !48, !50, !52, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !129, !131, !132, !134, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !155, !157, !159, !161, !163, !165, !166, !167, !168, !170, !171, !173, !174, !175, !177, !179, !181, !182, !183}
!llvm.named.register.sp = !{!184}
!llvm.module.flags = !{!185, !186, !187, !188, !189, !190, !191, !192}
!llvm.ident = !{!193}

!0 = !{ptr @__UNIQUE_ID_alias483, !1, !"__UNIQUE_ID_alias483", i1 false, i1 false}
!1 = !{!"../net/9p/trans_fd.c", i32 1093, i32 1}
!2 = !{ptr @__UNIQUE_ID_alias484, !3, !"__UNIQUE_ID_alias484", i1 false, i1 false}
!3 = !{!"../net/9p/trans_fd.c", i32 1107, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias485, !5, !"__UNIQUE_ID_alias485", i1 false, i1 false}
!5 = !{!"../net/9p/trans_fd.c", i32 1121, i32 1}
!6 = !{ptr @__initcall__kmod_9pnet_fd__486_1172_p9_trans_fd_init6, !7, !"__initcall__kmod_9pnet_fd__486_1172_p9_trans_fd_init6", i1 false, i1 false}
!7 = !{!"../net/9p/trans_fd.c", i32 1172, i32 1}
!8 = !{ptr @__exitcall_p9_trans_fd_exit, !9, !"__exitcall_p9_trans_fd_exit", i1 false, i1 false}
!9 = !{!"../net/9p/trans_fd.c", i32 1173, i32 1}
!10 = !{ptr @__UNIQUE_ID_author487, !11, !"__UNIQUE_ID_author487", i1 false, i1 false}
!11 = !{!"../net/9p/trans_fd.c", i32 1175, i32 1}
!12 = !{ptr @__UNIQUE_ID_description488, !13, !"__UNIQUE_ID_description488", i1 false, i1 false}
!13 = !{!"../net/9p/trans_fd.c", i32 1176, i32 1}
!14 = !{ptr @__UNIQUE_ID_file489, !15, !"__UNIQUE_ID_file489", i1 false, i1 false}
!15 = !{!"../net/9p/trans_fd.c", i32 1177, i32 1}
!16 = !{ptr @__UNIQUE_ID_license490, !15, !"__UNIQUE_ID_license490", i1 false, i1 false}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/9p/trans_fd.c", i32 152, i32 8}
!19 = !{ptr @p9_poll_work, !18, !"p9_poll_work", i1 false, i1 false}
!20 = !{ptr @__func__.p9_poll_workfn, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/9p/trans_fd.c", i32 1136, i32 2}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/9p/trans_fd.c", i32 1152, i32 2}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/9p/trans_fd.c", i32 150, i32 8}
!27 = !{ptr @p9_poll_lock, !26, !"p9_poll_lock", i1 false, i1 false}
!28 = !{ptr @p9_poll_pending_list, !29, !"p9_poll_pending_list", i1 false, i1 false}
!29 = !{!"../net/9p/trans_fd.c", i32 151, i32 8}
!30 = !{ptr @__func__.p9_poll_mux, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/9p/trans_fd.c", i32 625, i32 3}
!32 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/9p/trans_fd.c", i32 631, i32 3}
!35 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/9p/trans_fd.c", i32 633, i32 4}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/9p/trans_fd.c", i32 640, i32 3}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/9p/trans_fd.c", i32 643, i32 4}
!41 = !{ptr @__func__.p9_conn_cancel, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/9p/trans_fd.c", i32 190, i32 2}
!43 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/9p/trans_fd.c", i32 209, i32 3}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/9p/trans_fd.c", i32 1082, i32 10}
!48 = !{ptr @p9_tcp_trans, !49, !"p9_tcp_trans", i1 false, i1 false}
!49 = !{!"../net/9p/trans_fd.c", i32 1081, i32 31}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/9p/trans_fd.c", i32 989, i32 3}
!52 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @p9_fd_create_tcp._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @p9_fd_create_tcp._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/9p/trans_fd.c", i32 997, i32 4}
!58 = !{ptr @p9_fd_create_tcp._entry.15, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @p9_fd_create_tcp._entry_ptr.17, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/9p/trans_fd.c", i32 1008, i32 3}
!62 = !{ptr @p9_fd_create_tcp._entry.18, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @p9_fd_create_tcp._entry_ptr.20, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @__func__.parse_opts, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/9p/trans_fd.c", i32 769, i32 3}
!66 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/9p/trans_fd.c", i32 775, i32 31}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/9p/trans_fd.c", i32 784, i32 5}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/9p/trans_fd.c", i32 69, i32 13}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/9p/trans_fd.c", i32 70, i32 14}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/9p/trans_fd.c", i32 71, i32 14}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/9p/trans_fd.c", i32 72, i32 17}
!79 = !{ptr @tokens, !80, !"tokens", i1 false, i1 false}
!80 = !{!"../net/9p/trans_fd.c", i32 68, i32 28}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/9p/trans_fd.c", i32 936, i32 19}
!83 = distinct !{null, !84, !"p9_ipport_resv_max", i1 false, i1 false}
!84 = !{!"../net/9p/trans_fd.c", i32 155, i32 21}
!85 = distinct !{null, !86, !"p9_ipport_resv_min", i1 false, i1 false}
!86 = !{!"../net/9p/trans_fd.c", i32 154, i32 21}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/9p/trans_fd.c", i32 855, i32 3}
!89 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @p9_socket_open._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @p9_socket_open._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @__func__.p9_conn_create, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/9p/trans_fd.c", i32 585, i32 2}
!94 = !{ptr @.str.31, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @p9_conn_create.__key, !96, !"__key", i1 false, i1 false}
!96 = !{!"../net/9p/trans_fd.c", i32 592, i32 2}
!97 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @p9_conn_create.__key.33, !99, !"__key", i1 false, i1 false}
!99 = !{!"../net/9p/trans_fd.c", i32 593, i32 2}
!100 = !{ptr @.str.34, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @__func__.p9_read_work, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/9p/trans_fd.c", i32 286, i32 2}
!103 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/9p/trans_fd.c", i32 295, i32 2}
!106 = !{ptr @.str.37, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../net/9p/trans_fd.c", i32 300, i32 2}
!108 = !{ptr @.str.38, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/9p/trans_fd.c", i32 311, i32 3}
!110 = !{ptr @.str.39, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../net/9p/trans_fd.c", i32 317, i32 4}
!112 = !{ptr @.str.40, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../net/9p/trans_fd.c", i32 323, i32 4}
!114 = !{ptr @.str.41, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../net/9p/trans_fd.c", i32 330, i32 3}
!116 = !{ptr @.str.42, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/9p/trans_fd.c", i32 336, i32 4}
!118 = !{ptr @.str.43, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../net/9p/trans_fd.c", i32 343, i32 4}
!120 = !{ptr @.str.44, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../net/9p/trans_fd.c", i32 359, i32 3}
!122 = !{ptr @.str.45, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../net/9p/trans_fd.c", i32 367, i32 4}
!124 = !{ptr @.str.46, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../net/9p/trans_fd.c", i32 371, i32 4}
!126 = !{ptr @__func__.p9_fd_read, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../net/9p/trans_fd.c", i32 260, i32 3}
!128 = !{ptr @.str.47, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @__func__.p9_write_work, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../net/9p/trans_fd.c", i32 465, i32 3}
!131 = !{ptr @.str.48, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.49, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../net/9p/trans_fd.c", i32 476, i32 2}
!134 = !{ptr @.str.50, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../net/9p/trans_fd.c", i32 480, i32 2}
!136 = !{ptr @__func__.p9_fd_write, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../net/9p/trans_fd.c", i32 426, i32 3}
!138 = !{ptr @.str.51, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @__func__.p9_pollwait, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../net/9p/trans_fd.c", i32 562, i32 3}
!141 = !{ptr @.str.52, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @__func__.p9_conn_destroy, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../net/9p/trans_fd.c", i32 880, i32 2}
!144 = !{ptr @.str.53, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @__func__.p9_fd_request, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../net/9p/trans_fd.c", i32 666, i32 2}
!147 = !{ptr @.str.54, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @__func__.p9_fd_cancel, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../net/9p/trans_fd.c", i32 691, i32 2}
!150 = !{ptr @.str.55, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @__func__.p9_fd_cancelled, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../net/9p/trans_fd.c", i32 708, i32 2}
!153 = !{ptr @.str.56, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../net/9p/trans_fd.c", i32 734, i32 18}
!155 = !{ptr @.str.57, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../net/9p/trans_fd.c", i32 737, i32 18}
!157 = !{ptr @.str.58, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../net/9p/trans_fd.c", i32 739, i32 18}
!159 = !{ptr @.str.59, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../net/9p/trans_fd.c", i32 1096, i32 10}
!161 = !{ptr @p9_unix_trans, !162, !"p9_unix_trans", i1 false, i1 false}
!162 = !{!"../net/9p/trans_fd.c", i32 1095, i32 31}
!163 = !{ptr @.str.60, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../net/9p/trans_fd.c", i32 1030, i32 3}
!165 = !{ptr @.str.61, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @p9_fd_create_unix._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @p9_fd_create_unix._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @p9_fd_create_unix._entry.62, !169, !"_entry", i1 false, i1 false}
!169 = !{!"../net/9p/trans_fd.c", i32 1040, i32 3}
!170 = !{ptr @p9_fd_create_unix._entry_ptr.63, !169, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.65, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../net/9p/trans_fd.c", i32 1048, i32 3}
!173 = !{ptr @p9_fd_create_unix._entry.64, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @p9_fd_create_unix._entry_ptr.66, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.67, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../net/9p/trans_fd.c", i32 1110, i32 10}
!177 = !{ptr @p9_fd_trans, !178, !"p9_fd_trans", i1 false, i1 false}
!178 = !{!"../net/9p/trans_fd.c", i32 1109, i32 31}
!179 = !{ptr @.str.68, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../net/9p/trans_fd.c", i32 1068, i32 3}
!181 = !{ptr @.str.69, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @p9_fd_create._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @p9_fd_create._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{!"sp"}
!185 = !{i32 1, !"wchar_size", i32 2}
!186 = !{i32 1, !"min_enum_size", i32 4}
!187 = !{i32 8, !"branch-target-enforcement", i32 0}
!188 = !{i32 8, !"sign-return-address", i32 0}
!189 = !{i32 8, !"sign-return-address-all", i32 0}
!190 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!191 = !{i32 7, !"uwtable", i32 1}
!192 = !{i32 7, !"frame-pointer", i32 2}
!193 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!194 = !{!"branch_weights", i32 1, i32 2000}
!195 = !{i8 0, i8 2}
!196 = !{!"auto-init"}
!197 = !{i64 2148293190, i64 2148293216, i64 2148293245, i64 2148293279, i64 2148293310, i64 2148293333}
!198 = !{i64 2148294720, i64 2148294752, i64 2148294781, i64 2148294815, i64 2148294846, i64 2148294869}
!199 = !{!"branch_weights", i32 2000, i32 1}
