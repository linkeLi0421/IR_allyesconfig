; ModuleID = '/llk/IR_all_yes/net/phonet/pep.c_pt.bc'
source_filename = "../net/phonet/pep.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phonet_protocol = type { ptr, ptr, i32 }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.114, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.114 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pep_sock = type { %struct.pn_sock, %struct.hlist_head, ptr, %struct.sk_buff_head, %struct.atomic_t, i32, i16, i8, i8, i8, i8, i8, i8 }
%struct.pn_sock = type { %struct.sock, i16, i16, i8 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.119, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.120, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.121, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.115, [0 x i32], %union.anon.116, i16, i16, %union.anon.117, %struct.refcount_struct, [0 x i32], %union.anon.118 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { %struct.hlist_node }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.119 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.120 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.121 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.pnpipehdr = type { i8, i8, i8, %union.anon.145, [0 x i8] }
%union.anon.145 = type { i8 }
%struct.phonethdr = type <{ i8, i8, i8, i16, i8, i8 }>
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.113, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.111 }
%union.anon.4 = type { ptr }
%union.anon.111 = type { i64 }
%union.anon.113 = type { ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.85, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
%struct.llist_node = type { ptr }
%union.anon.17 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.85 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.sockaddr_pn = type { i16, i8, i8, i8, [11 x i8] }
%struct.anon.148 = type { i8, i8 }

@pep_pn_proto = internal constant { %struct.phonet_protocol, [20 x i8] } { %struct.phonet_protocol { ptr @phonet_stream_ops, ptr @pep_proto, i32 5 }, [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_pn_pep__459_1360_pep_register6 = internal global ptr @pep_register, section ".initcall6.init", align 4
@__exitcall_pep_unregister = internal global ptr @pep_unregister, section ".exitcall.exit", align 4
@__UNIQUE_ID_author460 = internal constant [41 x i8] c"pn_pep.author=Remi Denis-Courmont, Nokia\00", section ".modinfo", align 1
@__UNIQUE_ID_description461 = internal constant [40 x i8] c"pn_pep.description=Phonet pipe protocol\00", section ".modinfo", align 1
@__UNIQUE_ID_file462 = internal constant [30 x i8] c"pn_pep.file=net/phonet/pn_pep\00", section ".modinfo", align 1
@__UNIQUE_ID_license463 = internal constant [19 x i8] c"pn_pep.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias464 = internal constant [31 x i8] c"pn_pep.alias=net-pf-35-proto-2\00", section ".modinfo", align 1
@phonet_stream_ops = external dso_local constant %struct.proto_ops, align 4
@pep_proto = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr @pep_sock_close, ptr null, ptr @pep_sock_connect, ptr null, ptr @pep_sock_accept, ptr @pep_ioctl, ptr @pep_init, ptr null, ptr null, ptr @pep_setsockopt, ptr @pep_getsockopt, ptr null, ptr @pep_sendmsg, ptr @pep_recvmsg, ptr null, ptr null, ptr null, ptr @pep_do_rcv, ptr null, ptr null, ptr @pn_sock_hash, ptr @pep_sock_unhash, ptr null, ptr @pn_sock_get_port, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1048, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.114 zeroinitializer, ptr null, [32 x i8] c"PNPIPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@pipe_do_rcv.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pn_pep\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pipe_do_rcv\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/phonet/pep.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Phonet unknown PEP message: %u\0A\00", [32 x i8] zeroinitializer }, align 32
@pep_reject_conn.data = internal constant { [4 x i8], [28 x i8] } zeroinitializer, align 32
@pipe_rcv_status.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pipe_rcv_status\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Phonet unknown PEP type: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@pipe_rcv_status.descriptor.6 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.7, i8 0, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Phonet unknown PEP indication: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@pep_accept_conn.data = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\00\00\00\02\04\08\03\00\03\02\01\00\05\08\03\00\03\02\01\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 6]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 21531, i64 35309]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [8 x i64] [i64 6, i64 8, i64 64, i64 66, i64 68, i64 70, i64 72, i64 76]
@__sancov_gen_cov_switch_values.19 = internal global [16 x i64] [i64 14, i64 8, i64 32, i64 33, i64 64, i64 66, i64 68, i64 70, i64 72, i64 76, i64 96, i64 97, i64 99, i64 100, i64 101, i64 102]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [7 x i64] [i64 5, i64 8, i64 32, i64 33, i64 65, i64 71, i64 96]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 5]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.27 = private unnamed_addr constant [13 x i8] c"pep_pn_proto\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 1344, i32 37 }
@___asan_gen_.30 = private unnamed_addr constant [10 x i8] c"pep_proto\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 1325, i32 21 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 442, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 183, i32 18 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 263, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 295, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 1984, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@___asan_gen_.64 = private constant [20 x i8] c"../net/phonet/pep.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 161, i32 18 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 230, i32 6 }
@___asan_gen_.70 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 214, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 156, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 729, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_alias464, ptr @__UNIQUE_ID_author460, ptr @__UNIQUE_ID_description461, ptr @__UNIQUE_ID_file462, ptr @__UNIQUE_ID_license463, ptr @__exitcall_pep_unregister, ptr @__initcall__kmod_pn_pep__459_1360_pep_register6, ptr @pep_unregister, ptr @pep_pn_proto, ptr @pep_proto, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @pep_reject_conn.data, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @skb_queue_head_init.__key, ptr @.str.8, ptr @pep_accept_conn.data, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pep_pn_proto to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pep_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pep_reject_conn.data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pep_accept_conn.data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pep_writeable(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_credits = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_credits, i32 noundef 4) #8
  %0 = ptrtoint ptr %tx_credits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %tx_credits, align 4
  ret i32 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pep_write(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %aligned = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 12
  %0 = ptrtoint ptr %aligned to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %aligned, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call fastcc i32 @pipe_skb_send(ptr noundef %sk, ptr noundef %skb)
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @__alloc_skb(i32 noundef 188, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 17
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i, align 4
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %frag_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %skb, ptr %frag_list, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %len7 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %len7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len7, align 4
  %add = add i32 %8, %6
  store i32 %add, ptr %len7, align 4
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len, align 8
  %add9 = add i32 %10, %add
  store i32 %add9, ptr %data_len, align 8
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 20
  %11 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %truesize, align 8
  %add11 = add i32 %12, %add
  store i32 %add11, ptr %truesize, align 8
  %end.i53 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %13 = ptrtoint ptr %end.i53 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i53, align 4
  %frag_list13 = getelementptr inbounds %struct.skb_shared_info, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %frag_list13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %fs.055 = load ptr, ptr %frag_list13, align 8
  %tobool14.not56 = icmp eq ptr %fs.055, null
  br i1 %tobool14.not56, label %if.end5.for.end_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end5.for.body_crit_edge
  %fs.058 = phi ptr [ %fs.0, %for.body.for.body_crit_edge ], [ %fs.055, %if.end5.for.body_crit_edge ]
  %flen.057 = phi i32 [ %add16, %for.body.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  %len15 = getelementptr inbounds %struct.sk_buff, ptr %fs.058, i32 0, i32 6
  %16 = ptrtoint ptr %len15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len15, align 4
  %add16 = add i32 %17, %flen.057
  %18 = ptrtoint ptr %fs.058 to i32
  call void @__asan_load4_noabort(i32 %18)
  %fs.0 = load ptr, ptr %fs.058, align 8
  %tobool14.not = icmp eq ptr %fs.0, null
  br i1 %tobool14.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end5.for.end_crit_edge
  %flen.0.lcssa = phi i32 [ 0, %if.end5.for.end_crit_edge ], [ %add16, %for.body.for.end_crit_edge ]
  %19 = ptrtoint ptr %frag_list13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %frag_list13, align 8
  %21 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %skb, align 8
  store ptr null, ptr %frag_list13, align 8
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %sub = sub i32 %23, %flen.0.lcssa
  store i32 %sub, ptr %len, align 4
  %data_len21 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %24 = ptrtoint ptr %data_len21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_len21, align 8
  %sub22 = sub i32 %25, %flen.0.lcssa
  store i32 %sub22, ptr %data_len21, align 8
  %truesize23 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %26 = ptrtoint ptr %truesize23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %truesize23, align 8
  %sub24 = sub i32 %27, %flen.0.lcssa
  store i32 %sub24, ptr %truesize23, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 187
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %30 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %31, i32 187
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call25 = tail call fastcc i32 @pipe_skb_send(ptr noundef %sk, ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then4, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call25, %for.end ], [ -12, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pipe_skb_send(ptr noundef %sk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_fc = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 10
  %0 = ptrtoint ptr %tx_fc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_fc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %tobool.not = icmp ult i8 %1, 2
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tx_credits = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_credits, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %tx_credits, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %tx_credits, ptr %tx_credits, i32 0, i32 -1, ptr elementtype(i32) %tx_credits) #8, !srcloc !57
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.then, label %atomic_add_unless.exit.thread

atomic_add_unless.exit.thread:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !58
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

if.end:                                           ; preds = %atomic_add_unless.exit.thread, %entry.if.end_crit_edge
  %aligned = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 12
  %3 = ptrtoint ptr %aligned to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %aligned, align 1
  %conv2 = zext i8 %4 to i32
  %add = add nuw nsw i32 %conv2, 3
  %call3 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %add) #8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %9 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %conv.i.i = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %conv.i.i
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %add.ptr.i.i, align 1
  %11 = ptrtoint ptr %aligned to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %aligned, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not = icmp eq i8 %12, 0
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %13, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %.sink = phi i8 [ 33, %if.then7 ], [ 32, %if.end.if.end9_crit_edge ]
  %15 = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink, ptr %15, align 1
  %pipe_handle = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 7
  %17 = ptrtoint ptr %pipe_handle to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pipe_handle, align 2
  %pipe_handle10 = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %pipe_handle10 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %pipe_handle10, align 1
  %call11 = tail call i32 @pn_skb_send(ptr noundef %sk, ptr noundef %skb, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %land.lhs.true13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true13:                                  ; preds = %if.end9
  %20 = ptrtoint ptr %tx_fc to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tx_fc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %tobool17.not = icmp ult i8 %21, 2
  br i1 %tobool17.not, label %land.lhs.true13.cleanup_crit_edge, label %if.then18

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then18:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  %tx_credits19 = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 4
  %call.i.i39 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_credits19, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %tx_credits19, i32 1, i32 3, i32 1) #8
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_credits19, ptr %tx_credits19, i32 1, ptr elementtype(i32) %tx_credits19) #8, !srcloc !59
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %land.lhs.true13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -105, %if.then ], [ %call11, %if.then18 ], [ %call11, %land.lhs.true13.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pep_read(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %call = tail call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not.i = icmp eq i8 %3, 1
  br i1 %cmp.not.i, label %do.end8.i, label %do.body3.i, !prof !60

do.body3.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/phonet/pep.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 231, 0\0A.popsection", ""() #8, !srcloc !61
  unreachable

do.end8.i:                                        ; preds = %if.then
  %rx_fc.i = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 9
  %4 = ptrtoint ptr %rx_fc.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rx_fc.i, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %do.end8.i.if.end_crit_edge [
    i8 3, label %sw.bb15.i
    i8 2, label %sw.bb.i
  ]

do.end8.i.if.end_crit_edge:                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb.i:                                          ; preds = %do.end8.i
  %call10.i = tail call fastcc i32 @pipe_snd_status(ptr noundef %sk, i8 noundef zeroext 0, i8 noundef zeroext 2, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp eq i32 %call10.i, 0
  br i1 %cmp11.i, label %if.then13.i, label %sw.bb.i.if.end_crit_edge

sw.bb.i.if.end_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then13.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_credits.i = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 8
  %7 = ptrtoint ptr %rx_credits.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %rx_credits.i, align 1
  br label %if.end

sw.bb15.i:                                        ; preds = %do.end8.i
  %rx_credits16.i = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 8
  %8 = ptrtoint ptr %rx_credits16.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rx_credits16.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp18.i = icmp ugt i8 %9, 3
  br i1 %cmp18.i, label %sw.bb15.i.if.end_crit_edge, label %if.end21.i

sw.bb15.i.if.end_crit_edge:                       ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end21.i:                                       ; preds = %sw.bb15.i
  %sub.i = sub nuw nsw i8 10, %9
  %call25.i = tail call fastcc i32 @pipe_snd_status(ptr noundef %sk, i8 noundef zeroext 1, i8 noundef zeroext %sub.i, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp eq i32 %call25.i, 0
  br i1 %cmp26.i, label %if.then28.i, label %if.end21.i.if.end_crit_edge

if.end21.i.if.end_crit_edge:                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then28.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %rx_credits16.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 10, ptr %rx_credits16.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then28.i, %if.end21.i.if.end_crit_edge, %sw.bb15.i.if.end_crit_edge, %if.then13.i, %sw.bb.i.if.end_crit_edge, %do.end8.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pep_unregister() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @phonet_proto_unregister(i32 noundef 2, ptr noundef nonnull @pep_pn_proto) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phonet_proto_unregister(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pep_register() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phonet_proto_register(i32 noundef 2, ptr noundef nonnull @pep_pn_proto) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pn_skb_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pipe_snd_status(ptr noundef %sk, i8 noundef zeroext %type, i8 noundef zeroext %status, i32 noundef %priority) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 192, i32 noundef %priority, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.pep_indicate.exit_crit_edge, label %if.end.i.i

entry.pep_indicate.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pep_indicate.exit

if.end.i.i:                                       ; preds = %entry
  tail call void @skb_set_owner_w(ptr noundef nonnull %call.i.i.i, ptr noundef %sk) #8
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 188
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %3, i32 188
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i.i.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i.i.i, label %if.end.i, label %do.body3.i.i.i, !prof !60

do.body3.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #8, !srcloc !62
  unreachable

if.end.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i13.i.i = getelementptr i8, ptr %3, i32 192
  %6 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i13.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %len9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len9.i.i.i, align 4
  %add.i.i.i = add i32 %8, 4
  store i32 %add.i.i.i, ptr %len9.i.i.i, align 4
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %type, ptr %add.ptr.i.i.i, align 1
  %data.sroa.5.0.add.ptr.i.i.i.sroa_idx = getelementptr i8, ptr %1, i32 189
  %10 = ptrtoint ptr %data.sroa.5.0.add.ptr.i.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %data.sroa.5.0.add.ptr.i.i.i.sroa_idx, align 1
  %data.sroa.7.0.add.ptr.i.i.i.sroa_idx = getelementptr i8, ptr %1, i32 190
  %11 = ptrtoint ptr %data.sroa.7.0.add.ptr.i.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %data.sroa.7.0.add.ptr.i.i.i.sroa_idx, align 1
  %data.sroa.9.0.add.ptr.i.i.i.sroa_idx = getelementptr i8, ptr %1, i32 191
  %12 = ptrtoint ptr %data.sroa.9.0.add.ptr.i.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %status, ptr %data.sroa.9.0.add.ptr.i.i.i.sroa_idx, align 1
  %13 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i16.i.i = getelementptr i8, ptr %14, i32 -4
  store ptr %add.ptr.i16.i.i, ptr %data.i.i.i, align 4
  %15 = load i32, ptr %len9.i.i.i, align 4
  %add.i17.i.i = add i32 %15, 4
  store i32 %add.i17.i.i, ptr %len9.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i16.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 19
  %18 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i.i.i, ptr %transport_header.i.i.i, align 2
  %conv.i.i16.i = and i32 %sub.ptr.sub.i.i.i, 65535
  %add.ptr.i.i17.i = getelementptr i8, ptr %17, i32 %conv.i.i16.i
  %19 = ptrtoint ptr %add.ptr.i.i17.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %add.ptr.i.i17.i, align 1
  %message_id.i = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i17.i, i32 0, i32 1
  %20 = ptrtoint ptr %message_id.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 96, ptr %message_id.i, align 1
  %pipe_handle.i = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 7
  %21 = ptrtoint ptr %pipe_handle.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pipe_handle.i, align 2
  %pipe_handle3.i = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i17.i, i32 0, i32 2
  %23 = ptrtoint ptr %pipe_handle3.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %pipe_handle3.i, align 1
  %24 = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i17.i, i32 0, i32 3
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %24, align 1
  %call4.i = tail call i32 @pn_skb_send(ptr noundef %sk, ptr noundef nonnull %call.i.i.i, ptr noundef null) #8
  br label %pep_indicate.exit

pep_indicate.exit:                                ; preds = %if.end.i, %entry.pep_indicate.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end.i ], [ -12, %entry.pep_indicate.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pep_sock_close(ptr noundef %sk, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #8, !srcloc !63
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !64

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !60

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #8
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  tail call void @sk_common_release(ptr noundef %sk) #8
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sock_hold.exit.if.end5_crit_edge, label %if.then

sock_hold.exit.if.end5_crit_edge:                 ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %sock_hold.exit
  %sk_backlog_rcv = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 80
  %4 = ptrtoint ptr %sk_backlog_rcv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_backlog_rcv, align 4
  %cmp = icmp eq ptr %5, @pipe_do_rcv
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 188, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  br i1 %tobool.not.i.i, label %if.then2.if.end5_crit_edge, label %if.end.i.i

if.then2.if.end5_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end.i.i:                                       ; preds = %if.then2
  tail call void @skb_set_owner_w(ptr noundef nonnull %call.i.i.i, ptr noundef %sk) #8
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 188
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %9, i32 188
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i.i.i, label %if.end.i, label %do.body3.i.i.i, !prof !60

do.body3.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #8, !srcloc !62
  unreachable

if.end.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %len9.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %len9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len9.i.i.i, align 4
  %add.ptr.i16.i.i = getelementptr i8, ptr %7, i32 184
  %14 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i16.i.i, ptr %data.i.i.i, align 4
  %add.i17.i.i = add i32 %13, 4
  store i32 %add.i17.i.i, ptr %len9.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 18
  %15 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i16.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 19
  %17 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i.i.i, ptr %transport_header.i.i.i, align 2
  %conv.i.i3.i = and i32 %sub.ptr.sub.i.i.i, 65535
  %add.ptr.i.i4.i = getelementptr i8, ptr %16, i32 %conv.i.i3.i
  %18 = ptrtoint ptr %add.ptr.i.i4.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %add.ptr.i.i4.i, align 1
  br label %if.end5.sink.split

if.else:                                          ; preds = %if.then
  br i1 %tobool.not.i.i, label %if.else.if.end5_crit_edge, label %if.end.i.i33

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end.i.i33:                                     ; preds = %if.else
  tail call void @skb_set_owner_w(ptr noundef nonnull %call.i.i.i, ptr noundef %sk) #8
  %data.i.i.i27 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %19 = ptrtoint ptr %data.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i27, align 4
  %add.ptr.i.i.i28 = getelementptr i8, ptr %20, i32 188
  store ptr %add.ptr.i.i.i28, ptr %data.i.i.i27, align 4
  %tail.i.i.i29 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i.i.i29, align 8
  %add.ptr1.i.i.i30 = getelementptr i8, ptr %22, i32 188
  store ptr %add.ptr1.i.i.i30, ptr %tail.i.i.i29, align 8
  %data_len.i.i.i.i31 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 7
  %23 = ptrtoint ptr %data_len.i.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len.i.i.i.i31, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i.i.i32 = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i.i.i32, label %if.end.i48, label %do.body3.i.i.i34, !prof !60

do.body3.i.i.i34:                                 ; preds = %if.end.i.i33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #8, !srcloc !62
  unreachable

if.end.i48:                                       ; preds = %if.end.i.i33
  call void @__sanitizer_cov_trace_pc() #10
  %len9.i.i.i35 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %len9.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len9.i.i.i35, align 4
  %add.ptr.i16.i.i36 = getelementptr i8, ptr %20, i32 184
  %27 = ptrtoint ptr %data.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.i16.i.i36, ptr %data.i.i.i27, align 4
  %add.i17.i.i37 = add i32 %26, 4
  store i32 %add.i17.i.i37, ptr %len9.i.i.i35, align 4
  %head.i.i.i38 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 18
  %28 = ptrtoint ptr %head.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i.i.i38, align 8
  %sub.ptr.lhs.cast.i.i.i39 = ptrtoint ptr %add.ptr.i16.i.i36 to i32
  %sub.ptr.rhs.cast.i.i.i40 = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i.i.i41 = sub i32 %sub.ptr.lhs.cast.i.i.i39, %sub.ptr.rhs.cast.i.i.i40
  %conv.i.i.i42 = trunc i32 %sub.ptr.sub.i.i.i41 to i16
  %transport_header.i.i.i43 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 19
  %30 = ptrtoint ptr %transport_header.i.i.i43 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i.i.i42, ptr %transport_header.i.i.i43, align 2
  %conv.i.i17.i = and i32 %sub.ptr.sub.i.i.i41, 65535
  %add.ptr.i.i18.i = getelementptr i8, ptr %29, i32 %conv.i.i17.i
  %31 = ptrtoint ptr %add.ptr.i.i18.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 66, ptr %add.ptr.i.i18.i, align 1
  br label %if.end5.sink.split

if.end5.sink.split:                               ; preds = %if.end.i48, %if.end.i
  %add.ptr.i.i18.i.sink54 = phi ptr [ %add.ptr.i.i18.i, %if.end.i48 ], [ %add.ptr.i.i4.i, %if.end.i ]
  %.sink = phi i8 [ 66, %if.end.i48 ], [ 2, %if.end.i ]
  %message_id.i44 = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i18.i.sink54, i32 0, i32 1
  %32 = ptrtoint ptr %message_id.i44 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %.sink, ptr %message_id.i44, align 1
  %pipe_handle.i45 = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 7
  %33 = ptrtoint ptr %pipe_handle.i45 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pipe_handle.i45, align 2
  %pipe_handle3.i46 = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i18.i.sink54, i32 0, i32 2
  %35 = ptrtoint ptr %pipe_handle3.i46 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %pipe_handle3.i46, align 1
  %36 = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i18.i.sink54, i32 0, i32 3
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %36, align 1
  %call4.i47 = tail call i32 @pn_skb_send(ptr noundef %sk, ptr noundef nonnull %call.i.i.i, ptr noundef null) #8
  br label %if.end5

if.end5:                                          ; preds = %if.end5.sink.split, %if.else.if.end5_crit_edge, %if.then2.if.end5_crit_edge, %sock_hold.exit.if.end5_crit_edge
  %38 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %38)
  store volatile i8 7, ptr %skc_state, align 2
  %ifindex8 = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 5
  %39 = ptrtoint ptr %ifindex8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ifindex8, align 4
  store i32 0, ptr %ifindex8, align 4
  tail call void @release_sock(ptr noundef %sk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool10.not = icmp eq i32 %40, 0
  br i1 %tobool10.not, label %if.end5.if.end12_crit_edge, label %if.then11

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gprs_detach(ptr noundef %sk) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end5.if.end12_crit_edge
  %call.i.i.i.i.i.i50 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #8
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #8, !srcloc !66
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i51 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i51, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !60

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #8
  br label %sock_put.exit

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @sk_free(ptr noundef %sk) #8
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pep_sock_connect(ptr noundef %sk, ptr nocapture noundef readnone %addr, i32 noundef %len) #0 align 64 {
entry:
  %data = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %data, align 4
  %pipe_handle = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 7
  %1 = ptrtoint ptr %pipe_handle to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pipe_handle, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %cmp = icmp eq i8 %2, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %pipe_handle to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %pipe_handle, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %init_enable = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 11
  %4 = ptrtoint ptr %init_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %init_enable, align 2
  %call3 = call fastcc i32 @pipe_handler_request(ptr noundef %sk, i8 noundef zeroext 64, i8 noundef zeroext %5, ptr noundef nonnull %data, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %pipe_handle to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %pipe_handle, align 2
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %7 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %7)
  store volatile i8 2, ptr %skc_state, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #8
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pep_sock_accept(ptr noundef %sk, i32 noundef %flags, ptr noundef %errp, i1 noundef zeroext %kern) #0 align 64 {
entry:
  %type = alloca i8, align 1
  %buf = alloca [1 x i8], align 1
  %len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 2048
  %call1 = tail call ptr @skb_recv_datagram(ptr noundef %sk, i32 noundef 0, i32 noundef %and, ptr noundef %errp) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup81_crit_edge, label %if.end

entry.cleanup81_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup81

if.end:                                           ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp.not = icmp eq i8 %1, 10
  br i1 %cmp.not, label %if.end4, label %if.end.drop_crit_edge

if.end.drop_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

if.end4:                                          ; preds = %if.end
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 53
  %2 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sk_ack_backlog.i, align 4
  %sub.i = add i32 %3, -1
  store volatile i32 %sub.i, ptr %sk_ack_backlog.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 6
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 8
  br i1 %cmp.not.i, label %if.end.i, label %if.end4.if.end7_crit_edge, !prof !64

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp3.i = icmp ult i32 %5, 8
  br i1 %cmp3.i, label %if.end.i.drop_crit_edge, label %pskb_may_pull.exit, !prof !64

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i164 = sub nuw nsw i32 8, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %call1, i32 noundef %sub.i164) #8
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_crit_edge, label %pskb_may_pull.exit.if.end7_crit_edge

pskb_may_pull.exit.if.end7_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

pskb_may_pull.exit.drop_crit_edge:                ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

if.end7:                                          ; preds = %pskb_may_pull.exit.if.end7_crit_edge, %if.end4.if.end7_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15, i32 0, i32 19
  %10 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %11 to i32
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %conv.i.i
  %pipe_handle9 = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %pipe_handle9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pipe_handle9, align 1
  %14 = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %switch155 = icmp ult i8 %16, 2
  br i1 %switch155, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call fastcc i32 @pep_reply(ptr noundef %sk, ptr noundef nonnull %call1, i8 noundef zeroext 1, ptr noundef nonnull @pep_reject_conn.data, i32 noundef 4, i32 noundef 3264) #8
  br label %drop

sw.epilog:                                        ; preds = %if.end7
  %data = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %data, align 1
  %conv13 = zext i8 %18 to i16
  %shl = shl nuw i16 %conv13, 8
  %arrayidx16 = getelementptr %struct.pnpipehdr, ptr %add.ptr.i.i, i32 1, i32 3
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp18.not206 = icmp eq i8 %20, 0
  br i1 %cmp18.not206, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  br label %while.body

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %sw.epilog.while.body_crit_edge
  %aligned.0209 = phi i8 [ %aligned.1, %cleanup.while.body_crit_edge ], [ 0, %sw.epilog.while.body_crit_edge ]
  %n_sb.0208 = phi i8 [ %dec, %cleanup.while.body_crit_edge ], [ %20, %sw.epilog.while.body_crit_edge ]
  %peer_type.0207 = phi i16 [ %peer_type.1, %cleanup.while.body_crit_edge ], [ %shl, %sw.epilog.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type) #8
  %21 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %type, align 1, !annotation !68
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #8
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %buf, align 1, !annotation !68
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #8
  %23 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %len, align 1
  %call21 = call fastcc ptr @pep_get_sb(ptr noundef nonnull %call1, ptr noundef nonnull %type, ptr noundef nonnull %len, ptr noundef nonnull %buf)
  %cmp22 = icmp eq ptr %call21, null
  br i1 %cmp22, label %while.body.cleanup.thread_crit_edge, label %if.end25

while.body.cleanup.thread_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end25:                                         ; preds = %while.body
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %type, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %25, label %if.end25.cleanup_crit_edge [
    i8 1, label %sw.bb27
    i8 6, label %sw.bb38
  ]

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb27:                                          ; preds = %if.end25
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp29 = icmp eq i8 %28, 0
  br i1 %cmp29, label %sw.bb27.cleanup.thread_crit_edge, label %if.end32

sw.bb27.cleanup.thread_crit_edge:                 ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end32:                                         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  %29 = and i16 %peer_type.0207, -256
  %30 = ptrtoint ptr %call21 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %call21, align 1
  %conv36 = zext i8 %31 to i16
  %or = or i16 %29, %conv36
  br label %cleanup

sw.bb38:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %call21 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %call21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp41 = icmp ne i8 %33, 0
  %conv43 = zext i1 %cmp41 to i8
  br label %cleanup

cleanup.thread:                                   ; preds = %sw.bb27.cleanup.thread_crit_edge, %while.body.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type) #8
  br label %drop

cleanup:                                          ; preds = %sw.bb38, %if.end32, %if.end25.cleanup_crit_edge
  %peer_type.1 = phi i16 [ %peer_type.0207, %if.end25.cleanup_crit_edge ], [ %peer_type.0207, %sw.bb38 ], [ %or, %if.end32 ]
  %aligned.1 = phi i8 [ %aligned.0209, %if.end25.cleanup_crit_edge ], [ %conv43, %sw.bb38 ], [ %aligned.0209, %if.end32 ]
  %dec = add i8 %n_sb.0208, -1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type) #8
  %cmp18.not = icmp eq i8 %dec, 0
  br i1 %cmp18.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %sw.epilog.while.end_crit_edge
  %peer_type.0.lcssa = phi i16 [ %shl, %sw.epilog.while.end_crit_edge ], [ %peer_type.1, %cleanup.while.end_crit_edge ]
  %aligned.0.lcssa = phi i8 [ 0, %sw.epilog.while.end_crit_edge ], [ %aligned.1, %cleanup.while.end_crit_edge ]
  %hlist = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 1
  %34 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hlist, align 4
  %tobool.not.i = icmp eq ptr %35, null
  %add.ptr.i = getelementptr i8, ptr %35, i32 -84
  %tobool2.not4954.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not49.i = or i1 %tobool.not.i, %tobool2.not4954.i
  br i1 %tobool2.not49.i, label %while.end.if.end54_crit_edge, label %while.end.for.body.i_crit_edge

while.end.for.body.i_crit_edge:                   ; preds = %while.end
  br label %for.body.i

while.end.if.end54_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %while.end.for.body.i_crit_edge
  %sknode.050.i = phi ptr [ %add.ptr25.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %while.end.for.body.i_crit_edge ]
  %sobject.i = getelementptr inbounds %struct.pn_sock, ptr %sknode.050.i, i32 0, i32 1
  %36 = ptrtoint ptr %sobject.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %sobject.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %37)
  %cmp.not.i166 = icmp eq i16 %37, -1
  br i1 %cmp.not.i166, label %if.end.i167, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i167:                                      ; preds = %for.body.i
  %pipe_handle6.i = getelementptr inbounds %struct.pep_sock, ptr %sknode.050.i, i32 0, i32 7
  %38 = ptrtoint ptr %pipe_handle6.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %pipe_handle6.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %13)
  %cmp9.not.i = icmp eq i8 %39, %13
  br i1 %cmp9.not.i, label %if.end12.i, label %if.end.i167.for.inc.i_crit_edge

if.end.i167.for.inc.i_crit_edge:                  ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end12.i:                                       ; preds = %if.end.i167
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sknode.050.i, i32 0, i32 4
  %40 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %41)
  %cmp14.i168 = icmp eq i8 %41, 8
  br i1 %cmp14.i168, label %if.end12.i.for.inc.i_crit_edge, label %if.end17.i

if.end12.i.for.inc.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end17.i:                                       ; preds = %if.end12.i
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %sknode.050.i, i32 0, i32 19
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #8
  %42 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #8, !srcloc !63
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end17.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !64

if.end17.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end17.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %43 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %.not.i.i.i.i.i = icmp sgt i32 %43, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.then52_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !60

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.then52_crit_edge:            ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end17.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end17.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %if.then52

for.inc.i:                                        ; preds = %if.end12.i.for.inc.i_crit_edge, %if.end.i167.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %44 = getelementptr inbounds %struct.sock_common, ptr %sknode.050.i, i32 0, i32 15
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %tobool21.not.i = icmp eq ptr %46, null
  %add.ptr25.i = getelementptr i8, ptr %46, i32 -84
  %tobool2.not56.i = icmp eq ptr %add.ptr25.i, null
  %tobool2.not.i = or i1 %tobool21.not.i, %tobool2.not56.i
  br i1 %tobool2.not.i, label %for.inc.i.if.end54_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end54_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then52:                                        ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.then52_crit_edge
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !65
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #8
  %47 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #8, !srcloc !66
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %if.then52.__sock_put.exit_crit_edge, !prof !64

if.then52.__sock_put.exit_crit_edge:              ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sock_put.exit

if.then3.i.i.i:                                   ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #8
  br label %__sock_put.exit

__sock_put.exit:                                  ; preds = %if.then3.i.i.i, %if.then52.__sock_put.exit_crit_edge
  %call.i169 = call fastcc i32 @pep_reply(ptr noundef %sk, ptr noundef nonnull %call1, i8 noundef zeroext 5, ptr noundef nonnull @pep_reject_conn.data, i32 noundef 4, i32 noundef 3264) #8
  br label %drop

if.end54:                                         ; preds = %for.inc.i.if.end54_crit_edge, %while.end.if.end54_crit_edge
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %48 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %skc_net.i, align 4
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %50 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %skc_prot, align 8
  %conv58 = zext i1 %kern to i32
  %call59 = call ptr @sk_alloc(ptr noundef %49, i32 noundef 35, i32 noundef 3264, ptr noundef %51, i32 noundef %conv58) #8
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %call.i170 = call fastcc i32 @pep_reply(ptr noundef %sk, ptr noundef nonnull %call1, i8 noundef zeroext 6, ptr noundef nonnull @pep_reject_conn.data, i32 noundef 4, i32 noundef 3264) #8
  br label %drop

if.end63:                                         ; preds = %if.end54
  call void @sock_init_data(ptr noundef null, ptr noundef nonnull %call59) #8
  %skc_state65 = getelementptr inbounds %struct.sock_common, ptr %call59, i32 0, i32 4
  %52 = ptrtoint ptr %skc_state65 to i32
  call void @__asan_store1_noabort(i32 %52)
  store volatile i8 3, ptr %skc_state65, align 2
  %sk_backlog_rcv = getelementptr inbounds %struct.sock, ptr %call59, i32 0, i32 80
  %53 = ptrtoint ptr %sk_backlog_rcv to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @pipe_do_rcv, ptr %sk_backlog_rcv, align 4
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %54 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %sk_protocol, align 4
  %sk_protocol66 = getelementptr inbounds %struct.sock, ptr %call59, i32 0, i32 46
  %56 = ptrtoint ptr %sk_protocol66 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %sk_protocol66, align 4
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %call59, i32 0, i32 82
  %57 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @pipe_destruct, ptr %sk_destruct, align 4
  %58 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15, i32 0, i32 20
  %60 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i171 = zext i16 %61 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %59, i32 %conv.i.i.i171
  %62 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %add.ptr.i.i.i, align 1
  %pn_robj.i = getelementptr inbounds %struct.phonethdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %64 = ptrtoint ptr %pn_robj.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %pn_robj.i, align 1
  %pn_res.i = getelementptr inbounds %struct.phonethdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %pn_res.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %pn_res.i, align 1
  %pn_sdev.i = getelementptr inbounds %struct.phonethdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %pn_sdev.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %pn_sdev.i, align 1
  %pn_sobj.i = getelementptr inbounds %struct.phonethdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %70 = ptrtoint ptr %pn_sobj.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %pn_sobj.i, align 1
  %conv.i = zext i8 %65 to i16
  %conv.i.i183 = zext i8 %63 to i16
  %shl.i.i = shl nuw i16 %conv.i.i183, 8
  %or.i.i = or i16 %shl.i.i, %conv.i
  %sobject = getelementptr inbounds %struct.pn_sock, ptr %call59, i32 0, i32 1
  %72 = ptrtoint ptr %sobject to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %or.i.i, ptr %sobject, align 8
  %conv.i186 = zext i8 %71 to i16
  %conv.i.i187 = zext i8 %69 to i16
  %shl.i.i188 = shl nuw i16 %conv.i.i187, 8
  %or.i.i189 = or i16 %shl.i.i188, %conv.i186
  %dobject = getelementptr inbounds %struct.pn_sock, ptr %call59, i32 0, i32 2
  %73 = ptrtoint ptr %dobject to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %or.i.i189, ptr %dobject, align 2
  %resource = getelementptr inbounds %struct.pn_sock, ptr %call59, i32 0, i32 3
  %74 = ptrtoint ptr %resource to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %67, ptr %resource, align 4
  %skc_refcnt.i156 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i156, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i156, i32 1, i32 3, i32 1) #8
  %75 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i156, ptr %skc_refcnt.i156, i32 1, ptr elementtype(i32) %skc_refcnt.i156) #8, !srcloc !63
  %asmresult.i.i.i.i.i.i157 = extractvalue { i32, i32, i32 } %75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i157)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i157, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end63.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !64

if.end63.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end63
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i157, 1
  %76 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i157
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %76)
  %.not.i.i.i.i = icmp sgt i32 %76, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !60

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end63.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end63.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i156, i32 noundef %.sink.i.i.i.i) #8
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %listener = getelementptr inbounds %struct.pep_sock, ptr %call59, i32 0, i32 2
  %77 = ptrtoint ptr %listener to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %sk, ptr %listener, align 4
  %ctrlreq_queue = getelementptr inbounds %struct.pep_sock, ptr %call59, i32 0, i32 3
  %lock.i = getelementptr inbounds %struct.pep_sock, ptr %call59, i32 0, i32 3, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %78 = ptrtoint ptr %ctrlreq_queue to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %ctrlreq_queue, ptr %ctrlreq_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.pep_sock, ptr %call59, i32 0, i32 3, i32 0, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %ctrlreq_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.pep_sock, ptr %call59, i32 0, i32 3, i32 1
  %80 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %qlen.i.i, align 4
  %pipe_handle73 = getelementptr inbounds %struct.pep_sock, ptr %call59, i32 0, i32 7
  %81 = ptrtoint ptr %pipe_handle73 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %13, ptr %pipe_handle73, align 2
  %tx_credits = getelementptr inbounds %struct.pep_sock, ptr %call59, i32 0, i32 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tx_credits, i32 noundef 4) #8
  %82 = ptrtoint ptr %tx_credits to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile i32 0, ptr %tx_credits, align 4
  %ifindex = getelementptr inbounds %struct.pep_sock, ptr %call59, i32 0, i32 5
  %83 = ptrtoint ptr %ifindex to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %ifindex, align 4
  %peer_type74 = getelementptr inbounds %struct.pep_sock, ptr %call59, i32 0, i32 6
  %84 = ptrtoint ptr %peer_type74 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %peer_type.0.lcssa, ptr %peer_type74, align 8
  %rx_credits = getelementptr inbounds %struct.pep_sock, ptr %call59, i32 0, i32 8
  %85 = ptrtoint ptr %rx_credits to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %rx_credits, align 1
  %tx_fc = getelementptr inbounds %struct.pep_sock, ptr %call59, i32 0, i32 10
  %86 = ptrtoint ptr %tx_fc to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %tx_fc, align 1
  %rx_fc = getelementptr inbounds %struct.pep_sock, ptr %call59, i32 0, i32 9
  %87 = ptrtoint ptr %rx_fc to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %rx_fc, align 4
  %init_enable = getelementptr inbounds %struct.pep_sock, ptr %call59, i32 0, i32 11
  %88 = ptrtoint ptr %init_enable to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %16, ptr %init_enable, align 2
  %aligned75 = getelementptr inbounds %struct.pep_sock, ptr %call59, i32 0, i32 12
  %89 = ptrtoint ptr %aligned75 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %aligned.0.lcssa, ptr %aligned75, align 1
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 175) #8
  %call.i190 = call fastcc i32 @pep_reply(ptr noundef nonnull %call59, ptr noundef nonnull %call1, i8 noundef zeroext 0, ptr noundef nonnull @pep_accept_conn.data, i32 noundef 20, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i190)
  %tobool77.not = icmp eq i32 %call.i190, 0
  br i1 %tobool77.not, label %if.end79, label %if.then78

if.then78:                                        ; preds = %sock_hold.exit
  %call.i.i.i.i.i159 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i156, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !65
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i156, i32 1, i32 3, i32 1) #8
  %90 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i156, ptr %skc_refcnt.i156, i32 1, ptr elementtype(i32) %skc_refcnt.i156) #8, !srcloc !66
  %asmresult.i.i.i.i.i.i160 = extractvalue { i32, i32, i32 } %90, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i160)
  %cmp.i.i.i161 = icmp slt i32 %asmresult.i.i.i.i.i.i160, 2
  br i1 %cmp.i.i.i161, label %if.then3.i.i.i162, label %if.then78.__sock_put.exit163_crit_edge, !prof !64

if.then78.__sock_put.exit163_crit_edge:           ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sock_put.exit163

if.then3.i.i.i162:                                ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i156, i32 noundef 4) #8
  br label %__sock_put.exit163

__sock_put.exit163:                               ; preds = %if.then3.i.i.i162, %if.then78.__sock_put.exit163_crit_edge
  call fastcc void @sock_put(ptr noundef nonnull %call59)
  br label %drop

if.end79:                                         ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @sk_add_node(ptr noundef nonnull %call59, ptr noundef %hlist)
  br label %drop

drop:                                             ; preds = %if.end79, %__sock_put.exit163, %if.then61, %__sock_put.exit, %cleanup.thread, %sw.default, %pskb_may_pull.exit.drop_crit_edge, %if.end.i.drop_crit_edge, %if.end.drop_crit_edge
  %newsk.0 = phi ptr [ null, %sw.default ], [ null, %__sock_put.exit ], [ null, %__sock_put.exit163 ], [ %call59, %if.end79 ], [ null, %if.then61 ], [ null, %pskb_may_pull.exit.drop_crit_edge ], [ null, %if.end.drop_crit_edge ], [ null, %cleanup.thread ], [ null, %if.end.i.drop_crit_edge ]
  %err.0 = phi i32 [ -71, %sw.default ], [ -71, %__sock_put.exit ], [ %call.i190, %__sock_put.exit163 ], [ 0, %if.end79 ], [ -105, %if.then61 ], [ -71, %pskb_may_pull.exit.drop_crit_edge ], [ -22, %if.end.drop_crit_edge ], [ -71, %cleanup.thread ], [ -71, %if.end.i.drop_crit_edge ]
  call void @release_sock(ptr noundef %sk) #8
  call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #8
  %91 = ptrtoint ptr %errp to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %err.0, ptr %errp, align 4
  br label %cleanup81

cleanup81:                                        ; preds = %drop, %entry.cleanup81_crit_edge
  %retval.0 = phi ptr [ %newsk.0, %drop ], [ null, %entry.cleanup81_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pep_ioctl(ptr noundef %sk, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 21531, label %sw.bb
    i32 35309, label %sw.bb19
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %1 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %2)
  %cmp = icmp eq i8 %2, 10
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %if.end

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #8
  %3 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %ctrlreq_queue = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 3
  %7 = ptrtoint ptr %ctrlreq_queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrlreq_queue, align 4
  %cmp.i = icmp eq ptr %8, %ctrlreq_queue
  br i1 %cmp.i, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end16.sink.split_crit_edge

land.lhs.true.if.end16.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.sink.split

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %9 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i55 = icmp eq ptr %10, %sk_receive_queue
  br i1 %cmp.i55, label %if.else.if.end16_crit_edge, label %if.else.if.end16.sink.split_crit_edge

if.else.if.end16.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.sink.split

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end16.sink.split:                              ; preds = %if.else.if.end16.sink.split_crit_edge, %land.lhs.true.if.end16.sink.split_crit_edge
  %.sink = phi ptr [ %8, %land.lhs.true.if.end16.sink.split_crit_edge ], [ %10, %if.else.if.end16.sink.split_crit_edge ]
  %len13 = getelementptr inbounds %struct.sk_buff, ptr %.sink, i32 0, i32 6
  %11 = ptrtoint ptr %len13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len13, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end16.sink.split, %if.else.if.end16_crit_edge
  %answ.0 = phi i32 [ 0, %if.else.if.end16_crit_edge ], [ %12, %if.end16.sink.split ]
  tail call void @release_sock(ptr noundef %sk) #8
  %13 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 941) #8
  %14 = tail call i32 @llvm.read_register.i32(metadata !46) #8
  %and.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !69
  %and.i = and i32 %16, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #8, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  %17 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %13, i32 %answ.0, i32 -1226833921) #8, !srcloc !72
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #8, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #8
  %skc_state21 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %18 = ptrtoint ptr %skc_state21 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %skc_state21, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp23 = icmp eq i8 %19, 2
  br i1 %cmp23, label %sw.bb19.if.end40_crit_edge, label %if.else26

sw.bb19.if.end40_crit_edge:                       ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.else26:                                        ; preds = %sw.bb19
  %20 = ptrtoint ptr %skc_state21 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load volatile i8, ptr %skc_state21, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp30 = icmp eq i8 %21, 1
  br i1 %cmp30, label %if.else26.if.end40_crit_edge, label %if.else33

if.else26.if.end40_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.else33:                                        ; preds = %if.else26
  %sobject = getelementptr inbounds %struct.pn_sock, ptr %sk, i32 0, i32 1
  %22 = ptrtoint ptr %sobject to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sobject, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool34.not = icmp eq i16 %23, 0
  br i1 %tobool34.not, label %if.else33.if.end40_crit_edge, label %if.else36

if.else33.if.end40_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.else36:                                        ; preds = %if.else33
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 188, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.else36.if.end40_crit_edge, label %if.end.i.i.i

if.else36.if.end40_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.end.i.i.i:                                     ; preds = %if.else36
  tail call void @skb_set_owner_w(ptr noundef nonnull %call.i.i.i.i, ptr noundef %sk) #8
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %24 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %25, i32 188
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %26 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %27, i32 188
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 7
  %28 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not.i.i.i.i = icmp eq i32 %29, 0
  br i1 %tobool.i.not.i.i.i.i, label %pipe_handler_request.exit.i, label %do.body3.i.i.i.i, !prof !60

do.body3.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #8, !srcloc !62
  unreachable

pipe_handler_request.exit.i:                      ; preds = %if.end.i.i.i
  %len9.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 6
  %30 = ptrtoint ptr %len9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len9.i.i.i.i, align 4
  %add.ptr.i16.i.i.i = getelementptr i8, ptr %25, i32 184
  %32 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr.i16.i.i.i, ptr %data.i.i.i.i, align 4
  %add.i17.i.i.i = add i32 %31, 4
  store i32 %add.i17.i.i.i, ptr %len9.i.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 18
  %33 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr.i16.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %conv.i.i.i.i = trunc i32 %sub.ptr.sub.i.i.i.i to i16
  %transport_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 15, i32 0, i32 19
  %35 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i.i.i.i, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i17.i.i = and i32 %sub.ptr.sub.i.i.i.i, 65535
  %add.ptr.i.i18.i.i = getelementptr i8, ptr %34, i32 %conv.i.i17.i.i
  %36 = ptrtoint ptr %add.ptr.i.i18.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 70, ptr %add.ptr.i.i18.i.i, align 1
  %message_id.i.i = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i18.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %message_id.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 70, ptr %message_id.i.i, align 1
  %pipe_handle.i.i = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 7
  %38 = ptrtoint ptr %pipe_handle.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %pipe_handle.i.i, align 2
  %pipe_handle3.i.i = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i18.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %pipe_handle3.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %pipe_handle3.i.i, align 1
  %41 = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i18.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %41, align 1
  %call4.i.i = tail call i32 @pn_skb_send(ptr noundef %sk, ptr noundef nonnull %call.i.i.i.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %pipe_handler_request.exit.i.if.end40_crit_edge

pipe_handler_request.exit.i.if.end40_crit_edge:   ; preds = %pipe_handler_request.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.end.i:                                         ; preds = %pipe_handler_request.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %skc_state21 to i32
  call void @__asan_store1_noabort(i32 %43)
  store volatile i8 2, ptr %skc_state21, align 2
  br label %if.end40

if.end40:                                         ; preds = %if.end.i, %pipe_handler_request.exit.i.if.end40_crit_edge, %if.else36.if.end40_crit_edge, %if.else33.if.end40_crit_edge, %if.else26.if.end40_crit_edge, %sw.bb19.if.end40_crit_edge
  %ret.0 = phi i32 [ -16, %sw.bb19.if.end40_crit_edge ], [ -106, %if.else26.if.end40_crit_edge ], [ -99, %if.else33.if.end40_crit_edge ], [ 0, %if.end.i ], [ %call4.i.i, %pipe_handler_request.exit.i.if.end40_crit_edge ], [ -12, %if.else36.if.end40_crit_edge ]
  tail call void @release_sock(ptr noundef %sk) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end40, %if.end16, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.1 = phi i32 [ -515, %entry.sw.epilog_crit_edge ], [ %ret.0, %if.end40 ], [ %17, %if.end16 ], [ -22, %sw.bb.sw.epilog_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pep_init(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 82
  %0 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @pipe_destruct, ptr %sk_destruct, align 4
  %hlist = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 1
  %1 = ptrtoint ptr %hlist to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %hlist, align 8
  %listener = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 2
  %2 = ptrtoint ptr %listener to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %listener, align 4
  %ctrlreq_queue = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 3
  %lock.i = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %3 = ptrtoint ptr %ctrlreq_queue to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ctrlreq_queue, ptr %ctrlreq_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 3, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ctrlreq_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qlen.i.i, align 4
  %tx_credits = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_credits, i32 noundef 4) #8
  %6 = ptrtoint ptr %tx_credits to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %tx_credits, align 4
  %ifindex = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 5
  %7 = ptrtoint ptr %ifindex to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ifindex, align 4
  %peer_type = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 6
  %8 = ptrtoint ptr %peer_type to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %peer_type, align 8
  %pipe_handle = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 7
  %9 = ptrtoint ptr %pipe_handle to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %pipe_handle, align 2
  %rx_credits = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 8
  %10 = ptrtoint ptr %rx_credits to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %rx_credits, align 1
  %tx_fc = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 10
  %11 = ptrtoint ptr %tx_fc to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %tx_fc, align 1
  %rx_fc = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 9
  %12 = ptrtoint ptr %rx_fc to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %rx_fc, align 4
  %init_enable = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 11
  %13 = ptrtoint ptr %init_enable to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %init_enable, align 2
  %aligned = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 12
  %14 = ptrtoint ptr %aligned to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %aligned, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pep_setsockopt(ptr noundef %sk, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 275, i32 %level)
  %cmp.not = icmp eq i32 %level, 275
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %optlen)
  %cmp1 = icmp ugt i32 %optlen, 3
  br i1 %cmp1, label %if.then2, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then2:                                         ; preds = %if.end
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %1 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then2
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #8
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i.i, label %if.then.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i.i.if.then11.i.i.i.i_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 4, i32 -1226833920) #11, !srcloc !73
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i1.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i1.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !60

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val, i32 noundef 4) #8
  %3 = call i32 @llvm.read_register.i32(metadata !46) #8
  %and.i.i.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #6, !srcloc !69
  %and.i.i.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #8, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val, ptr noundef %1, i32 noundef 4) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #8, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end6_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !60

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end6_crit_edge:                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.03.i.i.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.then.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 4, %res.03.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %val, i32 %sub.i.i.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.03.i.i.i.i)
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %1, align 1
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #8
  %10 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %optname, label %if.end6.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb30
    i32 4, label %sw.bb43
  ]

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end6
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %switch = icmp ult i32 %12, 2
  br i1 %switch, label %if.end10, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end10:                                         ; preds = %sw.bb
  %ifindex = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 5
  %13 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool11.not = icmp ne i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  %cmp15 = xor i1 %tobool12.not, %tobool11.not
  br i1 %cmp15, label %if.end10.sw.epilog_crit_edge, label %if.end17

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end17:                                         ; preds = %if.end10
  %call18 = call zeroext i1 @capable(i32 noundef 12) #8
  br i1 %call18, label %if.end20, label %if.end17.sw.epilog_crit_edge

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end20:                                         ; preds = %if.end17
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool21.not = icmp eq i32 %16, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end20
  call void @release_sock(ptr noundef %sk) #8
  %call23 = call i32 @gprs_attach(ptr noundef %sk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp sgt i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then25:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %ifindex to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call23, ptr %ifindex, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %ifindex to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %ifindex, align 4
  call void @release_sock(ptr noundef %sk) #8
  call void @gprs_detach(ptr noundef %sk) #8
  br label %cleanup

sw.bb30:                                          ; preds = %if.end6
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %19 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %20)
  %cmp31 = icmp eq i8 %20, 7
  br i1 %cmp31, label %land.lhs.true33, label %sw.bb30.sw.epilog_crit_edge

sw.bb30.sw.epilog_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true33:                                  ; preds = %sw.bb30
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %22)
  %23 = icmp ult i32 %22, 255
  br i1 %23, label %if.then39, label %land.lhs.true33.sw.epilog_crit_edge

land.lhs.true33.sw.epilog_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then39:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #10
  %conv40 = trunc i32 %22 to i8
  %pipe_handle = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 7
  %24 = ptrtoint ptr %pipe_handle to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv40, ptr %pipe_handle, align 2
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool44 = icmp ne i32 %26, 0
  %conv49 = zext i1 %tobool44 to i8
  %init_enable = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 11
  %27 = ptrtoint ptr %init_enable to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv49, ptr %init_enable, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb43, %if.then39, %land.lhs.true33.sw.epilog_crit_edge, %sw.bb30.sw.epilog_crit_edge, %if.end17.sw.epilog_crit_edge, %if.end10.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end6.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %sw.bb43 ], [ 0, %if.then39 ], [ 0, %if.end10.sw.epilog_crit_edge ], [ -22, %sw.bb.sw.epilog_crit_edge ], [ -1, %if.end17.sw.epilog_crit_edge ], [ -22, %land.lhs.true33.sw.epilog_crit_edge ], [ -22, %sw.bb30.sw.epilog_crit_edge ], [ -92, %if.end6.sw.epilog_crit_edge ]
  call void @release_sock(ptr noundef %sk) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.else, %if.then25, %if.then22.cleanup_crit_edge, %if.then11.i.i.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -92, %entry.cleanup_crit_edge ], [ %err.0, %sw.epilog ], [ 0, %if.then25 ], [ %call23, %if.then22.cleanup_crit_edge ], [ 0, %if.else ], [ -14, %if.then11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pep_getsockopt(ptr nocapture noundef readonly %sk, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 275, i32 %level)
  %cmp.not = icmp eq i32 %level, 275
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1050) #8
  %0 = tail call i32 @llvm.read_register.i32(metadata !46) #8
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !69
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #8, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #8, !srcloc !74
  %asmresult = extractvalue { i32, i32 } %3, 0
  %asmresult2 = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #8, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %optname, label %if.end5.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
    i32 3, label %sw.bb9
    i32 4, label %sw.bb14
  ]

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %ifindex = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 5
  %5 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not = icmp ne i32 %6, 0
  %cond = zext i1 %tobool6.not to i32
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %ifindex8 = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 5
  %7 = ptrtoint ptr %ifindex8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ifindex8, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end5
  %pipe_handle = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 7
  %9 = ptrtoint ptr %pipe_handle to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pipe_handle, align 2
  %conv = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %cmp10 = icmp eq i8 %10, -1
  br i1 %cmp10, label %sw.bb9.cleanup_crit_edge, label %sw.bb9.sw.epilog_crit_edge

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb14:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %init_enable = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 11
  %11 = ptrtoint ptr %init_enable to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %init_enable, align 2
  %conv15 = zext i8 %12 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb9.sw.epilog_crit_edge, %sw.bb7, %sw.bb
  %val.0 = phi i32 [ %conv15, %sw.bb14 ], [ %conv, %sw.bb9.sw.epilog_crit_edge ], [ %8, %sw.bb7 ], [ %cond, %sw.bb ]
  %13 = tail call i32 @llvm.umin.i32(i32 %asmresult2, i32 4)
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1077) #8
  %14 = tail call i32 @llvm.read_register.i32(metadata !46) #8
  %and.i.i.i60 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i60 to ptr
  %cpu_domain.i.i61 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i61) #6, !srcloc !69
  %and.i62 = and i32 %16, -13
  %or.i63 = or i32 %and.i62, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i63) #8, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  %17 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %13, i32 -1226833921) #8, !srcloc !75
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #8, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool29.not = icmp eq i32 %17, 0
  br i1 %tobool29.not, label %if.end31, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1079) #8
  %18 = tail call i32 @llvm.read_register.i32(metadata !46) #8
  %and.i.i.i64 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i64 to ptr
  %cpu_domain.i.i65 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i65) #6, !srcloc !69
  %and.i66 = and i32 %20, -13
  %or.i67 = or i32 %and.i66, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i67) #8, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  %21 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i32 %val.0, i32 -1226833921) #8, !srcloc !76
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #8, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool47.not = icmp eq i32 %21, 0
  %. = select i1 %tobool47.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %sw.epilog.cleanup_crit_edge, %sw.bb9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -92, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -22, %sw.bb9.cleanup_crit_edge ], [ -92, %if.end5.cleanup_crit_edge ], [ -14, %sw.epilog.cleanup_crit_edge ], [ %., %if.end31 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pep_sendmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len) #0 align 64 {
entry:
  %timeo = alloca i32, align 4
  %err = alloca i32, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo) #8
  %0 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %timeo, align 4, !annotation !68
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %1 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msg_flags, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #8
  %3 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %err, align 4, !annotation !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %len)
  %cmp = icmp ugt i32 %len, 65535
  br i1 %cmp, label %entry.cleanup103_crit_edge, label %if.end

entry.cleanup103_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup103

if.end:                                           ; preds = %entry
  %4 = and i32 %2, -16449
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %4)
  %.not = icmp eq i32 %4, 128
  br i1 %.not, label %if.end6, label %if.end.cleanup103_crit_edge

if.end.cleanup103_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup103

if.end6:                                          ; preds = %if.end
  %add = add nuw nsw i32 %len, 188
  %and7 = and i32 %2, 64
  %call8 = call ptr @sock_alloc_send_skb(ptr noundef %sk, i32 noundef %add, i32 noundef %and7, ptr noundef nonnull %err) #8
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %err, align 4
  br label %cleanup103

if.end11:                                         ; preds = %if.end6
  %aligned = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 12
  %7 = ptrtoint ptr %aligned to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %aligned, align 1
  %conv = zext i8 %8 to i32
  %add12 = add nuw nsw i32 %conv, 187
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call8, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %add12
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call8, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %12, i32 %add12
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call13 = call ptr @skb_put(ptr noundef nonnull %call8, i32 noundef %len) #8
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__check_object_size(ptr noundef %call13, i32 noundef %len, i1 noundef zeroext false) #8
  %call3.i.i.i = call i32 @_copy_from_iter(ptr noundef %call13, i32 noundef %len, ptr noundef %msg_iter.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i.i, i32 %len)
  %cmp.i.i = icmp eq i32 %call3.i.i.i, %len
  br i1 %cmp.i.i, label %if.end18, label %memcpy_from_msg.exit.thread, !prof !60

memcpy_from_msg.exit.thread:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %call3.i.i.i) #8
  %13 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -14, ptr %err, align 4
  br label %outfree

if.end18:                                         ; preds = %if.end11
  %14 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %err, align 4
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool20.not = icmp eq i32 %and7, 0
  br i1 %tobool20.not, label %cond.false.i, label %if.end18.sock_sndtimeo.exit_crit_edge

if.end18.sock_sndtimeo.exit_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_sndtimeo.exit

cond.false.i:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 31
  %15 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sk_sndtimeo.i, align 8
  br label %sock_sndtimeo.exit

sock_sndtimeo.exit:                               ; preds = %cond.false.i, %if.end18.sock_sndtimeo.exit_crit_edge
  %cond.i142 = phi i32 [ %16, %cond.false.i ], [ 0, %if.end18.sock_sndtimeo.exit_crit_edge ]
  %17 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond.i142, ptr %timeo, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %18 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %skc_state, align 2
  %conv22 = zext i8 %19 to i32
  %shl = shl nuw i32 1, %conv22
  %and23 = and i32 %shl, 1152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -107, ptr %err, align 4
  br label %out

if.end26:                                         ; preds = %sock_sndtimeo.exit
  %21 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp30.not = icmp eq i8 %22, 1
  br i1 %cmp30.not, label %if.end26.do.body_crit_edge, label %if.end26.disabled_crit_edge

if.end26.disabled_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %disabled

if.end26.do.body_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

disabled:                                         ; preds = %if.end85.disabled_crit_edge, %if.end26.disabled_crit_edge
  %call33 = call i32 @sk_stream_wait_connect(ptr noundef %sk, ptr noundef nonnull %timeo) #8
  %23 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call33, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %disabled.out_crit_edge

disabled.out_crit_edge:                           ; preds = %disabled
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end36:                                         ; preds = %disabled
  %24 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %25)
  %cmp40 = icmp eq i8 %25, 8
  br i1 %cmp40, label %if.then42, label %if.end36.do.body_crit_edge

if.end36.do.body_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -104, ptr %err, align 4
  br label %out

do.body:                                          ; preds = %if.end36.do.body_crit_edge, %if.end26.do.body_crit_edge
  %27 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp48.not = icmp eq i8 %28, 1
  br i1 %cmp48.not, label %do.end59, label %do.body53, !prof !60

do.body53:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/phonet/pep.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1158, 0\0A.popsection", ""() #8, !srcloc !77
  unreachable

do.end59:                                         ; preds = %do.body
  %tx_credits = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 4
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %tx_credits, i32 noundef 4) #8
  %29 = ptrtoint ptr %tx_credits to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %tx_credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool61.not156 = icmp eq i32 %30, 0
  br i1 %tobool61.not156, label %while.body.lr.ph, label %do.end59.while.end_crit_edge

do.end59.while.end_crit_edge:                     ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end59
  %31 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %32 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %33 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %34 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %35 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %36 = getelementptr inbounds i8, ptr %wait, i32 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #8
  %37 = call ptr @memset(ptr %36, i32 255, i32 16)
  %38 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %wait, align 4
  %39 = call i32 @llvm.read_register.i32(metadata !46) #8
  %and.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task, align 8
  %43 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %31, align 4
  %44 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @woken_wake_function, ptr %32, align 4
  %45 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %33, ptr %33, align 4
  %46 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %33, ptr %34, align 4
  %47 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool69.not = icmp eq i32 %48, 0
  br i1 %tobool69.not, label %while.body.cleanup.thread_crit_edge, label %if.end71

while.body.cleanup.thread_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end71:                                         ; preds = %while.body
  %49 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %stack.i.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %52, align 4
  %55 = and i32 %54, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end71.if.then76_crit_edge, !prof !60

if.end71.if.then76_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

signal_pending.exit:                              ; preds = %if.end71
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %52, align 4
  %and1.i.i.i.i.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool75.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool75.not, label %if.end78, label %signal_pending.exit.if.then76_crit_edge

signal_pending.exit.if.then76_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

if.then76:                                        ; preds = %signal_pending.exit.if.then76_crit_edge, %if.end71.if.then76_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %48)
  %cmp.i = icmp eq i32 %48, 2147483647
  %cond.i143 = select i1 %cmp.i, i32 -512, i32 -4
  br label %cleanup.thread

if.end78:                                         ; preds = %signal_pending.exit
  %58 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %35, align 8
  call void @add_wait_queue(ptr noundef %59, ptr noundef nonnull %wait) #8
  call void @release_sock(ptr noundef %sk) #8
  %call.i.i140 = call zeroext i1 @__kasan_check_read(ptr noundef %tx_credits, i32 noundef 4) #8
  %60 = ptrtoint ptr %tx_credits to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %tx_credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool82.not = icmp eq i32 %61, 0
  br i1 %tobool82.not, label %if.then83, label %if.end78.if.end85_crit_edge

if.end78.if.end85_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then83:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %timeo, align 4
  %call84 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef %63) #8
  %64 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call84, ptr %timeo, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.end78.if.end85_crit_edge
  %65 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 212
  %67 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %task_state_change, align 4
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #8
  %call.i.i141 = call zeroext i1 @__kasan_check_read(ptr noundef %tx_credits, i32 noundef 4) #8
  %68 = ptrtoint ptr %tx_credits to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %tx_credits, align 4
  %70 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %35, align 8
  call void @remove_wait_queue(ptr noundef %71, ptr noundef nonnull %wait) #8
  %72 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %73)
  %cmp94.not = icmp eq i8 %73, 1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  br i1 %cmp94.not, label %cleanup, label %if.end85.disabled_crit_edge

if.end85.disabled_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %disabled

cleanup.thread:                                   ; preds = %if.then76, %while.body.cleanup.thread_crit_edge
  %storemerge = phi i32 [ %cond.i143, %if.then76 ], [ -11, %while.body.cleanup.thread_crit_edge ]
  %74 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %storemerge, ptr %err, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  br label %out

cleanup:                                          ; preds = %if.end85
  %tobool61.not = icmp eq i32 %69, 0
  br i1 %tobool61.not, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %do.end59.while.end_crit_edge
  %call98 = call fastcc i32 @pipe_skb_send(ptr noundef %sk, ptr noundef nonnull %call8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99153 = icmp slt i32 %call98, 0
  %spec.select = select i1 %cmp99153, i32 %call98, i32 %len
  %75 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %spec.select, ptr %err, align 4
  br label %out

out:                                              ; preds = %while.end, %cleanup.thread, %if.then42, %disabled.out_crit_edge, %if.then25
  %skb.0 = phi ptr [ %call8, %if.then25 ], [ %call8, %disabled.out_crit_edge ], [ %call8, %if.then42 ], [ null, %while.end ], [ %call8, %cleanup.thread ]
  call void @release_sock(ptr noundef %sk) #8
  br label %outfree

outfree:                                          ; preds = %out, %memcpy_from_msg.exit.thread
  %skb.1 = phi ptr [ %skb.0, %out ], [ %call8, %memcpy_from_msg.exit.thread ]
  call void @kfree_skb_reason(ptr noundef %skb.1, i32 noundef 0) #8
  %76 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %err, align 4
  br label %cleanup103

cleanup103:                                       ; preds = %outfree, %if.then10, %if.end.cleanup103_crit_edge, %entry.cleanup103_crit_edge
  %retval.0 = phi i32 [ %77, %outfree ], [ %6, %if.then10 ], [ -90, %entry.cleanup103_crit_edge ], [ -95, %if.end.cleanup103_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pep_recvmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %noblock, i32 noundef %flags, ptr nocapture noundef readnone %addr_len) #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #8
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %err, align 4, !annotation !68
  %and = and i32 %flags, -16740
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup63_crit_edge

entry.cleanup63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup63

if.end:                                           ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %1 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %2 to i32
  %shl = shl nuw i32 1, %conv
  %and1 = and i32 %shl, 1152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end6, label %if.end.cleanup63_crit_edge, !prof !60

if.end.cleanup63_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup63

if.end6:                                          ; preds = %if.end
  %and7 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.end6.if.then10_crit_edge

if.end6.if.then10_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end6
  %3 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %lor.lhs.false.if.end25_crit_edge, label %lor.lhs.false.if.then10_crit_edge

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.end6.if.then10_crit_edge
  %and12 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then10.cleanup63_crit_edge

if.then10.cleanup63_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup63

if.end15:                                         ; preds = %if.then10
  %ctrlreq_queue = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 3
  %call16 = tail call ptr @skb_dequeue(ptr noundef %ctrlreq_queue) #8
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end20, label %cleanup

if.end20:                                         ; preds = %if.end15
  br i1 %tobool8.not, label %if.end20.if.end25_crit_edge, label %if.end20.cleanup63_crit_edge

if.end20.cleanup63_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup63

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

cleanup:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @pep_ctrlreq_error(ptr noundef %sk, ptr noundef nonnull %call16, i8 noundef zeroext 0, i32 noundef 3264)
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %7 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_flags, align 4
  %or = or i32 %8, 1
  store i32 %or, ptr %msg_flags, align 4
  br label %copy

if.end25:                                         ; preds = %if.end20.if.end25_crit_edge, %lor.lhs.false.if.end25_crit_edge
  %call26 = call ptr @skb_recv_datagram(ptr noundef %sk, i32 noundef %flags, i32 noundef %noblock, ptr noundef nonnull %err) #8
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #8
  %cmp = icmp eq ptr %call26, null
  br i1 %cmp, label %if.then28, label %if.end38

if.then28:                                        ; preds = %if.end25
  %9 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -107, i32 %10)
  %cmp29 = icmp eq i32 %10, -107
  br i1 %cmp29, label %land.lhs.true, label %if.then28.if.end37_crit_edge

if.then28.if.end37_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

land.lhs.true:                                    ; preds = %if.then28
  %11 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %12)
  %cmp34 = icmp eq i8 %12, 8
  br i1 %cmp34, label %if.then36, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -104, ptr %err, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %land.lhs.true.if.end37_crit_edge, %if.then28.if.end37_crit_edge
  call void @release_sock(ptr noundef %sk) #8
  %14 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %err, align 4
  br label %cleanup63

if.end38:                                         ; preds = %if.end25
  %16 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp42 = icmp eq i8 %17, 1
  br i1 %cmp42, label %if.then44, label %if.end38.if.end45_crit_edge

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then44:                                        ; preds = %if.end38
  %18 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp.not.i = icmp eq i8 %19, 1
  br i1 %cmp.not.i, label %do.end8.i, label %do.body3.i, !prof !60

do.body3.i:                                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/phonet/pep.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 231, 0\0A.popsection", ""() #8, !srcloc !61
  unreachable

do.end8.i:                                        ; preds = %if.then44
  %rx_fc.i = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 9
  %20 = ptrtoint ptr %rx_fc.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rx_fc.i, align 4
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %21, label %do.end8.i.if.end45_crit_edge [
    i8 3, label %sw.bb15.i
    i8 2, label %sw.bb.i
  ]

do.end8.i.if.end45_crit_edge:                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

sw.bb.i:                                          ; preds = %do.end8.i
  %call10.i = call fastcc i32 @pipe_snd_status(ptr noundef %sk, i8 noundef zeroext 0, i8 noundef zeroext 2, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp eq i32 %call10.i, 0
  br i1 %cmp11.i, label %if.then13.i, label %sw.bb.i.if.end45_crit_edge

sw.bb.i.if.end45_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then13.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_credits.i = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 8
  %23 = ptrtoint ptr %rx_credits.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %rx_credits.i, align 1
  br label %if.end45

sw.bb15.i:                                        ; preds = %do.end8.i
  %rx_credits16.i = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 8
  %24 = ptrtoint ptr %rx_credits16.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rx_credits16.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %25)
  %cmp18.i = icmp ugt i8 %25, 3
  br i1 %cmp18.i, label %sw.bb15.i.if.end45_crit_edge, label %if.end21.i

sw.bb15.i.if.end45_crit_edge:                     ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.end21.i:                                       ; preds = %sw.bb15.i
  %sub.i = sub nuw nsw i8 10, %25
  %call25.i = call fastcc i32 @pipe_snd_status(ptr noundef %sk, i8 noundef zeroext 1, i8 noundef zeroext %sub.i, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp eq i32 %call25.i, 0
  br i1 %cmp26.i, label %if.then28.i, label %if.end21.i.if.end45_crit_edge

if.end21.i.if.end45_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then28.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %rx_credits16.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 10, ptr %rx_credits16.i, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.then28.i, %if.end21.i.if.end45_crit_edge, %sw.bb15.i.if.end45_crit_edge, %if.then13.i, %sw.bb.i.if.end45_crit_edge, %do.end8.i.if.end45_crit_edge, %if.end38.if.end45_crit_edge
  call void @release_sock(ptr noundef %sk) #8
  br label %copy

copy:                                             ; preds = %if.end45, %cleanup
  %skb.1 = phi ptr [ %call16, %cleanup ], [ %call26, %if.end45 ]
  %msg_flags46 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %27 = ptrtoint ptr %msg_flags46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_flags46, align 4
  %or47 = or i32 %28, 128
  store i32 %or47, ptr %msg_flags46, align 4
  %len48 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 6
  %29 = ptrtoint ptr %len48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %len)
  %cmp49 = icmp ugt i32 %30, %len
  br i1 %cmp49, label %if.then51, label %copy.if.end55_crit_edge

copy.if.end55_crit_edge:                          ; preds = %copy
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then51:                                        ; preds = %copy
  call void @__sanitizer_cov_trace_pc() #10
  %or53 = or i32 %28, 160
  %31 = ptrtoint ptr %msg_flags46 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or53, ptr %msg_flags46, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %copy.if.end55_crit_edge
  %len.addr.0 = phi i32 [ %len, %if.then51 ], [ %30, %copy.if.end55_crit_edge ]
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %skb.1, i32 noundef 0, ptr noundef %msg_iter.i, i32 noundef %len.addr.0) #8
  %32 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call.i, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool57.not = icmp eq i32 %call.i, 0
  br i1 %tobool57.not, label %if.then58, label %if.end55.if.end62_crit_edge

if.end55.if.end62_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then58:                                        ; preds = %if.end55
  %and59 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.then58.cond.end_crit_edge, label %cond.true

if.then58.cond.end_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %len48 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len48, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then58.cond.end_crit_edge
  %cond = phi i32 [ %34, %cond.true ], [ %len.addr.0, %if.then58.cond.end_crit_edge ]
  %35 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cond, ptr %err, align 4
  br label %if.end62

if.end62:                                         ; preds = %cond.end, %if.end55.if.end62_crit_edge
  call void @skb_free_datagram(ptr noundef %sk, ptr noundef nonnull %skb.1) #8
  %36 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %err, align 4
  br label %cleanup63

cleanup63:                                        ; preds = %if.end62, %if.end37, %if.end20.cleanup63_crit_edge, %if.then10.cleanup63_crit_edge, %if.end.cleanup63_crit_edge, %entry.cleanup63_crit_edge
  %retval.1 = phi i32 [ %37, %if.end62 ], [ %15, %if.end37 ], [ -95, %entry.cleanup63_crit_edge ], [ -107, %if.end.cleanup63_crit_edge ], [ -22, %if.end20.cleanup63_crit_edge ], [ -95, %if.then10.cleanup63_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #8
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pep_do_rcv(ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 4
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !64

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp3.i = icmp ult i32 %1, 4
  br i1 %cmp3.i, label %if.end.i.drop_crit_edge, label %pskb_may_pull.exit, !prof !64

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 4, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #8
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

pskb_may_pull.exit.drop_crit_edge:                ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %6 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %pipe_handle3 = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %pipe_handle3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pipe_handle3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp = icmp eq i8 %9, -1
  br i1 %cmp, label %if.end.drop_crit_edge, label %if.end6

if.end.drop_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

if.end6:                                          ; preds = %if.end
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %10 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %11 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %conv.i.i.i
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i.i.i, align 1
  %pn_robj.i = getelementptr inbounds %struct.phonethdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %pn_robj.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pn_robj.i, align 1
  %hlist = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 1
  %conv.i.i65 = zext i8 %15 to i16
  %conv.i.i.i66 = zext i8 %13 to i16
  %shl.i.i.i = shl nuw i16 %conv.i.i.i66, 8
  %or.i.i.i = or i16 %shl.i.i.i, %conv.i.i65
  %16 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hlist, align 4
  %tobool.not.i = icmp eq ptr %17, null
  %add.ptr.i = getelementptr i8, ptr %17, i32 -84
  %tobool2.not4954.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not49.i = or i1 %tobool.not.i, %tobool2.not4954.i
  br i1 %tobool2.not49.i, label %if.end6.if.end10_crit_edge, label %if.end6.for.body.i_crit_edge

if.end6.for.body.i_crit_edge:                     ; preds = %if.end6
  br label %for.body.i

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end6.for.body.i_crit_edge
  %sknode.050.i = phi ptr [ %add.ptr25.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end6.for.body.i_crit_edge ]
  %sobject.i = getelementptr inbounds %struct.pn_sock, ptr %sknode.050.i, i32 0, i32 1
  %18 = ptrtoint ptr %sobject.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sobject.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %or.i.i.i)
  %cmp.not.i67 = icmp eq i16 %19, %or.i.i.i
  br i1 %cmp.not.i67, label %if.end.i68, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i68:                                       ; preds = %for.body.i
  %pipe_handle6.i = getelementptr inbounds %struct.pep_sock, ptr %sknode.050.i, i32 0, i32 7
  %20 = ptrtoint ptr %pipe_handle6.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pipe_handle6.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %9)
  %cmp9.not.i = icmp eq i8 %21, %9
  br i1 %cmp9.not.i, label %if.end12.i, label %if.end.i68.for.inc.i_crit_edge

if.end.i68.for.inc.i_crit_edge:                   ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end12.i:                                       ; preds = %if.end.i68
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sknode.050.i, i32 0, i32 4
  %22 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %23)
  %cmp14.i69 = icmp eq i8 %23, 8
  br i1 %cmp14.i69, label %if.end12.i.for.inc.i_crit_edge, label %if.end17.i

if.end12.i.for.inc.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end17.i:                                       ; preds = %if.end12.i
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %sknode.050.i, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #8
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #8, !srcloc !63
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end17.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !64

if.end17.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end17.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %25 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.then8_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !60

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.then8_crit_edge:             ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end17.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end17.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %if.then8

for.inc.i:                                        ; preds = %if.end12.i.for.inc.i_crit_edge, %if.end.i68.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %26 = getelementptr inbounds %struct.sock_common, ptr %sknode.050.i, i32 0, i32 15
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %tobool21.not.i = icmp eq ptr %28, null
  %add.ptr25.i = getelementptr i8, ptr %28, i32 -84
  %tobool2.not56.i = icmp eq ptr %add.ptr25.i, null
  %tobool2.not.i = or i1 %tobool21.not.i, %tobool2.not56.i
  br i1 %tobool2.not.i, label %for.inc.i.if.end10_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end10_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.then8_crit_edge
  %call.i = tail call i32 @__sk_receive_skb(ptr noundef nonnull %sknode.050.i, ptr noundef %skb, i32 noundef 1, i32 noundef 1, i1 noundef zeroext true) #8
  br label %cleanup

if.end10:                                         ; preds = %for.inc.i.if.end10_crit_edge, %if.end6.if.end10_crit_edge
  %message_id = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %message_id to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %message_id, align 1
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %30, label %sw.default [
    i8 64, label %sw.bb
    i8 66, label %sw.bb23
    i8 72, label %sw.bb25
    i8 68, label %if.end10.drop_crit_edge
    i8 70, label %if.end10.drop_crit_edge83
    i8 76, label %if.end10.drop_crit_edge84
  ]

if.end10.drop_crit_edge84:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

if.end10.drop_crit_edge83:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

if.end10.drop_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

sw.bb:                                            ; preds = %if.end10
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %32 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %33)
  %cmp13.not = icmp eq i8 %33, 10
  br i1 %cmp13.not, label %lor.lhs.false, label %sw.bb.if.then17_crit_edge

sw.bb.if.then17_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

lor.lhs.false:                                    ; preds = %sw.bb
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 53
  %34 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %sk_ack_backlog.i, align 4
  %sk_max_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 54
  %36 = ptrtoint ptr %sk_max_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %sk_max_ack_backlog.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp.i = icmp ugt i32 %35, %37
  br i1 %cmp.i, label %lor.lhs.false.if.then17_crit_edge, label %if.end19

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %sw.bb.if.then17_crit_edge
  %call.i70 = tail call fastcc i32 @pep_reply(ptr noundef %sk, ptr noundef %skb, i8 noundef zeroext 5, ptr noundef nonnull @pep_reject_conn.data, i32 noundef 4, i32 noundef 2592) #8
  br label %drop

if.end19:                                         ; preds = %lor.lhs.false
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  tail call void @skb_queue_head(ptr noundef %sk_receive_queue, ptr noundef %skb) #8
  %38 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sk_ack_backlog.i, align 4
  %add.i = add i32 %39, 1
  store volatile i32 %add.i, ptr %sk_ack_backlog.i, align 4
  %40 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  %43 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.i.not = icmp eq i32 %43, 0
  br i1 %tobool.i.not, label %if.then21, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 77
  %44 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sk_data_ready, align 8
  tail call void %45(ptr noundef %sk) #8
  br label %cleanup

sw.bb23:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call fastcc i32 @pep_reply(ptr noundef %sk, ptr noundef %skb, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0, i32 noundef 2592)
  br label %drop

sw.bb25:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @pep_ctrlreq_error(ptr noundef %sk, ptr noundef %skb, i8 noundef zeroext -1, i32 noundef 2592)
  br label %drop

sw.default:                                       ; preds = %if.end10
  %skc_state29 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %46 = ptrtoint ptr %skc_state29 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load volatile i8, ptr %skc_state29, align 2
  %conv30 = zext i8 %47 to i32
  %shl = shl nuw i32 1, %conv30
  %and = and i32 %shl, -1409
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %sw.default.drop_crit_edge, label %if.then32

sw.default.drop_crit_edge:                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

if.then32:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = tail call fastcc i32 @pipe_handler_do_rcv(ptr noundef %sk, ptr noundef %skb)
  br label %cleanup

drop:                                             ; preds = %sw.default.drop_crit_edge, %sw.bb25, %sw.bb23, %if.then17, %if.end10.drop_crit_edge, %if.end10.drop_crit_edge83, %if.end10.drop_crit_edge84, %if.end.drop_crit_edge, %pskb_may_pull.exit.drop_crit_edge, %if.end.i.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.then32, %if.then21, %if.end19.cleanup_crit_edge, %if.then8
  %retval.0 = phi i32 [ 0, %drop ], [ %call.i, %if.then8 ], [ %call33, %if.then32 ], [ 0, %if.then21 ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pn_sock_hash(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pep_sock_unhash(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #8
  %listener = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 2
  %0 = ptrtoint ptr %listener to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %listener, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %listener to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %listener, align 4
  tail call void @release_sock(ptr noundef %sk) #8
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #8
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %3 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i.i.not.i, label %if.then.if.end_crit_edge, label %if.then.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i.i:                                      ; preds = %if.then
  %5 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %4, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.if.then.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.if.then.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %4, ptr %pprev14.i.i.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %do.body13.i.i.i.i, %if.then.i.i.if.then.i_crit_edge
  %10 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %pprev.i.i.i.i.i, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  %11 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %skc_refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp eq i32 %12, 1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !64

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 729, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #8, !srcloc !66
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.end.i.if.end_crit_edge, !prof !64

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3.i.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  br label %if.end

if.end:                                           ; preds = %if.then3.i.i.i.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %sk.addr.0 = phi ptr [ %sk, %entry.if.end_crit_edge ], [ %1, %if.then.if.end_crit_edge ], [ %1, %if.end.i.if.end_crit_edge ], [ %1, %if.then3.i.i.i.i ]
  %hlist = getelementptr inbounds %struct.pep_sock, ptr %sk.addr.0, i32 0, i32 1
  %14 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %hlist, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %if.then6, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pn_sock_unhash(ptr noundef %sk.addr.0) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  tail call void @release_sock(ptr noundef %sk.addr.0) #8
  br i1 %cmp.not, label %if.end8.if.end11_crit_edge, label %if.then10

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  %skc_refcnt.i24 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i25 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i24, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i24, i32 1, i32 3, i32 1) #8
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i24, ptr %skc_refcnt.i24, i32 1, ptr elementtype(i32) %skc_refcnt.i24) #8, !srcloc !66
  %asmresult.i.i.i.i.i.i.i26 = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i26)
  %cmp.i.i.i.i27 = icmp eq i32 %asmresult.i.i.i.i.i.i.i26, 1
  br i1 %cmp.i.i.i.i27, label %if.then.i28, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i26)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i26, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end11_crit_edge, label %if.then10.i.i.i.i, !prof !60

if.end5.i.i.i.i.if.end11_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i24, i32 noundef 3) #8
  br label %if.end11

if.then.i28:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @sk_free(ptr noundef nonnull %1) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then.i28, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end11_crit_edge, %if.end8.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pn_sock_get_port(ptr noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_common_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pipe_do_rcv(ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %5)
  %cmp = icmp eq i8 %5, 8
  br i1 %cmp, label %do.body4, label %do.end9, !prof !64

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/phonet/pep.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 340, 0\0A.popsection", ""() #8, !srcloc !78
  unreachable

do.end9:                                          ; preds = %entry
  %message_id = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %message_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %message_id, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %7, label %do.body90 [
    i8 64, label %sw.bb
    i8 66, label %sw.bb12
    i8 70, label %sw.bb19
    i8 68, label %sw.bb21
    i8 76, label %do.end9.sw.bb26_crit_edge
    i8 72, label %sw.bb28
    i8 33, label %sw.bb36
    i8 32, label %do.end9.sw.bb38_crit_edge
    i8 96, label %sw.bb55
    i8 101, label %sw.bb57
    i8 97, label %sw.bb59
    i8 99, label %do.end9.sw.bb64_crit_edge
    i8 100, label %do.end9.sw.bb69_crit_edge
    i8 102, label %sw.bb85
  ]

do.end9.sw.bb69_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb69

do.end9.sw.bb64_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb64

do.end9.sw.bb38_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb38

do.end9.sw.bb26_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb26

sw.bb:                                            ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call fastcc i32 @pep_reply(ptr noundef %sk, ptr noundef %skb, i8 noundef zeroext 5, ptr noundef nonnull @pep_reject_conn.data, i32 noundef 4, i32 noundef 2592) #8
  br label %out

sw.bb12:                                          ; preds = %do.end9
  %call13 = tail call fastcc i32 @pep_reply(ptr noundef %sk, ptr noundef %skb, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0, i32 noundef 2592)
  %9 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %9)
  store volatile i8 8, ptr %skc_state, align 2
  %10 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %13 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not = icmp eq i32 %13, 0
  br i1 %tobool.i.not, label %if.then17, label %sw.bb12.out_crit_edge

sw.bb12.out_crit_edge:                            ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then17:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %14 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk_state_change, align 4
  tail call void %15(ptr noundef %sk) #8
  br label %out

sw.bb19:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = tail call fastcc i32 @pep_reply(ptr noundef %sk, ptr noundef %skb, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0, i32 noundef 2592)
  br label %out

sw.bb21:                                          ; preds = %do.end9
  %16 = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %switch = icmp ult i8 %18, 2
  br i1 %switch, label %sw.bb26.sink.split, label %sw.bb21.out_crit_edge

sw.bb21.out_crit_edge:                            ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.bb26.sink.split:                               ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  %init_enable = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 11
  %19 = ptrtoint ptr %init_enable to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %init_enable, align 2
  br label %sw.bb26

sw.bb26:                                          ; preds = %sw.bb26.sink.split, %do.end9.sw.bb26_crit_edge
  %tx_credits = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_credits, i32 noundef 4) #8
  %20 = ptrtoint ptr %tx_credits to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %tx_credits, align 4
  %call27 = tail call fastcc i32 @pep_reply(ptr noundef %sk, ptr noundef %skb, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0, i32 noundef 2592)
  br label %out

sw.bb28:                                          ; preds = %do.end9
  %ctrlreq_queue = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 3
  %qlen.i = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %22)
  %cmp30 = icmp ugt i32 %22, 9
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  %sk_drops = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 5
  %call.i.i173 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_drops, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %sk_drops, i32 1, i32 3, i32 1) #8
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_drops, ptr %sk_drops, i32 1, ptr elementtype(i32) %sk_drops) #8, !srcloc !59
  br label %out

if.end33:                                         ; preds = %sw.bb28
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %24 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len1.i, align 4
  %sub.i = add i32 %25, -4
  store i32 %sub.i, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %26 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %27)
  %cmp.i = icmp ult i32 %sub.i, %27
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !64

do.body4.i:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #8, !srcloc !79
  unreachable

__skb_pull.exit:                                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 4
  store ptr %add.ptr.i, ptr %data.i, align 4
  br label %queue110

sw.bb36:                                          ; preds = %do.end9
  %len1.i176 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %30 = ptrtoint ptr %len1.i176 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len1.i176, align 4
  %sub.i177 = add i32 %31, -1
  store i32 %sub.i177, ptr %len1.i176, align 4
  %data_len.i178 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %32 = ptrtoint ptr %data_len.i178 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_len.i178, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i177, i32 %33)
  %cmp.i179 = icmp ult i32 %sub.i177, %33
  br i1 %cmp.i179, label %do.body4.i180, label %__skb_pull.exit183, !prof !64

do.body4.i180:                                    ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #8, !srcloc !79
  unreachable

__skb_pull.exit183:                               ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #10
  %data.i181 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %34 = ptrtoint ptr %data.i181 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i181, align 4
  %add.ptr.i182 = getelementptr i8, ptr %35, i32 1
  store ptr %add.ptr.i182, ptr %data.i181, align 4
  br label %sw.bb38

sw.bb38:                                          ; preds = %__skb_pull.exit183, %do.end9.sw.bb38_crit_edge
  %len1.i184 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %36 = ptrtoint ptr %len1.i184 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len1.i184, align 4
  %sub.i185 = add i32 %37, -3
  store i32 %sub.i185, ptr %len1.i184, align 4
  %data_len.i186 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %38 = ptrtoint ptr %data_len.i186 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_len.i186, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i185, i32 %39)
  %cmp.i187 = icmp ult i32 %sub.i185, %39
  br i1 %cmp.i187, label %do.body4.i188, label %__skb_pull.exit191, !prof !64

do.body4.i188:                                    ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #8, !srcloc !79
  unreachable

__skb_pull.exit191:                               ; preds = %sw.bb38
  %data.i189 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %40 = ptrtoint ptr %data.i189 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i189, align 4
  %add.ptr.i190 = getelementptr i8, ptr %41, i32 3
  store ptr %add.ptr.i190, ptr %data.i189, align 4
  %rx_fc = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 9
  %42 = ptrtoint ptr %rx_fc to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %rx_fc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %43)
  %tobool41.not = icmp ult i8 %43, 2
  br i1 %tobool41.not, label %if.then42, label %if.end47

if.then42:                                        ; preds = %__skb_pull.exit191
  %call43 = tail call i32 @sock_queue_rcv_skb(ptr noundef %sk, ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then42.cleanup_crit_edge, label %if.then42.out_crit_edge

if.then42.out_crit_edge:                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end47:                                         ; preds = %__skb_pull.exit191
  %rx_credits = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 8
  %44 = ptrtoint ptr %rx_credits to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %rx_credits, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp49 = icmp eq i8 %45, 0
  br i1 %cmp49, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %sk_drops52 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 5
  %call.i.i174 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_drops52, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %sk_drops52, i32 1, i32 3, i32 1) #8
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_drops52, ptr %sk_drops52, i32 1, ptr elementtype(i32) %sk_drops52) #8, !srcloc !59
  br label %out

if.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %dec = add i8 %45, -1
  %47 = ptrtoint ptr %rx_credits to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %dec, ptr %rx_credits, align 1
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  br label %queue110

sw.bb55:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @pipe_rcv_status(ptr noundef %sk, ptr noundef %skb)
  br label %out

sw.bb57:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call58 = tail call fastcc i32 @pipe_rcv_created(ptr noundef %sk, ptr noundef %skb)
  br label %out

sw.bb59:                                          ; preds = %do.end9
  %call60 = tail call fastcc i32 @pipe_rcv_created(ptr noundef %sk, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %sw.bb59.sw.bb64_crit_edge, label %sw.bb59.out_crit_edge

sw.bb59.out_crit_edge:                            ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.bb59.sw.bb64_crit_edge:                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb64

sw.bb64:                                          ; preds = %sw.bb59.sw.bb64_crit_edge, %do.end9.sw.bb64_crit_edge
  %init_enable65 = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 11
  %48 = ptrtoint ptr %init_enable65 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %init_enable65, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool66.not = icmp eq i8 %49, 0
  br i1 %tobool66.not, label %sw.bb64.out_crit_edge, label %sw.bb64.sw.bb69_crit_edge

sw.bb64.sw.bb69_crit_edge:                        ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb69

sw.bb64.out_crit_edge:                            ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.bb69:                                          ; preds = %sw.bb64.sw.bb69_crit_edge, %do.end9.sw.bb69_crit_edge
  %tx_fc = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 10
  %50 = ptrtoint ptr %tx_fc to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %tx_fc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %51)
  %tobool72.not = icmp ult i8 %51, 2
  br i1 %tobool72.not, label %if.then73, label %sw.bb69.if.end75_crit_edge

sw.bb69.if.end75_crit_edge:                       ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then73:                                        ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #10
  %tx_credits74 = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 4
  %call.i.i175 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_credits74, i32 noundef 4) #8
  %52 = ptrtoint ptr %tx_credits74 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 1, ptr %tx_credits74, align 4
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 78
  %53 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sk_write_space, align 4
  tail call void %54(ptr noundef %sk) #8
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %sw.bb69.if.end75_crit_edge
  %55 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %56)
  %cmp79 = icmp eq i8 %56, 1
  br i1 %cmp79, label %if.end75.out_crit_edge, label %if.end82

if.end75.out_crit_edge:                           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end82:                                         ; preds = %if.end75
  %57 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %57)
  store volatile i8 1, ptr %skc_state, align 2
  %58 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %58)
  %cmp.not.i = icmp eq i8 %58, 1
  br i1 %cmp.not.i, label %do.end8.i, label %do.body3.i, !prof !60

do.body3.i:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/phonet/pep.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 231, 0\0A.popsection", ""() #8, !srcloc !61
  unreachable

do.end8.i:                                        ; preds = %if.end82
  %rx_fc.i = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 9
  %59 = ptrtoint ptr %rx_fc.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %rx_fc.i, align 4
  %61 = zext i8 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %60, label %do.end8.i.out_crit_edge [
    i8 3, label %sw.bb15.i
    i8 2, label %sw.bb.i
  ]

do.end8.i.out_crit_edge:                          ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.bb.i:                                          ; preds = %do.end8.i
  %call10.i = tail call fastcc i32 @pipe_snd_status(ptr noundef %sk, i8 noundef zeroext 0, i8 noundef zeroext 2, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp eq i32 %call10.i, 0
  br i1 %cmp11.i, label %if.then13.i, label %sw.bb.i.out_crit_edge

sw.bb.i.out_crit_edge:                            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then13.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_credits.i = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 8
  %62 = ptrtoint ptr %rx_credits.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %rx_credits.i, align 1
  br label %out

sw.bb15.i:                                        ; preds = %do.end8.i
  %rx_credits16.i = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 8
  %63 = ptrtoint ptr %rx_credits16.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %rx_credits16.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %64)
  %cmp18.i = icmp ugt i8 %64, 3
  br i1 %cmp18.i, label %sw.bb15.i.out_crit_edge, label %if.end21.i

sw.bb15.i.out_crit_edge:                          ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end21.i:                                       ; preds = %sw.bb15.i
  %sub.i192 = sub nuw nsw i8 10, %64
  %call25.i = tail call fastcc i32 @pipe_snd_status(ptr noundef %sk, i8 noundef zeroext 1, i8 noundef zeroext %sub.i192, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp eq i32 %call25.i, 0
  br i1 %cmp26.i, label %if.then28.i, label %if.end21.i.out_crit_edge

if.end21.i.out_crit_edge:                         ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then28.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %rx_credits16.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 10, ptr %rx_credits16.i, align 1
  br label %out

sw.bb85:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %66)
  store volatile i8 3, ptr %skc_state, align 2
  %rx_credits88 = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 8
  %67 = ptrtoint ptr %rx_credits88 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %rx_credits88, align 1
  br label %out

do.body90:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pipe_do_rcv.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pipe_do_rcv, %land.lhs.true)) #8
          to label %out [label %land.lhs.true], !srcloc !80

land.lhs.true:                                    ; preds = %do.body90
  %call99 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %land.lhs.true.out_crit_edge, label %if.then101

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then101:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %message_id to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %message_id, align 1
  %conv103 = zext i8 %69 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pipe_do_rcv.descriptor, ptr noundef nonnull @.str.3, i32 noundef %conv103) #8
  br label %out

out:                                              ; preds = %if.then101, %land.lhs.true.out_crit_edge, %do.body90, %sw.bb85, %if.then28.i, %if.end21.i.out_crit_edge, %sw.bb15.i.out_crit_edge, %if.then13.i, %sw.bb.i.out_crit_edge, %do.end8.i.out_crit_edge, %if.end75.out_crit_edge, %sw.bb64.out_crit_edge, %sw.bb59.out_crit_edge, %sw.bb57, %sw.bb55, %if.then51, %if.then42.out_crit_edge, %if.then32, %sw.bb26, %sw.bb21.out_crit_edge, %sw.bb19, %if.then17, %sw.bb12.out_crit_edge, %sw.bb
  %err.2 = phi i32 [ 0, %sw.bb85 ], [ 0, %if.end75.out_crit_edge ], [ 0, %sw.bb64.out_crit_edge ], [ %call60, %sw.bb59.out_crit_edge ], [ %call58, %sw.bb57 ], [ 0, %sw.bb55 ], [ -105, %if.then51 ], [ 0, %if.then32 ], [ 0, %sw.bb26 ], [ 0, %sw.bb19 ], [ 0, %sw.bb12.out_crit_edge ], [ 0, %if.then17 ], [ 0, %sw.bb ], [ -22, %sw.bb21.out_crit_edge ], [ -105, %if.then42.out_crit_edge ], [ -22, %if.then101 ], [ -22, %land.lhs.true.out_crit_edge ], [ 0, %do.end8.i.out_crit_edge ], [ 0, %sw.bb.i.out_crit_edge ], [ 0, %if.then13.i ], [ 0, %sw.bb15.i.out_crit_edge ], [ 0, %if.end21.i.out_crit_edge ], [ 0, %if.then28.i ], [ -22, %do.body90 ]
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -105, i32 %err.2)
  %cmp108 = icmp eq i32 %err.2, -105
  %cond = zext i1 %cmp108 to i32
  br label %cleanup

queue110:                                         ; preds = %if.end53, %__skb_pull.exit
  %queue.0 = phi ptr [ %sk_receive_queue, %if.end53 ], [ %ctrlreq_queue, %__skb_pull.exit ]
  %70 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %70, align 8
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %72 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %destructor.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %73, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %queue110
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %73(ptr noundef %skb) #8
  br label %skb_orphan.exit.i

do.body.i.i:                                      ; preds = %queue110
  %74 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %tobool3.not.i.i = icmp eq ptr %76, null
  br i1 %tobool3.not.i.i, label %do.body.i.i.skb_orphan.exit.i_crit_edge, label %do.body7.i.i, !prof !60

do.body.i.i.skb_orphan.exit.i_crit_edge:          ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_orphan.exit.i

do.body7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #8, !srcloc !81
  unreachable

skb_orphan.exit.i:                                ; preds = %do.body.i.i.skb_orphan.exit.i_crit_edge, %if.then.i.i
  %77 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %sk, ptr %77, align 4
  %79 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @sock_rfree, ptr %destructor.i.i, align 4
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %80 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %truesize.i, align 8
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #8
  %82 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %81, ptr elementtype(i32) %sk_backlog.i) #8, !srcloc !59
  %skc_prot.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %83 = ptrtoint ptr %skc_prot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %skc_prot.i.i.i, align 8
  %memory_allocated.i.i.i = getelementptr inbounds %struct.proto, ptr %84, i32 0, i32 32
  %85 = ptrtoint ptr %memory_allocated.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %memory_allocated.i.i.i, align 4
  %tobool.i.not.i.i = icmp eq ptr %86, null
  br i1 %tobool.i.not.i.i, label %skb_orphan.exit.i.skb_set_owner_r.exit_crit_edge, label %if.end.i.i

skb_orphan.exit.i.skb_set_owner_r.exit_crit_edge: ; preds = %skb_orphan.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_set_owner_r.exit

if.end.i.i:                                       ; preds = %skb_orphan.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %truesize.i, align 8
  %sk_forward_alloc.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %89 = ptrtoint ptr %sk_forward_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sk_forward_alloc.i.i, align 8
  %sub.i.i = sub i32 %90, %88
  store i32 %sub.i.i, ptr %sk_forward_alloc.i.i, align 8
  br label %skb_set_owner_r.exit

skb_set_owner_r.exit:                             ; preds = %if.end.i.i, %skb_orphan.exit.i.skb_set_owner_r.exit_crit_edge
  tail call void @skb_queue_tail(ptr noundef %queue.0, ptr noundef %skb) #8
  %91 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %91, align 4
  %94 = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.i193.not = icmp eq i32 %94, 0
  br i1 %tobool.i193.not, label %if.then112, label %skb_set_owner_r.exit.cleanup_crit_edge

skb_set_owner_r.exit.cleanup_crit_edge:           ; preds = %skb_set_owner_r.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then112:                                       ; preds = %skb_set_owner_r.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 77
  %95 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %sk_data_ready, align 8
  tail call void %96(ptr noundef %sk) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then112, %skb_set_owner_r.exit.cleanup_crit_edge, %out, %if.then42.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %out ], [ 0, %if.then42.cleanup_crit_edge ], [ 0, %if.then112 ], [ 0, %skb_set_owner_r.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pipe_handler_request(ptr noundef %sk, i8 noundef zeroext %id, i8 noundef zeroext %code, ptr nocapture noundef readonly %data, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i = add i32 %len, 188
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  tail call void @skb_set_owner_w(ptr noundef nonnull %call.i.i, ptr noundef %sk) #8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 188
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %3, i32 188
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i.i, label %if.end, label %do.body3.i.i, !prof !60

do.body3.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #8, !srcloc !62
  unreachable

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i13.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %len
  %6 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i13.i, ptr %tail.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %8, %len
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %9 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %data, i32 %len)
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %11, i32 -4
  store ptr %add.ptr.i16.i, ptr %data.i.i, align 4
  %12 = load i32, ptr %len9.i.i, align 4
  %add.i17.i = add i32 %12, 4
  store i32 %add.i17.i, ptr %len9.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i16.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 19
  %15 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  %conv.i.i17 = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i18 = getelementptr i8, ptr %14, i32 %conv.i.i17
  %16 = ptrtoint ptr %add.ptr.i.i18 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %id, ptr %add.ptr.i.i18, align 1
  %message_id = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i18, i32 0, i32 1
  %17 = ptrtoint ptr %message_id to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %id, ptr %message_id, align 1
  %pipe_handle = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 7
  %18 = ptrtoint ptr %pipe_handle to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pipe_handle, align 2
  %pipe_handle3 = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i18, i32 0, i32 2
  %20 = ptrtoint ptr %pipe_handle3 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %pipe_handle3, align 1
  %21 = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i18, i32 0, i32 3
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %code, ptr %21, align 1
  %call4 = tail call i32 @pn_skb_send(ptr noundef %sk, ptr noundef nonnull %call.i.i, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gprs_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sock_put(ptr noundef %sk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 1, ptr elementtype(i32) %skc_refcnt) #8, !srcloc !66
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !60

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 3) #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @sk_free(ptr noundef %sk) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pep_reply(ptr noundef %sk, ptr nocapture noundef readonly %oskb, i8 noundef zeroext %code, ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %priority) unnamed_addr #0 align 64 {
entry:
  %peer = alloca %struct.sockaddr_pn, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %oskb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %oskb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %peer) #8
  %4 = getelementptr inbounds %struct.sockaddr_pn, ptr %peer, i32 0, i32 1
  %5 = getelementptr inbounds %struct.sockaddr_pn, ptr %peer, i32 0, i32 2
  %6 = getelementptr inbounds %struct.sockaddr_pn, ptr %peer, i32 0, i32 3
  %7 = getelementptr inbounds %struct.sockaddr_pn, ptr %peer, i32 0, i32 4
  %add.i = add i32 %len, 188
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef %priority, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  tail call void @skb_set_owner_w(ptr noundef nonnull %call.i.i, ptr noundef %sk) #8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i20 = getelementptr i8, ptr %9, i32 188
  store ptr %add.ptr.i.i20, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %11, i32 188
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i.i, label %if.end, label %do.body3.i.i, !prof !60

do.body3.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #8, !srcloc !62
  unreachable

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i13.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %len
  %14 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i13.i, ptr %tail.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %16, %len
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %17 = call ptr @memcpy(ptr %add.ptr.i.i20, ptr %data, i32 %len)
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %19, i32 -4
  store ptr %add.ptr.i16.i, ptr %data.i.i, align 4
  %20 = load i32, ptr %len9.i.i, align 4
  %add.i17.i = add i32 %20, 4
  store i32 %add.i17.i, ptr %len9.i.i, align 4
  %head.i.i21 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %21 = ptrtoint ptr %head.i.i21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i.i21, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i16.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i22 = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i23 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 19
  %23 = ptrtoint ptr %transport_header.i.i23 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i.i22, ptr %transport_header.i.i23, align 2
  %conv.i.i26 = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i27 = getelementptr i8, ptr %22, i32 %conv.i.i26
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr.i.i, align 1
  %26 = ptrtoint ptr %add.ptr.i.i27 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %add.ptr.i.i27, align 1
  %message_id = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %message_id to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %message_id, align 1
  %add = add i8 %28, 1
  %message_id5 = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i27, i32 0, i32 1
  %29 = ptrtoint ptr %message_id5 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %add, ptr %message_id5, align 1
  %pipe_handle = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %pipe_handle to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %pipe_handle, align 1
  %pipe_handle6 = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i27, i32 0, i32 2
  %32 = ptrtoint ptr %pipe_handle6 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %pipe_handle6, align 1
  %33 = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i27, i32 0, i32 3
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %code, ptr %33, align 1
  %35 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %oskb, i32 0, i32 15, i32 0, i32 20
  %37 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %38 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %36, i32 %conv.i.i.i
  %pn_sdev.i = getelementptr inbounds %struct.phonethdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %pn_sdev.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pn_sdev.i, align 1
  %pn_sobj.i = getelementptr inbounds %struct.phonethdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %pn_sobj.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %pn_sobj.i, align 1
  %43 = ptrtoint ptr %peer to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 35, ptr %peer, align 2
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %40, ptr %5, align 1
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %42, ptr %4, align 2
  %pn_res.i = getelementptr inbounds %struct.phonethdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %pn_res.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %pn_res.i, align 1
  %48 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %6, align 2
  %49 = call ptr @memset(ptr %7, i32 0, i32 11)
  %call7 = call i32 @pn_skb_send(ptr noundef %sk, ptr noundef nonnull %call.i.i, ptr noundef nonnull %peer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %peer) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pipe_rcv_status(ptr noundef %sk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 8
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !64

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp3.i = icmp ult i32 %1, 8
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !64

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 8, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #8
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %6 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %8 = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.not = icmp eq i8 %10, 0
  br i1 %cmp.not, label %if.end13, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pipe_rcv_status.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pipe_rcv_status, %land.lhs.true)) #8
          to label %cleanup [label %land.lhs.true], !srcloc !80

land.lhs.true:                                    ; preds = %do.body
  %call8 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.cleanup_crit_edge, label %if.then10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %8, align 1
  %conv11 = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pipe_rcv_status.descriptor, ptr noundef nonnull @.str.5, i32 noundef %conv11) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %14, label %do.body44 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb33
  ]

sw.bb:                                            ; preds = %if.end13
  %tx_fc = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 10
  %16 = ptrtoint ptr %tx_fc to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tx_fc, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %17, label %sw.bb.cleanup_crit_edge [
    i8 1, label %sw.bb16
    i8 2, label %sw.bb23
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb16:                                          ; preds = %sw.bb
  %arrayidx18 = getelementptr %struct.pnpipehdr, ptr %add.ptr.i.i, i32 1, i32 3
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx18, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %20, label %sw.bb16.cleanup_crit_edge [
    i8 1, label %sw.bb20
    i8 2, label %sw.bb16.if.then68.sink.split_crit_edge
  ]

sw.bb16.if.then68.sink.split_crit_edge:           ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then68.sink.split

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb20:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  %tx_credits = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_credits, i32 noundef 4) #8
  %22 = ptrtoint ptr %tx_credits to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %tx_credits, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %sw.bb
  %arrayidx25 = getelementptr %struct.pnpipehdr, ptr %add.ptr.i.i, i32 1, i32 3
  %23 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp27 = icmp eq i8 %24, 2
  br i1 %cmp27, label %sw.bb23.if.then68.sink.split_crit_edge, label %sw.bb23.cleanup_crit_edge

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb23.if.then68.sink.split_crit_edge:           ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then68.sink.split

sw.bb33:                                          ; preds = %if.end13
  %tx_fc34 = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 10
  %25 = ptrtoint ptr %tx_fc34 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tx_fc34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp36.not = icmp eq i8 %26, 3
  br i1 %cmp36.not, label %if.end39, label %sw.bb33.cleanup_crit_edge

sw.bb33.cleanup_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %sw.bb33
  %arrayidx41 = getelementptr %struct.pnpipehdr, ptr %add.ptr.i.i, i32 1, i32 3
  %27 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %28 to i32
  %tx_credits43 = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 4
  %call.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_credits43, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %tx_credits43, i32 1, i32 3, i32 1) #8
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_credits43, ptr %tx_credits43, i32 %conv42, ptr elementtype(i32) %tx_credits43) #8, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %phi.cmp = icmp eq i8 %28, 0
  br i1 %phi.cmp, label %if.end39.cleanup_crit_edge, label %if.end39.if.then68_crit_edge

if.end39.if.then68_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then68

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body44:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pipe_rcv_status.descriptor.6, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pipe_rcv_status, %land.lhs.true56)) #8
          to label %cleanup [label %land.lhs.true56], !srcloc !80

land.lhs.true56:                                  ; preds = %do.body44
  %call57 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %land.lhs.true56.cleanup_crit_edge, label %if.then59

land.lhs.true56.cleanup_crit_edge:                ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then59:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %data, align 1
  %conv62 = zext i8 %31 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pipe_rcv_status.descriptor.6, ptr noundef nonnull @.str.7, i32 noundef %conv62) #8
  br label %cleanup

if.then68.sink.split:                             ; preds = %sw.bb23.if.then68.sink.split_crit_edge, %sw.bb16.if.then68.sink.split_crit_edge
  %tx_credits30 = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 4
  %call.i.i6 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_credits30, i32 noundef 4) #8
  %32 = ptrtoint ptr %tx_credits30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 1, ptr %tx_credits30, align 4
  br label %if.then68

if.then68:                                        ; preds = %if.then68.sink.split, %if.end39.if.then68_crit_edge
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 78
  %33 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sk_write_space, align 4
  tail call void %34(ptr noundef %sk) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %if.then59, %land.lhs.true56.cleanup_crit_edge, %do.body44, %if.end39.cleanup_crit_edge, %sw.bb33.cleanup_crit_edge, %sw.bb23.cleanup_crit_edge, %sw.bb20, %sw.bb16.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.then10, %land.lhs.true.cleanup_crit_edge, %do.body, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pipe_rcv_created(ptr nocapture noundef writeonly %sk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %type = alloca i8, align 1
  %buf = alloca [2 x i8], align 1
  %len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %4 = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  %tx_fc = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 10
  %7 = ptrtoint ptr %tx_fc to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %tx_fc, align 1
  %rx_fc = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 9
  %8 = ptrtoint ptr %rx_fc to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %rx_fc, align 4
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len1.i, align 4
  %sub.i = add i32 %10, -4
  store i32 %sub.i, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %11 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %12)
  %cmp.i = icmp ult i32 %sub.i, %12
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !64

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #8, !srcloc !79
  unreachable

__skb_pull.exit:                                  ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 4
  store ptr %add.ptr.i, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.not46 = icmp eq i8 %6, 0
  br i1 %cmp.not46, label %__skb_pull.exit.cleanup30_crit_edge, label %while.body.lr.ph

__skb_pull.exit.cleanup30_crit_edge:              ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup30

while.body.lr.ph:                                 ; preds = %__skb_pull.exit
  %15 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %n_sb.047 = phi i8 [ %6, %while.body.lr.ph ], [ %dec, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type) #8
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %type, align 1, !annotation !68
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #8
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %buf, align 1, !annotation !68
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %15, align 1, !annotation !68
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #8
  %19 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %len, align 1
  %call4 = call fastcc ptr @pep_get_sb(ptr noundef %skb, ptr noundef nonnull %type, ptr noundef nonnull %len, ptr noundef nonnull %buf)
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %cleanup.thread, label %if.end

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type) #8
  br label %cleanup30

if.end:                                           ; preds = %while.body
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %21)
  %cond = icmp eq i8 %21, 3
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp9 = icmp ult i8 %23, 2
  br i1 %cmp9, label %sw.bb.cleanup_crit_edge, label %lor.lhs.false

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb
  %24 = ptrtoint ptr %call4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %call4, align 1
  %arrayidx12 = getelementptr i8, ptr %call4, i32 1
  %26 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx12, align 1
  %or44 = or i8 %27, %25
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %or44)
  %cmp14 = icmp ugt i8 %or44, 3
  br i1 %cmp14, label %lor.lhs.false.cleanup_crit_edge, label %if.end17

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %tx_fc to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %25, ptr %tx_fc, align 1
  %29 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx12, align 1
  %31 = and i8 %30, 3
  %32 = ptrtoint ptr %rx_fc to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %rx_fc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %lor.lhs.false.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %dec = add i8 %n_sb.047, -1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type) #8
  %cmp.not = icmp eq i8 %dec, 0
  br i1 %cmp.not, label %cleanup.cleanup30_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.cleanup30_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup30

cleanup30:                                        ; preds = %cleanup.cleanup30_crit_edge, %cleanup.thread, %__skb_pull.exit.cleanup30_crit_edge
  %retval.2 = phi i32 [ -22, %cleanup.thread ], [ 0, %__skb_pull.exit.cleanup30_crit_edge ], [ 0, %cleanup.cleanup30_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pep_get_sb(ptr noundef %skb, ptr nocapture noundef writeonly %ptype, ptr nocapture noundef %plen, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  %h = alloca %struct.anon.148, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %h.sroa.gep = getelementptr inbounds %struct.anon.148, ptr %h, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %h) #8
  %0 = ptrtoint ptr %h to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %h, align 1, !annotation !68
  %1 = ptrtoint ptr %h.sroa.gep to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %h.sroa.gep, align 1, !annotation !68
  %2 = ptrtoint ptr %plen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %plen, align 1
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  %sub.i4.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !64

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 0, ptr noundef nonnull %h, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.lor.lhs.false_crit_edge

lor.lhs.false.i.i.lor.lhs.false_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %.sroa.gep = getelementptr inbounds %struct.anon.148, ptr %9, i32 0, i32 1
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.lor.lhs.false_crit_edge

skb_header_pointer.exit.lor.lhs.false_crit_edge:  ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %skb_header_pointer.exit.lor.lhs.false_crit_edge, %lor.lhs.false.i.i.lor.lhs.false_crit_edge
  %retval.0.i.i64 = phi ptr [ %9, %skb_header_pointer.exit.lor.lhs.false_crit_edge ], [ %h, %lor.lhs.false.i.i.lor.lhs.false_crit_edge ]
  %retval.0.i.i64.sroa.phi = phi ptr [ %.sroa.gep, %skb_header_pointer.exit.lor.lhs.false_crit_edge ], [ %h.sroa.gep, %lor.lhs.false.i.i.lor.lhs.false_crit_edge ]
  %10 = ptrtoint ptr %retval.0.i.i64.sroa.phi to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %retval.0.i.i64.sroa.phi, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp3 = icmp ult i8 %11, 2
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %conv2 = zext i8 %11 to i32
  %12 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i.i, align 4
  %14 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %13, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %conv2)
  %cmp.not.i = icmp ult i32 %sub.i.i, %conv2
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false5.if.end_crit_edge, !prof !64

lor.lhs.false5.if.end_crit_edge:                  ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv2)
  %cmp3.i = icmp ult i32 %13, %conv2
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !64

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %conv2, %sub.i.i
  %call13.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #8
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %lor.lhs.false5.if.end_crit_edge
  %16 = ptrtoint ptr %retval.0.i.i64.sroa.phi to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %retval.0.i.i64.sroa.phi, align 1
  %sub = add i8 %17, -2
  store i8 %sub, ptr %retval.0.i.i64.sroa.phi, align 1
  %18 = ptrtoint ptr %retval.0.i.i64 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %retval.0.i.i64, align 1
  %20 = ptrtoint ptr %ptype to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %ptype, align 1
  %21 = load i8, ptr %retval.0.i.i64.sroa.phi, align 1
  %22 = ptrtoint ptr %plen to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %plen, align 1
  %23 = load i8, ptr %retval.0.i.i64.sroa.phi, align 1
  %24 = call i8 @llvm.umin.i8(i8 %3, i8 %23)
  %buflen.0 = zext i8 %24 to i32
  %25 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i.i, align 4
  %27 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_len.i.i, align 8
  %.neg68 = add i32 %26, -2
  %sub.i4.i45 = sub i32 %.neg68, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4.i45, i32 %buflen.0)
  %cmp.not.i.i46 = icmp slt i32 %sub.i4.i45, %buflen.0
  br i1 %cmp.not.i.i46, label %if.end.i.i50, label %if.then.i.i48, !prof !64

if.then.i.i48:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %data.i47 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %29 = ptrtoint ptr %data.i47 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i47, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 2
  br label %skb_header_pointer.exit56

if.end.i.i50:                                     ; preds = %if.end
  %tobool2.not.i.i49 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i49, label %if.end.i.i50.skb_header_pointer.exit56_crit_edge, label %lor.lhs.false.i.i54

if.end.i.i50.skb_header_pointer.exit56_crit_edge: ; preds = %if.end.i.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_header_pointer.exit56

lor.lhs.false.i.i54:                              ; preds = %if.end.i.i50
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i51 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 2, ptr noundef %buf, i32 noundef %buflen.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51)
  %cmp3.i.i52 = icmp slt i32 %call.i.i51, 0
  %spec.select.i.i53 = select i1 %cmp3.i.i52, ptr null, ptr %buf, !prof !64
  br label %skb_header_pointer.exit56

skb_header_pointer.exit56:                        ; preds = %lor.lhs.false.i.i54, %if.end.i.i50.skb_header_pointer.exit56_crit_edge, %if.then.i.i48
  %retval.0.i.i55 = phi ptr [ %add.ptr.i.i, %if.then.i.i48 ], [ null, %if.end.i.i50.skb_header_pointer.exit56_crit_edge ], [ %spec.select.i.i53, %lor.lhs.false.i.i54 ]
  %31 = ptrtoint ptr %retval.0.i.i64.sroa.phi to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %retval.0.i.i64.sroa.phi, align 1
  %conv23 = zext i8 %32 to i32
  %add = add nuw nsw i32 %conv23, 2
  %33 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i.i, align 4
  %sub.i57 = sub i32 %34, %add
  store i32 %sub.i57, ptr %len.i.i, align 4
  %35 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i57, i32 %36)
  %cmp.i = icmp ult i32 %sub.i57, %36
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !64

do.body4.i:                                       ; preds = %skb_header_pointer.exit56
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #8, !srcloc !79
  unreachable

__skb_pull.exit:                                  ; preds = %skb_header_pointer.exit56
  call void @__sanitizer_cov_trace_pc() #10
  %data.i58 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %37 = ptrtoint ptr %data.i58 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i58, align 4
  %add.ptr.i = getelementptr i8, ptr %38, i32 %add
  store ptr %add.ptr.i, ptr %data.i58, align 4
  br label %cleanup

cleanup:                                          ; preds = %__skb_pull.exit, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i.i55, %__skb_pull.exit ], [ null, %pskb_may_pull.exit.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %skb_header_pointer.exit.cleanup_crit_edge ], [ null, %if.end.i.i.cleanup_crit_edge ], [ null, %lor.lhs.false.i.i.cleanup_crit_edge ], [ null, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %h) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_rfree(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pipe_destruct(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %sk_receive_queue) #8
  %ctrlreq_queue = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 3
  tail call void @skb_queue_purge(ptr noundef %ctrlreq_queue) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sk_add_node(ptr noundef %sk, ptr noundef %list) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #8, !srcloc !63
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !64

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !60

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #8
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %3 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %list, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %4, ptr %2, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %sock_hold.exit.__sk_add_node.exit_crit_edge, label %do.body12.i.i

sock_hold.exit.__sk_add_node.exit_crit_edge:      ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_add_node.exit

do.body12.i.i:                                    ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %2, ptr %pprev.i.i, align 4
  br label %__sk_add_node.exit

__sk_add_node.exit:                               ; preds = %do.body12.i.i, %sock_hold.exit.__sk_add_node.exit_crit_edge
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %2, ptr %list, align 4
  %pprev34.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %8 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %pprev34.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gprs_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_stream_wait_connect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pep_ctrlreq_error(ptr noundef %sk, ptr nocapture noundef readonly %oskb, i8 noundef zeroext %code, i32 noundef %priority) unnamed_addr #0 align 64 {
entry:
  %dst = alloca %struct.sockaddr_pn, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %oskb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %oskb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dst) #8
  %4 = getelementptr inbounds %struct.sockaddr_pn, ptr %dst, i32 0, i32 1
  %5 = getelementptr inbounds %struct.sockaddr_pn, ptr %dst, i32 0, i32 2
  %6 = getelementptr inbounds %struct.sockaddr_pn, ptr %dst, i32 0, i32 3
  %7 = getelementptr inbounds %struct.sockaddr_pn, ptr %dst, i32 0, i32 4
  %8 = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 192, i32 noundef %priority, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  tail call void @skb_set_owner_w(ptr noundef nonnull %call.i.i, ptr noundef %sk) #8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i1 = getelementptr i8, ptr %12, i32 188
  store ptr %add.ptr.i.i1, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %14, i32 188
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i.i, label %if.end, label %do.body3.i.i, !prof !60

do.body3.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #8, !srcloc !62
  unreachable

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i13.i = getelementptr i8, ptr %14, i32 192
  %17 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i13.i, ptr %tail.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %19, 4
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %20 = ptrtoint ptr %add.ptr.i.i1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %10, ptr %add.ptr.i.i1, align 1
  %data.sroa.5.0.add.ptr.i.i1.sroa_idx = getelementptr i8, ptr %12, i32 189
  %21 = ptrtoint ptr %data.sroa.5.0.add.ptr.i.i1.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %code, ptr %data.sroa.5.0.add.ptr.i.i1.sroa_idx, align 1
  %data.sroa.7.0.add.ptr.i.i1.sroa_idx = getelementptr i8, ptr %12, i32 190
  %22 = ptrtoint ptr %data.sroa.7.0.add.ptr.i.i1.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %data.sroa.7.0.add.ptr.i.i1.sroa_idx, align 1
  %data.sroa.9.0.add.ptr.i.i1.sroa_idx = getelementptr i8, ptr %12, i32 191
  %23 = ptrtoint ptr %data.sroa.9.0.add.ptr.i.i1.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %data.sroa.9.0.add.ptr.i.i1.sroa_idx, align 1
  %24 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %25, i32 -4
  store ptr %add.ptr.i16.i, ptr %data.i.i, align 4
  %26 = load i32, ptr %len9.i.i, align 4
  %add.i17.i = add i32 %26, 4
  store i32 %add.i17.i, ptr %len9.i.i, align 4
  %head.i.i2 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %27 = ptrtoint ptr %head.i.i2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i.i2, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i16.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i3 = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i4 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 19
  %29 = ptrtoint ptr %transport_header.i.i4 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i.i3, ptr %transport_header.i.i4, align 2
  %conv.i.i7 = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i8 = getelementptr i8, ptr %28, i32 %conv.i.i7
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr.i.i, align 1
  %32 = ptrtoint ptr %add.ptr.i.i8 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %add.ptr.i.i8, align 1
  %message_id = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i8, i32 0, i32 1
  %33 = ptrtoint ptr %message_id to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 73, ptr %message_id, align 1
  %pipe_handle = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %pipe_handle to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pipe_handle, align 1
  %pipe_handle6 = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i8, i32 0, i32 2
  %36 = ptrtoint ptr %pipe_handle6 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %pipe_handle6, align 1
  %data7 = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i, i32 0, i32 4
  %37 = ptrtoint ptr %data7 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %data7, align 1
  %39 = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i8, i32 0, i32 3
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %38, ptr %39, align 1
  %41 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %oskb, i32 0, i32 15, i32 0, i32 20
  %43 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %44 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %42, i32 %conv.i.i.i
  %pn_sdev.i = getelementptr inbounds %struct.phonethdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %pn_sdev.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %pn_sdev.i, align 1
  %pn_sobj.i = getelementptr inbounds %struct.phonethdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %47 = ptrtoint ptr %pn_sobj.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pn_sobj.i, align 1
  %49 = ptrtoint ptr %dst to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 35, ptr %dst, align 2
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %46, ptr %5, align 1
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %48, ptr %4, align 2
  %pn_res.i = getelementptr inbounds %struct.phonethdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %pn_res.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %pn_res.i, align 1
  %54 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %6, align 2
  %55 = call ptr @memset(ptr %7, i32 0, i32 11)
  %call8 = call i32 @pn_skb_send(ptr noundef %sk, ptr noundef nonnull %call.i.i, ptr noundef nonnull %dst) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dst) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pipe_handler_do_rcv(ptr noundef %sk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %type.i = alloca i8, align 1
  %buf.i = alloca [6 x i8], align 1
  %len.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %message_id = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %message_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %message_id, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %5, label %entry.sw.epilog_crit_edge [
    i8 33, label %sw.bb
    i8 32, label %entry.sw.bb3_crit_edge
    i8 65, label %sw.bb18
    i8 71, label %sw.bb42
    i8 96, label %sw.bb58
  ]

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len1.i, align 4
  %sub.i = add i32 %8, -1
  store i32 %sub.i, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %10)
  %cmp.i = icmp ult i32 %sub.i, %10
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !64

do.body4.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #8, !srcloc !79
  unreachable

__skb_pull.exit:                                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 1
  store ptr %add.ptr.i, ptr %data.i, align 4
  br label %sw.bb3

sw.bb3:                                           ; preds = %__skb_pull.exit, %entry.sw.bb3_crit_edge
  %len1.i98 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len1.i98 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len1.i98, align 4
  %sub.i99 = add i32 %14, -3
  store i32 %sub.i99, ptr %len1.i98, align 4
  %data_len.i100 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %15 = ptrtoint ptr %data_len.i100 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_len.i100, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i99, i32 %16)
  %cmp.i101 = icmp ult i32 %sub.i99, %16
  br i1 %cmp.i101, label %do.body4.i102, label %__skb_pull.exit105, !prof !64

do.body4.i102:                                    ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #8, !srcloc !79
  unreachable

__skb_pull.exit105:                               ; preds = %sw.bb3
  %data.i103 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data.i103 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i103, align 4
  %add.ptr.i104 = getelementptr i8, ptr %18, i32 3
  store ptr %add.ptr.i104, ptr %data.i103, align 4
  %rx_fc = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 9
  %19 = ptrtoint ptr %rx_fc to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rx_fc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %tobool.not = icmp ult i8 %20, 2
  br i1 %tobool.not, label %if.then, label %if.end9

if.then:                                          ; preds = %__skb_pull.exit105
  %call6 = tail call i32 @sock_queue_rcv_skb(ptr noundef %sk, ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then.cleanup_crit_edge, label %if.then.sw.epilog_crit_edge

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %__skb_pull.exit105
  %rx_credits = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 8
  %21 = ptrtoint ptr %rx_credits to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rx_credits, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp = icmp eq i8 %22, 0
  br i1 %cmp, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %sk_drops = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_drops, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %sk_drops, i32 1, i32 3, i32 1) #8
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_drops, ptr %sk_drops, i32 1, ptr elementtype(i32) %sk_drops) #8, !srcloc !59
  br label %sw.epilog

if.end13:                                         ; preds = %if.end9
  %dec = add i8 %22, -1
  %24 = ptrtoint ptr %rx_credits to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %dec, ptr %rx_credits, align 1
  %25 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %25, align 8
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %27 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %destructor.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %28(ptr noundef %skb) #8
  br label %skb_orphan.exit.i

do.body.i.i:                                      ; preds = %if.end13
  %29 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %tobool3.not.i.i = icmp eq ptr %31, null
  br i1 %tobool3.not.i.i, label %do.body.i.i.skb_orphan.exit.i_crit_edge, label %do.body7.i.i, !prof !60

do.body.i.i.skb_orphan.exit.i_crit_edge:          ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_orphan.exit.i

do.body7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #8, !srcloc !81
  unreachable

skb_orphan.exit.i:                                ; preds = %do.body.i.i.skb_orphan.exit.i_crit_edge, %if.then.i.i
  %32 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %sk, ptr %32, align 4
  %34 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @sock_rfree, ptr %destructor.i.i, align 4
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %35 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %truesize.i, align 8
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #8
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %36, ptr elementtype(i32) %sk_backlog.i) #8, !srcloc !59
  %skc_prot.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %38 = ptrtoint ptr %skc_prot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %skc_prot.i.i.i, align 8
  %memory_allocated.i.i.i = getelementptr inbounds %struct.proto, ptr %39, i32 0, i32 32
  %40 = ptrtoint ptr %memory_allocated.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %memory_allocated.i.i.i, align 4
  %tobool.i.not.i.i = icmp eq ptr %41, null
  br i1 %tobool.i.not.i.i, label %skb_orphan.exit.i.skb_set_owner_r.exit_crit_edge, label %if.end.i.i

skb_orphan.exit.i.skb_set_owner_r.exit_crit_edge: ; preds = %skb_orphan.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_set_owner_r.exit

if.end.i.i:                                       ; preds = %skb_orphan.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %truesize.i, align 8
  %sk_forward_alloc.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %44 = ptrtoint ptr %sk_forward_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sk_forward_alloc.i.i, align 8
  %sub.i.i = sub i32 %45, %43
  store i32 %sub.i.i, ptr %sk_forward_alloc.i.i, align 8
  br label %skb_set_owner_r.exit

skb_set_owner_r.exit:                             ; preds = %if.end.i.i, %skb_orphan.exit.i.skb_set_owner_r.exit_crit_edge
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %sk_receive_queue, ptr noundef %skb) #8
  %46 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  %49 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.i.not = icmp eq i32 %49, 0
  br i1 %tobool.i.not, label %if.then16, label %skb_set_owner_r.exit.cleanup_crit_edge

skb_set_owner_r.exit.cleanup_crit_edge:           ; preds = %skb_set_owner_r.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16:                                        ; preds = %skb_set_owner_r.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 77
  %50 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sk_data_ready, align 8
  tail call void %51(ptr noundef %sk) #8
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %52 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %53)
  %cmp20.not = icmp eq i8 %53, 2
  br i1 %cmp20.not, label %if.end23, label %sw.bb18.sw.epilog_crit_edge

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end23:                                         ; preds = %sw.bb18
  %54 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %54, align 4
  %57 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.i106.not = icmp eq i32 %57, 0
  br i1 %tobool.i106.not, label %if.then25, label %if.end23.if.end26_crit_edge

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %58 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sk_state_change, align 4
  tail call void %59(ptr noundef %sk) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23.if.end26_crit_edge
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %60 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %61)
  %cmp.i.i = icmp ult i32 %61, 8
  br i1 %cmp.i.i, label %if.end26.if.then29_crit_edge, label %cond.false.i.i, !prof !64

if.end26.if.then29_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

cond.false.i.i:                                   ; preds = %if.end26
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %62 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %61, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i.i.i.i)
  %cmp.i.i.i = icmp ult i32 %sub.i.i.i.i, 8
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %cond.false.i.i.pskb_pull.exit.i_crit_edge

cond.false.i.i.pskb_pull.exit.i_crit_edge:        ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pskb_pull.exit.i

land.lhs.true.i.i.i:                              ; preds = %cond.false.i.i
  %sub.i.i.i = sub nuw nsw i32 8, %sub.i.i.i.i
  %call2.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i) #8
  %tobool.not.i.i.i = icmp eq ptr %call2.i.i.i, null
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.if.then29_crit_edge, label %land.lhs.true.i.i.i.pskb_pull.exit.i_crit_edge

land.lhs.true.i.i.i.pskb_pull.exit.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pskb_pull.exit.i

land.lhs.true.i.i.i.if.then29_crit_edge:          ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

pskb_pull.exit.i:                                 ; preds = %land.lhs.true.i.i.i.pskb_pull.exit.i_crit_edge, %cond.false.i.i.pskb_pull.exit.i_crit_edge
  %64 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len1.i.i, align 4
  %sub4.i.i.i = add i32 %65, -8
  store i32 %sub4.i.i.i, ptr %len1.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %66 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %67, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %pskb_pull.exit.i.if.then29_crit_edge, label %if.end.i

pskb_pull.exit.i.if.then29_crit_edge:             ; preds = %pskb_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

if.end.i:                                         ; preds = %pskb_pull.exit.i
  %68 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %head.i.i, align 8
  %70 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i.i = zext i16 %71 to i32
  %add.ptr.i.i61.i = getelementptr i8, ptr %69, i32 %conv.i.i.i
  %72 = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i61.i, i32 0, i32 3
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp.not.i = icmp eq i8 %74, 0
  br i1 %cmp.not.i, label %if.end5.i, label %if.end.i.if.then29_crit_edge

if.end.i.if.then29_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

if.end5.i:                                        ; preds = %if.end.i
  %arrayidx.i = getelementptr %struct.pnpipehdr, ptr %add.ptr.i.i61.i, i32 1, i32 3
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i, align 1
  %rx_fc.i = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 9
  %tx_fc.i = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp7.not.i122 = icmp eq i8 %76, 0
  br i1 %cmp7.not.i122, label %if.end5.i.while.end.i_crit_edge, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  br label %while.body.i

if.end5.i.while.end.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end5.i.while.body.i_crit_edge
  %n_sb.0.i123 = phi i8 [ %dec.i, %cleanup.i.while.body.i_crit_edge ], [ %76, %if.end5.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type.i) #8
  %77 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -1, ptr %type.i, align 1, !annotation !68
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #8
  %78 = call ptr @memset(ptr %buf.i, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len.i) #8
  %79 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 6, ptr %len.i, align 1
  %call10.i = call fastcc ptr @pep_get_sb(ptr noundef %skb, ptr noundef nonnull %type.i, ptr noundef nonnull %len.i, ptr noundef nonnull %buf.i) #8
  %cmp11.i = icmp eq ptr %call10.i, null
  br i1 %cmp11.i, label %cleanup.thread.i, label %if.end14.i

cleanup.thread.i:                                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.i) #8
  br label %if.then29

if.end14.i:                                       ; preds = %while.body.i
  %80 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %type.i, align 1
  %82 = zext i8 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %81, label %if.end14.i.cleanup.i_crit_edge [
    i8 4, label %sw.bb.i
    i8 5, label %sw.bb28.i
  ]

if.end14.i.cleanup.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

sw.bb.i:                                          ; preds = %if.end14.i
  %83 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %len.i, align 1
  %conv16.i = zext i8 %84 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %84)
  %cmp17.i = icmp ult i8 %84, 2
  br i1 %cmp17.i, label %sw.bb.i.cleanup.i_crit_edge, label %lor.lhs.false.i

sw.bb.i.cleanup.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %sw.bb.i
  %85 = ptrtoint ptr %call10.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %call10.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %84, i8 %86)
  %cmp22.i = icmp ult i8 %84, %86
  br i1 %cmp22.i, label %lor.lhs.false.i.cleanup.i_crit_edge, label %if.end25.i

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end25.i:                                       ; preds = %lor.lhs.false.i
  %add.ptr.i107 = getelementptr i8, ptr %call10.i, i32 2
  %sub.i108 = add nsw i32 %conv16.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i108)
  %cmp12.not.i.i = icmp eq i32 %sub.i108, 0
  br i1 %cmp12.not.i.i, label %if.end25.i.pipe_negotiate_fc.exit.i_crit_edge, label %if.end25.i.for.body.i.i_crit_edge

if.end25.i.for.body.i.i_crit_edge:                ; preds = %if.end25.i
  br label %for.body.i.i

if.end25.i.pipe_negotiate_fc.exit.i_crit_edge:    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pipe_negotiate_fc.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end25.i.for.body.i.i_crit_edge
  %final_fc.014.i.i = phi i8 [ %final_fc.1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end25.i.for.body.i.i_crit_edge ]
  %i.013.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end25.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %add.ptr.i107, i32 %i.013.i.i
  %87 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %88, i8 %final_fc.014.i.i)
  %cmp2.i.i = icmp ugt i8 %88, %final_fc.014.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %88)
  %cmp5.i.i = icmp ult i8 %88, 4
  %or.cond.i.i = and i1 %cmp2.i.i, %cmp5.i.i
  %final_fc.1.i.i = select i1 %or.cond.i.i, i8 %88, i8 %final_fc.014.i.i
  %inc.i.i = add nuw i32 %i.013.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %sub.i108
  br i1 %exitcond.not.i.i, label %for.body.i.i.pipe_negotiate_fc.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.pipe_negotiate_fc.exit.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pipe_negotiate_fc.exit.i

pipe_negotiate_fc.exit.i:                         ; preds = %for.body.i.i.pipe_negotiate_fc.exit.i_crit_edge, %if.end25.i.pipe_negotiate_fc.exit.i_crit_edge
  %final_fc.0.lcssa.i.i = phi i8 [ 0, %if.end25.i.pipe_negotiate_fc.exit.i_crit_edge ], [ %final_fc.1.i.i, %for.body.i.i.pipe_negotiate_fc.exit.i_crit_edge ]
  %89 = ptrtoint ptr %tx_fc.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %final_fc.0.lcssa.i.i, ptr %tx_fc.i, align 1
  br label %cleanup.i

sw.bb28.i:                                        ; preds = %if.end14.i
  %90 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %len.i, align 1
  %conv29.i = zext i8 %91 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %91)
  %cmp30.i = icmp ult i8 %91, 2
  br i1 %cmp30.i, label %sw.bb28.i.cleanup.i_crit_edge, label %lor.lhs.false32.i

sw.bb28.i.cleanup.i_crit_edge:                    ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

lor.lhs.false32.i:                                ; preds = %sw.bb28.i
  %92 = ptrtoint ptr %call10.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %call10.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %91, i8 %93)
  %cmp36.i = icmp ult i8 %91, %93
  br i1 %cmp36.i, label %lor.lhs.false32.i.cleanup.i_crit_edge, label %if.end39.i

lor.lhs.false32.i.cleanup.i_crit_edge:            ; preds = %lor.lhs.false32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end39.i:                                       ; preds = %lor.lhs.false32.i
  %add.ptr40.i = getelementptr i8, ptr %call10.i, i32 2
  %sub42.i = add nsw i32 %conv29.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub42.i)
  %cmp12.not.i62.i = icmp eq i32 %sub42.i, 0
  br i1 %cmp12.not.i62.i, label %if.end39.i.pipe_negotiate_fc.exit74.i_crit_edge, label %if.end39.i.for.body.i72.i_crit_edge

if.end39.i.for.body.i72.i_crit_edge:              ; preds = %if.end39.i
  br label %for.body.i72.i

if.end39.i.pipe_negotiate_fc.exit74.i_crit_edge:  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pipe_negotiate_fc.exit74.i

for.body.i72.i:                                   ; preds = %for.body.i72.i.for.body.i72.i_crit_edge, %if.end39.i.for.body.i72.i_crit_edge
  %final_fc.014.i63.i = phi i8 [ %final_fc.1.i69.i, %for.body.i72.i.for.body.i72.i_crit_edge ], [ 0, %if.end39.i.for.body.i72.i_crit_edge ]
  %i.013.i64.i = phi i32 [ %inc.i70.i, %for.body.i72.i.for.body.i72.i_crit_edge ], [ 0, %if.end39.i.for.body.i72.i_crit_edge ]
  %arrayidx.i65.i = getelementptr i8, ptr %add.ptr40.i, i32 %i.013.i64.i
  %94 = ptrtoint ptr %arrayidx.i65.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.i65.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %95, i8 %final_fc.014.i63.i)
  %cmp2.i66.i = icmp ugt i8 %95, %final_fc.014.i63.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %95)
  %cmp5.i67.i = icmp ult i8 %95, 4
  %or.cond.i68.i = and i1 %cmp2.i66.i, %cmp5.i67.i
  %final_fc.1.i69.i = select i1 %or.cond.i68.i, i8 %95, i8 %final_fc.014.i63.i
  %inc.i70.i = add nuw i32 %i.013.i64.i, 1
  %exitcond.not.i71.i = icmp eq i32 %inc.i70.i, %sub42.i
  br i1 %exitcond.not.i71.i, label %for.body.i72.i.pipe_negotiate_fc.exit74.i_crit_edge, label %for.body.i72.i.for.body.i72.i_crit_edge

for.body.i72.i.for.body.i72.i_crit_edge:          ; preds = %for.body.i72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i72.i

for.body.i72.i.pipe_negotiate_fc.exit74.i_crit_edge: ; preds = %for.body.i72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pipe_negotiate_fc.exit74.i

pipe_negotiate_fc.exit74.i:                       ; preds = %for.body.i72.i.pipe_negotiate_fc.exit74.i_crit_edge, %if.end39.i.pipe_negotiate_fc.exit74.i_crit_edge
  %final_fc.0.lcssa.i73.i = phi i8 [ 0, %if.end39.i.pipe_negotiate_fc.exit74.i_crit_edge ], [ %final_fc.1.i69.i, %for.body.i72.i.pipe_negotiate_fc.exit74.i_crit_edge ]
  %96 = ptrtoint ptr %rx_fc.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %final_fc.0.lcssa.i73.i, ptr %rx_fc.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %pipe_negotiate_fc.exit74.i, %lor.lhs.false32.i.cleanup.i_crit_edge, %sw.bb28.i.cleanup.i_crit_edge, %pipe_negotiate_fc.exit.i, %lor.lhs.false.i.cleanup.i_crit_edge, %sw.bb.i.cleanup.i_crit_edge, %if.end14.i.cleanup.i_crit_edge
  %dec.i = add i8 %n_sb.0.i123, -1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.i) #8
  %cmp7.not.i = icmp eq i8 %dec.i, 0
  br i1 %cmp7.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %if.end5.i.while.end.i_crit_edge
  %97 = ptrtoint ptr %tx_fc.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %tx_fc.i, align 1
  %99 = ptrtoint ptr %rx_fc.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %rx_fc.i, align 4
  %call.i.i.i.i.i = call ptr @__alloc_skb(i32 noundef 192, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %while.end.i.if.then29_crit_edge, label %if.end.i.i.i.i

while.end.i.if.then29_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

if.end.i.i.i.i:                                   ; preds = %while.end.i
  call void @skb_set_owner_w(ptr noundef nonnull %call.i.i.i.i.i, ptr noundef %sk) #8
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 19
  %101 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %102, i32 188
  store ptr %add.ptr.i.i.i.i.i, ptr %data.i.i.i.i.i, align 4
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 16
  %103 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %104, i32 188
  store ptr %add.ptr1.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %data_len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 7
  %105 = ptrtoint ptr %data_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %data_len.i.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %106, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %pep_connresp_rcv.exit, label %do.body3.i.i.i.i.i, !prof !60

do.body3.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #8, !srcloc !62
  unreachable

pep_connresp_rcv.exit:                            ; preds = %if.end.i.i.i.i
  %add.ptr.i13.i.i.i.i = getelementptr i8, ptr %104, i32 192
  %107 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %add.ptr.i13.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %len9.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 6
  %108 = ptrtoint ptr %len9.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %len9.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %109, 4
  store i32 %add.i.i.i.i.i, ptr %len9.i.i.i.i.i, align 4
  %110 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 3, ptr %add.ptr.i.i.i.i.i, align 1
  %data.sroa.5.0.add.ptr.i.i.i.sroa_idx.i.i = getelementptr i8, ptr %102, i32 189
  %111 = ptrtoint ptr %data.sroa.5.0.add.ptr.i.i.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 4, ptr %data.sroa.5.0.add.ptr.i.i.i.sroa_idx.i.i, align 1
  %data.sroa.7.0.add.ptr.i.i.i.sroa_idx.i.i = getelementptr i8, ptr %102, i32 190
  %112 = ptrtoint ptr %data.sroa.7.0.add.ptr.i.i.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %98, ptr %data.sroa.7.0.add.ptr.i.i.i.sroa_idx.i.i, align 1
  %data.sroa.9.0.add.ptr.i.i.i.sroa_idx.i.i = getelementptr i8, ptr %102, i32 191
  %113 = ptrtoint ptr %data.sroa.9.0.add.ptr.i.i.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %100, ptr %data.sroa.9.0.add.ptr.i.i.i.sroa_idx.i.i, align 1
  %114 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i16.i.i.i.i = getelementptr i8, ptr %115, i32 -4
  store ptr %add.ptr.i16.i.i.i.i, ptr %data.i.i.i.i.i, align 4
  %116 = load i32, ptr %len9.i.i.i.i.i, align 4
  %add.i17.i.i.i.i = add i32 %116, 4
  store i32 %add.i17.i.i.i.i, ptr %len9.i.i.i.i.i, align 4
  %head.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 18
  %117 = ptrtoint ptr %head.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %head.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %add.ptr.i16.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %118 to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  %conv.i.i.i.i.i = trunc i32 %sub.ptr.sub.i.i.i.i.i to i16
  %transport_header.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 15, i32 0, i32 19
  %119 = ptrtoint ptr %transport_header.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv.i.i.i.i.i, ptr %transport_header.i.i.i.i.i, align 2
  %conv.i.i16.i.i.i = and i32 %sub.ptr.sub.i.i.i.i.i, 65535
  %add.ptr.i.i17.i.i.i = getelementptr i8, ptr %118, i32 %conv.i.i16.i.i.i
  %120 = ptrtoint ptr %add.ptr.i.i17.i.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %add.ptr.i.i17.i.i.i, align 1
  %message_id.i.i.i = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i17.i.i.i, i32 0, i32 1
  %121 = ptrtoint ptr %message_id.i.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 97, ptr %message_id.i.i.i, align 1
  %pipe_handle.i.i.i = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 7
  %122 = ptrtoint ptr %pipe_handle.i.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %pipe_handle.i.i.i, align 2
  %pipe_handle3.i.i.i = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i17.i.i.i, i32 0, i32 2
  %124 = ptrtoint ptr %pipe_handle3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %pipe_handle3.i.i.i, align 1
  %125 = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i17.i.i.i, i32 0, i32 3
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %125, align 1
  %call4.i.i.i = call i32 @pn_skb_send(ptr noundef %sk, ptr noundef nonnull %call.i.i.i.i.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool28.not = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool28.not, label %if.end32, label %pep_connresp_rcv.exit.if.then29_crit_edge

pep_connresp_rcv.exit.if.then29_crit_edge:        ; preds = %pep_connresp_rcv.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

if.then29:                                        ; preds = %pep_connresp_rcv.exit.if.then29_crit_edge, %while.end.i.if.then29_crit_edge, %cleanup.thread.i, %if.end.i.if.then29_crit_edge, %pskb_pull.exit.i.if.then29_crit_edge, %land.lhs.true.i.i.i.if.then29_crit_edge, %if.end26.if.then29_crit_edge
  %127 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %127)
  store volatile i8 8, ptr %skc_state, align 2
  br label %sw.epilog

if.end32:                                         ; preds = %pep_connresp_rcv.exit
  %init_enable = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 11
  %128 = ptrtoint ptr %init_enable to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %init_enable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %cmp34 = icmp eq i8 %129, 0
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %130 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %130)
  store volatile i8 3, ptr %skc_state, align 2
  br label %sw.epilog

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %131 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %131)
  store volatile i8 1, ptr %skc_state, align 2
  call fastcc void @pipe_start_flow_control(ptr noundef %sk)
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  %skc_state44 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %132 = ptrtoint ptr %skc_state44 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load volatile i8, ptr %skc_state44, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %133)
  %cmp46.not = icmp eq i8 %133, 2
  br i1 %cmp46.not, label %if.end49, label %sw.bb42.sw.epilog_crit_edge

sw.bb42.sw.epilog_crit_edge:                      ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end49:                                         ; preds = %sw.bb42
  %134 = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i, i32 0, i32 3
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %134, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %cmp.not.i113 = icmp eq i8 %136, 0
  br i1 %cmp.not.i113, label %if.end.i115, label %if.end49.if.then52_crit_edge

if.end49.if.then52_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

if.end.i115:                                      ; preds = %if.end49
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 188, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i.i114 = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i114, label %if.end.i115.if.then52_crit_edge, label %if.end.i.i.i

if.end.i115.if.then52_crit_edge:                  ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

if.end.i.i.i:                                     ; preds = %if.end.i115
  tail call void @skb_set_owner_w(ptr noundef nonnull %call.i.i.i.i, ptr noundef %sk) #8
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %137 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %138, i32 188
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %139 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %140, i32 188
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 7
  %141 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool.i.not.i.i.i.i = icmp eq i32 %142, 0
  br i1 %tobool.i.not.i.i.i.i, label %pep_enableresp_rcv.exit, label %do.body3.i.i.i.i, !prof !60

do.body3.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #8, !srcloc !62
  unreachable

pep_enableresp_rcv.exit:                          ; preds = %if.end.i.i.i
  %len9.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 6
  %143 = ptrtoint ptr %len9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %len9.i.i.i.i, align 4
  %add.ptr.i16.i.i.i = getelementptr i8, ptr %138, i32 184
  %145 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %add.ptr.i16.i.i.i, ptr %data.i.i.i.i, align 4
  %add.i17.i.i.i = add i32 %144, 4
  store i32 %add.i17.i.i.i, ptr %len9.i.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 18
  %146 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr.i16.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %147 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %conv.i.i.i.i = trunc i32 %sub.ptr.sub.i.i.i.i to i16
  %transport_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 15, i32 0, i32 19
  %148 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %conv.i.i.i.i, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i16.i.i = and i32 %sub.ptr.sub.i.i.i.i, 65535
  %add.ptr.i.i17.i.i = getelementptr i8, ptr %147, i32 %conv.i.i16.i.i
  %149 = ptrtoint ptr %add.ptr.i.i17.i.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 0, ptr %add.ptr.i.i17.i.i, align 1
  %message_id.i.i = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i17.i.i, i32 0, i32 1
  %150 = ptrtoint ptr %message_id.i.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 100, ptr %message_id.i.i, align 1
  %pipe_handle.i.i = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 7
  %151 = ptrtoint ptr %pipe_handle.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %pipe_handle.i.i, align 2
  %pipe_handle3.i.i = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i17.i.i, i32 0, i32 2
  %153 = ptrtoint ptr %pipe_handle3.i.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %152, ptr %pipe_handle3.i.i, align 1
  %154 = getelementptr inbounds %struct.pnpipehdr, ptr %add.ptr.i.i17.i.i, i32 0, i32 3
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %154, align 1
  %call4.i.i = tail call i32 @pn_skb_send(ptr noundef %sk, ptr noundef nonnull %call.i.i.i.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool51.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool51.not, label %if.end55, label %pep_enableresp_rcv.exit.if.then52_crit_edge

pep_enableresp_rcv.exit.if.then52_crit_edge:      ; preds = %pep_enableresp_rcv.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

if.then52:                                        ; preds = %pep_enableresp_rcv.exit.if.then52_crit_edge, %if.end.i115.if.then52_crit_edge, %if.end49.if.then52_crit_edge
  %156 = ptrtoint ptr %skc_state44 to i32
  call void @__asan_store1_noabort(i32 %156)
  store volatile i8 8, ptr %skc_state44, align 2
  br label %sw.epilog

if.end55:                                         ; preds = %pep_enableresp_rcv.exit
  call void @__sanitizer_cov_trace_pc() #10
  %157 = ptrtoint ptr %skc_state44 to i32
  call void @__asan_store1_noabort(i32 %157)
  store volatile i8 1, ptr %skc_state44, align 2
  tail call fastcc void @pipe_start_flow_control(ptr noundef %sk)
  br label %sw.epilog

sw.bb58:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @pipe_rcv_status(ptr noundef %sk, ptr noundef %skb)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb58, %if.end55, %if.then52, %sw.bb42.sw.epilog_crit_edge, %if.else, %if.then36, %if.then29, %sw.bb18.sw.epilog_crit_edge, %if.then12, %if.then.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb58 ], [ 0, %sw.bb42.sw.epilog_crit_edge ], [ 0, %if.then52 ], [ 0, %if.end55 ], [ 0, %sw.bb18.sw.epilog_crit_edge ], [ 0, %if.then29 ], [ 0, %if.then36 ], [ 0, %if.else ], [ 1, %if.then12 ], [ 1, %if.then.sw.epilog_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then16, %skb_set_owner_r.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %sw.epilog ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %skb_set_owner_r.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sk_receive_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pipe_start_flow_control(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_fc = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 10
  %0 = ptrtoint ptr %tx_fc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_fc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %tobool.not = icmp ult i8 %1, 2
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tx_credits = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_credits, i32 noundef 4) #8
  %2 = ptrtoint ptr %tx_credits to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %tx_credits, align 4
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 78
  %3 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk_write_space, align 4
  tail call void %4(ptr noundef %sk) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %5 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.not.i = icmp eq i8 %6, 1
  br i1 %cmp.not.i, label %do.end8.i, label %do.body3.i, !prof !60

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/phonet/pep.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 231, 0\0A.popsection", ""() #8, !srcloc !61
  unreachable

do.end8.i:                                        ; preds = %if.end
  %rx_fc.i = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 9
  %7 = ptrtoint ptr %rx_fc.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rx_fc.i, align 4
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %8, label %do.end8.i.pipe_grant_credits.exit_crit_edge [
    i8 3, label %sw.bb15.i
    i8 2, label %sw.bb.i
  ]

do.end8.i.pipe_grant_credits.exit_crit_edge:      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pipe_grant_credits.exit

sw.bb.i:                                          ; preds = %do.end8.i
  %call10.i = tail call fastcc i32 @pipe_snd_status(ptr noundef %sk, i8 noundef zeroext 0, i8 noundef zeroext 2, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp eq i32 %call10.i, 0
  br i1 %cmp11.i, label %if.then13.i, label %sw.bb.i.pipe_grant_credits.exit_crit_edge

sw.bb.i.pipe_grant_credits.exit_crit_edge:        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pipe_grant_credits.exit

if.then13.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_credits.i = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 8
  %10 = ptrtoint ptr %rx_credits.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %rx_credits.i, align 1
  br label %pipe_grant_credits.exit

sw.bb15.i:                                        ; preds = %do.end8.i
  %rx_credits16.i = getelementptr inbounds %struct.pep_sock, ptr %sk, i32 0, i32 8
  %11 = ptrtoint ptr %rx_credits16.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rx_credits16.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp18.i = icmp ugt i8 %12, 3
  br i1 %cmp18.i, label %sw.bb15.i.pipe_grant_credits.exit_crit_edge, label %if.end21.i

sw.bb15.i.pipe_grant_credits.exit_crit_edge:      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pipe_grant_credits.exit

if.end21.i:                                       ; preds = %sw.bb15.i
  %sub.i = sub nuw nsw i8 10, %12
  %call25.i = tail call fastcc i32 @pipe_snd_status(ptr noundef %sk, i8 noundef zeroext 1, i8 noundef zeroext %sub.i, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp eq i32 %call25.i, 0
  br i1 %cmp26.i, label %if.then28.i, label %if.end21.i.pipe_grant_credits.exit_crit_edge

if.end21.i.pipe_grant_credits.exit_crit_edge:     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pipe_grant_credits.exit

if.then28.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %rx_credits16.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 10, ptr %rx_credits16.i, align 1
  br label %pipe_grant_credits.exit

pipe_grant_credits.exit:                          ; preds = %if.then28.i, %if.end21.i.pipe_grant_credits.exit_crit_edge, %sw.bb15.i.pipe_grant_credits.exit_crit_edge, %if.then13.i, %sw.bb.i.pipe_grant_credits.exit_crit_edge, %do.end8.i.pipe_grant_credits.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pn_sock_unhash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phonet_proto_register(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !27, !28, !29, !31, !32, !34, !35, !37, !39, !40, !42, !44}
!llvm.named.register.sp = !{!46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__initcall__kmod_pn_pep__459_1360_pep_register6, !1, !"__initcall__kmod_pn_pep__459_1360_pep_register6", i1 false, i1 false}
!1 = !{!"../net/phonet/pep.c", i32 1360, i32 1}
!2 = !{ptr @__exitcall_pep_unregister, !3, !"__exitcall_pep_unregister", i1 false, i1 false}
!3 = !{!"../net/phonet/pep.c", i32 1361, i32 1}
!4 = !{ptr @__UNIQUE_ID_author460, !5, !"__UNIQUE_ID_author460", i1 false, i1 false}
!5 = !{!"../net/phonet/pep.c", i32 1362, i32 1}
!6 = !{ptr @__UNIQUE_ID_description461, !7, !"__UNIQUE_ID_description461", i1 false, i1 false}
!7 = !{!"../net/phonet/pep.c", i32 1363, i32 1}
!8 = !{ptr @__UNIQUE_ID_file462, !9, !"__UNIQUE_ID_file462", i1 false, i1 false}
!9 = !{!"../net/phonet/pep.c", i32 1364, i32 1}
!10 = !{ptr @__UNIQUE_ID_license463, !9, !"__UNIQUE_ID_license463", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias464, !12, !"__UNIQUE_ID_alias464", i1 false, i1 false}
!12 = !{!"../net/phonet/pep.c", i32 1365, i32 1}
!13 = !{ptr @pep_pn_proto, !14, !"pep_pn_proto", i1 false, i1 false}
!14 = !{!"../net/phonet/pep.c", i32 1344, i32 37}
!15 = !{ptr @pep_proto, !16, !"pep_proto", i1 false, i1 false}
!16 = !{!"../net/phonet/pep.c", i32 1325, i32 21}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/phonet/pep.c", i32 442, i32 3}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pipe_do_rcv.descriptor, !18, !"descriptor", i1 false, i1 false}
!23 = !{ptr @pep_reject_conn.data, !24, !"data", i1 false, i1 false}
!24 = !{!"../net/phonet/pep.c", i32 183, i32 18}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/phonet/pep.c", i32 263, i32 3}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @pipe_rcv_status.descriptor, !26, !"descriptor", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/phonet/pep.c", i32 295, i32 3}
!31 = !{ptr @pipe_rcv_status.descriptor.6, !30, !"descriptor", i1 false, i1 false}
!32 = !{ptr @skb_queue_head_init.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @pep_accept_conn.data, !36, !"data", i1 false, i1 false}
!36 = !{!"../net/phonet/pep.c", i32 161, i32 18}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/net/sock.h", i32 729, i32 3}
!46 = !{!"sp"}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 2148237653}
!57 = !{i64 722476, i64 722501, i64 722523, i64 722539, i64 722551, i64 722571, i64 722595, i64 722611, i64 722623}
!58 = !{i64 2148237841}
!59 = !{i64 2148238234, i64 2148238260, i64 2148238289, i64 2148238323, i64 2148238354, i64 2148238377}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{i64 2156857755, i64 2156858236, i64 2156857792, i64 2156857848, i64 2156857882, i64 2156857906, i64 2156857947, i64 2156857968, i64 2156857996, i64 2156858030}
!62 = !{i64 2155048957, i64 2155049445, i64 2155048994, i64 2155049050, i64 2155049084, i64 2155049108, i64 2155049149, i64 2155049170, i64 2155049198, i64 2155049232}
!63 = !{i64 2148239764, i64 2148239796, i64 2148239825, i64 2148239859, i64 2148239890, i64 2148239913}
!64 = !{!"branch_weights", i32 1, i32 2000}
!65 = !{i64 2148327765}
!66 = !{i64 2148242229, i64 2148242261, i64 2148242290, i64 2148242324, i64 2148242355, i64 2148242378}
!67 = !{i64 2149650830}
!68 = !{!"auto-init"}
!69 = !{i64 3076117}
!70 = !{i64 3076314}
!71 = !{i64 2150561547}
!72 = !{i64 2156878883, i64 2156879163, i64 2156879497, i64 2156879831}
!73 = !{i64 2150580562, i64 2150580587}
!74 = !{i64 2156890585, i64 2156890865, i64 2156891199, i64 2156891533}
!75 = !{i64 2156901954, i64 2156902234, i64 2156902568, i64 2156902902}
!76 = !{i64 2156910812, i64 2156911092, i64 2156911426, i64 2156911760}
!77 = !{i64 2156914440, i64 2156914922, i64 2156914477, i64 2156914533, i64 2156914567, i64 2156914591, i64 2156914632, i64 2156914653, i64 2156914681, i64 2156914715}
!78 = !{i64 2156862747, i64 2156863228, i64 2156862784, i64 2156862840, i64 2156862874, i64 2156862898, i64 2156862939, i64 2156862960, i64 2156862988, i64 2156863022}
!79 = !{i64 2155051925, i64 2155052413, i64 2155051962, i64 2155052018, i64 2155052052, i64 2155052076, i64 2155052117, i64 2155052138, i64 2155052166, i64 2155052200}
!80 = !{i64 2148720049, i64 2148720054, i64 2148720067, i64 2148720111, i64 2148720145, i64 2148720166}
!81 = !{i64 2155066975, i64 2155067463, i64 2155067012, i64 2155067068, i64 2155067102, i64 2155067126, i64 2155067167, i64 2155067188, i64 2155067216, i64 2155067250}
