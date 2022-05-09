; ModuleID = '/llk/IR_all_yes/net/caif/caif_socket.c_pt.bc'
source_filename = "../net/caif/caif_socket.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_proto_family = type { i32, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.168, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.168 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.173, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.174, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.175, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.169, [0 x i32], %union.anon.170, i16, i16, %union.anon.171, %struct.refcount_struct, [0 x i32], %union.anon.172 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.141 }
%union.anon.141 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.169 = type { i32 }
%union.anon.170 = type { %struct.hlist_node }
%union.anon.171 = type { i32 }
%union.anon.172 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.173 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.174 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.175 = type { ptr }
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.caifsock = type { %struct.sock, %struct.cflayer, i32, %struct.caif_connect_request, %struct.mutex, ptr, i32, i32, i32 }
%struct.cflayer = type { ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, [16 x i8] }
%struct.caif_connect_request = type { i32, %struct.sockaddr_caif, i32, i32, i32, %struct.caif_param }
%struct.sockaddr_caif = type { i16, %union.anon.186 }
%union.anon.186 = type { %struct.anon.190 }
%struct.anon.190 = type { i32, [16 x i8] }
%struct.caif_param = type { i16, [256 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.150, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.150 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.81, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.20, %union.anon.79 }
%union.anon.20 = type { ptr }
%union.anon.79 = type { i64 }
%union.anon.81 = type { ptr }
%struct.sk_buff = type { %union.anon.82, %union.anon.151, %union.anon.152, [48 x i8], %union.anon.153, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.155, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.151 = type { ptr }
%union.anon.152 = type { i64 }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { i32, ptr }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.157, i32, i32, i32, i16, i16, %union.anon.159, i32, %union.anon.160, %union.anon.161, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.157 = type { i32 }
%union.anon.159 = type { i32 }
%union.anon.160 = type { i32 }
%union.anon.161 = type { i16 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__UNIQUE_ID_file524 = internal constant [38 x i8] c"caif_socket.file=net/caif/caif_socket\00", section ".modinfo", align 1
@__UNIQUE_ID_license525 = internal constant [24 x i8] c"caif_socket.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias526 = internal constant [28 x i8] c"caif_socket.alias=net-pf-37\00", section ".modinfo", align 1
@__initcall__kmod_caif_socket__533_1123_caif_sktinit_module6 = internal global ptr @caif_sktinit_module, section ".initcall6.init", align 4
@__exitcall_caif_sktexit_module = internal global ptr @caif_sktexit_module, section ".exitcall.exit", align 4
@caif_family_ops = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 37, ptr @caif_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@caif_create.prot = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1424, i32 0, i32 1056, i32 258, ptr null, ptr null, ptr null, %union.anon.168 zeroinitializer, ptr null, [32 x i8] c"PF_CAIF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@caif_seqpacket_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 37, ptr null, ptr @caif_release, ptr @sock_no_bind, ptr @caif_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @sock_no_getname, ptr @caif_poll, ptr @sock_no_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr @setsockopt, ptr null, ptr null, ptr @caif_seqpkt_sendmsg, ptr @caif_seqpkt_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@caif_stream_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 37, ptr null, ptr @caif_release, ptr @sock_no_bind, ptr @caif_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @sock_no_getname, ptr @caif_poll, ptr @sock_no_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr @setsockopt, ptr null, ptr null, ptr @caif_stream_sendmsg, ptr @caif_stream_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@caif_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&cf_sk->readlock\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/caif/caif_socket.c\00", [41 x i8] zeroinitializer }, align 32
@caif_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 770, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013caif_socket:%s(): caif:Assert detected:'%s'\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"caif_connect\00", [19 x i8] zeroinitializer }, align 32
@caif_connect._entry_ptr = internal global ptr @caif_connect._entry, section ".printk_index", align 4
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sk->sk_state == CAIF_DISCONNECTED\00", [62 x i8] zeroinitializer }, align 32
@caif_connect._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@caif_connect._entry_ptr.6 = internal global ptr @caif_connect._entry.5, section ".printk_index", align 4
@.str.7 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"sk->sk_state == CAIF_CONNECTED || sk->sk_state == CAIF_DISCONNECTED\00", [60 x i8] zeroinitializer }, align 32
@caif_connect._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.1, i32 857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014caif_socket:%s(): CAIF Interface MTU too small (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@caif_connect._entry_ptr.10 = internal global ptr @caif_connect._entry.8, section ".printk_index", align 4
@caif_queue_rcv_skb.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.1, ptr @.str.13, i8 0, i8 34, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"caif_socket\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"caif_queue_rcv_skb\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"sending flow OFF (queue len = %d %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"caif_socket:%s(): sending flow OFF (queue len = %d %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@caif_queue_rcv_skb.descriptor.15 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.1, ptr @.str.16, i8 0, i8 37, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sending flow OFF due to rmem_schedule\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"caif_socket:%s(): sending flow OFF due to rmem_schedule\0A\00", [39 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@caif_seqpkt_sendmsg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.24, ptr @.str.1, i32 529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"caif_seqpkt_sendmsg\00", [44 x i8] zeroinitializer }, align 32
@caif_seqpkt_sendmsg._entry_ptr = internal global ptr @caif_seqpkt_sendmsg._entry, section ".printk_index", align 4
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cf_sk\00", [26 x i8] zeroinitializer }, align 32
@caif_sock_destructor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.26, ptr @.str.1, i32 1016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"caif_sock_destructor\00", [43 x i8] zeroinitializer }, align 32
@caif_sock_destructor._entry_ptr = internal global ptr @caif_sock_destructor._entry, section ".printk_index", align 4
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"!refcount_read(&sk->sk_wmem_alloc)\00", [61 x i8] zeroinitializer }, align 32
@caif_sock_destructor._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.26, ptr @.str.1, i32 1017, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@caif_sock_destructor._entry_ptr.29 = internal global ptr @caif_sock_destructor._entry.28, section ".printk_index", align 4
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sk_unhashed(sk)\00", [16 x i8] zeroinitializer }, align 32
@caif_sock_destructor._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.26, ptr @.str.1, i32 1018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@caif_sock_destructor._entry_ptr.32 = internal global ptr @caif_sock_destructor._entry.31, section ".printk_index", align 4
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"!sk->sk_socket\00", [17 x i8] zeroinitializer }, align 32
@caif_sock_destructor.__UNIQUE_ID_ddebug532 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.26, ptr @.str.1, ptr @.str.34, i8 0, i8 -1, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Attempt to release alive CAIF socket: %p\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"caif_socket:%s(): Attempt to release alive CAIF socket: %p\0A\00", [36 x i8] zeroinitializer }, align 32
@caif_ctrl_cb.__UNIQUE_ID_ddebug527 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.36, ptr @.str.1, ptr @.str.37, i8 0, i8 62, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"caif_ctrl_cb\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unexpected flow command %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"caif_socket:%s(): Unexpected flow command %d\0A\00", [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 5]
@__sancov_gen_cov_switch_values.39 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 127, i64 128]
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"caif_family_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1108, i32 38 }
@___asan_gen_.46 = private unnamed_addr constant [5 x i8] c"prot\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1032, i32 22 }
@___asan_gen_.49 = private unnamed_addr constant [19 x i8] c"caif_seqpacket_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 972, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"caif_stream_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 992, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1092, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 920, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 770, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 789, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 857, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 135, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 148, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 695, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 723, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 230, i32 6 }
@___asan_gen_.119 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 214, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 156, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 529, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1016, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1017, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1018, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1020, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private constant [26 x i8] c"../net/caif/caif_socket.c\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 251, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_alias526, ptr @__UNIQUE_ID_file524, ptr @__UNIQUE_ID_license525, ptr @__exitcall_caif_sktexit_module, ptr @__initcall__kmod_caif_socket__533_1123_caif_sktinit_module6, ptr @caif_connect._entry, ptr @caif_connect._entry.5, ptr @caif_connect._entry.8, ptr @caif_connect._entry_ptr, ptr @caif_connect._entry_ptr.10, ptr @caif_connect._entry_ptr.6, ptr @caif_seqpkt_sendmsg._entry, ptr @caif_seqpkt_sendmsg._entry_ptr, ptr @caif_sktexit_module, ptr @caif_sock_destructor._entry, ptr @caif_sock_destructor._entry.28, ptr @caif_sock_destructor._entry.31, ptr @caif_sock_destructor._entry_ptr, ptr @caif_sock_destructor._entry_ptr.29, ptr @caif_sock_destructor._entry_ptr.32, ptr @caif_family_ops, ptr @caif_create.prot, ptr @caif_seqpacket_ops, ptr @caif_stream_ops, ptr @caif_create.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_family_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_create.prot to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_seqpacket_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_stream_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_connect._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_connect._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_seqpkt_sendmsg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_sock_destructor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_sock_destructor._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_sock_destructor._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @caif_sktexit_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sock_unregister(i32 noundef 37) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @caif_sktinit_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sock_register(ptr noundef nonnull @caif_family_ops) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caif_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call zeroext i1 @capable(i32 noundef 12) #9
  br i1 %call1, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %if.end.cleanup_crit_edge [
    i16 5, label %if.end.if.end12_crit_edge
    i16 1, label %if.then8
  ]

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end.if.end12_crit_edge
  %caif_stream_ops.sink = phi ptr [ @caif_stream_ops, %if.then8 ], [ @caif_seqpacket_ops, %if.end.if.end12_crit_edge ]
  %ops9 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %3 = ptrtoint ptr %ops9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %caif_stream_ops.sink, ptr %ops9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %protocol)
  %4 = icmp ugt i32 %protocol, 5
  br i1 %4, label %if.end12.cleanup_crit_edge, label %if.end18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %call19 = tail call ptr @sk_alloc(ptr noundef %net, i32 noundef 37, i32 noundef 3264, ptr noundef nonnull @caif_create.prot, i32 noundef %kern) #9
  %tobool.not = icmp eq ptr %call19, null
  br i1 %tobool.not, label %if.end18.cleanup_crit_edge, label %if.end21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %5 = trunc i32 %protocol to i16
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %call19, i32 0, i32 46
  %6 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %sk_protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %protocol)
  %switch.selectcmp = icmp eq i32 %protocol, 4
  %switch.select = select i1 %switch.selectcmp, i32 4, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %protocol)
  %switch.selectcmp59 = icmp eq i32 %protocol, 0
  %switch.select60 = select i1 %switch.selectcmp59, i32 7, i32 %switch.select
  %sk_priority26 = getelementptr inbounds %struct.sock, ptr %call19, i32 0, i32 33
  %7 = ptrtoint ptr %sk_priority26 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %switch.select60, ptr %sk_priority26, align 4
  tail call void @lock_sock_nested(ptr noundef nonnull %call19, i32 noundef 0) #9
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call19) #9
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %call19, i32 0, i32 82
  %8 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @caif_sock_destructor, ptr %sk_destruct, align 4
  %readlock = getelementptr inbounds %struct.caifsock, ptr %call19, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %readlock, ptr noundef nonnull @.str, ptr noundef nonnull @caif_create.__key) #9
  %ctrlcmd = getelementptr inbounds %struct.caifsock, ptr %call19, i32 0, i32 1, i32 5
  %9 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @caif_ctrl_cb, ptr %ctrlcmd, align 8
  %sk_socket = getelementptr inbounds %struct.sock, ptr %call19, i32 0, i32 71
  %10 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk_socket, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %11, align 128
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call19, i32 0, i32 4
  %13 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %13)
  store volatile i8 7, ptr %skc_state, align 2
  %flow_state.i = getelementptr inbounds %struct.caifsock, ptr %call19, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flow_state.i) #9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flow_state.i) #9
  %conn_req = getelementptr inbounds %struct.caifsock, ptr %call19, i32 0, i32 3
  %link_selector = getelementptr inbounds %struct.caifsock, ptr %call19, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %link_selector to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %link_selector, align 8
  %15 = ptrtoint ptr %conn_req to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %protocol, ptr %conn_req, align 8
  tail call void @release_sock(ptr noundef nonnull %call19) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end18.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -94, %if.end.cleanup_crit_edge ], [ -93, %if.end12.cleanup_crit_edge ], [ -12, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @caif_sock_destructor(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_wmem_alloc = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 23
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc, i32 noundef 4) #9
  %0 = ptrtoint ptr %sk_wmem_alloc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sk_wmem_alloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body36_crit_edge, label %do.end

entry.do.body36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body36

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #12
  %call.i.i.i159 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc, i32 noundef 4) #9
  %2 = ptrtoint ptr %sk_wmem_alloc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sk_wmem_alloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %do.end.do.body36_crit_edge, label %do.end20, !prof !97

do.end.do.body36_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body36

do.end20:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1016, i32 noundef 9, ptr noundef null) #9
  br label %do.body36

do.body36:                                        ; preds = %do.end20, %do.end.do.body36_crit_edge, %entry.do.body36_crit_edge
  %pprev.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %4 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %do.body36.do.body80_crit_edge, label %do.end41

do.body36.do.body80_crit_edge:                    ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body80

do.end41:                                         ; preds = %do.body36
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.30) #12
  %6 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i161 = icmp eq ptr %7, null
  br i1 %tobool.not.i.i161, label %do.end41.do.body80_crit_edge, label %do.end63, !prof !97

do.end41.do.body80_crit_edge:                     ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body80

do.end63:                                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1017, i32 noundef 9, ptr noundef null) #9
  br label %do.body80

do.body80:                                        ; preds = %do.end63, %do.end41.do.body80_crit_edge, %do.body36.do.body80_crit_edge
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %8 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk_socket, align 8
  %tobool81.not = icmp eq ptr %9, null
  br i1 %tobool81.not, label %do.body80.do.end126_crit_edge, label %do.end85

do.body80.do.end126_crit_edge:                    ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end126

do.end85:                                         ; preds = %do.body80
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.33) #12
  %10 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk_socket, align 8
  %tobool90.not = icmp eq ptr %11, null
  br i1 %tobool90.not, label %do.end85.do.end126_crit_edge, label %do.end110, !prof !97

do.end85.do.end126_crit_edge:                     ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end126

do.end110:                                        ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1018, i32 noundef 9, ptr noundef null) #9
  br label %do.end126

do.end126:                                        ; preds = %do.end110, %do.end85.do.end126_crit_edge, %do.body80.do.end126_crit_edge
  %12 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not = icmp eq i32 %15, 0
  br i1 %tobool.i.not, label %do.body129, label %if.end145

do.body129:                                       ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @caif_sock_destructor.__UNIQUE_ID_ddebug532, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@caif_sock_destructor, %cleanup)) #9
          to label %if.then141 [label %cleanup], !srcloc !98

if.then141:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @caif_sock_destructor.__UNIQUE_ID_ddebug532, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.26, ptr noundef %sk) #9
  br label %cleanup

if.end145:                                        ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sk_stream_kill_queues(ptr noundef %sk) #9
  %layer = getelementptr inbounds %struct.caifsock, ptr %sk, i32 0, i32 1
  tail call void @caif_free_client(ptr noundef %layer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end145, %if.then141, %do.body129
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @caif_ctrl_cb(ptr noundef %layr, i32 noundef %flow, i32 noundef %phyid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %layr, i32 -960
  %0 = zext i32 %flow to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %flow, label %do.body [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
    i32 3, label %sw.bb6
    i32 4, label %sw.bb12
    i32 5, label %sw.bb19
    i32 2, label %sw.bb29
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flow_state.i = getelementptr i8, ptr %layr, i32 52
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flow_state.i) #9
  %sk_state_change = getelementptr i8, ptr %layr, i32 -52
  %1 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk_state_change, align 4
  tail call void %2(ptr noundef %add.ptr) #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flow_state.i64 = getelementptr i8, ptr %layr, i32 52
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flow_state.i64) #9
  %sk_state_change4 = getelementptr i8, ptr %layr, i32 -52
  %3 = ptrtoint ptr %sk_state_change4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk_state_change4, align 4
  tail call void %4(ptr noundef %add.ptr) #9
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @caif_client_register_refcnt(ptr noundef %layr, ptr noundef nonnull @cfsk_hold, ptr noundef nonnull @cfsk_put) #9
  %skc_state = getelementptr i8, ptr %layr, i32 -942
  %5 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %5)
  store volatile i8 1, ptr %skc_state, align 2
  %flow_state.i65 = getelementptr i8, ptr %layr, i32 52
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flow_state.i65) #9
  %sk_shutdown = getelementptr i8, ptr %layr, i32 -94
  %6 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %sk_shutdown, align 2
  %sk_state_change10 = getelementptr i8, ptr %layr, i32 -52
  %7 = ptrtoint ptr %sk_state_change10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk_state_change10, align 4
  tail call void %8(ptr noundef %add.ptr) #9
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %skc_state15 = getelementptr i8, ptr %layr, i32 -942
  %9 = ptrtoint ptr %skc_state15 to i32
  call void @__asan_store1_noabort(i32 %9)
  store volatile i8 7, ptr %skc_state15, align 2
  %sk_state_change17 = getelementptr i8, ptr %layr, i32 -52
  %10 = ptrtoint ptr %sk_state_change17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk_state_change17, align 4
  tail call void %11(ptr noundef %add.ptr) #9
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sk_err = getelementptr i8, ptr %layr, i32 -268
  %12 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 111, ptr %sk_err, align 4
  %skc_state23 = getelementptr i8, ptr %layr, i32 -942
  %13 = ptrtoint ptr %skc_state23 to i32
  call void @__asan_store1_noabort(i32 %13)
  store volatile i8 7, ptr %skc_state23, align 2
  %sk_shutdown25 = getelementptr i8, ptr %layr, i32 -94
  %14 = ptrtoint ptr %sk_shutdown25 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %sk_shutdown25, align 2
  %flow_state.i66 = getelementptr i8, ptr %layr, i32 52
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flow_state.i66) #9
  %sk_state_change27 = getelementptr i8, ptr %layr, i32 -52
  %15 = ptrtoint ptr %sk_state_change27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sk_state_change27, align 4
  tail call void %16(ptr noundef %add.ptr) #9
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sk_shutdown31 = getelementptr i8, ptr %layr, i32 -94
  %17 = ptrtoint ptr %sk_shutdown31 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %sk_shutdown31, align 2
  %sk_err33 = getelementptr i8, ptr %layr, i32 -268
  %18 = ptrtoint ptr %sk_err33 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 104, ptr %sk_err33, align 4
  %flow_state.i67 = getelementptr i8, ptr %layr, i32 52
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flow_state.i67) #9
  tail call void @sk_error_report(ptr noundef %add.ptr) #9
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @caif_ctrl_cb.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@caif_ctrl_cb, %sw.epilog)) #9
          to label %if.then [label %sw.epilog], !srcloc !98

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @caif_ctrl_cb.__UNIQUE_ID_ddebug527, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i32 noundef %flow) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %do.body, %sw.bb29, %sw.bb19, %sw.bb12, %sw.bb6, %sw.bb2, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caif_release(ptr nocapture noundef %sock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %flow_state.i = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flow_state.i) #9
  %lock = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %2 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %or.i.i = or i32 %4, 1
  store i32 %or.i.i, ptr %2, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %5 = ptrtoint ptr %sk1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %sk1, align 16
  %debugfs_socket_dir = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %debugfs_socket_dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs_socket_dir, align 8
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end.if.end19_crit_edge, !prof !99

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 920, i32 noundef 9, ptr noundef null) #9
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.end.if.end19_crit_edge
  %8 = ptrtoint ptr %debugfs_socket_dir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %debugfs_socket_dir, align 8
  tail call void @debugfs_remove(ptr noundef %9) #9
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #9
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %10)
  store volatile i8 7, ptr %skc_state, align 2
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %11 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %sk_shutdown, align 2
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skc_net.i, align 4
  %layer = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 1
  %call30 = tail call i32 @caif_disconnect_client(ptr noundef %13, ptr noundef %layer) #9
  %sk_socket = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %14 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk_socket, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %15, align 128
  %17 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %17, align 8
  tail call void @__wake_up(ptr noundef %19, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 24 to ptr)) #9
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #9
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %2, align 4
  %or.i.i.i = or i32 %21, 1
  store i32 %or.i.i.i, ptr %2, align 4
  %22 = ptrtoint ptr %sk_socket to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %sk_socket, align 8
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %17, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #9
  tail call void @sk_stream_kill_queues(ptr noundef nonnull %1) #9
  tail call void @release_sock(ptr noundef nonnull %1) #9
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !101
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !97

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @sk_free(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_bind(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caif_connect(ptr nocapture noundef %sock, ptr nocapture noundef readonly %uaddr, i32 noundef %addr_len, i32 noundef %flags) #2 align 64 {
entry:
  %ifindex = alloca i32, align 4
  %headroom = alloca i32, align 4
  %tailroom = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ifindex) #9
  %2 = ptrtoint ptr %ifindex to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ifindex, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %headroom) #9
  %3 = ptrtoint ptr %headroom to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %headroom, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tailroom) #9
  %4 = ptrtoint ptr %tailroom to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tailroom, align 4, !annotation !103
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %addr_len)
  %cmp = icmp ult i32 %addr_len, 2
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %uaddr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 37, i16 %6)
  %cmp2.not = icmp eq i16 %6, 37
  br i1 %cmp2.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sock, align 128
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %8, label %if.end5.sw.epilog130_crit_edge [
    i32 1, label %do.body
    i32 2, label %sw.bb45
    i32 3, label %do.body56
  ]

if.end5.sw.epilog130_crit_edge:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog130

do.body:                                          ; preds = %if.end5
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %11)
  %cmp7 = icmp eq i8 %11, 7
  br i1 %cmp7, label %do.body.sw.epilog130_crit_edge, label %do.end

do.body.sw.epilog130_crit_edge:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog130

do.end:                                           ; preds = %do.body
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #12
  %12 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %13)
  %cmp15.not = icmp eq i8 %13, 7
  br i1 %cmp15.not, label %do.end.sw.epilog130_crit_edge, label %do.end28, !prof !97

do.end.sw.epilog130_crit_edge:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog130

do.end28:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 770, i32 noundef 9, ptr noundef null) #9
  br label %sw.epilog130

sw.bb45:                                          ; preds = %if.end5
  %skc_state47 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %skc_state47 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load volatile i8, ptr %skc_state47, align 2
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %15, label %sw.bb45.sw.epilog130_crit_edge [
    i8 1, label %sw.bb49
    i8 2, label %sw.bb51
  ]

sw.bb45.sw.epilog130_crit_edge:                   ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog130

sw.bb49:                                          ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %sock, align 128
  br label %out

sw.bb51:                                          ; preds = %sw.bb45
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool52.not = icmp eq i32 %and, 0
  br i1 %tobool52.not, label %wait_connect.thread, label %sw.bb51.out_crit_edge

sw.bb51.out_crit_edge:                            ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

wait_connect.thread:                              ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  %skc_state205439 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %skc_state205439 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %skc_state205439, align 2
  br label %cond.false.i

do.body56:                                        ; preds = %if.end5
  %skc_state58 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %skc_state58 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load volatile i8, ptr %skc_state58, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp60 = icmp eq i8 %21, 1
  br i1 %cmp60, label %do.body56.do.end117_crit_edge, label %lor.lhs.false

do.body56.do.end117_crit_edge:                    ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end117

lor.lhs.false:                                    ; preds = %do.body56
  %22 = ptrtoint ptr %skc_state58 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load volatile i8, ptr %skc_state58, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %23)
  %cmp65 = icmp eq i8 %23, 7
  br i1 %cmp65, label %lor.lhs.false.do.end117_crit_edge, label %do.end70

lor.lhs.false.do.end117_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end117

do.end70:                                         ; preds = %lor.lhs.false
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7) #12
  %24 = ptrtoint ptr %skc_state58 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load volatile i8, ptr %skc_state58, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp77 = icmp eq i8 %25, 1
  br i1 %cmp77, label %do.end70.do.end117_crit_edge, label %lor.rhs

do.end70.do.end117_crit_edge:                     ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end117

lor.rhs:                                          ; preds = %do.end70
  %26 = ptrtoint ptr %skc_state58 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load volatile i8, ptr %skc_state58, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %27)
  %cmp82 = icmp eq i8 %27, 7
  br i1 %cmp82, label %lor.rhs.do.end117_crit_edge, label %do.end101, !prof !97

lor.rhs.do.end117_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end117

do.end101:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 790, i32 noundef 9, ptr noundef null) #9
  br label %do.end117

do.end117:                                        ; preds = %do.end101, %lor.rhs.do.end117_crit_edge, %do.end70.do.end117_crit_edge, %lor.lhs.false.do.end117_crit_edge, %do.body56.do.end117_crit_edge
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %28 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sk_shutdown, align 2
  %30 = and i8 %29, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool120.not = icmp eq i8 %30, 0
  br i1 %tobool120.not, label %do.end117.out_crit_edge, label %if.then121

do.end117.out_crit_edge:                          ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then121:                                       ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #11
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %31 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %skc_net.i, align 4
  %layer = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 1
  %call123 = tail call i32 @caif_disconnect_client(ptr noundef %32, ptr noundef %layer) #9
  tail call void @caif_free_client(ptr noundef %layer) #9
  br label %sw.epilog130

sw.epilog130:                                     ; preds = %if.then121, %sw.bb45.sw.epilog130_crit_edge, %do.end28, %do.end.sw.epilog130_crit_edge, %do.body.sw.epilog130_crit_edge, %if.end5.sw.epilog130_crit_edge
  %skc_state132 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %skc_state132 to i32
  call void @__asan_store1_noabort(i32 %33)
  store volatile i8 7, ptr %skc_state132, align 2
  %34 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %sock, align 128
  tail call void @sk_stream_kill_queues(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %addr_len)
  %cmp135.not = icmp eq i32 %addr_len, 24
  br i1 %cmp135.not, label %if.end138, label %sw.epilog130.out_crit_edge

sw.epilog130.out_crit_edge:                       ; preds = %sw.epilog130
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end138:                                        ; preds = %sw.epilog130
  %conn_req = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 3
  %sockaddr = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 3, i32 1
  %35 = call ptr @memcpy(ptr %sockaddr, ptr %uaddr, i32 24)
  %36 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %sock, align 128
  %37 = ptrtoint ptr %skc_state132 to i32
  call void @__asan_store1_noabort(i32 %37)
  store volatile i8 2, ptr %skc_state132, align 2
  %sk_priority = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 33
  %38 = ptrtoint ptr %sk_priority to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sk_priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %39)
  %cmp143 = icmp ugt i32 %39, 31
  br i1 %cmp143, label %if.then145, label %if.else

if.then145:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  %priority = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 3, i32 2
  %40 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 31, ptr %priority, align 4
  br label %if.end160

if.else:                                          ; preds = %if.end138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp149 = icmp eq i32 %39, 0
  %priority153 = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 3, i32 2
  br i1 %cmp149, label %if.then151, label %if.else154

if.then151:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %priority153 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %priority153, align 4
  br label %if.end160

if.else154:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %priority153 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %priority153, align 4
  br label %if.end160

if.end160:                                        ; preds = %if.else154, %if.then151, %if.then145
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 6
  %43 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %skc_bound_dev_if, align 4
  %ifindex164 = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 3, i32 4
  %45 = ptrtoint ptr %ifindex164 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %ifindex164, align 4
  %layer165 = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 1
  %receive = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 1, i32 3
  %46 = ptrtoint ptr %receive to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @caif_sktrecv_cb, ptr %receive, align 8
  %skc_net.i392 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %47 = ptrtoint ptr %skc_net.i392 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %skc_net.i392, align 4
  %call169 = call i32 @caif_connect_client(ptr noundef %48, ptr noundef %conn_req, ptr noundef %layer165, ptr noundef nonnull %ifindex, ptr noundef nonnull %headroom, ptr noundef nonnull %tailroom) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %cmp170 = icmp slt i32 %call169, 0
  br i1 %cmp170, label %if.then172, label %if.end178

if.then172:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #11
  %sk_socket = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %49 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sk_socket, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %50, align 128
  %52 = ptrtoint ptr %skc_state132 to i32
  call void @__asan_store1_noabort(i32 %52)
  store volatile i8 7, ptr %skc_state132, align 2
  br label %out

if.end178:                                        ; preds = %if.end160
  %53 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %56, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !104
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end178.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end178.rcu_read_lock.exit_crit_edge:           ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end178
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end178.rcu_read_lock.exit_crit_edge
  %57 = ptrtoint ptr %skc_net.i392 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %skc_net.i392, align 4
  %59 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ifindex, align 4
  %call180 = call ptr @dev_get_by_index_rcu(ptr noundef %58, i32 noundef %60) #9
  %tobool181.not = icmp eq ptr %call180, null
  br i1 %tobool181.not, label %if.then182, label %if.end183

if.then182:                                       ; preds = %rcu_read_lock.exit
  %call.i394 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i394, label %if.then182.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i397

if.then182.rcu_read_unlock.exit_crit_edge:        ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i397:                               ; preds = %if.then182
  %call1.i395 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i395)
  %tobool.not.i396 = icmp eq i32 %call1.i395, 0
  br i1 %tobool.not.i396, label %land.lhs.true.i397.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i399

land.lhs.true.i397.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i397
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i399:                              ; preds = %land.lhs.true.i397
  %.b4.i398 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i398, label %land.lhs.true2.i399.rcu_read_unlock.exit_crit_edge, label %if.then.i400

land.lhs.true2.i399.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i399
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i400:                                     ; preds = %land.lhs.true2.i399
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.20) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i400, %land.lhs.true2.i399.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i397.rcu_read_unlock.exit_crit_edge, %if.then182.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  %61 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i.i.i401 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i.i.i401 to ptr
  %preempt_count.i.i.i.i402 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i.i.i402 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i.i.i402, align 4
  %sub.i.i.i = add i32 %64, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i402, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %out

if.end183:                                        ; preds = %rcu_read_lock.exit
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %call180, i32 0, i32 19
  %65 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %hard_header_len, align 2
  %conv184 = zext i16 %66 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %call180, i32 0, i32 21
  %67 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %needed_headroom, align 8
  %conv185 = zext i16 %68 to i32
  %69 = ptrtoint ptr %headroom to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %headroom, align 4
  %add = add nuw nsw i32 %conv184, 16
  %add186 = add nuw nsw i32 %add, %conv185
  %71 = add i32 %add186, %70
  %add188 = and i32 %71, -16
  %headroom189 = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 6
  %72 = ptrtoint ptr %headroom189 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %add188, ptr %headroom189, align 4
  %mtu190 = getelementptr inbounds %struct.net_device, ptr %call180, i32 0, i32 20
  %73 = ptrtoint ptr %mtu190 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mtu190, align 4
  %call.i403 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i403, label %if.end183.rcu_read_unlock.exit413_crit_edge, label %land.lhs.true.i406

if.end183.rcu_read_unlock.exit413_crit_edge:      ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit413

land.lhs.true.i406:                               ; preds = %if.end183
  %call1.i404 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i404)
  %tobool.not.i405 = icmp eq i32 %call1.i404, 0
  br i1 %tobool.not.i405, label %land.lhs.true.i406.rcu_read_unlock.exit413_crit_edge, label %land.lhs.true2.i408

land.lhs.true.i406.rcu_read_unlock.exit413_crit_edge: ; preds = %land.lhs.true.i406
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit413

land.lhs.true2.i408:                              ; preds = %land.lhs.true.i406
  %.b4.i407 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i407, label %land.lhs.true2.i408.rcu_read_unlock.exit413_crit_edge, label %if.then.i409

land.lhs.true2.i408.rcu_read_unlock.exit413_crit_edge: ; preds = %land.lhs.true2.i408
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit413

if.then.i409:                                     ; preds = %land.lhs.true2.i408
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.20) #9
  br label %rcu_read_unlock.exit413

rcu_read_unlock.exit413:                          ; preds = %if.then.i409, %land.lhs.true2.i408.rcu_read_unlock.exit413_crit_edge, %land.lhs.true.i406.rcu_read_unlock.exit413_crit_edge, %if.end183.rcu_read_unlock.exit413_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  %75 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i.i.i410 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i.i.i410 to ptr
  %preempt_count.i.i.i.i411 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %preempt_count.i.i.i.i411 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %preempt_count.i.i.i.i411, align 4
  %sub.i.i.i412 = add i32 %78, -1
  store volatile i32 %sub.i.i.i412, ptr %preempt_count.i.i.i.i411, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %79 = ptrtoint ptr %tailroom to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tailroom, align 4
  %tailroom191 = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 7
  %81 = ptrtoint ptr %tailroom191 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %tailroom191, align 8
  %82 = ptrtoint ptr %headroom to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %headroom, align 4
  %84 = add i32 %80, %83
  %sub = sub i32 %74, %84
  %maxframe = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 8
  %85 = ptrtoint ptr %maxframe to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %sub, ptr %maxframe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp194 = icmp slt i32 %sub, 1
  br i1 %cmp194, label %do.end199, label %wait_connect

do.end199:                                        ; preds = %rcu_read_unlock.exit413
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %mtu190 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %mtu190, align 4
  %call202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, i32 noundef %87) #12
  br label %out

wait_connect:                                     ; preds = %rcu_read_unlock.exit413
  %.pre = and i32 %flags, 2048
  %skc_state205 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %88 = ptrtoint ptr %skc_state205 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load volatile i8, ptr %skc_state205, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %89)
  %cmp207.not = icmp eq i8 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool210.not = icmp eq i32 %.pre, 0
  %or.cond = or i1 %tobool210.not, %cmp207.not
  br i1 %or.cond, label %if.end212, label %wait_connect.out_crit_edge

wait_connect.out_crit_edge:                       ; preds = %wait_connect
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end212:                                        ; preds = %wait_connect
  br i1 %tobool210.not, label %if.end212.cond.false.i_crit_edge, label %if.end212.sock_sndtimeo.exit_crit_edge

if.end212.sock_sndtimeo.exit_crit_edge:           ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_sndtimeo.exit

if.end212.cond.false.i_crit_edge:                 ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.i

cond.false.i:                                     ; preds = %if.end212.cond.false.i_crit_edge, %wait_connect.thread
  %skc_state205443447 = phi ptr [ %skc_state205439, %wait_connect.thread ], [ %skc_state205, %if.end212.cond.false.i_crit_edge ]
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 31
  %90 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sk_sndtimeo.i, align 8
  br label %sock_sndtimeo.exit

sock_sndtimeo.exit:                               ; preds = %cond.false.i, %if.end212.sock_sndtimeo.exit_crit_edge
  %skc_state205443446 = phi ptr [ %skc_state205443447, %cond.false.i ], [ %skc_state205, %if.end212.sock_sndtimeo.exit_crit_edge ]
  %cond.i = phi i32 [ %91, %cond.false.i ], [ 0, %if.end212.sock_sndtimeo.exit_crit_edge ]
  call void @release_sock(ptr noundef %1) #9
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 874) #9
  %92 = ptrtoint ptr %skc_state205443446 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load volatile i8, ptr %skc_state205443446, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %93)
  %cmp225.not = icmp eq i8 %93, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool230.not = icmp eq i32 %cond.i, 0
  %spec.select = select i1 %tobool230.not, i32 1, i32 %cond.i
  %__ret.0 = select i1 %cmp225.not, i32 %cond.i, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool237.not = icmp eq i32 %__ret.0, 0
  %not.cmp225.not = xor i1 %cmp225.not, true
  %94 = select i1 %not.cmp225.not, i1 true, i1 %tobool237.not
  br i1 %94, label %sock_sndtimeo.exit.if.end277_crit_edge, label %if.then242

sock_sndtimeo.exit.if.end277_crit_edge:           ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end277

if.then242:                                       ; preds = %sock_sndtimeo.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %95 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %96 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile ptr, ptr %96, align 8
  %call245425 = call i32 @prepare_to_wait_event(ptr noundef %98, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %99 = ptrtoint ptr %skc_state205443446 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load volatile i8, ptr %skc_state205443446, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %100)
  %cmp250.not426 = icmp eq i8 %100, 2
  %__ret243.1429 = select i1 %cmp250.not426, i32 %cond.i, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret243.1429)
  %tobool263.not430 = icmp eq i32 %__ret243.1429, 0
  %not.cmp250.not431 = xor i1 %cmp250.not426, true
  %101 = select i1 %not.cmp250.not431, i1 true, i1 %tobool263.not430
  br i1 %101, label %if.then242.for.end_crit_edge, label %if.then242.if.end270_crit_edge

if.then242.if.end270_crit_edge:                   ; preds = %if.then242
  br label %if.end270

if.then242.for.end_crit_edge:                     ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end270:                                        ; preds = %cleanup.if.end270_crit_edge, %if.then242.if.end270_crit_edge
  %__ret243.1433 = phi i32 [ %__ret243.1, %cleanup.if.end270_crit_edge ], [ %__ret243.1429, %if.then242.if.end270_crit_edge ]
  %call245432 = phi i32 [ %call245, %cleanup.if.end270_crit_edge ], [ %call245425, %if.then242.if.end270_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245432)
  %tobool271.not = icmp eq i32 %call245432, 0
  br i1 %tobool271.not, label %cleanup, label %if.end270.__out_crit_edge

if.end270.__out_crit_edge:                        ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #11
  br label %__out

cleanup:                                          ; preds = %if.end270
  %call274 = call i32 @schedule_timeout(i32 noundef %__ret243.1433) #9
  %102 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile ptr, ptr %96, align 8
  %call245 = call i32 @prepare_to_wait_event(ptr noundef %103, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %104 = ptrtoint ptr %skc_state205443446 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load volatile i8, ptr %skc_state205443446, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %105)
  %cmp250.not = icmp eq i8 %105, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call274)
  %tobool256.not = icmp eq i32 %call274, 0
  %spec.store.select315 = select i1 %tobool256.not, i32 1, i32 %call274
  %__ret243.1 = select i1 %cmp250.not, i32 %call274, i32 %spec.store.select315
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret243.1)
  %tobool263.not = icmp eq i32 %__ret243.1, 0
  %not.cmp250.not = xor i1 %cmp250.not, true
  %106 = select i1 %not.cmp250.not, i1 true, i1 %tobool263.not
  br i1 %106, label %cleanup.for.end_crit_edge, label %cleanup.if.end270_crit_edge

cleanup.if.end270_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end270

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then242.for.end_crit_edge
  %__ret243.1.lcssa = phi i32 [ %__ret243.1429, %if.then242.for.end_crit_edge ], [ %__ret243.1, %cleanup.for.end_crit_edge ]
  %107 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile ptr, ptr %96, align 8
  call void @finish_wait(ptr noundef %108, ptr noundef nonnull %__wq_entry) #9
  br label %__out

__out:                                            ; preds = %for.end, %if.end270.__out_crit_edge
  %__ret243.2416 = phi i32 [ %__ret243.1.lcssa, %for.end ], [ %call245432, %if.end270.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end277

if.end277:                                        ; preds = %__out, %sock_sndtimeo.exit.if.end277_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %sock_sndtimeo.exit.if.end277_crit_edge ], [ %__ret243.2416, %__out ]
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp279 = icmp slt i32 %__ret.1, 0
  br i1 %cmp279, label %if.end277.out_crit_edge, label %if.end282

if.end277.out_crit_edge:                          ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end282:                                        ; preds = %if.end277
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp283 = icmp eq i32 %__ret.1, 0
  br i1 %cmp283, label %land.lhs.true285, label %if.end282.if.end292_crit_edge

if.end282.if.end292_crit_edge:                    ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end292

land.lhs.true285:                                 ; preds = %if.end282
  %109 = ptrtoint ptr %skc_state205443446 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load volatile i8, ptr %skc_state205443446, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %110)
  %cmp289.not = icmp eq i8 %110, 1
  br i1 %cmp289.not, label %land.lhs.true285.if.end292_crit_edge, label %land.lhs.true285.out_crit_edge

land.lhs.true285.out_crit_edge:                   ; preds = %land.lhs.true285
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true285.if.end292_crit_edge:             ; preds = %land.lhs.true285
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end292

if.end292:                                        ; preds = %land.lhs.true285.if.end292_crit_edge, %if.end282.if.end292_crit_edge
  %111 = ptrtoint ptr %skc_state205443446 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load volatile i8, ptr %skc_state205443446, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %112)
  %cmp296.not = icmp eq i8 %112, 1
  br i1 %cmp296.not, label %if.end304, label %if.then298

if.then298:                                       ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #11
  %113 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 1, ptr %sock, align 128
  %call300 = call fastcc i32 @sock_error(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call300)
  %tobool301.not = icmp eq i32 %call300, 0
  %spec.store.select316 = select i1 %tobool301.not, i32 -111, i32 %call300
  br label %out

if.end304:                                        ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #11
  %114 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 3, ptr %sock, align 128
  br label %out

out:                                              ; preds = %if.end304, %if.then298, %land.lhs.true285.out_crit_edge, %if.end277.out_crit_edge, %wait_connect.out_crit_edge, %do.end199, %rcu_read_unlock.exit, %if.then172, %sw.epilog130.out_crit_edge, %do.end117.out_crit_edge, %sw.bb51.out_crit_edge, %sw.bb49, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.1 = phi i32 [ -22, %entry.out_crit_edge ], [ -97, %if.end.out_crit_edge ], [ -22, %sw.epilog130.out_crit_edge ], [ %call169, %if.then172 ], [ -19, %do.end199 ], [ -512, %if.end277.out_crit_edge ], [ -110, %land.lhs.true285.out_crit_edge ], [ %spec.store.select316, %if.then298 ], [ 0, %if.end304 ], [ -19, %rcu_read_unlock.exit ], [ -114, %sw.bb51.out_crit_edge ], [ -106, %sw.bb49 ], [ -106, %do.end117.out_crit_edge ], [ -115, %wait_connect.out_crit_edge ]
  call void @release_sock(ptr noundef %1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tailroom) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %headroom) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ifindex) #9
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_getname(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caif_poll(ptr noundef %file, ptr noundef %sock, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %cmp.i.i = icmp eq ptr %wait, null
  br i1 %cmp.i.i, label %entry.sock_poll_wait.exit_crit_edge, label %poll_does_not_wait.exit.i

entry.sock_poll_wait.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_poll_wait.exit

poll_does_not_wait.exit.i:                        ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %cmp1.i.i = icmp eq ptr %3, null
  br i1 %cmp1.i.i, label %poll_does_not_wait.exit.i.sock_poll_wait.exit_crit_edge, label %poll_wait.exit.i

poll_does_not_wait.exit.i.sock_poll_wait.exit_crit_edge: ; preds = %poll_does_not_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_poll_wait.exit

poll_wait.exit.i:                                 ; preds = %poll_does_not_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %wq.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 7
  tail call void %3(ptr noundef %file, ptr noundef nonnull %wq.i, ptr noundef nonnull %wait) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !106
  br label %sock_poll_wait.exit

sock_poll_wait.exit:                              ; preds = %poll_wait.exit.i, %poll_does_not_wait.exit.i.sock_poll_wait.exit_crit_edge, %entry.sock_poll_wait.exit_crit_edge
  %sk_err = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %4 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 8
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %6 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sk_shutdown, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp = icmp eq i8 %7, 3
  %or4 = or i32 %spec.select, 16
  %mask.1 = select i1 %cmp, i32 %or4, i32 %spec.select
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  %or10 = or i32 %mask.1, 8192
  %mask.2 = select i1 %tobool8.not, i32 %mask.1, i32 %or10
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %sk_receive_queue, align 4
  %cmp.i = icmp ne ptr %10, %sk_receive_queue
  %tobool8.not.not = xor i1 %tobool8.not, true
  %brmerge = select i1 %cmp.i, i1 true, i1 %tobool8.not.not
  %or17 = or i32 %mask.2, 65
  %mask.3 = select i1 %brmerge, i32 %or17, i32 %mask.1
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #9
  %11 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 21
  %13 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %sk_sndbuf.i, align 4
  %shr.i = ashr i32 %14, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %shr.i)
  %cmp.i39 = icmp ult i32 %12, %shr.i
  br i1 %cmp.i39, label %land.lhs.true, label %sock_poll_wait.exit.if.end25_crit_edge

sock_poll_wait.exit.if.end25_crit_edge:           ; preds = %sock_poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true:                                    ; preds = %sock_poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  %flow_state.i = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %flow_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flow_state.i, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool22.not = icmp eq i32 %17, 0
  %or24 = or i32 %mask.3, 772
  %spec.select38 = select i1 %tobool22.not, i32 %mask.3, i32 %or24
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true, %sock_poll_wait.exit.if.end25_crit_edge
  %mask.4 = phi i32 [ %mask.3, %sock_poll_wait.exit.if.end25_crit_edge ], [ %spec.select38, %land.lhs.true ]
  ret i32 %mask.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @setsockopt(ptr nocapture noundef readonly %sock, i32 noundef %lvl, i32 noundef %opt, [2 x i32] %ov.coerce, i32 noundef %ol) #2 align 64 {
entry:
  %linksel = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %linksel) #9
  %2 = ptrtoint ptr %linksel to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %linksel, align 4, !annotation !103
  %sk_socket = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %3 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk_socket, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = zext i32 %opt to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %opt, label %if.end.cleanup_crit_edge [
    i32 127, label %sw.bb
    i32 128, label %sw.bb13
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %ol)
  %cmp3 = icmp ult i32 %ol, 4
  br i1 %cmp3, label %sw.bb.cleanup_crit_edge, label %if.end5

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 278, i32 %lvl)
  %cmp6.not = icmp eq i32 %lvl, 278
  br i1 %cmp6.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %ov.coerce, 0
  %8 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %ov.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end8
  tail call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 156) #9
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i.i, label %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge:      ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end8.i.i.i.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 4, i32 -1226833920) #13, !srcloc !107
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !97

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %linksel, i32 noundef 4) #9
  %10 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #7, !srcloc !108
  %and.i.i.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #9, !srcloc !109
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %linksel, ptr noundef %8, i32 noundef 4) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #9, !srcloc !109
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end10_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !97

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end10_crit_edge:                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i.i.i88 = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 4, %res.0.i.i.i.i88
  %add.ptr.i.i.i.i = getelementptr i8, ptr %linksel, i32 %sub.i.i.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i88)
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %8, align 1
  %16 = ptrtoint ptr %linksel to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %linksel, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end10_crit_edge
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  %17 = ptrtoint ptr %linksel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %linksel, align 4
  %link_selector = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %link_selector to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %link_selector, align 8
  call void @release_sock(ptr noundef %1) #9
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 278, i32 %lvl)
  %cmp14.not = icmp eq i32 %lvl, 278
  br i1 %cmp14.not, label %if.end16, label %sw.bb13.cleanup_crit_edge

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %sw.bb13
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %20 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sk_protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %21)
  %cmp18.not = icmp eq i16 %21, 3
  br i1 %cmp18.not, label %if.end21, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %ol)
  %cmp23 = icmp ugt i32 %ol, 256
  br i1 %cmp23, label %if.end21.if.then28_crit_edge, label %lor.lhs.false

if.end21.if.then28_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

lor.lhs.false:                                    ; preds = %if.end21
  %data = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 3, i32 5, i32 1
  %src.coerce.fca.0.extract.i.i58 = extractvalue [2 x i32] %ov.coerce, 0
  %22 = inttoptr i32 %src.coerce.fca.0.extract.i.i58 to ptr
  %sockptr.coerce.fca.1.extract.i.i.i59 = extractvalue [2 x i32] %ov.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i59)
  %bf.cast.i.i.i60 = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i59, 0
  br i1 %bf.cast.i.i.i60, label %if.end.i.i83, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %lor.lhs.false
  tail call void @__check_object_size(ptr noundef %data, i32 noundef %ol, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 156) #9
  %call.i.i.i.i66 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i.i66, label %if.then.i.i.i.i.i.if.end.i.i.i.i79_crit_edge, label %land.lhs.true.i.i.i.i69

if.then.i.i.i.i.i.if.end.i.i.i.i79_crit_edge:     ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i.i79

land.lhs.true.i.i.i.i69:                          ; preds = %if.then.i.i.i.i.i
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %22, i32 %ol, i32 -1226833920) #13, !srcloc !107
  %asmresult.i.i.i.i67 = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i67)
  %cmp.i6.i.i.i68 = icmp eq i32 %asmresult.i.i.i.i67, 0
  br i1 %cmp.i6.i.i.i68, label %if.then.i7.i.i.i76, label %land.lhs.true.i.i.i.i69.if.end.i.i.i.i79_crit_edge, !prof !97

land.lhs.true.i.i.i.i69.if.end.i.i.i.i79_crit_edge: ; preds = %land.lhs.true.i.i.i.i69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i.i79

if.then.i7.i.i.i76:                               ; preds = %land.lhs.true.i.i.i.i69
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i70 = tail call zeroext i1 @__kasan_check_write(ptr noundef %data, i32 noundef %ol) #9
  %24 = tail call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i.i.i.i.i.i71 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i.i.i.i71 to ptr
  %cpu_domain.i.i.i.i.i.i.i72 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i72) #7, !srcloc !108
  %and.i.i.i.i.i.i73 = and i32 %26, -13
  %or.i.i.i.i.i.i74 = or i32 %and.i.i.i.i.i.i73, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i74) #9, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  %call1.i.i.i.i.i75 = tail call i32 @arm_copy_from_user(ptr noundef %data, ptr noundef %22, i32 noundef %ol) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #9, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  br label %if.end.i.i.i.i79

if.end.i.i.i.i79:                                 ; preds = %if.then.i7.i.i.i76, %land.lhs.true.i.i.i.i69.if.end.i.i.i.i79_crit_edge, %if.then.i.i.i.i.i.if.end.i.i.i.i79_crit_edge
  %res.0.i.i.i.i77 = phi i32 [ %ol, %if.then.i.i.i.i.i.if.end.i.i.i.i79_crit_edge ], [ %call1.i.i.i.i.i75, %if.then.i7.i.i.i76 ], [ %ol, %land.lhs.true.i.i.i.i69.if.end.i.i.i.i79_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i.i77)
  %tobool4.not.i.i.i.i78 = icmp eq i32 %res.0.i.i.i.i77, 0
  br i1 %tobool4.not.i.i.i.i78, label %if.end.i.i.i.i79.if.end30_crit_edge, label %if.then11.i.i.i.i82, !prof !97

if.end.i.i.i.i79.if.end30_crit_edge:              ; preds = %if.end.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then11.i.i.i.i82:                              ; preds = %if.end.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i.i80 = sub i32 %ol, %res.0.i.i.i.i77
  %add.ptr.i.i.i.i81 = getelementptr i8, ptr %data, i32 %sub.i.i.i.i80
  %27 = call ptr @memset(ptr %add.ptr.i.i.i.i81, i32 0, i32 %res.0.i.i.i.i77)
  br label %if.then28

if.end.i.i83:                                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %28 = call ptr @memcpy(ptr %data, ptr %22, i32 %ol)
  br label %if.end30

if.then28:                                        ; preds = %if.then11.i.i.i.i82, %if.end21.if.then28_crit_edge
  tail call void @release_sock(ptr noundef %1) #9
  br label %cleanup

if.end30:                                         ; preds = %if.end.i.i83, %if.end.i.i.i.i79.if.end30_crit_edge
  %param = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 3, i32 5
  %conv31 = trunc i32 %ol to i16
  %29 = ptrtoint ptr %param to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv31, ptr %param, align 8
  tail call void @release_sock(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then28, %if.end16.cleanup_crit_edge, %sw.bb13.cleanup_crit_edge, %if.end10, %if.then11.i.i.i.i, %if.end5.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then28 ], [ 0, %if.end30 ], [ 0, %if.end10 ], [ -92, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -92, %if.end16.cleanup_crit_edge ], [ -92, %if.end.cleanup_crit_edge ], [ -92, %sw.bb13.cleanup_crit_edge ], [ -92, %if.end5.cleanup_crit_edge ], [ -22, %if.then11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %linksel) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caif_seqpkt_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len) #2 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #9
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %entry.do.end32_crit_edge

entry.do.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 529, i32 noundef 9, ptr noundef null) #9
  br label %do.end32

do.end32:                                         ; preds = %do.end, %entry.do.end32_crit_edge
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %2 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %do.end32.if.end36_crit_edge, label %sock_error.exit, !prof !97

do.end32.if.end36_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

sock_error.exit:                                  ; preds = %do.end32
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !111
  tail call void @llvm.prefetch.p0(ptr %sk_err.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i) #9, !srcloc !112
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !113
  %sub.i = sub i32 0, %asmresult.i.i
  %5 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub.i, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool34.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool34.not, label %sock_error.exit.if.end36_crit_edge, label %sock_error.exit.err_crit_edge

sock_error.exit.err_crit_edge:                    ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

sock_error.exit.if.end36_crit_edge:               ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.end36:                                         ; preds = %sock_error.exit.if.end36_crit_edge, %do.end32.if.end36_crit_edge
  %6 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -95, ptr %ret, align 4
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %7 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_flags, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %if.end39, label %if.end36.err_crit_edge

if.end36.err_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end39:                                         ; preds = %if.end36
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_namelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool40.not = icmp eq i32 %10, 0
  br i1 %tobool40.not, label %if.end42, label %if.end39.err_crit_edge

if.end39.err_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end42:                                         ; preds = %if.end39
  %11 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -22, ptr %ret, align 4
  %12 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2, i32 6
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.end42.err_crit_edge, label %lor.lhs.false, !prof !99

if.end42.err_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

lor.lhs.false:                                    ; preds = %if.end42
  %15 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2, i32 5
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %cmp50 = icmp eq ptr %19, null
  br i1 %cmp50, label %lor.lhs.false.err_crit_edge, label %if.end58, !prof !99

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end58:                                         ; preds = %lor.lhs.false
  %and60 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %cond.false.i, label %if.end58.sock_sndtimeo.exit_crit_edge

if.end58.sock_sndtimeo.exit_crit_edge:            ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_sndtimeo.exit

cond.false.i:                                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 31
  %20 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sk_sndtimeo.i, align 8
  br label %sock_sndtimeo.exit

sock_sndtimeo.exit:                               ; preds = %cond.false.i, %if.end58.sock_sndtimeo.exit_crit_edge
  %cond.i = phi i32 [ %21, %cond.false.i ], [ 0, %if.end58.sock_sndtimeo.exit_crit_edge ]
  call fastcc void @caif_wait_for_flow_on(ptr noundef %1, i32 noundef %cond.i, ptr noundef nonnull %ret)
  %22 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool67.not = icmp eq i32 %23, 0
  br i1 %tobool67.not, label %if.end69, label %sock_sndtimeo.exit.err_crit_edge

sock_sndtimeo.exit.err_crit_edge:                 ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end69:                                         ; preds = %sock_sndtimeo.exit
  %24 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -32, ptr %ret, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp71.not = icmp eq i8 %26, 1
  br i1 %cmp71.not, label %lor.lhs.false73, label %if.end69.err_crit_edge

if.end69.err_crit_edge:                           ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

lor.lhs.false73:                                  ; preds = %if.end69
  %27 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %30 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i.not = icmp eq i32 %30, 0
  br i1 %tobool.i.not, label %lor.lhs.false76, label %lor.lhs.false73.err_crit_edge

lor.lhs.false73.err_crit_edge:                    ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

lor.lhs.false76:                                  ; preds = %lor.lhs.false73
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %31 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sk_shutdown, align 2
  %33 = and i8 %32, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool79.not = icmp eq i8 %33, 0
  br i1 %tobool79.not, label %if.end81, label %lor.lhs.false76.err_crit_edge

lor.lhs.false76.err_crit_edge:                    ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end81:                                         ; preds = %lor.lhs.false76
  %34 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -90, ptr %ret, align 4
  %maxframe = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 8
  %35 = ptrtoint ptr %maxframe to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %maxframe, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %len)
  %cmp82 = icmp ult i32 %36, %len
  br i1 %cmp82, label %land.lhs.true, label %if.end81.if.end89_crit_edge

if.end81.if.end89_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

land.lhs.true:                                    ; preds = %if.end81
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %37 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %sk_protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %38)
  %cmp86.not = icmp eq i16 %38, 4
  br i1 %cmp86.not, label %land.lhs.true.if.end89_crit_edge, label %land.lhs.true.err_crit_edge

land.lhs.true.err_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

land.lhs.true.if.end89_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.end89:                                         ; preds = %land.lhs.true.if.end89_crit_edge, %if.end81.if.end89_crit_edge
  %headroom = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 6
  %39 = ptrtoint ptr %headroom to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %headroom, align 4
  %add = add i32 %40, %len
  %tailroom = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 7
  %41 = ptrtoint ptr %tailroom to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tailroom, align 8
  %add90 = add i32 %add, %42
  %43 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -12, ptr %ret, align 4
  %call91 = call ptr @sock_alloc_send_skb(ptr noundef %1, i32 noundef %add90, i32 noundef %and60, ptr noundef nonnull %ret) #9
  %tobool92.not = icmp eq ptr %call91, null
  br i1 %tobool92.not, label %if.end89.err_crit_edge, label %lor.lhs.false93

if.end89.err_crit_edge:                           ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

lor.lhs.false93:                                  ; preds = %if.end89
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call91, i32 0, i32 7
  %44 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i.not.i = icmp eq i32 %45, 0
  br i1 %tobool.i.not.i, label %cond.false.i149, label %lor.lhs.false93.skb_tailroom.exit_crit_edge

lor.lhs.false93.skb_tailroom.exit_crit_edge:      ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_tailroom.exit

cond.false.i149:                                  ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #11
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %call91, i32 0, i32 17
  %46 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call91, i32 0, i32 16
  %48 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %47 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i149, %lor.lhs.false93.skb_tailroom.exit_crit_edge
  %cond.i150 = phi i32 [ %sub.ptr.sub.i, %cond.false.i149 ], [ 0, %lor.lhs.false93.skb_tailroom.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i150, i32 %add90)
  %cmp95 = icmp slt i32 %cond.i150, %add90
  br i1 %cmp95, label %skb_tailroom.exit.err_crit_edge, label %if.end98

skb_tailroom.exit.err_crit_edge:                  ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end98:                                         ; preds = %skb_tailroom.exit
  %50 = ptrtoint ptr %headroom to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %headroom, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call91, i32 0, i32 19
  %52 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %53, i32 %51
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i151 = getelementptr inbounds %struct.sk_buff, ptr %call91, i32 0, i32 16
  %54 = ptrtoint ptr %tail.i151 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tail.i151, align 8
  %add.ptr1.i = getelementptr i8, ptr %55, i32 %51
  store ptr %add.ptr1.i, ptr %tail.i151, align 8
  %call100 = call ptr @skb_put(ptr noundef nonnull %call91, i32 noundef %len) #9
  %call101 = call fastcc i32 @memcpy_from_msg(ptr noundef %call100, ptr noundef %msg, i32 noundef %len)
  %56 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call101, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %if.end98.err_crit_edge

if.end98.err_crit_edge:                           ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end104:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  %call105 = call fastcc i32 @transmit_skb(ptr noundef nonnull %call91, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %cmp106 = icmp slt i32 %call105, 0
  %call105.len = select i1 %cmp106, i32 %call105, i32 %len
  br label %cleanup

err:                                              ; preds = %if.end98.err_crit_edge, %skb_tailroom.exit.err_crit_edge, %if.end89.err_crit_edge, %land.lhs.true.err_crit_edge, %lor.lhs.false76.err_crit_edge, %lor.lhs.false73.err_crit_edge, %if.end69.err_crit_edge, %sock_sndtimeo.exit.err_crit_edge, %lor.lhs.false.err_crit_edge, %if.end42.err_crit_edge, %if.end39.err_crit_edge, %if.end36.err_crit_edge, %sock_error.exit.err_crit_edge
  %skb.0 = phi ptr [ null, %sock_error.exit.err_crit_edge ], [ null, %if.end36.err_crit_edge ], [ null, %if.end39.err_crit_edge ], [ null, %if.end42.err_crit_edge ], [ null, %lor.lhs.false.err_crit_edge ], [ null, %sock_sndtimeo.exit.err_crit_edge ], [ null, %if.end69.err_crit_edge ], [ null, %lor.lhs.false73.err_crit_edge ], [ null, %lor.lhs.false76.err_crit_edge ], [ null, %land.lhs.true.err_crit_edge ], [ %call91, %skb_tailroom.exit.err_crit_edge ], [ %call91, %if.end98.err_crit_edge ], [ null, %if.end89.err_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %skb.0, i32 noundef 0) #9
  %57 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end104
  %retval.0 = phi i32 [ %58, %err ], [ %call105.len, %if.end104 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caif_seqpkt_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %m, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #9
  %2 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -95, ptr %ret, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call ptr @skb_recv_datagram(ptr noundef %1, i32 noundef %flags, i32 noundef 0, ptr noundef nonnull %ret) #9
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %len5 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %3 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %len)
  %cmp = icmp ugt i32 %4, %len
  br i1 %cmp, label %if.then6, label %if.end4.if.end7_crit_edge

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %m, i32 0, i32 6
  %5 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_flags, align 4
  %or = or i32 %6, 32
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %copylen.0 = phi i32 [ %len, %if.then6 ], [ %4, %if.end4.if.end7_crit_edge ]
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %m, i32 0, i32 2
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %call, i32 noundef 0, ptr noundef %msg_iter.i, i32 noundef %copylen.0) #9
  %7 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.i, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.out_free_crit_edge

if.end7.out_free_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.end11:                                         ; preds = %if.end7
  %and12 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.cond.end_crit_edge, label %cond.true

if.end11.cond.end_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len5, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end11.cond.end_crit_edge
  %cond = phi i32 [ %9, %cond.true ], [ %copylen.0, %if.end11.cond.end_crit_edge ]
  %10 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond, ptr %ret, align 4
  br label %out_free

out_free:                                         ; preds = %cond.end, %if.end7.out_free_crit_edge
  call void @skb_free_datagram(ptr noundef %1, ptr noundef nonnull %call) #9
  %flow_state.i.i = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %flow_state.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flow_state.i.i, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end.i, label %out_free.cleanup_crit_edge

out_free.cleanup_crit_edge:                       ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %out_free
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 9
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #9
  %14 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %sk_backlog.i, align 4
  %sk_rcvbuf.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 15
  %16 = ptrtoint ptr %sk_rcvbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sk_rcvbuf.i.i, align 8
  %div.i.i = sdiv i32 %17, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %div.i.i)
  %cmp.not.i = icmp sgt i32 %15, %div.i.i
  br i1 %cmp.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @_set_bit(i32 noundef 2, ptr noundef %flow_state.i.i) #9
  %dn.i.i = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %dn.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dn.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.then3.i.cleanup_crit_edge, label %land.lhs.true.i.i

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i.i:                                ; preds = %if.then3.i
  %modemcmd.i.i = getelementptr inbounds %struct.cflayer, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %modemcmd.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %modemcmd.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %21, null
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.cleanup_crit_edge, label %if.then.i.i

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 %21(ptr noundef nonnull %19, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %land.lhs.true.i.i.cleanup_crit_edge, %if.then3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %out_free.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %22 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %22)
  %retval.0 = load i32, ptr %ret, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caif_disconnect_client(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_stream_kill_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @caif_free_client(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caif_sktrecv_cb(ptr noundef %layr, ptr noundef %pkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cfpkt_tonative(ptr noundef %pkt) #9
  %skc_state = getelementptr i8, ptr %layr, i32 -942
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %if.end, label %if.then, !prof !97

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef %call, i32 noundef 0) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %layr, i32 -960
  tail call fastcc void @caif_queue_rcv_skb(ptr noundef %add.ptr, ptr noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caif_connect_client(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sock_error(ptr noundef %sk) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %0 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !97

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_err, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !111
  tail call void @llvm.prefetch.p0(ptr %sk_err, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err) #9, !srcloc !112
  %asmresult.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !113
  %sub = sub i32 0, %asmresult.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfpkt_tonative(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @caif_queue_rcv_skb(ptr noundef %sk, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %sk_backlog = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog, i32 noundef 4) #9
  %0 = ptrtoint ptr %sk_backlog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sk_backlog, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %2 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %truesize, align 8
  %add = add i32 %3, %1
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 15
  %4 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_rcvbuf, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp.not = icmp ult i32 %add, %5
  br i1 %cmp.not, label %entry.if.end17_crit_edge, label %land.lhs.true

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true:                                    ; preds = %entry
  %flow_state.i = getelementptr inbounds %struct.caifsock, ptr %sk, i32 0, i32 2
  %6 = ptrtoint ptr %flow_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flow_state.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %land.lhs.true.if.end17_crit_edge, label %do.body

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @caif_queue_rcv_skb.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@caif_queue_rcv_skb, %do.end)) #9
          to label %land.lhs.true8 [label %do.end], !srcloc !98

land.lhs.true8:                                   ; preds = %do.body
  %call9 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true8.do.end_crit_edge, label %if.then11

land.lhs.true8.do.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then11:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i97 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog, i32 noundef 4) #9
  %9 = ptrtoint ptr %sk_backlog to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %sk_backlog, align 4
  %11 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sk_rcvbuf, align 8
  %div.i = sdiv i32 %12, 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @caif_queue_rcv_skb.descriptor, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %10, i32 noundef %div.i) #9
  br label %do.end

do.end:                                           ; preds = %if.then11, %land.lhs.true8.do.end_crit_edge, %do.body
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flow_state.i) #9
  %dn.i = getelementptr inbounds %struct.caifsock, ptr %sk, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %dn.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dn.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %do.end.if.end17_crit_edge, label %land.lhs.true.i

do.end.if.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true.i:                                  ; preds = %do.end
  %modemcmd.i = getelementptr inbounds %struct.cflayer, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %modemcmd.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %modemcmd.i, align 4
  %tobool3.not.i = icmp eq ptr %16, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end17_crit_edge, label %if.then.i

land.lhs.true.i.if.end17_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %16(ptr noundef nonnull %14, i32 noundef 1) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end17_crit_edge, %do.end.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %entry.if.end17_crit_edge
  %call.i102 = tail call i32 @sk_filter_trim_cap(ptr noundef %sk, ptr noundef %skb, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool19.not = icmp eq i32 %call.i102, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.if.else_crit_edge

if.end17.if.else_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end21:                                         ; preds = %if.end17
  %17 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %truesize, align 8
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %19 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skc_prot.i.i, align 8
  %memory_allocated.i.i = getelementptr inbounds %struct.proto, ptr %20, i32 0, i32 32
  %21 = ptrtoint ptr %memory_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %memory_allocated.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %22, null
  br i1 %tobool.i.not.i, label %if.end21.if.end49_crit_edge, label %if.end.i

if.end21.if.end49_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.end.i:                                         ; preds = %if.end21
  %sk_forward_alloc.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %23 = ptrtoint ptr %sk_forward_alloc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sk_forward_alloc.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %18)
  %cmp.not.i = icmp slt i32 %24, %18
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.if.end49_crit_edge

if.end.i.if.end49_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call1.i = tail call i32 @__sk_mem_schedule(ptr noundef %sk, i32 noundef %18, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i103 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i103, label %sk_rmem_schedule.exit, label %lor.lhs.false.i.if.end49_crit_edge

lor.lhs.false.i.if.end49_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

sk_rmem_schedule.exit:                            ; preds = %lor.lhs.false.i
  %pfmemalloc.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %25 = ptrtoint ptr %pfmemalloc.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i.i = load i8, ptr %pfmemalloc.i.i, align 2
  %26 = and i8 %bf.load.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.i6.i.not = icmp eq i8 %26, 0
  br i1 %tobool.i6.i.not, label %land.lhs.true24, label %sk_rmem_schedule.exit.if.end49_crit_edge

sk_rmem_schedule.exit.if.end49_crit_edge:         ; preds = %sk_rmem_schedule.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

land.lhs.true24:                                  ; preds = %sk_rmem_schedule.exit
  %flow_state.i105 = getelementptr inbounds %struct.caifsock, ptr %sk, i32 0, i32 2
  %27 = ptrtoint ptr %flow_state.i105 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flow_state.i105, align 4
  %29 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool26.not = icmp eq i32 %29, 0
  br i1 %tobool26.not, label %land.lhs.true24.if.end49_crit_edge, label %if.then27

land.lhs.true24.if.end49_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then27:                                        ; preds = %land.lhs.true24
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flow_state.i105) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @caif_queue_rcv_skb.descriptor.15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@caif_queue_rcv_skb, %do.end48)) #9
          to label %land.lhs.true42 [label %do.end48], !srcloc !98

land.lhs.true42:                                  ; preds = %if.then27
  %call43 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.lhs.true42.do.end48_crit_edge, label %if.then45

land.lhs.true42.do.end48_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

if.then45:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @caif_queue_rcv_skb.descriptor.15, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.12) #9
  br label %do.end48

do.end48:                                         ; preds = %if.then45, %land.lhs.true42.do.end48_crit_edge, %if.then27
  %dn.i109 = getelementptr inbounds %struct.caifsock, ptr %sk, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %dn.i109 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dn.i109, align 4
  %tobool.not.i110 = icmp eq ptr %31, null
  br i1 %tobool.not.i110, label %do.end48.if.end49_crit_edge, label %land.lhs.true.i113

do.end48.if.end49_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

land.lhs.true.i113:                               ; preds = %do.end48
  %modemcmd.i111 = getelementptr inbounds %struct.cflayer, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %modemcmd.i111 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %modemcmd.i111, align 4
  %tobool3.not.i112 = icmp eq ptr %33, null
  br i1 %tobool3.not.i112, label %land.lhs.true.i113.if.end49_crit_edge, label %if.then.i115

land.lhs.true.i113.if.end49_crit_edge:            ; preds = %land.lhs.true.i113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then.i115:                                     ; preds = %land.lhs.true.i113
  call void @__sanitizer_cov_trace_pc() #11
  %call.i114 = tail call i32 %33(ptr noundef nonnull %31, i32 noundef 1) #9
  br label %if.end49

if.end49:                                         ; preds = %if.then.i115, %land.lhs.true.i113.if.end49_crit_edge, %do.end48.if.end49_crit_edge, %land.lhs.true24.if.end49_crit_edge, %sk_rmem_schedule.exit.if.end49_crit_edge, %lor.lhs.false.i.if.end49_crit_edge, %if.end.i.if.end49_crit_edge, %if.end21.if.end49_crit_edge
  %34 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %34, align 8
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %36 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %destructor.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %37(ptr noundef %skb) #9
  br label %skb_orphan.exit.i

do.body.i.i:                                      ; preds = %if.end49
  %38 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %tobool3.not.i.i = icmp eq ptr %40, null
  br i1 %tobool3.not.i.i, label %do.body.i.i.skb_orphan.exit.i_crit_edge, label %do.body7.i.i, !prof !97

do.body.i.i.skb_orphan.exit.i_crit_edge:          ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_orphan.exit.i

do.body7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

skb_orphan.exit.i:                                ; preds = %do.body.i.i.skb_orphan.exit.i_crit_edge, %if.then.i.i
  %41 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %sk, ptr %41, align 4
  %43 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @sock_rfree, ptr %destructor.i.i, align 4
  %44 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %truesize, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %sk_backlog, i32 1, i32 3, i32 1) #9
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog, ptr %sk_backlog, i32 %45, ptr elementtype(i32) %sk_backlog) #9, !srcloc !115
  %47 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %skc_prot.i.i, align 8
  %memory_allocated.i.i.i = getelementptr inbounds %struct.proto, ptr %48, i32 0, i32 32
  %49 = ptrtoint ptr %memory_allocated.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %memory_allocated.i.i.i, align 4
  %tobool.i.not.i.i = icmp eq ptr %50, null
  br i1 %tobool.i.not.i.i, label %skb_orphan.exit.i.skb_set_owner_r.exit_crit_edge, label %if.end.i.i

skb_orphan.exit.i.skb_set_owner_r.exit_crit_edge: ; preds = %skb_orphan.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_set_owner_r.exit

if.end.i.i:                                       ; preds = %skb_orphan.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %truesize, align 8
  %sk_forward_alloc.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %53 = ptrtoint ptr %sk_forward_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sk_forward_alloc.i.i, align 8
  %sub.i.i = sub i32 %54, %52
  store i32 %sub.i.i, ptr %sk_forward_alloc.i.i, align 8
  br label %skb_set_owner_r.exit

skb_set_owner_r.exit:                             ; preds = %if.end.i.i, %skb_orphan.exit.i.skb_set_owner_r.exit_crit_edge
  %lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 2
  %call55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %55 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %55, align 4
  %58 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.i.not = icmp eq i32 %58, 0
  br i1 %tobool.i.not, label %if.then69, label %if.end66

if.end66:                                         ; preds = %skb_set_owner_r.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call55) #9
  br label %if.else

if.then69:                                        ; preds = %skb_set_owner_r.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 0, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i, align 4
  %61 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %sk_receive_queue, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 1
  %62 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %skb, ptr %60, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 1
  %64 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %65, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call55) #9
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 77
  %66 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sk_data_ready, align 8
  tail call void %67(ptr noundef %sk) #9
  br label %if.end70

if.else:                                          ; preds = %if.end66, %if.end17.if.else_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %if.end70

if.end70:                                         ; preds = %if.else, %if.then69
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_filter_trim_cap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sk_mem_schedule(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_rfree(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @caif_wait_for_flow_on(ptr noundef %cf_sk, i32 noundef %timeo, ptr nocapture noundef writeonly %err) unnamed_addr #2 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
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
  %5 = tail call i32 @llvm.read_register.i32(metadata !87) #9
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
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %cf_sk, i32 0, i32 23
  %13 = getelementptr inbounds %struct.sock, ptr %cf_sk, i32 0, i32 17
  %sk_err = getelementptr inbounds %struct.sock, ptr %cf_sk, i32 0, i32 51
  %flow_state.i = getelementptr inbounds %struct.caifsock, ptr %cf_sk, i32 0, i32 2
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %cf_sk, i32 0, i32 21
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %cf_sk, i32 0, i32 66
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %cf_sk, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %if.end30, %entry
  %timeo.addr.0 = phi i32 [ %timeo, %entry ], [ %call31, %if.end30 ]
  %14 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %err, align 4
  %15 = ptrtoint ptr %flow_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flow_state.i, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %for.cond.if.end_crit_edge, label %lor.lhs.false

for.cond.if.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false:                                    ; preds = %for.cond
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #9
  %18 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %20 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %sk_sndbuf.i, align 4
  %shr.i = ashr i32 %21, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %shr.i)
  %cmp.i = icmp ult i32 %19, %shr.i
  br i1 %cmp.i, label %lor.lhs.false.for.end_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %for.cond.if.end_crit_edge
  %22 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -110, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeo.addr.0)
  %tobool9.not = icmp eq i32 %timeo.addr.0, 0
  br i1 %tobool9.not, label %if.end.for.end_crit_edge, label %if.end11

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end11:                                         ; preds = %if.end
  %23 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -512, ptr %err, align 4
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stack.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %30 = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end11.for.end_crit_edge, !prof !97

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

signal_pending.exit:                              ; preds = %if.end11
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %27, align 4
  %and1.i.i.i.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool15.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool15.not, label %if.end17, label %signal_pending.exit.for.end_crit_edge

signal_pending.exit.for.end_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end17:                                         ; preds = %signal_pending.exit
  %33 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %13, align 8
  call void @prepare_to_wait(ptr noundef %34, ptr noundef nonnull %wait, i32 noundef 1) #9
  %35 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -104, ptr %err, align 4
  %36 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %sk_shutdown, align 2
  %38 = and i8 %37, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool19.not = icmp eq i8 %38, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.for.end_crit_edge

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end21:                                         ; preds = %if.end17
  %39 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sk_err, align 4
  %sub = sub i32 0, %40
  %41 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub, ptr %err, align 4
  %42 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool23.not = icmp eq i32 %42, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.for.end_crit_edge

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end25:                                         ; preds = %if.end21
  %43 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -32, ptr %err, align 4
  %44 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load volatile i8, ptr %skc_state, align 2
  %cmp.not = icmp eq i8 %45, 1
  br i1 %cmp.not, label %if.end30, label %if.end25.for.end_crit_edge

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = call i32 @schedule_timeout(i32 noundef %timeo.addr.0) #9
  br label %for.cond

for.end:                                          ; preds = %if.end25.for.end_crit_edge, %if.end21.for.end_crit_edge, %if.end17.for.end_crit_edge, %signal_pending.exit.for.end_crit_edge, %if.end11.for.end_crit_edge, %if.end.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge
  %46 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %13, align 8
  call void @finish_wait(ptr noundef %47, ptr noundef nonnull %wait) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @memcpy_from_msg(ptr noundef %data, ptr noundef %msg, i32 noundef %len) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp9.i.i.i = icmp slt i32 %len, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %entry
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge, label %if.then27.i.i.i, !prof !97

land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_from_iter.exit.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %copy_from_iter.exit.i

if.then.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__check_object_size(ptr noundef %data, i32 noundef %len, i1 noundef zeroext false) #9
  %call3.i.i = tail call i32 @_copy_from_iter(ptr noundef %data, i32 noundef %len, ptr noundef %msg_iter) #9
  br label %copy_from_iter.exit.i

copy_from_iter.exit.i:                            ; preds = %if.then.i.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i.i.i ], [ 0, %if.then27.i.i.i ], [ 0, %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %len)
  %cmp.i = icmp eq i32 %retval.0.i.i, %len
  br i1 %cmp.i, label %copy_from_iter.exit.i.copy_from_iter_full.exit_crit_edge, label %if.end.i, !prof !97

copy_from_iter.exit.i.copy_from_iter_full.exit_crit_edge: ; preds = %copy_from_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_from_iter_full.exit

if.end.i:                                         ; preds = %copy_from_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iov_iter_revert(ptr noundef %msg_iter, i32 noundef %retval.0.i.i) #9
  br label %copy_from_iter_full.exit

copy_from_iter_full.exit:                         ; preds = %if.end.i, %copy_from_iter.exit.i.copy_from_iter_full.exit_crit_edge
  %cond = phi i32 [ 0, %copy_from_iter.exit.i.copy_from_iter_full.exit_crit_edge ], [ -14, %if.end.i ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @transmit_skb(ptr noundef %skb, ptr nocapture noundef readonly %cf_sk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cfpkt_fromnative(i32 noundef 1, ptr noundef %skb) #9
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %cb, align 8
  %sk_priority = getelementptr inbounds %struct.sock, ptr %cf_sk, i32 0, i32 33
  %1 = ptrtoint ptr %sk_priority to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sk_priority, align 4
  tail call void @cfpkt_set_prio(ptr noundef %call, i32 noundef %2) #9
  %dn = getelementptr inbounds %struct.caifsock, ptr %cf_sk, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dn, align 4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %transmit = getelementptr inbounds %struct.cflayer, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %transmit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %transmit, align 4
  %call5 = tail call i32 %6(ptr noundef nonnull %4, ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfpkt_fromnative(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfpkt_set_prio(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caif_stream_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len) #2 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #9
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -95, ptr %err, align 4
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %3 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_flags, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cond.false82_crit_edge, !prof !97

entry.cond.false82_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false82

if.end:                                           ; preds = %entry
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_namelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.end12, label %if.end.cond.false82_crit_edge, !prof !97

if.end.cond.false82_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false82

if.end12:                                         ; preds = %if.end
  %and14 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %cond.false.i, label %if.end12.sock_sndtimeo.exit_crit_edge

if.end12.sock_sndtimeo.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_sndtimeo.exit

cond.false.i:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 31
  %7 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sk_sndtimeo.i, align 8
  br label %sock_sndtimeo.exit

sock_sndtimeo.exit:                               ; preds = %cond.false.i, %if.end12.sock_sndtimeo.exit_crit_edge
  %cond.i = phi i32 [ %8, %cond.false.i ], [ 0, %if.end12.sock_sndtimeo.exit_crit_edge ]
  call fastcc void @caif_wait_for_flow_on(ptr noundef %1, i32 noundef %cond.i, ptr noundef nonnull %err)
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %9 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sk_shutdown, align 2
  %11 = and i8 %10, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool18.not = icmp eq i8 %11, 0
  br i1 %tobool18.not, label %while.cond.preheader, label %sock_sndtimeo.exit.land.lhs.true_crit_edge, !prof !97

sock_sndtimeo.exit.land.lhs.true_crit_edge:       ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

while.cond.preheader:                             ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp155.not = icmp eq i32 %len, 0
  br i1 %cmp155.not, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %maxframe = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 8
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 21
  %headroom = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 6
  %tailroom = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 7
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %sk_priority.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 33
  %dn.i = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 1, i32 1
  br label %while.body

while.cond:                                       ; preds = %transmit_skb.exit
  %add70 = add i32 %35, %sent.0156
  %cmp = icmp ult i32 %add70, %len
  br i1 %cmp, label %while.cond.while.body_crit_edge, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %sent.0156 = phi i32 [ 0, %while.body.lr.ph ], [ %add70, %while.cond.while.body_crit_edge ]
  %sub = sub i32 %len, %sent.0156
  %12 = ptrtoint ptr %maxframe to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %maxframe, align 4
  %14 = call i32 @llvm.smin.i32(i32 %sub, i32 %13)
  %15 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sk_sndbuf, align 4
  %shr = ashr i32 %16, 1
  %sub33 = add nsw i32 %shr, -64
  %17 = call i32 @llvm.smin.i32(i32 %14, i32 %sub33)
  %18 = call i32 @llvm.umin.i32(i32 %17, i32 16128)
  %19 = ptrtoint ptr %headroom to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %headroom, align 4
  %21 = ptrtoint ptr %tailroom to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tailroom, align 8
  %add = add i32 %22, %20
  %add45 = add i32 %add, %18
  %23 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_flags, align 4
  %and47 = and i32 %24, 64
  %call48 = call ptr @sock_alloc_send_skb(ptr noundef %1, i32 noundef %add45, i32 noundef %and47, ptr noundef nonnull %err) #9
  %cmp49 = icmp eq ptr %call48, null
  br i1 %cmp49, label %while.body.out_err_crit_edge, label %if.end52

while.body.out_err_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

if.end52:                                         ; preds = %while.body
  %25 = ptrtoint ptr %headroom to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %headroom, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call48, i32 0, i32 19
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 %26
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call48, i32 0, i32 16
  %29 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %30, i32 %26
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call48, i32 0, i32 7
  %31 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.not.i = icmp eq i32 %32, 0
  br i1 %tobool.i.not.i, label %cond.false.i130, label %if.end52.skb_tailroom.exit_crit_edge

if.end52.skb_tailroom.exit_crit_edge:             ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_tailroom.exit

cond.false.i130:                                  ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %call48, i32 0, i32 17
  %33 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i130, %if.end52.skb_tailroom.exit_crit_edge
  %cond.i131 = phi i32 [ %sub.ptr.sub.i, %cond.false.i130 ], [ 0, %if.end52.skb_tailroom.exit_crit_edge ]
  %35 = call i32 @llvm.smin.i32(i32 %18, i32 %cond.i131)
  %call58 = call ptr @skb_put(ptr noundef nonnull %call48, i32 noundef %35) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp9.i.i.i.i = icmp slt i32 %35, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %skb_tailroom.exit
  %.b71.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i, label %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge, label %if.then27.i.i.i.i, !prof !97

land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_from_iter.exit.i.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %copy_from_iter.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__check_object_size(ptr noundef %call58, i32 noundef %35, i1 noundef zeroext false) #9
  %call3.i.i.i = call i32 @_copy_from_iter(ptr noundef %call58, i32 noundef %35, ptr noundef %msg_iter.i) #9
  br label %copy_from_iter.exit.i.i

copy_from_iter.exit.i.i:                          ; preds = %if.then.i.i.i.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.then.i.i.i.i.i ], [ 0, %if.then27.i.i.i.i ], [ 0, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %35)
  %cmp.i.i = icmp eq i32 %retval.0.i.i.i, %35
  br i1 %cmp.i.i, label %if.end62, label %if.then61, !prof !97

if.then61:                                        ; preds = %copy_from_iter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %retval.0.i.i.i) #9
  %36 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -14, ptr %err, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %call48, i32 noundef 0) #9
  br label %out_err

if.end62:                                         ; preds = %copy_from_iter.exit.i.i
  %37 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %err, align 4
  %call.i = call ptr @cfpkt_fromnative(i32 noundef 1, ptr noundef nonnull %call48) #9
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call48, i32 0, i32 3
  %38 = ptrtoint ptr %cb.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 0, ptr %cb.i, align 8
  %39 = ptrtoint ptr %sk_priority.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sk_priority.i, align 4
  call void @cfpkt_set_prio(ptr noundef %call.i, i32 noundef %40) #9
  %41 = ptrtoint ptr %dn.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dn.i, align 4
  %cmp.i = icmp eq ptr %42, null
  br i1 %cmp.i, label %transmit_skb.exit.thread, label %transmit_skb.exit

transmit_skb.exit.thread:                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree_skb_reason(ptr noundef nonnull %call48, i32 noundef 0) #9
  %43 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -22, ptr %err, align 4
  br label %pipe_err

transmit_skb.exit:                                ; preds = %if.end62
  %transmit.i = getelementptr inbounds %struct.cflayer, ptr %42, i32 0, i32 4
  %44 = ptrtoint ptr %transmit.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %transmit.i, align 4
  %call5.i = call i32 %45(ptr noundef nonnull %42, ptr noundef %call.i) #9
  %46 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call5.i, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp66 = icmp slt i32 %call5.i, 0
  br i1 %cmp66, label %transmit_skb.exit.pipe_err_crit_edge, label %while.cond

transmit_skb.exit.pipe_err_crit_edge:             ; preds = %transmit_skb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %pipe_err

pipe_err:                                         ; preds = %transmit_skb.exit.pipe_err_crit_edge, %transmit_skb.exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sent.0156)
  %cmp71 = icmp eq i32 %sent.0156, 0
  br i1 %cmp71, label %pipe_err.land.lhs.true_crit_edge, label %pipe_err.if.end79_crit_edge

pipe_err.if.end79_crit_edge:                      ; preds = %pipe_err
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

pipe_err.land.lhs.true_crit_edge:                 ; preds = %pipe_err
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %pipe_err.land.lhs.true_crit_edge, %sock_sndtimeo.exit.land.lhs.true_crit_edge
  %47 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %msg_flags, align 4
  %and74 = and i32 %48, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.then76, label %land.lhs.true.if.end79_crit_edge

land.lhs.true.if.end79_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then76:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %49 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task, align 8
  %call78 = call i32 @send_sig(i32 noundef 13, ptr noundef %52, i32 noundef 0) #9
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %land.lhs.true.if.end79_crit_edge, %pipe_err.if.end79_crit_edge
  %sent.1139 = phi i32 [ 0, %if.then76 ], [ 0, %land.lhs.true.if.end79_crit_edge ], [ %sent.0156, %pipe_err.if.end79_crit_edge ]
  %53 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -32, ptr %err, align 4
  br label %out_err

out_err:                                          ; preds = %if.end79, %if.then61, %while.body.out_err_crit_edge
  %sent.2 = phi i32 [ %sent.1139, %if.end79 ], [ %sent.0156, %if.then61 ], [ %sent.0156, %while.body.out_err_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sent.2)
  %tobool80.not = icmp eq i32 %sent.2, 0
  br i1 %tobool80.not, label %out_err.cond.false82_crit_edge, label %out_err.cleanup_crit_edge

out_err.cleanup_crit_edge:                        ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

out_err.cond.false82_crit_edge:                   ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false82

cond.false82:                                     ; preds = %out_err.cond.false82_crit_edge, %if.end.cond.false82_crit_edge, %entry.cond.false82_crit_edge
  %54 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.false82, %out_err.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %55, %cond.false82 ], [ %sent.2, %out_err.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ %add70, %while.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caif_stream_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %size, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.out.thread_crit_edge

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

if.end:                                           ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp eq i8 %3, 2
  br i1 %cmp, label %if.end.out.thread_crit_edge, label %if.end4

if.end.out.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

if.end4:                                          ; preds = %if.end
  %readlock.i = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %readlock.i, i32 noundef 0) #9
  %and5 = and i32 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not.i = icmp eq i32 %and5, 0
  br i1 %tobool.not.i, label %cond.false.i, label %if.end4.sock_rcvlowat.exit_crit_edge

if.end4.sock_rcvlowat.exit_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_rcvlowat.exit

cond.false.i:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %sk_rcvlowat.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %sk_rcvlowat.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %sk_rcvlowat.i, align 8
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 %size) #9
  br label %sock_rcvlowat.exit

sock_rcvlowat.exit:                               ; preds = %cond.false.i, %if.end4.sock_rcvlowat.exit_crit_edge
  %cond5.i = phi i32 [ %6, %cond.false.i ], [ %size, %if.end4.sock_rcvlowat.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond5.i)
  %tobool6.not.i = icmp eq i32 %cond5.i, 0
  %..i = select i1 %tobool6.not.i, i32 1, i32 %cond5.i
  %and6 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %cond.false.i130, label %sock_rcvlowat.exit.sock_rcvtimeo.exit_crit_edge

sock_rcvlowat.exit.sock_rcvtimeo.exit_crit_edge:  ; preds = %sock_rcvlowat.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_rcvtimeo.exit

cond.false.i130:                                  ; preds = %sock_rcvlowat.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 62
  %7 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sk_rcvtimeo.i, align 4
  br label %sock_rcvtimeo.exit

sock_rcvtimeo.exit:                               ; preds = %cond.false.i130, %sock_rcvlowat.exit.sock_rcvtimeo.exit_crit_edge
  %cond.i = phi i32 [ %8, %cond.false.i130 ], [ 0, %sock_rcvlowat.exit.sock_rcvtimeo.exit_crit_edge ]
  %9 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  %flow_state.i.i = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 2
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 9
  %sk_rcvbuf.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 15
  %dn.i.i = getelementptr inbounds %struct.caifsock, ptr %1, i32 0, i32 1, i32 1
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %and61 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %sock_rcvtimeo.exit
  %size.addr.0 = phi i32 [ %size, %sock_rcvtimeo.exit ], [ %size.addr.1.ph, %do.cond.do.body_crit_edge ]
  %copied.0 = phi i32 [ 0, %sock_rcvtimeo.exit ], [ %copied.1.ph157, %do.cond.do.body_crit_edge ]
  %timeo.0 = phi i32 [ %cond.i, %sock_rcvtimeo.exit ], [ %timeo.1.ph, %do.cond.do.body_crit_edge ]
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %12 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %if.end11, label %do.body.unlock_crit_edge

do.body.unlock_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end11:                                         ; preds = %do.body
  %call12 = tail call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #9
  %13 = ptrtoint ptr %flow_state.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flow_state.i.i, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i131 = icmp eq i32 %15, 0
  br i1 %tobool.not.i131, label %if.end.i, label %if.end11.caif_check_flow_release.exit_crit_edge

if.end11.caif_check_flow_release.exit_crit_edge:  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %caif_check_flow_release.exit

if.end.i:                                         ; preds = %if.end11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #9
  %16 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %sk_backlog.i, align 4
  %18 = ptrtoint ptr %sk_rcvbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sk_rcvbuf.i.i, align 8
  %div.i.i = sdiv i32 %19, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %div.i.i)
  %cmp.not.i = icmp sgt i32 %17, %div.i.i
  br i1 %cmp.not.i, label %if.end.i.caif_check_flow_release.exit_crit_edge, label %if.then3.i

if.end.i.caif_check_flow_release.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caif_check_flow_release.exit

if.then3.i:                                       ; preds = %if.end.i
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flow_state.i.i) #9
  %20 = ptrtoint ptr %dn.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dn.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.then3.i.caif_check_flow_release.exit_crit_edge, label %land.lhs.true.i.i

if.then3.i.caif_check_flow_release.exit_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caif_check_flow_release.exit

land.lhs.true.i.i:                                ; preds = %if.then3.i
  %modemcmd.i.i = getelementptr inbounds %struct.cflayer, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %modemcmd.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %modemcmd.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %23, null
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.caif_check_flow_release.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.caif_check_flow_release.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caif_check_flow_release.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 %23(ptr noundef nonnull %21, i32 noundef 0) #9
  br label %caif_check_flow_release.exit

caif_check_flow_release.exit:                     ; preds = %if.then.i.i, %land.lhs.true.i.i.caif_check_flow_release.exit_crit_edge, %if.then3.i.caif_check_flow_release.exit_crit_edge, %if.end.i.caif_check_flow_release.exit_crit_edge, %if.end11.caif_check_flow_release.exit_crit_edge
  %cmp13 = icmp eq ptr %call12, null
  br i1 %cmp13, label %if.then15, label %if.end49

if.then15:                                        ; preds = %caif_check_flow_release.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %copied.0, i32 %..i)
  %cmp16.not = icmp slt i32 %copied.0, %..i
  br i1 %cmp16.not, label %if.end19, label %if.then15.unlock_crit_edge

if.then15.unlock_crit_edge:                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end19:                                         ; preds = %if.then15
  %24 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i132 = icmp eq i32 %25, 0
  br i1 %tobool.not.i132, label %if.end19.if.end23_crit_edge, label %sock_error.exit, !prof !97

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

sock_error.exit:                                  ; preds = %if.end19
  %call.i.i133 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !111
  tail call void @llvm.prefetch.p0(ptr %sk_err.i, i32 1, i32 3, i32 1) #9
  %26 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i) #9, !srcloc !112
  %asmresult.i.i = extractvalue { i32, i32 } %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool21.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool21.not, label %sock_error.exit.if.end23_crit_edge, label %unlock.split.loop.exit196

sock_error.exit.if.end23_crit_edge:               ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.end23:                                         ; preds = %sock_error.exit.if.end23_crit_edge, %if.end19.if.end23_crit_edge
  %27 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %sk_shutdown, align 2
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool26.not = icmp eq i8 %29, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.unlock_crit_edge

if.end23.unlock_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end28:                                         ; preds = %if.end23
  %30 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp32.not = icmp eq i8 %31, 1
  br i1 %cmp32.not, label %if.end35, label %if.end28.unlock_crit_edge

if.end28.unlock_crit_edge:                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end35:                                         ; preds = %if.end28
  %32 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %9, align 4
  %34 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i135.not = icmp eq i32 %34, 0
  br i1 %tobool.i135.not, label %if.end38, label %if.end35.unlock_crit_edge

if.end35.unlock_crit_edge:                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end38:                                         ; preds = %if.end35
  tail call void @release_sock(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeo.0)
  %tobool39.not = icmp eq i32 %timeo.0, 0
  br i1 %tobool39.not, label %if.end38.do.end_crit_edge, label %if.end41

if.end38.do.end_crit_edge:                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end41:                                         ; preds = %if.end38
  tail call void @mutex_unlock(ptr noundef %readlock.i) #9
  %call42 = tail call fastcc i32 @caif_stream_data_wait(ptr noundef %1, i32 noundef %timeo.0)
  %35 = tail call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %stack.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  %43 = and i32 %42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i137 = icmp eq i32 %43, 0
  br i1 %tobool.not.i137, label %signal_pending.exit, label %if.end41.cleanup_crit_edge, !prof !97

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

signal_pending.exit:                              ; preds = %if.end41
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %40, align 4
  %and1.i.i.i.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool45.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool45.not, label %if.end48, label %signal_pending.exit.cleanup_crit_edge

signal_pending.exit.cleanup_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end48:                                         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_lock_nested(ptr noundef %readlock.i, i32 noundef 0) #9
  br label %do.cond

unlock.split.loop.exit196:                        ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #11
  %asmresult.i.i.le = extractvalue { i32, i32 } %26, 0
  %sub.i.le = sub i32 0, %asmresult.i.i.le
  br label %unlock

unlock:                                           ; preds = %unlock.split.loop.exit196, %if.end35.unlock_crit_edge, %if.end28.unlock_crit_edge, %if.end23.unlock_crit_edge, %if.then15.unlock_crit_edge, %do.body.unlock_crit_edge
  %err.1 = phi i32 [ %sub.i.le, %unlock.split.loop.exit196 ], [ -104, %do.body.unlock_crit_edge ], [ -32, %if.end35.unlock_crit_edge ], [ -32, %if.end28.unlock_crit_edge ], [ -104, %if.end23.unlock_crit_edge ], [ -11, %if.then15.unlock_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #9
  br label %do.end

if.end49:                                         ; preds = %caif_check_flow_release.exit
  tail call void @release_sock(ptr noundef %1) #9
  %len = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 6
  %46 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len, align 4
  %48 = tail call i32 @llvm.umin.i32(i32 %47, i32 %size.addr.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp9.i.i.i = icmp slt i32 %48, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end49
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge, label %if.then27.i.i.i, !prof !97

land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge:    ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %memcpy_to_msg.exit

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %memcpy_to_msg.exit

if.then.i.i.i.i:                                  ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 19
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data, align 4
  tail call void @__check_object_size(ptr noundef %50, i32 noundef %48, i1 noundef zeroext true) #9
  %call3.i.i = tail call i32 @_copy_to_iter(ptr noundef %50, i32 noundef %48, ptr noundef %msg_iter.i) #9
  br label %memcpy_to_msg.exit

memcpy_to_msg.exit:                               ; preds = %if.then.i.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i.i.i ], [ 0, %if.then27.i.i.i ], [ 0, %land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %48)
  %cmp.i142 = icmp eq i32 %retval.0.i.i, %48
  br i1 %cmp.i142, label %if.end60, label %if.then54

if.then54:                                        ; preds = %memcpy_to_msg.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @skb_queue_head(ptr noundef %sk_receive_queue, ptr noundef nonnull %call12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0)
  %cmp56 = icmp eq i32 %copied.0, 0
  %spec.store.select = select i1 %cmp56, i32 -14, i32 %copied.0
  br label %do.end

if.end60:                                         ; preds = %memcpy_to_msg.exit
  %add = add i32 %48, %copied.0
  %sub = sub i32 %size.addr.0, %48
  br i1 %tobool62.not, label %if.then63, label %if.else

if.then63:                                        ; preds = %if.end60
  %call64 = tail call ptr @skb_pull(ptr noundef nonnull %call12, i32 noundef %48) #9
  %51 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool66.not = icmp eq i32 %52, 0
  br i1 %tobool66.not, label %if.end69, label %if.then67

if.then67:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @skb_queue_head(ptr noundef %sk_receive_queue, ptr noundef nonnull %call12) #9
  br label %do.end

if.end69:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %call12, i32 noundef 0) #9
  br label %do.cond

if.else:                                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @skb_queue_head(ptr noundef %sk_receive_queue, ptr noundef nonnull %call12) #9
  br label %do.end

cleanup:                                          ; preds = %signal_pending.exit.cleanup_crit_edge, %if.end41.cleanup_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %call42)
  %cmp.i = icmp eq i32 %call42, 2147483647
  %cond.i140 = select i1 %cmp.i, i32 -512, i32 -4
  br label %out

do.cond:                                          ; preds = %if.end69, %if.end48
  %size.addr.1.ph = phi i32 [ %sub, %if.end69 ], [ %size.addr.0, %if.end48 ]
  %copied.1.ph157 = phi i32 [ %add, %if.end69 ], [ %copied.0, %if.end48 ]
  %timeo.1.ph = phi i32 [ %timeo.0, %if.end69 ], [ %call42, %if.end48 ]
  %tobool73.not = icmp eq i32 %size.addr.1.ph, 0
  br i1 %tobool73.not, label %do.cond.do.end_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %if.else, %if.then67, %if.then54, %unlock, %if.end38.do.end_crit_edge
  %err.2155 = phi i32 [ -11, %if.then67 ], [ -11, %if.else ], [ -11, %if.then54 ], [ %err.1, %unlock ], [ -11, %do.cond.do.end_crit_edge ], [ -11, %if.end38.do.end_crit_edge ]
  %copied.1154 = phi i32 [ %add, %if.then67 ], [ %add, %if.else ], [ %spec.store.select, %if.then54 ], [ %copied.0, %unlock ], [ %copied.0, %if.end38.do.end_crit_edge ], [ %copied.1.ph157, %do.cond.do.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %readlock.i) #9
  br label %out

out:                                              ; preds = %do.end, %cleanup
  %copied.2 = phi i32 [ %copied.0, %cleanup ], [ %copied.1154, %do.end ]
  %err.3 = phi i32 [ %cond.i140, %cleanup ], [ %err.2155, %do.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.2)
  %tobool74.not = icmp eq i32 %copied.2, 0
  br i1 %tobool74.not, label %out.out.thread_crit_edge, label %out.cleanup79_crit_edge

out.cleanup79_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup79

out.out.thread_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

out.thread:                                       ; preds = %out.out.thread_crit_edge, %if.end.out.thread_crit_edge, %entry.out.thread_crit_edge
  %err.3172 = phi i32 [ %err.3, %out.out.thread_crit_edge ], [ -11, %if.end.out.thread_crit_edge ], [ -95, %entry.out.thread_crit_edge ]
  br label %cleanup79

cleanup79:                                        ; preds = %out.thread, %out.cleanup79_crit_edge
  %53 = phi i32 [ %err.3172, %out.thread ], [ %copied.2, %out.cleanup79_crit_edge ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @caif_stream_data_wait(ptr noundef %sk, i32 noundef %timeo) unnamed_addr #2 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
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
  %5 = tail call i32 @llvm.read_register.i32(metadata !87) #9
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
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #9
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %13 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %14 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %14, align 8
  call void @prepare_to_wait(ptr noundef %16, ptr noundef nonnull %wait, i32 noundef 1) #9
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %17 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i.not49 = icmp eq ptr %18, %sk_receive_queue
  br i1 %cmp.i.not49, label %entry.lor.lhs.false_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sk_clear_bit.exit.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %timeo.addr.050 = phi i32 [ %call22, %sk_clear_bit.exit.lor.lhs.false_crit_edge ], [ %timeo, %entry.lor.lhs.false_crit_edge ]
  %19 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool6.not = icmp eq i32 %20, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false.for.end_crit_edge

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %21 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp.not = icmp eq i8 %22, 1
  br i1 %cmp.not, label %lor.lhs.false9, label %lor.lhs.false7.for.end_crit_edge

lor.lhs.false7.for.end_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %13, align 4
  %25 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.not = icmp eq i32 %25, 0
  br i1 %tobool.i.not, label %lor.lhs.false12, label %lor.lhs.false9.for.end_crit_edge

lor.lhs.false9.for.end_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %26 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sk_shutdown, align 2
  %28 = and i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool14.not = icmp eq i8 %28, 0
  br i1 %tobool14.not, label %lor.lhs.false15, label %lor.lhs.false12.for.end_crit_edge

lor.lhs.false12.for.end_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %stack.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %35 = and i32 %34, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %lor.lhs.false15.for.end_crit_edge, !prof !97

lor.lhs.false15.for.end_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

signal_pending.exit:                              ; preds = %lor.lhs.false15
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %32, align 4
  %and1.i.i.i.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool19.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool19.not, label %lor.lhs.false20, label %signal_pending.exit.for.end_crit_edge

signal_pending.exit.for.end_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

lor.lhs.false20:                                  ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeo.addr.050)
  %tobool21.not = icmp eq i32 %timeo.addr.050, 0
  br i1 %tobool21.not, label %lor.lhs.false20.for.end_crit_edge, label %if.end

lor.lhs.false20.for.end_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false20
  %38 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %13, align 4
  %40 = and i32 %39, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.i.not.i = icmp eq i32 %40, 0
  br i1 %tobool.i.not.i, label %if.end.sk_set_bit.exit_crit_edge, label %if.end.i42

if.end.sk_set_bit.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sk_set_bit.exit

if.end.i42:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %14, align 8
  %flags.i = getelementptr inbounds %struct.socket_wq, ptr %42, i32 0, i32 2
  call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #9
  br label %sk_set_bit.exit

sk_set_bit.exit:                                  ; preds = %if.end.i42, %if.end.sk_set_bit.exit_crit_edge
  call void @release_sock(ptr noundef %sk) #9
  %call22 = call i32 @schedule_timeout(i32 noundef %timeo.addr.050) #9
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #9
  %43 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %13, align 4
  %45 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i43.not = icmp eq i32 %45, 0
  br i1 %tobool.i43.not, label %if.end25, label %sk_set_bit.exit.for.end_crit_edge

sk_set_bit.exit.for.end_crit_edge:                ; preds = %sk_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end25:                                         ; preds = %sk_set_bit.exit
  %46 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %13, align 4
  %48 = and i32 %47, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.i.not.i44 = icmp eq i32 %48, 0
  br i1 %tobool.i.not.i44, label %if.end25.sk_clear_bit.exit_crit_edge, label %if.end.i46

if.end25.sk_clear_bit.exit_crit_edge:             ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %sk_clear_bit.exit

if.end.i46:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %14, align 8
  %flags.i45 = getelementptr inbounds %struct.socket_wq, ptr %50, i32 0, i32 2
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i45) #9
  br label %sk_clear_bit.exit

sk_clear_bit.exit:                                ; preds = %if.end.i46, %if.end25.sk_clear_bit.exit_crit_edge
  %51 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %14, align 8
  call void @prepare_to_wait(ptr noundef %52, ptr noundef nonnull %wait, i32 noundef 1) #9
  %53 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i.not = icmp eq ptr %54, %sk_receive_queue
  br i1 %cmp.i.not, label %sk_clear_bit.exit.lor.lhs.false_crit_edge, label %sk_clear_bit.exit.for.end_crit_edge

sk_clear_bit.exit.for.end_crit_edge:              ; preds = %sk_clear_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

sk_clear_bit.exit.lor.lhs.false_crit_edge:        ; preds = %sk_clear_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

for.end:                                          ; preds = %sk_clear_bit.exit.for.end_crit_edge, %sk_set_bit.exit.for.end_crit_edge, %lor.lhs.false20.for.end_crit_edge, %signal_pending.exit.for.end_crit_edge, %lor.lhs.false15.for.end_crit_edge, %lor.lhs.false12.for.end_crit_edge, %lor.lhs.false9.for.end_crit_edge, %lor.lhs.false7.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %entry.for.end_crit_edge
  %timeo.addr.1 = phi i32 [ %timeo, %entry.for.end_crit_edge ], [ %timeo.addr.050, %lor.lhs.false15.for.end_crit_edge ], [ %call22, %sk_set_bit.exit.for.end_crit_edge ], [ %call22, %sk_clear_bit.exit.for.end_crit_edge ], [ %timeo.addr.050, %lor.lhs.false.for.end_crit_edge ], [ %timeo.addr.050, %lor.lhs.false7.for.end_crit_edge ], [ %timeo.addr.050, %lor.lhs.false9.for.end_crit_edge ], [ %timeo.addr.050, %lor.lhs.false12.for.end_crit_edge ], [ %timeo.addr.050, %signal_pending.exit.for.end_crit_edge ], [ 0, %lor.lhs.false20.for.end_crit_edge ]
  %55 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %14, align 8
  call void @finish_wait(ptr noundef %56, ptr noundef nonnull %wait) #9
  call void @release_sock(ptr noundef %sk) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret i32 %timeo.addr.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @caif_client_register_refcnt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cfsk_hold(ptr noundef %layr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_refcnt.i = getelementptr i8, ptr %layr, i32 -860
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !116
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !99

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !97

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #9
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cfsk_put(ptr noundef %layr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_refcnt.i = getelementptr i8, ptr %layr, i32 -860
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !101
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !97

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #9
  br label %sock_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %layr, i32 -960
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @sk_free(ptr noundef %add.ptr) #9
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !54, !56, !58, !60, !61, !62, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86}
!llvm.named.register.sp = !{!87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__UNIQUE_ID_file524, !1, !"__UNIQUE_ID_file524", i1 false, i1 false}
!1 = !{!"../net/caif/caif_socket.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_license525, !1, !"__UNIQUE_ID_license525", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias526, !4, !"__UNIQUE_ID_alias526", i1 false, i1 false}
!4 = !{!"../net/caif/caif_socket.c", i32 31, i32 1}
!5 = !{ptr @__initcall__kmod_caif_socket__533_1123_caif_sktinit_module6, !6, !"__initcall__kmod_caif_socket__533_1123_caif_sktinit_module6", i1 false, i1 false}
!6 = !{!"../net/caif/caif_socket.c", i32 1123, i32 1}
!7 = !{ptr @__exitcall_caif_sktexit_module, !8, !"__exitcall_caif_sktexit_module", i1 false, i1 false}
!8 = !{!"../net/caif/caif_socket.c", i32 1124, i32 1}
!9 = !{ptr @caif_family_ops, !10, !"caif_family_ops", i1 false, i1 false}
!10 = !{!"../net/caif/caif_socket.c", i32 1108, i32 38}
!11 = !{ptr @caif_create.prot, !12, !"prot", i1 false, i1 false}
!12 = !{!"../net/caif/caif_socket.c", i32 1032, i32 22}
!13 = !{ptr @caif_create.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../net/caif/caif_socket.c", i32 1092, i32 2}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @caif_seqpacket_ops, !17, !"caif_seqpacket_ops", i1 false, i1 false}
!17 = !{!"../net/caif/caif_socket.c", i32 972, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/caif/caif_socket.c", i32 920, i32 2}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/caif/caif_socket.c", i32 770, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @caif_connect._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @caif_connect._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @caif_connect._entry.5, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../net/caif/caif_socket.c", i32 789, i32 3}
!28 = !{ptr @caif_connect._entry_ptr.6, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/caif/caif_socket.c", i32 857, i32 3}
!32 = !{ptr @caif_connect._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @caif_connect._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/caif/caif_socket.c", i32 135, i32 3}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @caif_queue_rcv_skb.descriptor, !35, !"descriptor", i1 false, i1 false}
!39 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/caif/caif_socket.c", i32 148, i32 3}
!42 = !{ptr @caif_queue_rcv_skb.descriptor.15, !41, !"descriptor", i1 false, i1 false}
!43 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/caif/caif_socket.c", i32 529, i32 2}
!60 = !{ptr @caif_seqpkt_sendmsg._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @caif_seqpkt_sendmsg._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @caif_stream_ops, !64, !"caif_stream_ops", i1 false, i1 false}
!64 = !{!"../net/caif/caif_socket.c", i32 992, i32 31}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/caif/caif_socket.c", i32 1016, i32 2}
!67 = !{ptr @caif_sock_destructor._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @caif_sock_destructor._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @caif_sock_destructor._entry.28, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../net/caif/caif_socket.c", i32 1017, i32 2}
!72 = !{ptr @caif_sock_destructor._entry_ptr.29, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @caif_sock_destructor._entry.31, !75, !"_entry", i1 false, i1 false}
!75 = !{!"../net/caif/caif_socket.c", i32 1018, i32 2}
!76 = !{ptr @caif_sock_destructor._entry_ptr.32, !75, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/caif/caif_socket.c", i32 1020, i32 3}
!80 = !{ptr @caif_sock_destructor.__UNIQUE_ID_ddebug532, !79, !"__UNIQUE_ID_ddebug532", i1 false, i1 false}
!81 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/caif/caif_socket.c", i32 251, i32 3}
!84 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @caif_ctrl_cb.__UNIQUE_ID_ddebug527, !83, !"__UNIQUE_ID_ddebug527", i1 false, i1 false}
!86 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!87 = !{!"sp"}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{!"branch_weights", i32 2000, i32 1}
!98 = !{i64 2149314204, i64 2149314209, i64 2149314222, i64 2149314266, i64 2149314300, i64 2149314321}
!99 = !{!"branch_weights", i32 1, i32 2000}
!100 = !{i64 2148276608}
!101 = !{i64 2148191072, i64 2148191104, i64 2148191133, i64 2148191167, i64 2148191198, i64 2148191221}
!102 = !{i64 2150305749}
!103 = !{!"auto-init"}
!104 = !{i64 2149744199}
!105 = !{i64 2149744465}
!106 = !{i64 2157783606}
!107 = !{i64 2153383825, i64 2153383850}
!108 = !{i64 5879380}
!109 = !{i64 5879577}
!110 = !{i64 2153364810}
!111 = !{i64 2157789856}
!112 = !{i64 693845, i64 693862, i64 693886, i64 693912, i64 693930}
!113 = !{i64 2157790199}
!114 = !{i64 2155257008, i64 2155257496, i64 2155257045, i64 2155257101, i64 2155257135, i64 2155257159, i64 2155257200, i64 2155257221, i64 2155257249, i64 2155257283}
!115 = !{i64 2148187077, i64 2148187103, i64 2148187132, i64 2148187166, i64 2148187197, i64 2148187220}
!116 = !{i64 2148188607, i64 2148188639, i64 2148188668, i64 2148188702, i64 2148188733, i64 2148188756}
