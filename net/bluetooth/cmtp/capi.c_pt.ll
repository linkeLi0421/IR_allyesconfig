; ModuleID = '/llk/IR_all_yes/net/bluetooth/cmtp/capi.c_pt.bc'
source_filename = "../net/bluetooth/cmtp/capi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.cmtp_session = type { %struct.list_head, ptr, %struct.bdaddr_t, i32, i32, i32, [21 x i8], %struct.atomic_t, ptr, %struct.wait_queue_head, i32, i32, %struct.capi_ctr, %struct.list_head, i32, i32, %struct.sk_buff_head, [16 x ptr] }
%struct.bdaddr_t = type { [6 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.capi_ctr = type { ptr, ptr, [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [64 x i8], %struct.capi_version, %struct.capi_profile, [8 x i8], i32, i32, i32, i32, i32, i16, i32, i32, ptr, [128 x i8] }
%struct.capi_version = type { i32, i32, i32, i32 }
%struct.capi_profile = type { i16, i16, i32, i32, i32, i32, [6 x i32], [5 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, i32, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cmtp_application = type { %struct.list_head, i32, i32, i16, i16, i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.78, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.79, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.80, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.38, %union.anon.40, %union.anon.41, i16, i8, i8, i32, %union.anon.43, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.70, [0 x i32], %union.anon.71, i16, i16, %union.anon.72, %struct.refcount_struct, [0 x i32], %union.anon.73 }
%union.anon.38 = type { i64 }
%union.anon.40 = type { i32 }
%union.anon.41 = type { i32 }
%union.anon.43 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { i32 }
%union.anon.71 = type { %struct.hlist_node }
%union.anon.72 = type { i32 }
%union.anon.73 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.78 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.79 = type { ptr }
%union.anon.80 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.capi_register_params = type { i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.cpumask = type { [1 x i32] }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.109 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@cmtp_recv_capimsg.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cmtp\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cmtp_recv_capimsg\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/bluetooth/cmtp/capi.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"session %p skb %p len %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Can't find application with id %u\0A\00", [61 x i8] zeroinitializer }, align 32
@cmtp_attach_device.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 -124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cmtp_attach_device\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"session %p\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Found %d CAPI controller(s) on device %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Setting up only CAPI controller 1\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Can't attach new controller\0A\00", [35 x i8] zeroinitializer }, align 32
@cmtp_attach_device.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.10, i8 0, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"session %p num %d\0A\00", [45 x i8] zeroinitializer }, align 32
@cmtp_detach_device.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.6, i8 0, i8 -108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cmtp_detach_device\00", [45 x i8] zeroinitializer }, align 32
@cmtp_recv_interopmsg.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.3, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cmtp_recv_interopmsg\00", [43 x i8] zeroinitializer }, align 32
@cmtp_send_interopmsg.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cmtp_send_interopmsg\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"session %p subcmd 0x%02x appl %u msgnum %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Can't allocate memory for interoperability packet\0A\00", [45 x i8] zeroinitializer }, align 32
@cmtp_send_capimsg.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.3, i8 0, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cmtp_send_capimsg\00", [46 x i8] zeroinitializer }, align 32
@cmtp_load_firmware.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cmtp_load_firmware\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ctrl %p data %p\0A\00", [47 x i8] zeroinitializer }, align 32
@cmtp_reset_ctr.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cmtp_reset_ctr\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ctrl %p\0A\00", [23 x i8] zeroinitializer }, align 32
@cmtp_register_appl.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cmtp_register_appl\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ctrl %p appl %u level3cnt %u datablkcnt %u datablklen %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Can't allocate memory for new application\0A\00", [53 x i8] zeroinitializer }, align 32
@cmtp_application_add.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cmtp_application_add\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"session %p application %p appl %u\0A\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cmtp_application_del.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cmtp_application_del\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"session %p application %p\0A\00", [37 x i8] zeroinitializer }, align 32
@cmtp_release_appl.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cmtp_release_appl\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ctrl %p appl %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Can't find application\0A\00", [40 x i8] zeroinitializer }, align 32
@cmtp_send_message.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cmtp_send_message\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ctrl %p skb %p\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CAPI Message Transport Protocol\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s\0A\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"addr %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ctrl %d\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"appl %u -> %u\0A\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 129, i64 130]
@__sancov_gen_cov_switch_values.39 = internal global [8 x i64] [i64 6, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 9]
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 324, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 347, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 529, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 539, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 548, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 565, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 571, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 592, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 191, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 155, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 159, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 138, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 362, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 371, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 388, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 393, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 77, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 92, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 453, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 457, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 479, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 504, i32 9 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 513, i32 16 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 514, i32 16 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 515, i32 16 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.153 = private constant [29 x i8] c"../net/bluetooth/cmtp/capi.c\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 518, i32 17 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cmtp_recv_capimsg(ptr noundef %session, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_recv_capimsg.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_recv_capimsg, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_recv_capimsg.__UNIQUE_ID_ddebug470, ptr noundef nonnull @.str.3, ptr noundef %session, ptr noundef %skb, i32 noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %len4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp ult i32 %3, 8
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %7)
  %cmp7 = icmp eq i8 %7, 32
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @cmtp_recv_interopmsg(ptr noundef %session, ptr noundef %skb)
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %flags = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %arrayidx15 = getelementptr i8, ptr %5, i32 2
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %11 to i16
  %arrayidx18 = getelementptr i8, ptr %5, i32 3
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %13 to i16
  %shl = shl nuw i16 %conv19, 8
  %or = or i16 %shl, %conv16
  %arrayidx22 = getelementptr i8, ptr %5, i32 8
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %15 to i32
  %arrayidx25 = getelementptr i8, ptr %5, i32 9
  %16 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %17 to i32
  %shl27 = shl nuw nsw i32 %conv26, 8
  %arrayidx30 = getelementptr i8, ptr %5, i32 10
  %18 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %19 to i32
  %shl32 = shl nuw nsw i32 %conv31, 16
  %arrayidx35 = getelementptr i8, ptr %5, i32 11
  %20 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %21 to i32
  %shl37 = shl nuw i32 %conv36, 24
  %applications.i = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 13
  %22 = ptrtoint ptr %applications.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %app.034.i = load ptr, ptr %applications.i, align 4
  %cmp.not35.i = icmp eq ptr %app.034.i, %applications.i
  br i1 %cmp.not35.i, label %if.end13.if.else_crit_edge, label %if.end13.for.body.i_crit_edge

if.end13.for.body.i_crit_edge:                    ; preds = %if.end13
  br label %for.body.i

if.end13.if.else_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end13.for.body.i_crit_edge
  %app.036.i = phi ptr [ %app.0.i, %for.inc.i.for.body.i_crit_edge ], [ %app.034.i, %if.end13.for.body.i_crit_edge ]
  %mapping.i = getelementptr inbounds %struct.cmtp_application, ptr %app.036.i, i32 0, i32 4
  %23 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %mapping.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %or)
  %cmp15.i = icmp eq i16 %24, %or
  br i1 %cmp15.i, label %cmtp_application_get.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %25 = ptrtoint ptr %app.036.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %app.0.i = load ptr, ptr %app.036.i, align 4
  %cmp.not.i = icmp eq ptr %app.0.i, %applications.i
  br i1 %cmp.not.i, label %for.inc.i.if.else_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.else_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

cmtp_application_get.exit:                        ; preds = %for.body.i
  %tobool40.not = icmp eq ptr %app.036.i, null
  br i1 %tobool40.not, label %cmtp_application_get.exit.if.else_crit_edge, label %if.then41

cmtp_application_get.exit.if.else_crit_edge:      ; preds = %cmtp_application_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then41:                                        ; preds = %cmtp_application_get.exit
  %appl42 = getelementptr inbounds %struct.cmtp_application, ptr %app.036.i, i32 0, i32 3
  %26 = ptrtoint ptr %appl42 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %appl42, align 4
  %conv1.i = trunc i16 %27 to i8
  %28 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv1.i, ptr %arrayidx15, align 1
  %29 = lshr i16 %27, 8
  %conv4.i = trunc i16 %29 to i8
  %30 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv4.i, ptr %arrayidx18, align 1
  %and46 = and i32 %conv23, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and46)
  %cmp47 = icmp eq i32 %and46, 1
  br i1 %cmp47, label %if.then49, label %if.then41.if.end53_crit_edge

if.then41.if.end53_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.else:                                          ; preds = %cmtp_application_get.exit.if.else_crit_edge, %for.inc.i.if.else_crit_edge, %if.end13.if.else_crit_edge
  %conv44 = zext i16 %or to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.4, i32 noundef %conv44) #9
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %cleanup

if.then49:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  %conv23.masked = and i32 %conv23, 128
  %or28.masked = or i32 %shl27, %conv23.masked
  %or33.masked = or i32 %or28.masked, %shl32
  %and50 = or i32 %or33.masked, %shl37
  %num = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 11
  %31 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num, align 4
  %or51 = or i32 %32, %and50
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %conv.i = trunc i32 %or51 to i8
  %arrayidx.i84 = getelementptr i8, ptr %34, i32 8
  %35 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv.i, ptr %arrayidx.i84, align 1
  %shr.i = lshr i32 %or51, 8
  %conv2.i = trunc i32 %shr.i to i8
  %arrayidx3.i = getelementptr i8, ptr %34, i32 9
  %36 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv2.i, ptr %arrayidx3.i, align 1
  %shr4.i = lshr i32 %or51, 16
  %conv6.i = trunc i32 %shr4.i to i8
  %arrayidx8.i = getelementptr i8, ptr %34, i32 10
  %37 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv6.i, ptr %arrayidx8.i, align 1
  %shr9.i = lshr i32 %or51, 24
  %conv11.i = trunc i32 %shr9.i to i8
  %arrayidx13.i = getelementptr i8, ptr %34, i32 11
  %38 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv11.i, ptr %arrayidx13.i, align 1
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %if.then41.if.end53_crit_edge
  tail call void @capi_ctr_handle_message(ptr noundef %ctrl1, i16 noundef zeroext %27, ptr noundef %skb) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.else, %if.then12, %if.then9, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cmtp_recv_interopmsg(ptr noundef %session, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_recv_interopmsg.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_recv_interopmsg, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_recv_interopmsg.__UNIQUE_ID_ddebug463, ptr noundef nonnull @.str.3, ptr noundef %session, ptr noundef %skb, i32 noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %do.end.sw.epilog297_crit_edge [
    i8 -127, label %sw.bb
    i8 -126, label %sw.bb243
  ]

do.end.sw.epilog297_crit_edge:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog297

sw.bb:                                            ; preds = %do.end
  %len4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %8)
  %cmp = icmp ult i32 %8, 18
  br i1 %cmp, label %sw.bb.sw.epilog297_crit_edge, label %if.end7

sw.bb.sw.epilog297_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog297

if.end7:                                          ; preds = %sw.bb
  %arrayidx9 = getelementptr i8, ptr %3, i32 13
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %10 to i16
  %arrayidx12 = getelementptr i8, ptr %3, i32 14
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %12 to i16
  %shl = shl nuw i16 %conv13, 8
  %or = or i16 %shl, %conv10
  %arrayidx16 = getelementptr i8, ptr %3, i32 16
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %14 to i16
  %arrayidx19 = getelementptr i8, ptr %3, i32 17
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %16 to i16
  %shl21 = shl nuw i16 %conv20, 8
  %or22 = or i16 %shl21, %conv17
  %17 = zext i16 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.39)
  switch i16 %or, label %if.end7.sw.epilog297_crit_edge [
    i16 0, label %sw.bb25
    i16 1, label %sw.bb49
    i16 2, label %sw.bb66
    i16 3, label %sw.bb104
    i16 4, label %sw.bb128
    i16 5, label %sw.bb214
  ]

if.end7.sw.epilog297_crit_edge:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog297

sw.bb25:                                          ; preds = %if.end7
  %arrayidx27 = getelementptr i8, ptr %3, i32 6
  %18 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %19 to i16
  %arrayidx30 = getelementptr i8, ptr %3, i32 7
  %20 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %21 to i16
  %shl32 = shl nuw i16 %conv31, 8
  %or33 = or i16 %shl32, %conv28
  %applications.i = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 13
  %22 = ptrtoint ptr %applications.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %app.034.i = load ptr, ptr %applications.i, align 4
  %cmp.not35.i = icmp eq ptr %app.034.i, %applications.i
  br i1 %cmp.not35.i, label %sw.bb25.sw.epilog297_crit_edge, label %sw.bb25.for.body.i_crit_edge

sw.bb25.for.body.i_crit_edge:                     ; preds = %sw.bb25
  br label %for.body.i

sw.bb25.sw.epilog297_crit_edge:                   ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog297

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb25.for.body.i_crit_edge
  %app.036.i = phi ptr [ %app.0.i, %for.inc.i.for.body.i_crit_edge ], [ %app.034.i, %sw.bb25.for.body.i_crit_edge ]
  %msgnum.i = getelementptr inbounds %struct.cmtp_application, ptr %app.036.i, i32 0, i32 5
  %23 = ptrtoint ptr %msgnum.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %msgnum.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %or33)
  %cmp3.i = icmp eq i16 %24, %or33
  br i1 %cmp3.i, label %cmtp_application_get.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %25 = ptrtoint ptr %app.036.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %app.0.i = load ptr, ptr %app.036.i, align 4
  %cmp.not.i = icmp eq ptr %app.0.i, %applications.i
  br i1 %cmp.not.i, label %for.inc.i.sw.epilog297_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.sw.epilog297_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog297

cmtp_application_get.exit:                        ; preds = %for.body.i
  %tobool36.not = icmp eq ptr %app.036.i, null
  br i1 %tobool36.not, label %cmtp_application_get.exit.sw.epilog297_crit_edge, label %if.then37

cmtp_application_get.exit.sw.epilog297_crit_edge: ; preds = %cmtp_application_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog297

if.then37:                                        ; preds = %cmtp_application_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  %msgnum.i.le = getelementptr inbounds %struct.cmtp_application, ptr %app.036.i, i32 0, i32 5
  %state = getelementptr inbounds %struct.cmtp_application, ptr %app.036.i, i32 0, i32 1
  %26 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %state, align 4
  %27 = ptrtoint ptr %msgnum.i.le to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %msgnum.i.le, align 4
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %arrayidx40 = getelementptr i8, ptr %29, i32 2
  %30 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %31 to i16
  %arrayidx43 = getelementptr i8, ptr %29, i32 3
  %32 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %33 to i16
  %shl45 = shl nuw i16 %conv44, 8
  %or46 = or i16 %shl45, %conv41
  %mapping = getelementptr inbounds %struct.cmtp_application, ptr %app.036.i, i32 0, i32 4
  %34 = ptrtoint ptr %mapping to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %or46, ptr %mapping, align 2
  %wait = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %sw.epilog297

sw.bb49:                                          ; preds = %if.end7
  %arrayidx51 = getelementptr i8, ptr %3, i32 2
  %35 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %36 to i16
  %arrayidx54 = getelementptr i8, ptr %3, i32 3
  %37 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %38 to i16
  %shl56 = shl nuw i16 %conv55, 8
  %or57 = or i16 %shl56, %conv52
  %applications.i401 = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 13
  %39 = ptrtoint ptr %applications.i401 to i32
  call void @__asan_load4_noabort(i32 %39)
  %app.034.i402 = load ptr, ptr %applications.i401, align 4
  %cmp.not35.i403 = icmp eq ptr %app.034.i402, %applications.i401
  br i1 %cmp.not35.i403, label %sw.bb49.sw.epilog297_crit_edge, label %sw.bb49.for.body.i405_crit_edge

sw.bb49.for.body.i405_crit_edge:                  ; preds = %sw.bb49
  br label %for.body.i405

sw.bb49.sw.epilog297_crit_edge:                   ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog297

for.body.i405:                                    ; preds = %for.inc.i408.for.body.i405_crit_edge, %sw.bb49.for.body.i405_crit_edge
  %app.036.i404 = phi ptr [ %app.0.i406, %for.inc.i408.for.body.i405_crit_edge ], [ %app.034.i402, %sw.bb49.for.body.i405_crit_edge ]
  %mapping.i = getelementptr inbounds %struct.cmtp_application, ptr %app.036.i404, i32 0, i32 4
  %40 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %mapping.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %or57)
  %cmp15.i = icmp eq i16 %41, %or57
  br i1 %cmp15.i, label %cmtp_application_get.exit410, label %for.inc.i408

for.inc.i408:                                     ; preds = %for.body.i405
  %42 = ptrtoint ptr %app.036.i404 to i32
  call void @__asan_load4_noabort(i32 %42)
  %app.0.i406 = load ptr, ptr %app.036.i404, align 4
  %cmp.not.i407 = icmp eq ptr %app.0.i406, %applications.i401
  br i1 %cmp.not.i407, label %for.inc.i408.sw.epilog297_crit_edge, label %for.inc.i408.for.body.i405_crit_edge

for.inc.i408.for.body.i405_crit_edge:             ; preds = %for.inc.i408
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i405

for.inc.i408.sw.epilog297_crit_edge:              ; preds = %for.inc.i408
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog297

cmtp_application_get.exit410:                     ; preds = %for.body.i405
  %tobool60.not = icmp eq ptr %app.036.i404, null
  br i1 %tobool60.not, label %cmtp_application_get.exit410.sw.epilog297_crit_edge, label %if.then61

cmtp_application_get.exit410.sw.epilog297_crit_edge: ; preds = %cmtp_application_get.exit410
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog297

if.then61:                                        ; preds = %cmtp_application_get.exit410
  call void @__sanitizer_cov_trace_pc() #11
  %state62 = getelementptr inbounds %struct.cmtp_application, ptr %app.036.i404, i32 0, i32 1
  %43 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 9, ptr %state62, align 4
  %msgnum63 = getelementptr inbounds %struct.cmtp_application, ptr %app.036.i404, i32 0, i32 5
  %44 = ptrtoint ptr %msgnum63 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %msgnum63, align 4
  %wait64 = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %wait64, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %sw.epilog297

sw.bb66:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 83, i32 %8)
  %cmp68 = icmp ult i32 %8, 83
  br i1 %cmp68, label %sw.bb66.sw.epilog297_crit_edge, label %if.end71

sw.bb66.sw.epilog297_crit_edge:                   ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog297

if.end71:                                         ; preds = %sw.bb66
  %arrayidx73 = getelementptr i8, ptr %3, i32 19
  %45 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %46 to i32
  %arrayidx76 = getelementptr i8, ptr %3, i32 20
  %47 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %48 to i32
  %shl78 = shl nuw nsw i32 %conv77, 8
  %or79 = or i32 %shl78, %conv74
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or22)
  %tobool89.not = icmp eq i16 %or22, 0
  br i1 %tobool89.not, label %land.lhs.true, label %if.end71.sw.epilog297_crit_edge

if.end71.sw.epilog297_crit_edge:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog297

land.lhs.true:                                    ; preds = %if.end71
  %arrayidx81 = getelementptr i8, ptr %3, i32 6
  %49 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx81, align 1
  %arrayidx84 = getelementptr i8, ptr %3, i32 7
  %51 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %52 to i32
  %shl86 = shl nuw nsw i32 %conv85, 8
  %conv82 = zext i8 %50 to i32
  %or87 = or i32 %shl86, %conv82
  call void @__sanitizer_cov_trace_const_cmp4(i32 65280, i32 %or87)
  %cmp91 = icmp eq i32 %or87, 65280
  br i1 %cmp91, label %if.then93, label %land.lhs.true97.critedge

if.then93:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %ncontroller = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 10
  %53 = ptrtoint ptr %ncontroller to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or79, ptr %ncontroller, align 4
  %wait94 = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %wait94, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %sw.epilog297

land.lhs.true97.critedge:                         ; preds = %land.lhs.true
  %tobool98.not = icmp eq ptr %ctrl1, null
  br i1 %tobool98.not, label %land.lhs.true97.critedge.sw.epilog297_crit_edge, label %if.then99

land.lhs.true97.critedge.sw.epilog297_crit_edge:  ; preds = %land.lhs.true97.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog297

if.then99:                                        ; preds = %land.lhs.true97.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %profile = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 12, i32 13
  %54 = call ptr @memcpy(ptr %profile, ptr %arrayidx73, i32 64)
  %state102 = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 3
  %55 = ptrtoint ptr %state102 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %state102, align 4
  tail call void @capi_ctr_ready(ptr noundef nonnull %ctrl1) #9
  br label %sw.epilog297

sw.bb104:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %8)
  %cmp106 = icmp ult i32 %8, 23
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or22)
  %tobool110.not = icmp ne i16 %or22, 0
  %or.cond = select i1 %cmp106, i1 true, i1 %tobool110.not
  %tobool112.not = icmp eq ptr %ctrl1, null
  %or.cond395 = select i1 %or.cond, i1 true, i1 %tobool112.not
  br i1 %or.cond395, label %sw.bb104.sw.epilog297_crit_edge, label %if.then113

sw.bb104.sw.epilog297_crit_edge:                  ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog297

if.then113:                                       ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx116 = getelementptr i8, ptr %3, i32 22
  %56 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx116, align 1
  %58 = tail call i8 @llvm.umin.i8(i8 %57, i8 64)
  %cond = zext i8 %58 to i32
  %manu = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 12, i32 11
  %59 = call ptr @memset(ptr %manu, i32 0, i32 64)
  %60 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data, align 4
  %add.ptr125 = getelementptr i8, ptr %61, i32 23
  %call126 = tail call ptr @strncpy(ptr noundef %manu, ptr noundef %add.ptr125, i32 noundef %cond)
  br label %sw.epilog297

sw.bb128:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %8)
  %cmp130 = icmp ult i32 %8, 40
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or22)
  %tobool134.not = icmp ne i16 %or22, 0
  %or.cond396 = select i1 %cmp130, i1 true, i1 %tobool134.not
  %tobool136.not = icmp eq ptr %ctrl1, null
  %or.cond397 = select i1 %or.cond396, i1 true, i1 %tobool136.not
  br i1 %or.cond397, label %sw.bb128.sw.epilog297_crit_edge, label %if.then137

sw.bb128.sw.epilog297_crit_edge:                  ; preds = %sw.bb128
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog297

if.then137:                                       ; preds = %sw.bb128
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx139 = getelementptr i8, ptr %3, i32 24
  %62 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx139, align 1
  %conv140 = zext i8 %63 to i32
  %arrayidx142 = getelementptr i8, ptr %3, i32 25
  %64 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx142, align 1
  %conv143 = zext i8 %65 to i32
  %shl144 = shl nuw nsw i32 %conv143, 8
  %or145 = or i32 %shl144, %conv140
  %arrayidx147 = getelementptr i8, ptr %3, i32 26
  %66 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx147, align 1
  %conv148 = zext i8 %67 to i32
  %shl149 = shl nuw nsw i32 %conv148, 16
  %or150 = or i32 %or145, %shl149
  %arrayidx152 = getelementptr i8, ptr %3, i32 27
  %68 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx152, align 1
  %conv153 = zext i8 %69 to i32
  %shl154 = shl nuw i32 %conv153, 24
  %or155 = or i32 %or150, %shl154
  %version = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 12, i32 12
  %70 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or155, ptr %version, align 4
  %71 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data, align 4
  %arrayidx157 = getelementptr i8, ptr %72, i32 28
  %73 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx157, align 1
  %conv158 = zext i8 %74 to i32
  %arrayidx160 = getelementptr i8, ptr %72, i32 29
  %75 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx160, align 1
  %conv161 = zext i8 %76 to i32
  %shl162 = shl nuw nsw i32 %conv161, 8
  %or163 = or i32 %shl162, %conv158
  %arrayidx165 = getelementptr i8, ptr %72, i32 30
  %77 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx165, align 1
  %conv166 = zext i8 %78 to i32
  %shl167 = shl nuw nsw i32 %conv166, 16
  %or168 = or i32 %or163, %shl167
  %arrayidx170 = getelementptr i8, ptr %72, i32 31
  %79 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx170, align 1
  %conv171 = zext i8 %80 to i32
  %shl172 = shl nuw i32 %conv171, 24
  %or173 = or i32 %or168, %shl172
  %minorversion = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 12, i32 12, i32 1
  %81 = ptrtoint ptr %minorversion to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or173, ptr %minorversion, align 4
  %82 = load ptr, ptr %data, align 4
  %arrayidx176 = getelementptr i8, ptr %82, i32 32
  %83 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx176, align 1
  %conv177 = zext i8 %84 to i32
  %arrayidx179 = getelementptr i8, ptr %82, i32 33
  %85 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx179, align 1
  %conv180 = zext i8 %86 to i32
  %shl181 = shl nuw nsw i32 %conv180, 8
  %or182 = or i32 %shl181, %conv177
  %arrayidx184 = getelementptr i8, ptr %82, i32 34
  %87 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx184, align 1
  %conv185 = zext i8 %88 to i32
  %shl186 = shl nuw nsw i32 %conv185, 16
  %or187 = or i32 %or182, %shl186
  %arrayidx189 = getelementptr i8, ptr %82, i32 35
  %89 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx189, align 1
  %conv190 = zext i8 %90 to i32
  %shl191 = shl nuw i32 %conv190, 24
  %or192 = or i32 %or187, %shl191
  %majormanuversion = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 12, i32 12, i32 2
  %91 = ptrtoint ptr %majormanuversion to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %or192, ptr %majormanuversion, align 4
  %92 = load ptr, ptr %data, align 4
  %arrayidx195 = getelementptr i8, ptr %92, i32 36
  %93 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx195, align 1
  %conv196 = zext i8 %94 to i32
  %arrayidx198 = getelementptr i8, ptr %92, i32 37
  %95 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx198, align 1
  %conv199 = zext i8 %96 to i32
  %shl200 = shl nuw nsw i32 %conv199, 8
  %or201 = or i32 %shl200, %conv196
  %arrayidx203 = getelementptr i8, ptr %92, i32 38
  %97 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx203, align 1
  %conv204 = zext i8 %98 to i32
  %shl205 = shl nuw nsw i32 %conv204, 16
  %or206 = or i32 %or201, %shl205
  %arrayidx208 = getelementptr i8, ptr %92, i32 39
  %99 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx208, align 1
  %conv209 = zext i8 %100 to i32
  %shl210 = shl nuw i32 %conv209, 24
  %or211 = or i32 %or206, %shl210
  %minormanuversion = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 12, i32 12, i32 3
  %101 = ptrtoint ptr %minormanuversion to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %or211, ptr %minormanuversion, align 4
  br label %sw.epilog297

sw.bb214:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %8)
  %cmp216 = icmp ult i32 %8, 25
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or22)
  %tobool220.not = icmp ne i16 %or22, 0
  %or.cond398 = select i1 %cmp216, i1 true, i1 %tobool220.not
  %tobool222.not = icmp eq ptr %ctrl1, null
  %or.cond399 = select i1 %or.cond398, i1 true, i1 %tobool222.not
  br i1 %or.cond399, label %sw.bb214.sw.epilog297_crit_edge, label %if.then223

sw.bb214.sw.epilog297_crit_edge:                  ; preds = %sw.bb214
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog297

if.then223:                                       ; preds = %sw.bb214
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx226 = getelementptr i8, ptr %3, i32 24
  %102 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx226, align 1
  %104 = tail call i8 @llvm.umin.i8(i8 %103, i8 8)
  %cond234 = zext i8 %104 to i32
  %serial = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 12, i32 14
  %105 = ptrtoint ptr %serial to i32
  call void @__asan_storeN_noabort(i32 %105, i32 8)
  store i64 0, ptr %serial, align 4
  %106 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data, align 4
  %add.ptr240 = getelementptr i8, ptr %107, i32 25
  %call241 = tail call ptr @strncpy(ptr noundef %serial, ptr noundef %add.ptr240, i32 noundef %cond234)
  br label %sw.epilog297

sw.bb243:                                         ; preds = %do.end
  %len244 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %108 = ptrtoint ptr %len244 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %len244, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %109)
  %cmp245 = icmp ult i32 %109, 14
  br i1 %cmp245, label %sw.bb243.sw.epilog297_crit_edge, label %if.end248

sw.bb243.sw.epilog297_crit_edge:                  ; preds = %sw.bb243
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog297

if.end248:                                        ; preds = %sw.bb243
  %arrayidx250 = getelementptr i8, ptr %3, i32 11
  %110 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx250, align 1
  %conv251 = zext i8 %111 to i16
  %arrayidx253 = getelementptr i8, ptr %3, i32 12
  %112 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx253, align 1
  %conv254 = zext i8 %113 to i16
  %shl255 = shl nuw i16 %conv254, 8
  %or256 = or i16 %shl255, %conv251
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %or256)
  %cmp259 = icmp eq i16 %or256, 7
  br i1 %cmp259, label %if.then261, label %if.end248.sw.epilog297_crit_edge

if.end248.sw.epilog297_crit_edge:                 ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog297

if.then261:                                       ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #11
  %sub264 = add i32 %109, -14
  %arrayidx266 = getelementptr i8, ptr %3, i32 13
  %114 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx266, align 1
  %conv267 = zext i8 %115 to i32
  %116 = tail call i32 @llvm.umin.i32(i32 %sub264, i32 %conv267)
  %arrayidx276 = getelementptr i8, ptr %3, i32 2
  %117 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx276, align 1
  %conv277 = zext i8 %118 to i16
  %arrayidx279 = getelementptr i8, ptr %3, i32 3
  %119 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx279, align 1
  %conv280 = zext i8 %120 to i16
  %shl281 = shl nuw i16 %conv280, 8
  %or282 = or i16 %shl281, %conv277
  %arrayidx285 = getelementptr i8, ptr %3, i32 6
  %121 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx285, align 1
  %conv286 = zext i8 %122 to i16
  %arrayidx288 = getelementptr i8, ptr %3, i32 7
  %123 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx288, align 1
  %conv289 = zext i8 %124 to i16
  %shl290 = shl nuw i16 %conv289, 8
  %or291 = or i16 %shl290, %conv286
  %add.ptr295 = getelementptr i8, ptr %3, i32 14
  tail call fastcc void @cmtp_send_interopmsg(ptr noundef %session, i8 noundef zeroext -125, i16 noundef zeroext %or282, i16 noundef zeroext %or291, i16 noundef zeroext 7, ptr noundef %add.ptr295, i32 noundef %116)
  br label %sw.epilog297

sw.epilog297:                                     ; preds = %if.then261, %if.end248.sw.epilog297_crit_edge, %sw.bb243.sw.epilog297_crit_edge, %if.then223, %sw.bb214.sw.epilog297_crit_edge, %if.then137, %sw.bb128.sw.epilog297_crit_edge, %if.then113, %sw.bb104.sw.epilog297_crit_edge, %if.then99, %land.lhs.true97.critedge.sw.epilog297_crit_edge, %if.then93, %if.end71.sw.epilog297_crit_edge, %sw.bb66.sw.epilog297_crit_edge, %if.then61, %cmtp_application_get.exit410.sw.epilog297_crit_edge, %for.inc.i408.sw.epilog297_crit_edge, %sw.bb49.sw.epilog297_crit_edge, %if.then37, %cmtp_application_get.exit.sw.epilog297_crit_edge, %for.inc.i.sw.epilog297_crit_edge, %sw.bb25.sw.epilog297_crit_edge, %if.end7.sw.epilog297_crit_edge, %sw.bb.sw.epilog297_crit_edge, %do.end.sw.epilog297_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @capi_ctr_handle_message(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cmtp_attach_device(ptr noundef %session) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [4 x i8], align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #9
  %0 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_attach_device.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_attach_device, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_attach_device.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.6, ptr noundef %session) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %buf, align 4
  call fastcc void @cmtp_send_interopmsg(ptr noundef %session, i8 noundef zeroext -128, i16 noundef zeroext -1, i16 noundef zeroext -256, i16 noundef zeroext 2, ptr noundef nonnull %buf, i32 noundef 4)
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 537) #9
  %ncontroller = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 10
  %4 = ptrtoint ptr %ncontroller to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ncontroller, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool10.not = icmp eq i32 %5, 0
  br i1 %tobool10.not, label %if.then22, label %do.end.if.end51_crit_edge

do.end.if.end51_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then22:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %wait = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 9
  %call24194 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %7 = ptrtoint ptr %ncontroller to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ncontroller, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool27.not195.not = icmp eq i32 %8, 0
  br i1 %tobool27.not195.not, label %if.then22.if.end44_crit_edge, label %if.then22.for.end_crit_edge

if.then22.for.end_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then22.if.end44_crit_edge:                     ; preds = %if.then22
  br label %if.end44

if.end44:                                         ; preds = %cleanup.if.end44_crit_edge, %if.then22.if.end44_crit_edge
  %__ret23.1198 = phi i32 [ %__ret23.1, %cleanup.if.end44_crit_edge ], [ 500, %if.then22.if.end44_crit_edge ]
  %call24197 = phi i32 [ %call24, %cleanup.if.end44_crit_edge ], [ %call24194, %if.then22.if.end44_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24197)
  %tobool45.not = icmp eq i32 %call24197, 0
  br i1 %tobool45.not, label %cleanup, label %if.end44.__out_crit_edge

if.end44.__out_crit_edge:                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %__out

cleanup:                                          ; preds = %if.end44
  %call48 = call i32 @schedule_timeout(i32 noundef %__ret23.1198) #9
  %call24 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %9 = ptrtoint ptr %ncontroller to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ncontroller, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool27.not = icmp eq i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool31.not = icmp eq i32 %call48, 0
  %spec.store.select117 = select i1 %tobool31.not, i32 1, i32 %call48
  %__ret23.1 = select i1 %tobool27.not, i32 %call48, i32 %spec.store.select117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret23.1)
  %tobool37.not = icmp eq i32 %__ret23.1, 0
  %not.tobool27.not = xor i1 %tobool27.not, true
  %11 = select i1 %not.tobool27.not, i1 true, i1 %tobool37.not
  br i1 %11, label %cleanup.for.end_crit_edge, label %cleanup.if.end44_crit_edge

cleanup.if.end44_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then22.for.end_crit_edge
  %__ret23.1.lcssa = phi i32 [ 500, %if.then22.for.end_crit_edge ], [ %__ret23.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #9
  br label %__out

__out:                                            ; preds = %for.end, %if.end44.__out_crit_edge
  %__ret23.2185 = phi i32 [ %__ret23.1.lcssa, %for.end ], [ %call24197, %if.end44.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end51

if.end51:                                         ; preds = %__out, %do.end.if.end51_crit_edge
  %__ret.1 = phi i32 [ 500, %do.end.if.end51_crit_edge ], [ %__ret23.2185, %__out ]
  %12 = ptrtoint ptr %ncontroller to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ncontroller, align 4
  %name = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 6
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.7, i32 noundef %13, ptr noundef %name) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %tobool55.not = icmp eq i32 %__ret.1, 0
  br i1 %tobool55.not, label %if.end51.cleanup115_crit_edge, label %if.end57

if.end51.cleanup115_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup115

if.end57:                                         ; preds = %if.end51
  %14 = ptrtoint ptr %ncontroller to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ncontroller, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool59.not = icmp eq i32 %15, 0
  br i1 %tobool59.not, label %if.end57.cleanup115_crit_edge, label %if.end61

if.end57.cleanup115_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup115

if.end61:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp sgt i32 %15, 1
  br i1 %cmp, label %if.then63, label %if.end61.if.end64_crit_edge

if.end61.if.end64_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.8) #9
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end61.if.end64_crit_edge
  %ctrl = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 12
  %16 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %ctrl, align 4
  %driverdata = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 12, i32 1
  %17 = ptrtoint ptr %driverdata to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %session, ptr %driverdata, align 4
  %name67 = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 12, i32 2
  %call71 = call ptr @strcpy(ptr noundef %name67, ptr noundef %name) #12
  %driver_name = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 12, i32 3
  %18 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str, ptr %driver_name, align 4
  %load_firmware = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 12, i32 4
  %19 = ptrtoint ptr %load_firmware to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @cmtp_load_firmware, ptr %load_firmware, align 4
  %reset_ctr = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 12, i32 5
  %20 = ptrtoint ptr %reset_ctr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @cmtp_reset_ctr, ptr %reset_ctr, align 4
  %register_appl = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 12, i32 6
  %21 = ptrtoint ptr %register_appl to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @cmtp_register_appl, ptr %register_appl, align 4
  %release_appl = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 12, i32 7
  %22 = ptrtoint ptr %release_appl to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @cmtp_release_appl, ptr %release_appl, align 4
  %send_message = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 12, i32 8
  %23 = ptrtoint ptr %send_message to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @cmtp_send_message, ptr %send_message, align 4
  %procinfo = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 12, i32 9
  %24 = ptrtoint ptr %procinfo to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @cmtp_procinfo, ptr %procinfo, align 4
  %proc_show = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 12, i32 10
  %25 = ptrtoint ptr %proc_show to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @cmtp_proc_show, ptr %proc_show, align 4
  %call81 = call i32 @attach_capi_ctr(ptr noundef %ctrl) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.9) #9
  br label %cleanup115

if.end84:                                         ; preds = %if.end64
  %cnr = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 12, i32 19
  %26 = ptrtoint ptr %cnr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cnr, align 4
  %num = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 11
  %28 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %num, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_attach_device.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_attach_device, %if.then98)) #9
          to label %do.end102 [label %if.then98], !srcloc !92

if.then98:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_attach_device.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.10, ptr noundef %session, i32 noundef %30) #9
  br label %do.end102

do.end102:                                        ; preds = %if.then98, %if.end84
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %buf, align 4
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %0, align 1
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %1, align 2
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %2, align 1
  %msgnum.i = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 15
  %35 = ptrtoint ptr %msgnum.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %msgnum.i, align 4
  %inc.i = add i32 %36, 1
  %and.i = and i32 %inc.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %and.i)
  %cmp.i = icmp ugt i32 %and.i, 200
  %spec.select.i = select i1 %cmp.i, i32 65281, i32 %inc.i
  %37 = ptrtoint ptr %msgnum.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %spec.select.i, ptr %msgnum.i, align 4
  %conv = trunc i32 %spec.select.i to i16
  call fastcc void @cmtp_send_interopmsg(ptr noundef %session, i8 noundef zeroext -128, i16 noundef zeroext -1, i16 noundef zeroext %conv, i16 noundef zeroext 3, ptr noundef nonnull %buf, i32 noundef 4)
  %38 = ptrtoint ptr %msgnum.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msgnum.i, align 4
  %inc.i168 = add i32 %39, 1
  %and.i169 = and i32 %inc.i168, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %and.i169)
  %cmp.i170 = icmp ugt i32 %and.i169, 200
  %spec.select.i171 = select i1 %cmp.i170, i32 65281, i32 %inc.i168
  %40 = ptrtoint ptr %msgnum.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %spec.select.i171, ptr %msgnum.i, align 4
  %conv107 = trunc i32 %spec.select.i171 to i16
  call fastcc void @cmtp_send_interopmsg(ptr noundef %session, i8 noundef zeroext -128, i16 noundef zeroext -1, i16 noundef zeroext %conv107, i16 noundef zeroext 4, ptr noundef nonnull %buf, i32 noundef 4)
  %41 = ptrtoint ptr %msgnum.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %msgnum.i, align 4
  %inc.i173 = add i32 %42, 1
  %and.i174 = and i32 %inc.i173, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %and.i174)
  %cmp.i175 = icmp ugt i32 %and.i174, 200
  %spec.select.i176 = select i1 %cmp.i175, i32 65281, i32 %inc.i173
  %43 = ptrtoint ptr %msgnum.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %spec.select.i176, ptr %msgnum.i, align 4
  %conv110 = trunc i32 %spec.select.i176 to i16
  call fastcc void @cmtp_send_interopmsg(ptr noundef %session, i8 noundef zeroext -128, i16 noundef zeroext -1, i16 noundef zeroext %conv110, i16 noundef zeroext 5, ptr noundef nonnull %buf, i32 noundef 4)
  %44 = ptrtoint ptr %msgnum.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msgnum.i, align 4
  %inc.i178 = add i32 %45, 1
  %and.i179 = and i32 %inc.i178, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %and.i179)
  %cmp.i180 = icmp ugt i32 %and.i179, 200
  %spec.select.i181 = select i1 %cmp.i180, i32 65281, i32 %inc.i178
  %46 = ptrtoint ptr %msgnum.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %spec.select.i181, ptr %msgnum.i, align 4
  %conv113 = trunc i32 %spec.select.i181 to i16
  call fastcc void @cmtp_send_interopmsg(ptr noundef %session, i8 noundef zeroext -128, i16 noundef zeroext -1, i16 noundef zeroext %conv113, i16 noundef zeroext 2, ptr noundef nonnull %buf, i32 noundef 4)
  br label %cleanup115

cleanup115:                                       ; preds = %do.end102, %if.then83, %if.end57.cleanup115_crit_edge, %if.end51.cleanup115_crit_edge
  %retval.0 = phi i32 [ -16, %if.then83 ], [ 0, %do.end102 ], [ -110, %if.end51.cleanup115_crit_edge ], [ -19, %if.end57.cleanup115_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cmtp_send_interopmsg(ptr noundef %session, i8 noundef zeroext %subcmd, i16 noundef zeroext %appl, i16 noundef zeroext %msgnum, i16 noundef zeroext %function, ptr nocapture noundef readonly %buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_send_interopmsg.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_send_interopmsg, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %subcmd to i32
  %conv3 = zext i16 %appl to i32
  %conv4 = zext i16 %msgnum to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_send_interopmsg.__UNIQUE_ID_ddebug462, ptr noundef nonnull @.str.14, ptr noundef %session, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add = add i32 %len, 14
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %call10 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add) #9
  %conv1.i = trunc i32 %add to i8
  %0 = ptrtoint ptr %call10 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv1.i, ptr %call10, align 1
  %1 = lshr i32 %add, 8
  %conv4.i = trunc i32 %1 to i8
  %arrayidx5.i = getelementptr i8, ptr %call10, i32 1
  %2 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %conv1.i41 = trunc i16 %appl to i8
  %arrayidx.i = getelementptr i8, ptr %call10, i32 2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv1.i41, ptr %arrayidx.i, align 1
  %4 = lshr i16 %appl, 8
  %conv4.i42 = trunc i16 %4 to i8
  %arrayidx5.i43 = getelementptr i8, ptr %call10, i32 3
  %5 = ptrtoint ptr %arrayidx5.i43 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv4.i42, ptr %arrayidx5.i43, align 1
  %arrayidx.i44 = getelementptr i8, ptr %call10, i32 4
  %6 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 32, ptr %arrayidx.i44, align 1
  %arrayidx.i45 = getelementptr i8, ptr %call10, i32 5
  %7 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %subcmd, ptr %arrayidx.i45, align 1
  %conv1.i46 = trunc i16 %msgnum to i8
  %arrayidx.i47 = getelementptr i8, ptr %call10, i32 6
  %8 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv1.i46, ptr %arrayidx.i47, align 1
  %9 = lshr i16 %msgnum, 8
  %conv4.i48 = trunc i16 %9 to i8
  %arrayidx5.i49 = getelementptr i8, ptr %call10, i32 7
  %10 = ptrtoint ptr %arrayidx5.i49 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv4.i48, ptr %arrayidx5.i49, align 1
  %arrayidx.i50 = getelementptr i8, ptr %call10, i32 8
  %11 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %arrayidx.i50, align 1
  %arrayidx5.i51 = getelementptr i8, ptr %call10, i32 9
  %12 = ptrtoint ptr %arrayidx5.i51 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx5.i51, align 1
  %13 = trunc i32 %len to i8
  %conv14 = add i8 %13, 3
  %arrayidx.i52 = getelementptr i8, ptr %call10, i32 10
  %14 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv14, ptr %arrayidx.i52, align 1
  %conv1.i53 = trunc i16 %function to i8
  %arrayidx.i54 = getelementptr i8, ptr %call10, i32 11
  %15 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv1.i53, ptr %arrayidx.i54, align 1
  %16 = lshr i16 %function, 8
  %conv4.i55 = trunc i16 %16 to i8
  %arrayidx5.i56 = getelementptr i8, ptr %call10, i32 12
  %17 = ptrtoint ptr %arrayidx5.i56 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv4.i55, ptr %arrayidx5.i56, align 1
  %arrayidx.i57 = getelementptr i8, ptr %call10, i32 13
  %18 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %13, ptr %arrayidx.i57, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp sgt i32 %len, 0
  br i1 %cmp, label %if.then17, label %if.end8.if.end18_crit_edge

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %call10, i32 14
  %19 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %len)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end8.if.end18_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_send_capimsg.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_send_interopmsg, %if.then.i)) #9
          to label %cmtp_send_capimsg.exit [label %if.then.i], !srcloc !92

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_send_capimsg.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.3, ptr noundef %session, ptr noundef nonnull %call.i, i32 noundef %21) #9
  br label %cmtp_send_capimsg.exit

cmtp_send_capimsg.exit:                           ; preds = %if.then.i, %if.end18
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %22 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %cb.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %arrayidx.i58 = getelementptr i8, ptr %24, i32 4
  %25 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i58, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -122, i8 %26)
  %cmp.i = icmp eq i8 %26, -122
  %conv3.i = zext i1 %cmp.i to i32
  %data4.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 4
  %27 = ptrtoint ptr %data4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv3.i, ptr %data4.i, align 4
  %transmit.i = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 16
  tail call void @skb_queue_tail(ptr noundef %transmit.i, ptr noundef nonnull %call.i) #9
  %sock.i = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 1
  %28 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sock.i, align 4
  %sk.i = getelementptr inbounds %struct.socket, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sk.i, align 16
  %32 = getelementptr inbounds %struct.sock, ptr %31, i32 0, i32 17
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %32, align 8
  tail call void @__wake_up(ptr noundef %34, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %cmtp_send_capimsg.exit, %if.then7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmtp_load_firmware(ptr noundef %ctrl, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_load_firmware.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_load_firmware, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_load_firmware.__UNIQUE_ID_ddebug471, ptr noundef nonnull @.str.18, ptr noundef %ctrl, ptr noundef %data) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmtp_reset_ctr(ptr noundef %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driverdata = getelementptr inbounds %struct.capi_ctr, ptr %ctrl, i32 0, i32 1
  %0 = ptrtoint ptr %driverdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driverdata, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_reset_ctr.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_reset_ctr, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_reset_ctr.__UNIQUE_ID_ddebug472, ptr noundef nonnull @.str.20, ptr noundef %ctrl) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @capi_ctr_down(ptr noundef %ctrl) #9
  %terminate = getelementptr inbounds %struct.cmtp_session, ptr %1, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %terminate, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %terminate, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %terminate, ptr %terminate, i32 1, ptr elementtype(i32) %terminate) #9, !srcloc !93
  %task = getelementptr inbounds %struct.cmtp_session, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 4
  %call3 = tail call i32 @wake_up_process(ptr noundef %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmtp_register_appl(ptr noundef %ctrl, i16 noundef zeroext %appl, ptr nocapture noundef readonly %rp) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  %driverdata = getelementptr inbounds %struct.capi_ctr, ptr %ctrl, i32 0, i32 1
  %13 = ptrtoint ptr %driverdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driverdata, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #9
  %15 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %16 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %17 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %18 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %19 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 -1, ptr %buf, align 8
  %21 = ptrtoint ptr %rp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rp, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_register_appl.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_register_appl, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %appl to i32
  %23 = ptrtoint ptr %rp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rp, align 4
  %datablkcnt = getelementptr inbounds %struct.capi_register_params, ptr %rp, i32 0, i32 1
  %25 = ptrtoint ptr %datablkcnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %datablkcnt, align 4
  %datablklen = getelementptr inbounds %struct.capi_register_params, ptr %rp, i32 0, i32 2
  %27 = ptrtoint ptr %datablklen to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %datablklen, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_register_appl.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.22, ptr noundef %ctrl, i32 noundef %conv, i32 noundef %24, i32 noundef %26, i32 noundef %28) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 24) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_application_add.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_register_appl, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !92

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i16 %appl to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_application_add.__UNIQUE_ID_ddebug459, ptr noundef nonnull @.str.26, ptr noundef %14, ptr noundef %call7.i.i.i, i32 noundef %conv.i) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %tobool4.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool4.not.i, label %if.then8, label %if.end6.i

if.end6.i:                                        ; preds = %do.end.i
  %state.i = getelementptr inbounds %struct.cmtp_application, ptr %call7.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %state.i, align 8
  %appl7.i = getelementptr inbounds %struct.cmtp_application, ptr %call7.i.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %appl7.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %appl, ptr %appl7.i, align 8
  %applications.i = getelementptr inbounds %struct.cmtp_session, ptr %14, i32 0, i32 13
  %prev.i.i = getelementptr inbounds %struct.cmtp_session, ptr %14, i32 0, i32 13, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %33, ptr noundef %applications.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end6.i.if.end9_crit_edge

if.end6.i.if.end9_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end.i.i.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %applications.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %call7.i.i.i, ptr %33, align 4
  br label %if.end9

if.then8:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.23) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.i.i, %if.end6.i.if.end9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp = icmp slt i32 %22, 0
  br i1 %cmp, label %if.then11, label %if.end9.if.end13_crit_edge

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %nbchannel = getelementptr inbounds %struct.capi_ctr, ptr %ctrl, i32 0, i32 13, i32 1
  %38 = ptrtoint ptr %nbchannel to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %nbchannel, align 2
  %conv12 = zext i16 %39 to i32
  %40 = mul i32 %22, %conv12
  %mul = sub i32 0, %40
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  %nconn.0 = phi i32 [ %mul, %if.then11 ], [ %22, %if.end9.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nconn.0)
  %cmp14 = icmp eq i32 %nconn.0, 0
  br i1 %cmp14, label %if.then16, label %if.end13.if.end20_crit_edge

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %nbchannel18 = getelementptr inbounds %struct.capi_ctr, ptr %ctrl, i32 0, i32 13, i32 1
  %41 = ptrtoint ptr %nbchannel18 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %nbchannel18, align 2
  %conv19 = zext i16 %42 to i32
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end13.if.end20_crit_edge
  %nconn.1 = phi i32 [ %conv19, %if.then16 ], [ %nconn.0, %if.end13.if.end20_crit_edge ]
  %conv1.i = trunc i32 %nconn.1 to i8
  %43 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv1.i, ptr %buf, align 8
  %44 = lshr i32 %nconn.1, 8
  %conv4.i = trunc i32 %44 to i8
  %45 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv4.i, ptr %15, align 1
  %datablkcnt23 = getelementptr inbounds %struct.capi_register_params, ptr %rp, i32 0, i32 1
  %46 = ptrtoint ptr %datablkcnt23 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %datablkcnt23, align 4
  %conv1.i251 = trunc i32 %47 to i8
  %48 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv1.i251, ptr %16, align 2
  %49 = lshr i32 %47, 8
  %conv4.i252 = trunc i32 %49 to i8
  %50 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv4.i252, ptr %17, align 1
  %datablklen26 = getelementptr inbounds %struct.capi_register_params, ptr %rp, i32 0, i32 2
  %51 = ptrtoint ptr %datablklen26 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %datablklen26, align 4
  %conv1.i254 = trunc i32 %52 to i8
  %53 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv1.i254, ptr %18, align 4
  %54 = lshr i32 %52, 8
  %conv4.i256 = trunc i32 %54 to i8
  %55 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv4.i256, ptr %19, align 1
  %56 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 7, ptr %state.i, align 8
  %msgnum.i = getelementptr inbounds %struct.cmtp_session, ptr %14, i32 0, i32 15
  %57 = ptrtoint ptr %msgnum.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %msgnum.i, align 4
  %inc.i = add i32 %58, 1
  %and.i258 = and i32 %inc.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %and.i258)
  %cmp.i = icmp ugt i32 %and.i258, 200
  %spec.select.i = select i1 %cmp.i, i32 65281, i32 %inc.i
  %59 = ptrtoint ptr %msgnum.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %spec.select.i, ptr %msgnum.i, align 4
  %conv29 = trunc i32 %spec.select.i to i16
  %msgnum = getelementptr inbounds %struct.cmtp_application, ptr %call7.i.i.i, i32 0, i32 5
  %60 = ptrtoint ptr %msgnum to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv29, ptr %msgnum, align 4
  call fastcc void @cmtp_send_interopmsg(ptr noundef %14, i8 noundef zeroext -128, i16 noundef zeroext 0, i16 noundef zeroext %conv29, i16 noundef zeroext 0, ptr noundef nonnull %buf, i32 noundef 6)
  %wait32 = getelementptr inbounds %struct.cmtp_session, ptr %14, i32 0, i32 9
  call void @add_wait_queue(ptr noundef %wait32, ptr noundef nonnull %wait) #9
  br label %__here

__here:                                           ; preds = %if.end127, %if.end20
  %timeo.0 = phi i32 [ 500, %if.end20 ], [ %call128, %if.end127 ]
  %61 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 212
  %63 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 ptrtoint (ptr blockaddress(@cmtp_register_appl, %__here) to i32), ptr %task_state_change, align 4
  %64 = load ptr, ptr %task, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 1, ptr %64, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeo.0)
  %tobool107.not = icmp eq i32 %timeo.0, 0
  br i1 %tobool107.not, label %if.then212.critedge, label %if.end109

if.end109:                                        ; preds = %__here
  %66 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %state.i, align 8
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %67, label %if.end121 [
    i32 9, label %__here180
    i32 1, label %cleanup.critedge
  ]

if.end121:                                        ; preds = %if.end109
  %69 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %stack.i.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %72, align 4
  %75 = and i32 %74, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i = icmp eq i32 %75, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.then212.critedge271, !prof !95

signal_pending.exit:                              ; preds = %if.end121
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %72, align 4
  %and1.i.i.i.i.i = and i32 %77, 1
  %tobool125.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool125.not, label %if.end127, label %if.then212.critedge269

if.end127:                                        ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call128 = call i32 @schedule_timeout(i32 noundef %timeo.0) #9
  br label %__here

__here180:                                        ; preds = %if.end109
  %err114 = getelementptr inbounds %struct.cmtp_application, ptr %call7.i.i.i, i32 0, i32 2
  %78 = ptrtoint ptr %err114 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %err114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %phi.cmp = icmp eq i32 %79, 0
  %80 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %task, align 8
  %task_state_change184 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 212
  %82 = ptrtoint ptr %task_state_change184 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 ptrtoint (ptr blockaddress(@cmtp_register_appl, %__here180) to i32), ptr %task_state_change184, align 4
  %83 = load ptr, ptr %task, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile i32 0, ptr %83, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !96
  call void @remove_wait_queue(ptr noundef %wait32, ptr noundef nonnull %wait) #9
  br i1 %phi.cmp, label %__here180.cleanup_crit_edge, label %__here180.if.then212_crit_edge

__here180.if.then212_crit_edge:                   ; preds = %__here180
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then212

__here180.cleanup_crit_edge:                      ; preds = %__here180
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then212.critedge:                              ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task, align 8
  %task_state_change184.c = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 212
  %87 = ptrtoint ptr %task_state_change184.c to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 ptrtoint (ptr blockaddress(@cmtp_register_appl, %__here180) to i32), ptr %task_state_change184.c, align 4
  %88 = load ptr, ptr %task, align 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile i32 0, ptr %88, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !96
  br label %if.then212.sink.split

if.then212.critedge269:                           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %task, align 8
  %task_state_change184.c270 = getelementptr inbounds %struct.task_struct, ptr %91, i32 0, i32 212
  %92 = ptrtoint ptr %task_state_change184.c270 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 ptrtoint (ptr blockaddress(@cmtp_register_appl, %__here180) to i32), ptr %task_state_change184.c270, align 4
  %93 = load ptr, ptr %task, align 8
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 0, ptr %93, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !96
  br label %if.then212.sink.split

if.then212.critedge271:                           ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %task, align 8
  %task_state_change184.c272 = getelementptr inbounds %struct.task_struct, ptr %96, i32 0, i32 212
  %97 = ptrtoint ptr %task_state_change184.c272 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 ptrtoint (ptr blockaddress(@cmtp_register_appl, %__here180) to i32), ptr %task_state_change184.c272, align 4
  %98 = load ptr, ptr %task, align 8
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile i32 0, ptr %98, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !96
  br label %if.then212.sink.split

if.then212.sink.split:                            ; preds = %if.then212.critedge271, %if.then212.critedge269, %if.then212.critedge
  call void @remove_wait_queue(ptr noundef %wait32, ptr noundef nonnull %wait) #9
  br label %if.then212

if.then212:                                       ; preds = %if.then212.sink.split, %__here180.if.then212_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_application_del.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_register_appl, %if.then.i260)) #9
          to label %if.then4.i [label %if.then.i260], !srcloc !92

if.then.i260:                                     ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_application_del.__UNIQUE_ID_ddebug460, ptr noundef nonnull @.str.28, ptr noundef %14, ptr noundef nonnull %call7.i.i.i) #9
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i260, %if.then212
  %call.i.i.i262 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i.i.i) #9
  br i1 %call.i.i.i262, label %if.end.i.i.i263, label %if.then4.i.cmtp_application_del.exit_crit_edge

if.then4.i.cmtp_application_del.exit_crit_edge:   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cmtp_application_del.exit

if.end.i.i.i263:                                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %100 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev.i.i.i, align 4
  %102 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %call7.i.i.i, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %prev1.i.i.i.i, align 4
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %103, ptr %101, align 4
  br label %cmtp_application_del.exit

cmtp_application_del.exit:                        ; preds = %if.end.i.i.i263, %if.then4.i.cmtp_application_del.exit_crit_edge
  %106 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i.i, align 8
  %prev.i.i264 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %107 = ptrtoint ptr %prev.i.i264 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i264, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

cleanup.critedge:                                 ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  %108 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %task, align 8
  %task_state_change184.c268 = getelementptr inbounds %struct.task_struct, ptr %109, i32 0, i32 212
  %110 = ptrtoint ptr %task_state_change184.c268 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 ptrtoint (ptr blockaddress(@cmtp_register_appl, %__here180) to i32), ptr %task_state_change184.c268, align 4
  %111 = load ptr, ptr %task, align 8
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile i32 0, ptr %111, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !96
  call void @remove_wait_queue(ptr noundef %wait32, ptr noundef nonnull %wait) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %cmtp_application_del.exit, %__here180.cleanup_crit_edge, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmtp_release_appl(ptr noundef %ctrl, i16 noundef zeroext %appl) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driverdata = getelementptr inbounds %struct.capi_ctr, ptr %ctrl, i32 0, i32 1
  %0 = ptrtoint ptr %driverdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driverdata, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_release_appl.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_release_appl, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %appl to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_release_appl.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.30, ptr noundef %ctrl, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %applications.i = getelementptr inbounds %struct.cmtp_session, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %applications.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %app.034.i = load ptr, ptr %applications.i, align 4
  %cmp.not35.i = icmp eq ptr %app.034.i, %applications.i
  br i1 %cmp.not35.i, label %do.end.if.then5_crit_edge, label %do.end.for.body.i_crit_edge

do.end.for.body.i_crit_edge:                      ; preds = %do.end
  br label %for.body.i

do.end.if.then5_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.for.body.i_crit_edge
  %app.036.i = phi ptr [ %app.0.i, %for.inc.i.for.body.i_crit_edge ], [ %app.034.i, %do.end.for.body.i_crit_edge ]
  %appl.i = getelementptr inbounds %struct.cmtp_application, ptr %app.036.i, i32 0, i32 3
  %3 = ptrtoint ptr %appl.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %appl.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %appl)
  %cmp8.i = icmp eq i16 %4, %appl
  br i1 %cmp8.i, label %cmtp_application_get.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %5 = ptrtoint ptr %app.036.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %app.0.i = load ptr, ptr %app.036.i, align 4
  %cmp.not.i = icmp eq ptr %app.0.i, %applications.i
  br i1 %cmp.not.i, label %for.inc.i.if.then5_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.then5_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

cmtp_application_get.exit:                        ; preds = %for.body.i
  %tobool4.not = icmp eq ptr %app.036.i, null
  br i1 %tobool4.not, label %cmtp_application_get.exit.if.then5_crit_edge, label %if.end6

cmtp_application_get.exit.if.then5_crit_edge:     ; preds = %cmtp_application_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.then5:                                         ; preds = %cmtp_application_get.exit.if.then5_crit_edge, %for.inc.i.if.then5_crit_edge, %do.end.if.then5_crit_edge
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.31) #9
  br label %cleanup64

if.end6:                                          ; preds = %cmtp_application_get.exit
  %msgnum.i = getelementptr inbounds %struct.cmtp_session, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %msgnum.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msgnum.i, align 4
  %inc.i = add i32 %7, 1
  %and.i = and i32 %inc.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %and.i)
  %cmp.i = icmp ugt i32 %and.i, 200
  %spec.select.i = select i1 %cmp.i, i32 65281, i32 %inc.i
  %8 = ptrtoint ptr %msgnum.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select.i, ptr %msgnum.i, align 4
  %conv8 = trunc i32 %spec.select.i to i16
  %msgnum = getelementptr inbounds %struct.cmtp_application, ptr %app.036.i, i32 0, i32 5
  %9 = ptrtoint ptr %msgnum to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv8, ptr %msgnum, align 4
  %mapping = getelementptr inbounds %struct.cmtp_application, ptr %app.036.i, i32 0, i32 4
  %10 = ptrtoint ptr %mapping to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mapping, align 2
  tail call fastcc void @cmtp_send_interopmsg(ptr noundef %1, i8 noundef zeroext -128, i16 noundef zeroext %11, i16 noundef zeroext %conv8, i16 noundef zeroext 1, ptr noundef null, i32 noundef 0)
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 467) #9
  %state = getelementptr inbounds %struct.cmtp_application, ptr %app.036.i, i32 0, i32 1
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %13)
  %cmp = icmp eq i32 %13, 9
  br i1 %cmp, label %if.end6.if.end62_crit_edge, label %if.then30

if.end6.if.end62_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then30:                                        ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %14 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %wait = getelementptr inbounds %struct.cmtp_session, ptr %1, i32 0, i32 9
  %call32102 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %16)
  %cmp35103 = icmp eq i32 %16, 9
  br i1 %cmp35103, label %if.then30.for.end_crit_edge, label %if.then30.if.end55_crit_edge

if.then30.if.end55_crit_edge:                     ; preds = %if.then30
  br label %if.end55

if.then30.for.end_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end55:                                         ; preds = %cleanup.if.end55_crit_edge, %if.then30.if.end55_crit_edge
  %__ret31.1105 = phi i32 [ %__ret31.1, %cleanup.if.end55_crit_edge ], [ 500, %if.then30.if.end55_crit_edge ]
  %call32104 = phi i32 [ %call32, %cleanup.if.end55_crit_edge ], [ %call32102, %if.then30.if.end55_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32104)
  %tobool56.not = icmp eq i32 %call32104, 0
  br i1 %tobool56.not, label %cleanup, label %if.end55.__out_crit_edge

if.end55.__out_crit_edge:                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %__out

cleanup:                                          ; preds = %if.end55
  %call59 = call i32 @schedule_timeout(i32 noundef %__ret31.1105) #9
  %call32 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %18)
  %cmp35 = icmp eq i32 %18, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool41.not = icmp eq i32 %call59, 0
  %19 = select i1 %cmp35, i1 %tobool41.not, i1 false
  %__ret31.1 = select i1 %19, i32 1, i32 %call59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret31.1)
  %tobool48.not = icmp eq i32 %__ret31.1, 0
  %20 = select i1 %cmp35, i1 true, i1 %tobool48.not
  br i1 %20, label %cleanup.for.end_crit_edge, label %cleanup.if.end55_crit_edge

cleanup.if.end55_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then30.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #9
  br label %__out

__out:                                            ; preds = %for.end, %if.end55.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end62

if.end62:                                         ; preds = %__out, %if.end6.if.end62_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_application_del.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_release_appl, %if.then.i)) #9
          to label %if.then4.i [label %if.then.i], !srcloc !92

if.then.i:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_application_del.__UNIQUE_ID_ddebug460, ptr noundef nonnull @.str.28, ptr noundef %1, ptr noundef nonnull %app.036.i) #9
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i, %if.end62
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %app.036.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then4.i.cmtp_application_del.exit_crit_edge

if.then4.i.cmtp_application_del.exit_crit_edge:   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cmtp_application_del.exit

if.end.i.i.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %app.036.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %app.036.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %app.036.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %cmtp_application_del.exit

cmtp_application_del.exit:                        ; preds = %if.end.i.i.i, %if.then4.i.cmtp_application_del.exit_crit_edge
  %27 = ptrtoint ptr %app.036.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %app.036.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %app.036.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef nonnull %app.036.i) #9
  br label %cleanup64

cleanup64:                                        ; preds = %cmtp_application_del.exit, %if.then5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @cmtp_send_message(ptr noundef %ctrl, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driverdata = getelementptr inbounds %struct.capi_ctr, ptr %ctrl, i32 0, i32 1
  %0 = ptrtoint ptr %driverdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driverdata, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_send_message.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_send_message, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_send_message.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.33, ptr noundef %ctrl, ptr noundef %skb) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i16
  %arrayidx4 = getelementptr i8, ptr %3, i32 3
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %7 to i16
  %shl = shl nuw i16 %conv5, 8
  %or = or i16 %shl, %conv
  %arrayidx8 = getelementptr i8, ptr %3, i32 8
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  %arrayidx11 = getelementptr i8, ptr %3, i32 9
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx11, align 1
  %arrayidx16 = getelementptr i8, ptr %3, i32 10
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx16, align 1
  %arrayidx21 = getelementptr i8, ptr %3, i32 11
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx21, align 1
  %applications.i = getelementptr inbounds %struct.cmtp_session, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %applications.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %app.034.i = load ptr, ptr %applications.i, align 4
  %cmp.not35.i = icmp eq ptr %app.034.i, %applications.i
  br i1 %cmp.not35.i, label %do.end.if.then28_crit_edge, label %do.end.for.body.i_crit_edge

do.end.for.body.i_crit_edge:                      ; preds = %do.end
  br label %for.body.i

do.end.if.then28_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.for.body.i_crit_edge
  %app.036.i = phi ptr [ %app.0.i, %for.inc.i.for.body.i_crit_edge ], [ %app.034.i, %do.end.for.body.i_crit_edge ]
  %appl.i = getelementptr inbounds %struct.cmtp_application, ptr %app.036.i, i32 0, i32 3
  %17 = ptrtoint ptr %appl.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %appl.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %or)
  %cmp8.i = icmp eq i16 %18, %or
  br i1 %cmp8.i, label %cmtp_application_get.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %19 = ptrtoint ptr %app.036.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %app.0.i = load ptr, ptr %app.036.i, align 4
  %cmp.not.i = icmp eq ptr %app.0.i, %applications.i
  br i1 %cmp.not.i, label %for.inc.i.if.then28_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.then28_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

cmtp_application_get.exit:                        ; preds = %for.body.i
  %tobool26.not = icmp eq ptr %app.036.i, null
  br i1 %tobool26.not, label %cmtp_application_get.exit.if.then28_crit_edge, label %lor.lhs.false

cmtp_application_get.exit.if.then28_crit_edge:    ; preds = %cmtp_application_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

lor.lhs.false:                                    ; preds = %cmtp_application_get.exit
  %state = getelementptr inbounds %struct.cmtp_application, ptr %app.036.i, i32 0, i32 1
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.not = icmp eq i32 %21, 1
  br i1 %cmp.not, label %if.end30, label %lor.lhs.false.if.then28_crit_edge

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

if.then28:                                        ; preds = %lor.lhs.false.if.then28_crit_edge, %cmtp_application_get.exit.if.then28_crit_edge, %for.inc.i.if.then28_crit_edge, %do.end.if.then28_crit_edge
  %conv29 = zext i16 %or to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.4, i32 noundef %conv29) #9
  br label %cleanup

if.end30:                                         ; preds = %lor.lhs.false
  %mapping = getelementptr inbounds %struct.cmtp_application, ptr %app.036.i, i32 0, i32 4
  %22 = ptrtoint ptr %mapping to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %mapping, align 2
  %conv1.i = trunc i16 %23 to i8
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv1.i, ptr %arrayidx, align 1
  %25 = lshr i16 %23, 8
  %conv4.i = trunc i16 %25 to i8
  %26 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv4.i, ptr %arrayidx4, align 1
  %27 = and i8 %9, 127
  %and = zext i8 %27 to i32
  %num = getelementptr inbounds %struct.cmtp_session, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %and)
  %cmp32 = icmp eq i32 %29, %and
  br i1 %cmp32, label %if.then34, label %if.end30.if.end38_crit_edge

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %conv9.masked = and i8 %9, -128
  %or36 = or i8 %conv9.masked, 1
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %arrayidx.i60 = getelementptr i8, ptr %31, i32 8
  %32 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %or36, ptr %arrayidx.i60, align 1
  %arrayidx3.i = getelementptr i8, ptr %31, i32 9
  %33 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %11, ptr %arrayidx3.i, align 1
  %arrayidx8.i = getelementptr i8, ptr %31, i32 10
  %34 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %13, ptr %arrayidx8.i, align 1
  %arrayidx13.i = getelementptr i8, ptr %31, i32 11
  %35 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %15, ptr %arrayidx13.i, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.end30.if.end38_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_send_capimsg.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_send_message, %if.then.i)) #9
          to label %cmtp_send_capimsg.exit [label %if.then.i], !srcloc !92

if.then.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %36 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_send_capimsg.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef %skb, i32 noundef %37) #9
  br label %cmtp_send_capimsg.exit

cmtp_send_capimsg.exit:                           ; preds = %if.then.i, %if.end38
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %38 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %cb.i, align 4
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  %arrayidx.i61 = getelementptr i8, ptr %40, i32 4
  %41 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -122, i8 %42)
  %cmp.i = icmp eq i8 %42, -122
  %conv3.i = zext i1 %cmp.i to i32
  %data4.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %43 = ptrtoint ptr %data4.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv3.i, ptr %data4.i, align 4
  %transmit.i = getelementptr inbounds %struct.cmtp_session, ptr %1, i32 0, i32 16
  tail call void @skb_queue_tail(ptr noundef %transmit.i, ptr noundef %skb) #9
  %sock.i = getelementptr inbounds %struct.cmtp_session, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sock.i, align 4
  %sk.i = getelementptr inbounds %struct.socket, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sk.i, align 16
  %48 = getelementptr inbounds %struct.sock, ptr %47, i32 0, i32 17
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %48, align 8
  tail call void @__wake_up(ptr noundef %50, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %cmtp_send_capimsg.exit, %if.then28
  %retval.0 = phi i16 [ 4353, %if.then28 ], [ 0, %cmtp_send_capimsg.exit ]
  ret i16 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @cmtp_procinfo(ptr nocapture noundef readnone %ctrl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.34
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmtp_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driverdata = getelementptr inbounds %struct.capi_ctr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driverdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driverdata, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34) #9
  %name = getelementptr inbounds %struct.cmtp_session, ptr %3, i32 0, i32 6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.36, ptr noundef %name) #9
  %num = getelementptr inbounds %struct.cmtp_session, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.37, i32 noundef %5) #9
  %applications = getelementptr inbounds %struct.cmtp_session, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %applications to i32
  call void @__asan_load4_noabort(i32 %6)
  %app.019 = load ptr, ptr %applications, align 4
  %cmp.not20 = icmp eq ptr %app.019, %applications
  br i1 %cmp.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %app.021 = phi ptr [ %app.0, %for.body.for.body_crit_edge ], [ %app.019, %entry.for.body_crit_edge ]
  %appl = getelementptr inbounds %struct.cmtp_application, ptr %app.021, i32 0, i32 3
  %7 = ptrtoint ptr %appl to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %appl, align 4
  %conv = zext i16 %8 to i32
  %mapping = getelementptr inbounds %struct.cmtp_application, ptr %app.021, i32 0, i32 4
  %9 = ptrtoint ptr %mapping to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mapping, align 2
  %conv2 = zext i16 %10 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.38, i32 noundef %conv, i32 noundef %conv2) #9
  %11 = ptrtoint ptr %app.021 to i32
  call void @__asan_load4_noabort(i32 %11)
  %app.0 = load ptr, ptr %app.021, align 4
  %cmp.not = icmp eq ptr %app.0, %applications
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attach_capi_ctr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cmtp_detach_device(ptr noundef %session) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_detach_device.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_detach_device, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_detach_device.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.6, ptr noundef %session) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ctrl = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 12
  %call3 = tail call i32 @detach_capi_ctr(ptr noundef %ctrl) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @detach_capi_ctr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @capi_ctr_ready(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @capi_ctr_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !16, !18, !20, !21, !23, !24, !26, !27, !29, !30, !31, !33, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !74, !76, !78, !80}
!llvm.named.register.sp = !{!82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bluetooth/cmtp/capi.c", i32 324, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cmtp_recv_capimsg.__UNIQUE_ID_ddebug470, !1, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/bluetooth/cmtp/capi.c", i32 347, i32 3}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/bluetooth/cmtp/capi.c", i32 529, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @cmtp_attach_device.__UNIQUE_ID_ddebug478, !9, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/bluetooth/cmtp/capi.c", i32 539, i32 2}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/bluetooth/cmtp/capi.c", i32 548, i32 3}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/bluetooth/cmtp/capi.c", i32 565, i32 3}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/bluetooth/cmtp/capi.c", i32 571, i32 2}
!20 = !{ptr @cmtp_attach_device.__UNIQUE_ID_ddebug479, !19, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/bluetooth/cmtp/capi.c", i32 592, i32 2}
!23 = !{ptr @cmtp_detach_device.__UNIQUE_ID_ddebug480, !22, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/bluetooth/cmtp/capi.c", i32 191, i32 2}
!26 = !{ptr @cmtp_recv_interopmsg.__UNIQUE_ID_ddebug463, !25, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/bluetooth/cmtp/capi.c", i32 155, i32 2}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @cmtp_send_interopmsg.__UNIQUE_ID_ddebug462, !28, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/bluetooth/cmtp/capi.c", i32 159, i32 3}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/bluetooth/cmtp/capi.c", i32 138, i32 2}
!35 = !{ptr @cmtp_send_capimsg.__UNIQUE_ID_ddebug461, !34, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/bluetooth/cmtp/capi.c", i32 362, i32 2}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @cmtp_load_firmware.__UNIQUE_ID_ddebug471, !37, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/bluetooth/cmtp/capi.c", i32 371, i32 2}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @cmtp_reset_ctr.__UNIQUE_ID_ddebug472, !41, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/bluetooth/cmtp/capi.c", i32 388, i32 2}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @cmtp_register_appl.__UNIQUE_ID_ddebug473, !45, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/bluetooth/cmtp/capi.c", i32 393, i32 3}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../net/bluetooth/cmtp/capi.c", i32 417, i32 3}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../net/bluetooth/cmtp/capi.c", i32 439, i32 2}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/bluetooth/cmtp/capi.c", i32 77, i32 2}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @cmtp_application_add.__UNIQUE_ID_ddebug459, !55, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/bluetooth/cmtp/capi.c", i32 92, i32 2}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @cmtp_application_del.__UNIQUE_ID_ddebug460, !59, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/bluetooth/cmtp/capi.c", i32 453, i32 2}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @cmtp_release_appl.__UNIQUE_ID_ddebug476, !63, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/bluetooth/cmtp/capi.c", i32 457, i32 3}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/bluetooth/cmtp/capi.c", i32 479, i32 2}
!70 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @cmtp_send_message.__UNIQUE_ID_ddebug477, !69, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/bluetooth/cmtp/capi.c", i32 504, i32 9}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/bluetooth/cmtp/capi.c", i32 513, i32 16}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/bluetooth/cmtp/capi.c", i32 514, i32 16}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/bluetooth/cmtp/capi.c", i32 515, i32 16}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/bluetooth/cmtp/capi.c", i32 518, i32 17}
!82 = !{!"sp"}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i64 2148499098, i64 2148499103, i64 2148499116, i64 2148499160, i64 2148499194, i64 2148499215}
!93 = !{i64 2148674500, i64 2148674526, i64 2148674555, i64 2148674589, i64 2148674620, i64 2148674643}
!94 = !{i64 2156907803}
!95 = !{!"branch_weights", i32 2000, i32 1}
!96 = !{i64 2156912582}
