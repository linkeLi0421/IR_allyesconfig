; ModuleID = '/llk/IR_all_yes/net/qrtr/af_qrtr.c_pt.bc'
source_filename = "../net/qrtr/af_qrtr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+qrtr_endpoint_post\22, \22a\22\09"
module asm "\09.weak\09__crc_qrtr_endpoint_post\09\09\09\09"
module asm "\09.long\09__crc_qrtr_endpoint_post\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qrtr_endpoint_post:\09\09\09\09\09"
module asm "\09.asciz \09\22qrtr_endpoint_post\22\09\09\09\09\09"
module asm "__kstrtabns_qrtr_endpoint_post:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+qrtr_endpoint_register\22, \22a\22\09"
module asm "\09.weak\09__crc_qrtr_endpoint_register\09\09\09\09"
module asm "\09.long\09__crc_qrtr_endpoint_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qrtr_endpoint_register:\09\09\09\09\09"
module asm "\09.asciz \09\22qrtr_endpoint_register\22\09\09\09\09\09"
module asm "__kstrtabns_qrtr_endpoint_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+qrtr_endpoint_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_qrtr_endpoint_unregister\09\09\09\09"
module asm "\09.long\09__crc_qrtr_endpoint_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qrtr_endpoint_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22qrtr_endpoint_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_qrtr_endpoint_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.104, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.104 = type { ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qrtr_endpoint = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.qrtr_hdr_v1 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qrtr_hdr_v2 = type { i8, i8, i8, i8, i32, i16, i16, i16, i16 }
%struct.qrtr_node = type { %struct.mutex, ptr, %struct.kref, i32, %struct.xarray, %struct.mutex, %struct.sk_buff_head, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.qrtr_ctrl_pkt = type { i32, %union.anon.145 }
%union.anon.145 = type { %struct.anon.146 }
%struct.anon.146 = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.qrtr_tx_flow = type { %struct.wait_queue_head, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sock_common = type { %union.anon.97, %union.anon.99, %union.anon.100, i16, i8, i8, i32, %union.anon.102, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.105, [0 x i32], %union.anon.106, i16, i16, %union.anon.107, %struct.refcount_struct, [0 x i32], %union.anon.108 }
%union.anon.97 = type { i64 }
%union.anon.99 = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.102 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { %struct.hlist_node }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i32 }
%struct.sockaddr_qrtr = type { i16, i32, i32 }
%struct.radix_tree_iter = type { i32, i32, i32, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.qrtr_sock = type { %struct.sock, %struct.sockaddr_qrtr, %struct.sockaddr_qrtr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.109, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.110, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.111, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.109 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.110 = type { ptr }
%union.anon.111 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.ifreq = type { %union.anon.2, %union.anon.3 }
%union.anon.2 = type { [16 x i8] }
%union.anon.3 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.103, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.83, %union.anon.84 }
%union.anon.83 = type { ptr }
%union.anon.84 = type { i64 }
%union.anon.103 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.72, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.47 }
%struct.llist_node = type { ptr }
%union.anon.47 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.49 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.72 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@qrtr_endpoint_post._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013qrtr: Invalid version %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qrtr_endpoint_post\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/qrtr/af_qrtr.c\00", [45 x i8] zeroinitializer }, align 32
@qrtr_endpoint_post._entry_ptr = internal global ptr @qrtr_endpoint_post._entry, section ".printk_index", align 4
@__kstrtab_qrtr_endpoint_post = external dso_local constant [0 x i8], align 1
@__kstrtabns_qrtr_endpoint_post = external dso_local constant [0 x i8], align 1
@__ksymtab_qrtr_endpoint_post = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qrtr_endpoint_post to i32), ptr @__kstrtab_qrtr_endpoint_post, ptr @__kstrtabns_qrtr_endpoint_post }, section "___ksymtab_gpl+qrtr_endpoint_post", align 4
@qrtr_endpoint_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&node->ep_lock\00", [17 x i8] zeroinitializer }, align 32
@qrtr_endpoint_register.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&node->qrtr_tx_lock\00", [44 x i8] zeroinitializer }, align 32
@qrtr_node_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @qrtr_node_lock, i64 52), ptr getelementptr (i8, ptr @qrtr_node_lock, i64 52) }, ptr @qrtr_node_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@qrtr_all_nodes = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @qrtr_all_nodes, ptr @qrtr_all_nodes }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_qrtr_endpoint_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_qrtr_endpoint_register = external dso_local constant [0 x i8], align 1
@__ksymtab_qrtr_endpoint_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qrtr_endpoint_register to i32), ptr @__kstrtab_qrtr_endpoint_register, ptr @__kstrtabns_qrtr_endpoint_register }, section "___ksymtab_gpl+qrtr_endpoint_register", align 4
@qrtr_nodes_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@qrtr_nodes = internal global { %struct.xarray, [44 x i8] } { %struct.xarray { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 2592, ptr null }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_qrtr_endpoint_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_qrtr_endpoint_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_qrtr_endpoint_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qrtr_endpoint_unregister to i32), ptr @__kstrtab_qrtr_endpoint_unregister, ptr @__kstrtabns_qrtr_endpoint_unregister }, section "___ksymtab_gpl+qrtr_endpoint_unregister", align 4
@__initcall__kmod_qrtr__471_1309_qrtr_proto_init2 = internal global ptr @qrtr_proto_init, section ".initcall2.init", align 4
@qrtr_family = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 42, ptr @qrtr_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@qrtr_proto = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 984, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.104 zeroinitializer, ptr null, [32 x i8] c"QIPCRTR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@__exitcall_qrtr_proto_fini = internal global ptr @qrtr_proto_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_description472 = internal constant [44 x i8] c"qrtr.description=Qualcomm IPC-router driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file473 = internal constant [24 x i8] c"qrtr.file=net/qrtr/qrtr\00", section ".modinfo", align 1
@__UNIQUE_ID_license474 = internal constant [20 x i8] c"qrtr.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias475 = internal constant [21 x i8] c"qrtr.alias=net-pf-42\00", section ".modinfo", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qrtr_node_lock.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qrtr_node_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qrtr_nodes_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qrtr_nodes.xa_lock\00", [45 x i8] zeroinitializer }, align 32
@qrtr_ports = internal global { %struct.xarray, [44 x i8] } { %struct.xarray { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qrtr_ports.xa_lock\00", [45 x i8] zeroinitializer }, align 32
@qrtr_proto_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 42, ptr null, ptr @qrtr_release, ptr @qrtr_bind, ptr @qrtr_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @qrtr_getname, ptr @datagram_poll, ptr @qrtr_ioctl, ptr @sock_gettstamp, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @qrtr_sendmsg, ptr @qrtr_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@qrtr_tx_wait.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&flow->resume_tx\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 7]
@__sancov_gen_cov_switch_values.20 = internal global [14 x i64] [i64 12, i64 32, i64 21521, i64 21531, i64 35083, i64 35084, i64 35093, i64 35094, i64 35095, i64 35096, i64 35097, i64 35098, i64 35099, i64 35100]
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 492, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 588, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 594, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"qrtr_node_lock\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"qrtr_all_nodes\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 106, i32 8 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"qrtr_nodes_lock\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [11 x i8] c"qrtr_nodes\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [12 x i8] c"qrtr_family\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1279, i32 38 }
@___asan_gen_.60 = private unnamed_addr constant [11 x i8] c"qrtr_proto\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1247, i32 21 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 695, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 723, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 1984, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 378, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 108, i32 8 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 104, i32 8 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 103, i32 8 }
@___asan_gen_.96 = private unnamed_addr constant [11 x i8] c"qrtr_ports\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 111, i32 8 }
@___asan_gen_.102 = private unnamed_addr constant [15 x i8] c"qrtr_proto_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1227, i32 31 }
@___asan_gen_.105 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.109 = private constant [22 x i8] c"../net/qrtr/af_qrtr.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 274, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 230, i32 6 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 214, i32 2 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_alias475, ptr @__UNIQUE_ID_description472, ptr @__UNIQUE_ID_file473, ptr @__UNIQUE_ID_license474, ptr @__exitcall_qrtr_proto_fini, ptr @__initcall__kmod_qrtr__471_1309_qrtr_proto_init2, ptr @__ksymtab_qrtr_endpoint_post, ptr @__ksymtab_qrtr_endpoint_register, ptr @__ksymtab_qrtr_endpoint_unregister, ptr @qrtr_endpoint_post._entry, ptr @qrtr_endpoint_post._entry_ptr, ptr @qrtr_proto_fini, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @qrtr_endpoint_register.__key, ptr @.str.3, ptr @qrtr_endpoint_register.__key.4, ptr @.str.5, ptr @qrtr_node_lock, ptr @qrtr_all_nodes, ptr @qrtr_nodes_lock, ptr @qrtr_nodes, ptr @qrtr_family, ptr @qrtr_proto, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @skb_queue_head_init.__key, ptr @.str.9, ptr @xa_init_flags.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @qrtr_ports, ptr @.str.15, ptr @qrtr_proto_ops, ptr @qrtr_tx_wait.__key, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qrtr_endpoint_post._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qrtr_endpoint_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qrtr_endpoint_register.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qrtr_node_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qrtr_all_nodes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qrtr_nodes_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qrtr_nodes to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qrtr_family to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qrtr_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qrtr_ports to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qrtr_proto_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qrtr_tx_wait.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qrtr_endpoint_post(ptr nocapture noundef readonly %ep, ptr nocapture noundef readonly %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %node1 = getelementptr inbounds %struct.qrtr_endpoint, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %node1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp ne i32 %len, 0
  %and = and i32 %len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.end, label %entry.cleanup112_crit_edge

entry.cleanup112_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112

if.end:                                           ; preds = %entry
  %call = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %len, i32 noundef 10784) #10
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup112_crit_edge, label %if.end4

if.end.cleanup112_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112

if.end4:                                          ; preds = %if.end
  %cb5 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %do.end [
    i8 1, label %sw.bb
    i8 3, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %len)
  %cmp6 = icmp ult i32 %len, 32
  br i1 %cmp6, label %sw.bb.err_crit_edge, label %if.end9

sw.bb.err_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end9:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %type = getelementptr inbounds %struct.qrtr_hdr_v1, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %type, align 1
  %7 = lshr i32 %6, 24
  %conv10 = trunc i32 %7 to i8
  %type11 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 16
  %8 = ptrtoint ptr %type11 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv10, ptr %type11, align 4
  %src_node_id = getelementptr inbounds %struct.qrtr_hdr_v1, ptr %data, i32 0, i32 2
  %9 = ptrtoint ptr %src_node_id to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %src_node_id, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %cb5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %cb5, align 4
  %src_port_id = getelementptr inbounds %struct.qrtr_hdr_v1, ptr %data, i32 0, i32 3
  %13 = ptrtoint ptr %src_port_id to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %src_port_id, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %src_port = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %src_port to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %src_port, align 4
  %confirm_rx = getelementptr inbounds %struct.qrtr_hdr_v1, ptr %data, i32 0, i32 4
  %17 = ptrtoint ptr %confirm_rx to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %confirm_rx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool12 = icmp ne i32 %18, 0
  %conv14 = zext i1 %tobool12 to i8
  %confirm_rx15 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 17
  %19 = ptrtoint ptr %confirm_rx15 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv14, ptr %confirm_rx15, align 1
  %dst_node_id = getelementptr inbounds %struct.qrtr_hdr_v1, ptr %data, i32 0, i32 6
  %20 = ptrtoint ptr %dst_node_id to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %dst_node_id, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %dst_node = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 8
  %23 = ptrtoint ptr %dst_node to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %dst_node, align 4
  %dst_port_id = getelementptr inbounds %struct.qrtr_hdr_v1, ptr %data, i32 0, i32 7
  %24 = ptrtoint ptr %dst_port_id to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %dst_port_id, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %dst_port = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 12
  %27 = ptrtoint ptr %dst_port to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %dst_port, align 4
  %size16 = getelementptr inbounds %struct.qrtr_hdr_v1, ptr %data, i32 0, i32 5
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %len)
  %cmp18 = icmp ult i32 %len, 16
  br i1 %cmp18, label %sw.bb17.err_crit_edge, label %if.end21

sw.bb17.err_crit_edge:                            ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end21:                                         ; preds = %sw.bb17
  %optlen = getelementptr inbounds %struct.qrtr_hdr_v2, ptr %data, i32 0, i32 3
  %28 = ptrtoint ptr %optlen to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %optlen, align 1
  %conv22 = zext i8 %29 to i32
  %add = add nuw nsw i32 %conv22, 16
  %type23 = getelementptr inbounds %struct.qrtr_hdr_v2, ptr %data, i32 0, i32 1
  %30 = ptrtoint ptr %type23 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %type23, align 1
  %type24 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 16
  %32 = ptrtoint ptr %type24 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %type24, align 4
  %flags = getelementptr inbounds %struct.qrtr_hdr_v2, ptr %data, i32 0, i32 2
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %flags, align 2
  %35 = and i8 %34, 1
  %confirm_rx33 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 17
  %36 = ptrtoint ptr %confirm_rx33 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %confirm_rx33, align 1
  %src_node_id34 = getelementptr inbounds %struct.qrtr_hdr_v2, ptr %data, i32 0, i32 5
  %37 = ptrtoint ptr %src_node_id34 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %src_node_id34, align 4
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  %conv35 = zext i16 %39 to i32
  %40 = ptrtoint ptr %cb5 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv35, ptr %cb5, align 4
  %src_port_id37 = getelementptr inbounds %struct.qrtr_hdr_v2, ptr %data, i32 0, i32 6
  %41 = ptrtoint ptr %src_port_id37 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %src_port_id37, align 2
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  %conv38 = zext i16 %43 to i32
  %src_port39 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 4
  %44 = ptrtoint ptr %src_port39 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv38, ptr %src_port39, align 4
  %dst_node_id40 = getelementptr inbounds %struct.qrtr_hdr_v2, ptr %data, i32 0, i32 7
  %45 = ptrtoint ptr %dst_node_id40 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %dst_node_id40, align 4
  %47 = tail call i16 @llvm.bswap.i16(i16 %46)
  %conv41 = zext i16 %47 to i32
  %dst_node42 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 8
  %48 = ptrtoint ptr %dst_node42 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv41, ptr %dst_node42, align 4
  %dst_port_id43 = getelementptr inbounds %struct.qrtr_hdr_v2, ptr %data, i32 0, i32 8
  %49 = ptrtoint ptr %dst_port_id43 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %dst_port_id43, align 2
  %51 = tail call i16 @llvm.bswap.i16(i16 %50)
  %conv44 = zext i16 %51 to i32
  %dst_port45 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 12
  %52 = ptrtoint ptr %dst_port45 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv44, ptr %dst_port45, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -257, i16 %42)
  %cmp47 = icmp eq i16 %42, -257
  br i1 %cmp47, label %if.then49, label %if.end21.if.end51_crit_edge

if.end21.if.end51_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then49:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %src_port39 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -2, ptr %src_port39, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end21.if.end51_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -257, i16 %50)
  %cmp53 = icmp eq i16 %50, -257
  br i1 %cmp53, label %if.then55, label %if.end51.if.end57_crit_edge

if.end51.if.end57_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %dst_port45 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -2, ptr %dst_port45, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end51.if.end57_crit_edge
  %size58 = getelementptr inbounds %struct.qrtr_hdr_v2, ptr %data, i32 0, i32 4
  br label %sw.epilog

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %3 to i32
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #13
  br label %err

sw.epilog:                                        ; preds = %if.end57, %if.end9
  %.sink.in = phi ptr [ %size58, %if.end57 ], [ %size16, %if.end9 ]
  %hdrlen.0 = phi i32 [ %add, %if.end57 ], [ 32, %if.end9 ]
  %55 = ptrtoint ptr %.sink.in to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %.sink = load i32, ptr %.sink.in, align 1
  %56 = tail call i32 @llvm.bswap.i32(i32 %.sink)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.sink)
  %tobool60.not = icmp eq i32 %.sink, 0
  br i1 %tobool60.not, label %sw.epilog.err_crit_edge, label %lor.lhs.false61

sw.epilog.err_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

lor.lhs.false61:                                  ; preds = %sw.epilog
  %add62 = add i32 %56, 3
  %and63 = and i32 %add62, -4
  %add64 = add i32 %and63, %hdrlen.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add64, i32 %len)
  %cmp65.not = icmp eq i32 %add64, %len
  br i1 %cmp65.not, label %if.end68, label %lor.lhs.false61.err_crit_edge

lor.lhs.false61.err_crit_edge:                    ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end68:                                         ; preds = %lor.lhs.false61
  %dst_port69 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 12
  %57 = ptrtoint ptr %dst_port69 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dst_port69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %58)
  %cmp70.not = icmp eq i32 %58, -2
  br i1 %cmp70.not, label %if.end68.if.end82_crit_edge, label %land.lhs.true

if.end68.if.end82_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

land.lhs.true:                                    ; preds = %if.end68
  %type72 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 16
  %59 = ptrtoint ptr %type72 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %type72, align 4
  %61 = zext i8 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %60, label %land.lhs.true.err_crit_edge [
    i8 1, label %land.lhs.true.if.end82_crit_edge
    i8 7, label %land.lhs.true.if.end82_crit_edge182
  ]

land.lhs.true.if.end82_crit_edge182:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

land.lhs.true.if.end82_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

land.lhs.true.err_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end82:                                         ; preds = %land.lhs.true.if.end82_crit_edge, %land.lhs.true.if.end82_crit_edge182, %if.end68.if.end82_crit_edge
  %add.ptr = getelementptr i8, ptr %data, i32 %hdrlen.0
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef %56) #10
  %62 = call ptr @memcpy(ptr %call.i, ptr %add.ptr, i32 %56)
  %63 = ptrtoint ptr %cb5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cb5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %cmp.i = icmp eq i32 %64, -1
  br i1 %cmp.i, label %if.end82.qrtr_node_assign.exit_crit_edge, label %do.body1.i

if.end82.qrtr_node_assign.exit_crit_edge:         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %qrtr_node_assign.exit

do.body1.i:                                       ; preds = %if.end82
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @qrtr_nodes_lock) #10
  %call6.i = tail call i32 @radix_tree_insert(ptr noundef nonnull @qrtr_nodes, i32 noundef %64, ptr noundef %1) #10
  %nid7.i = getelementptr inbounds %struct.qrtr_node, ptr %1, i32 0, i32 3
  %65 = ptrtoint ptr %nid7.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nid7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %cmp8.i = icmp eq i32 %66, -1
  br i1 %cmp8.i, label %if.then10.i, label %do.body1.i.if.end12.i_crit_edge

do.body1.i.if.end12.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then10.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %nid7.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %64, ptr %nid7.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %do.body1.i.if.end12.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @qrtr_nodes_lock, i32 noundef %call3.i) #10
  br label %qrtr_node_assign.exit

qrtr_node_assign.exit:                            ; preds = %if.end12.i, %if.end82.qrtr_node_assign.exit_crit_edge
  %type85 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 16
  %68 = ptrtoint ptr %type85 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %type85, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %69)
  %cmp87 = icmp eq i8 %69, 4
  br i1 %cmp87, label %if.then89, label %qrtr_node_assign.exit.if.end96_crit_edge

qrtr_node_assign.exit.if.end96_crit_edge:         ; preds = %qrtr_node_assign.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.then89:                                        ; preds = %qrtr_node_assign.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %56)
  %cmp90 = icmp ult i32 %56, 20
  br i1 %cmp90, label %if.then89.err_crit_edge, label %cleanup.thread

if.then89.err_crit_edge:                          ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

cleanup.thread:                                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  %70 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %add.ptr, i32 0, i32 1
  %node95 = getelementptr inbounds %struct.anon.146, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %node95 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %node95, align 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  tail call fastcc void @qrtr_node_assign(ptr noundef %1, i32 noundef %73)
  %74 = ptrtoint ptr %type85 to i32
  call void @__asan_load1_noabort(i32 %74)
  %.pr = load i8, ptr %type85, align 4
  br label %if.end96

if.end96:                                         ; preds = %cleanup.thread, %qrtr_node_assign.exit.if.end96_crit_edge
  %75 = phi i8 [ %.pr, %cleanup.thread ], [ %69, %qrtr_node_assign.exit.if.end96_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %75)
  %cmp99 = icmp eq i8 %75, 7
  br i1 %cmp99, label %if.then101, label %if.else

if.then101:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @qrtr_tx_resume(ptr noundef %1, ptr noundef nonnull %call)
  br label %cleanup112

if.else:                                          ; preds = %if.end96
  %76 = ptrtoint ptr %dst_port69 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dst_port69, align 4
  %call103 = tail call fastcc ptr @qrtr_port_lookup(i32 noundef %77)
  %tobool104.not = icmp eq ptr %call103, null
  br i1 %tobool104.not, label %if.else.err_crit_edge, label %if.end106

if.else.err_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end106:                                        ; preds = %if.else
  %call107 = tail call i32 @sock_queue_rcv_skb(ptr noundef nonnull %call103, ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  tail call fastcc void @qrtr_port_put(ptr noundef nonnull %call103)
  br i1 %tobool108.not, label %if.end106.cleanup112_crit_edge, label %if.end106.err_crit_edge

if.end106.err_crit_edge:                          ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end106.cleanup112_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112

err:                                              ; preds = %if.end106.err_crit_edge, %if.else.err_crit_edge, %if.then89.err_crit_edge, %land.lhs.true.err_crit_edge, %lor.lhs.false61.err_crit_edge, %sw.epilog.err_crit_edge, %do.end, %sw.bb17.err_crit_edge, %sw.bb.err_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call, i32 noundef 0) #10
  br label %cleanup112

cleanup112:                                       ; preds = %err, %if.end106.cleanup112_crit_edge, %if.then101, %if.end.cleanup112_crit_edge, %entry.cleanup112_crit_edge
  %retval.0 = phi i32 [ -22, %err ], [ -22, %entry.cleanup112_crit_edge ], [ -12, %if.end.cleanup112_crit_edge ], [ 0, %if.then101 ], [ 0, %if.end106.cleanup112_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qrtr_node_assign(ptr noundef %node, i32 noundef %nid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %nid)
  %cmp = icmp eq i32 %nid, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body1:                                         ; preds = %entry
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @qrtr_nodes_lock) #10
  %call6 = tail call i32 @radix_tree_insert(ptr noundef nonnull @qrtr_nodes, i32 noundef %nid, ptr noundef %node) #10
  %nid7 = getelementptr inbounds %struct.qrtr_node, ptr %node, i32 0, i32 3
  %0 = ptrtoint ptr %nid7 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nid7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp8 = icmp eq i32 %1, -1
  br i1 %cmp8, label %if.then10, label %do.body1.if.end12_crit_edge

do.body1.if.end12_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %nid7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %nid, ptr %nid7, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.body1.if.end12_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @qrtr_nodes_lock, i32 noundef %call3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qrtr_tx_resume(ptr noundef %node, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %1, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %port, align 1
  %4 = call i32 @llvm.bswap.i32(i32 %3)
  %5 = tail call i32 @llvm.read_register.i32(metadata !75) #10
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %qrtr_tx_flow = getelementptr inbounds %struct.qrtr_node, ptr %node, i32 0, i32 4
  %call = tail call ptr @radix_tree_lookup(ptr noundef %qrtr_tx_flow, i32 noundef %4) #10
  %call.i13 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i13, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i16

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i16:                                ; preds = %rcu_read_lock.exit
  %call1.i14 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %tobool.not.i15 = icmp eq i32 %call1.i14, 0
  br i1 %tobool.not.i15, label %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i18

land.lhs.true.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i18:                               ; preds = %land.lhs.true.i16
  %.b4.i17 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i17, label %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, label %if.then.i19

land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i19:                                      ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i19, %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %9 = tail call i32 @llvm.read_register.i32(metadata !75) #10
  %and.i.i.i.i.i20 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i20 to ptr
  %preempt_count.i.i.i.i21 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i21, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i21, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_unlock.exit.if.end_crit_edge, label %if.then

rcu_read_unlock.exit.if.end_crit_edge:            ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock(ptr noundef nonnull %call) #10
  %pending = getelementptr inbounds %struct.qrtr_tx_flow, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %pending, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull %call) #10
  tail call void @__wake_up(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 0, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %rcu_read_unlock.exit.if.end_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qrtr_port_lookup(i32 noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %port)
  %cmp = icmp eq i32 %port, -2
  %spec.store.select = select i1 %cmp, i32 0, i32 %port
  %0 = tail call i32 @llvm.read_register.i32(metadata !75) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @xa_load(ptr noundef nonnull @qrtr_ports, i32 noundef %spec.store.select) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end2_crit_edge, label %if.then1

rcu_read_lock.exit.if.end2_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2

if.then1:                                         ; preds = %rcu_read_lock.exit
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !87
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then1.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !88

if.then1.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then1
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end2_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !89

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end2_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then1.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then1.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %if.end2

if.end2:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end2_crit_edge, %rcu_read_lock.exit.if.end2_crit_edge
  %call.i6 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i6, label %if.end2.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i9

if.end2.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i9:                                 ; preds = %if.end2
  %call1.i7 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7)
  %tobool.not.i8 = icmp eq i32 %call1.i7, 0
  br i1 %tobool.not.i8, label %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i11

land.lhs.true.i9.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i11:                               ; preds = %land.lhs.true.i9
  %.b4.i10 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i10, label %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, label %if.then.i12

land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i12:                                      ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i12, %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, %if.end2.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %6 = tail call i32 @llvm.read_register.i32(metadata !75) #10
  %and.i.i.i.i.i13 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i13 to ptr
  %preempt_count.i.i.i.i14 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i14, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i14, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qrtr_port_put(ptr noundef %ipc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %ipc, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !90
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !91
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !89

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %sock_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !92
  tail call void @sk_free(ptr noundef %ipc) #10
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qrtr_endpoint_register(ptr noundef %ep, i32 noundef %nid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 312) #14
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ref = getelementptr inbounds %struct.qrtr_node, ptr %call7.i.i, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #10
  %3 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %ref, align 8
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @qrtr_endpoint_register.__key) #10
  %rx_queue = getelementptr inbounds %struct.qrtr_node, ptr %call7.i.i, i32 0, i32 6
  %lock.i = getelementptr inbounds %struct.qrtr_node, ptr %call7.i.i, i32 0, i32 6, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %4 = ptrtoint ptr %rx_queue to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rx_queue, ptr %rx_queue, align 8
  %prev.i.i = getelementptr inbounds %struct.qrtr_node, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rx_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.qrtr_node, ptr %call7.i.i, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %qlen.i.i, align 8
  %nid5 = getelementptr inbounds %struct.qrtr_node, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %nid5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %nid5, align 4
  %ep6 = getelementptr inbounds %struct.qrtr_node, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %ep6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ep, ptr %ep6, align 4
  %qrtr_tx_flow = getelementptr inbounds %struct.qrtr_node, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %qrtr_tx_flow, ptr noundef nonnull @.str.10, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #10
  %xa_flags.i = getelementptr inbounds %struct.qrtr_node, ptr %call7.i.i, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3264, ptr %xa_flags.i, align 4
  %xa_head.i = getelementptr inbounds %struct.qrtr_node, ptr %call7.i.i, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %xa_head.i, align 8
  %qrtr_tx_lock = getelementptr inbounds %struct.qrtr_node, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %qrtr_tx_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @qrtr_endpoint_register.__key.4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %nid)
  %cmp.i = icmp eq i32 %nid, -1
  br i1 %cmp.i, label %if.end4.qrtr_node_assign.exit_crit_edge, label %do.body1.i

if.end4.qrtr_node_assign.exit_crit_edge:          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %qrtr_node_assign.exit

do.body1.i:                                       ; preds = %if.end4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @qrtr_nodes_lock) #10
  %call6.i = tail call i32 @radix_tree_insert(ptr noundef nonnull @qrtr_nodes, i32 noundef %nid, ptr noundef nonnull %call7.i.i) #10
  %11 = ptrtoint ptr %nid5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nid5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp8.i = icmp eq i32 %12, -1
  br i1 %cmp8.i, label %if.then10.i, label %do.body1.i.if.end12.i_crit_edge

do.body1.i.if.end12.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then10.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %nid5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %nid, ptr %nid5, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %do.body1.i.if.end12.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @qrtr_nodes_lock, i32 noundef %call3.i) #10
  br label %qrtr_node_assign.exit

qrtr_node_assign.exit:                            ; preds = %if.end12.i, %if.end4.qrtr_node_assign.exit_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @qrtr_node_lock, i32 noundef 0) #10
  %item = getelementptr inbounds %struct.qrtr_node, ptr %call7.i.i, i32 0, i32 7
  %14 = load ptr, ptr @qrtr_all_nodes, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %item, ptr noundef nonnull @qrtr_all_nodes, ptr noundef %14) #10
  br i1 %call.i.i, label %if.end.i.i, label %qrtr_node_assign.exit.list_add.exit_crit_edge

qrtr_node_assign.exit.list_add.exit_crit_edge:    ; preds = %qrtr_node_assign.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %qrtr_node_assign.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %item, ptr %prev1.i.i, align 4
  %16 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %item, align 8
  %prev3.i.i = getelementptr inbounds %struct.qrtr_node, ptr %call7.i.i, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @qrtr_all_nodes, ptr %prev3.i.i, align 4
  store volatile ptr %item, ptr @qrtr_all_nodes, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %qrtr_node_assign.exit.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @qrtr_node_lock) #10
  %node10 = getelementptr inbounds %struct.qrtr_endpoint, ptr %ep, i32 0, i32 1
  %18 = ptrtoint ptr %node10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %node10, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qrtr_endpoint_unregister(ptr nocapture noundef %ep) #0 align 64 {
entry:
  %src = alloca %struct.sockaddr_qrtr, align 4
  %dst = alloca %struct.sockaddr_qrtr, align 4
  %iter = alloca %struct.radix_tree_iter, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %node1 = getelementptr inbounds %struct.qrtr_endpoint, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %node1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %src) #10
  %2 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %src, align 4
  store i16 42, ptr %src, align 4
  %sq_node = getelementptr inbounds %struct.sockaddr_qrtr, ptr %src, i32 0, i32 1
  %nid = getelementptr inbounds %struct.qrtr_node, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %nid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nid, align 4
  %5 = ptrtoint ptr %sq_node to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %sq_node, align 4
  %sq_port = getelementptr inbounds %struct.sockaddr_qrtr, ptr %src, i32 0, i32 2
  %6 = ptrtoint ptr %sq_port to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -2, ptr %sq_port, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %dst) #10
  %7 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %dst, align 4
  store i16 42, ptr %dst, align 4
  %sq_node3 = getelementptr inbounds %struct.sockaddr_qrtr, ptr %dst, i32 0, i32 1
  %8 = ptrtoint ptr %sq_node3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %sq_node3, align 4
  %sq_port4 = getelementptr inbounds %struct.sockaddr_qrtr, ptr %dst, i32 0, i32 2
  %9 = ptrtoint ptr %sq_port4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -2, ptr %sq_port4, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter) #10
  %10 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter, i32 0, i32 1
  %11 = getelementptr inbounds i8, ptr %iter, i32 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 -1, ptr %11, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #10
  %ep5 = getelementptr inbounds %struct.qrtr_node, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %ep5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %ep5, align 4
  tail call void @mutex_unlock(ptr noundef %1) #10
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @qrtr_nodes_lock) #10
  %14 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %iter, align 4
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %10, align 4
  br label %for.cond

for.cond.loopexit:                                ; preds = %while.body.i.for.cond.loopexit_crit_edge, %while.cond.i.for.cond.loopexit_crit_edge
  %slot.0.ph = phi ptr [ null, %while.cond.i.for.cond.loopexit_crit_edge ], [ %incdec.ptr29.i, %while.body.i.for.cond.loopexit_crit_edge ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.loopexit, %entry
  %slot.0 = phi ptr [ null, %entry ], [ %slot.0.ph, %for.cond.loopexit ]
  %tobool.not = icmp eq ptr %slot.0, null
  br i1 %tobool.not, label %lor.rhs, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

lor.rhs:                                          ; preds = %for.cond
  %call12 = call ptr @radix_tree_next_chunk(ptr noundef nonnull @qrtr_nodes, ptr noundef nonnull %iter, i32 noundef 0) #10
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %for.end, label %lor.rhs.for.body_crit_edge

lor.rhs.for.body_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %lor.rhs.for.body_crit_edge, %for.cond.for.body_crit_edge
  %slot.1 = phi ptr [ %slot.0, %for.cond.for.body_crit_edge ], [ %call12, %lor.rhs.for.body_crit_edge ]
  %16 = ptrtoint ptr %slot.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %slot.1, align 4
  %cmp14.not = icmp eq ptr %17, %1
  br i1 %cmp14.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %18 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iter, align 4
  %20 = ptrtoint ptr %sq_node to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %sq_node, align 4
  %call.i.i = call ptr @__alloc_skb(i32 noundef 52, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.for.inc_crit_edge, label %if.then19

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %21 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 32
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %24, i32 32
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call.i6.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 20) #10
  %25 = getelementptr inbounds i8, ptr %call.i6.i, i32 4
  %26 = call ptr @memset(ptr %25, i32 0, i32 16)
  %27 = ptrtoint ptr %call.i6.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 50331648, ptr %call.i6.i, align 1
  %call20 = call i32 @qrtr_local_enqueue(ptr noundef null, ptr noundef nonnull %call.i.i, i32 noundef 3, ptr noundef nonnull %src, ptr noundef nonnull %dst)
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %28 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %10, align 4
  %30 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iter, align 4
  %sub.i.i = sub i32 %29, %31
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %for.inc
  %slot.addr.0.i = phi ptr [ %slot.1, %for.inc ], [ %incdec.ptr29.i, %while.body.i.while.cond.i_crit_edge ]
  %count.0.i = phi i32 [ %sub.i.i, %for.inc ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %dec.i = add i32 %count.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp sgt i32 %dec.i, 0
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.for.cond.loopexit_crit_edge

while.cond.i.for.cond.loopexit_crit_edge:         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr29.i = getelementptr ptr, ptr %slot.addr.0.i, i32 1
  %32 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iter, align 4
  %add.i.i = add i32 %33, 1
  store i32 %add.i.i, ptr %iter, align 4
  %34 = ptrtoint ptr %incdec.ptr29.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %incdec.ptr29.i, align 4
  %tobool32.not.i = icmp eq ptr %35, null
  br i1 %tobool32.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.for.cond.loopexit_crit_edge, !prof !88

while.body.i.for.cond.loopexit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

for.end:                                          ; preds = %lor.rhs
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @qrtr_nodes_lock, i32 noundef %call8) #10
  %qrtr_tx_lock = getelementptr inbounds %struct.qrtr_node, ptr %1, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %qrtr_tx_lock, i32 noundef 0) #10
  %36 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %iter, align 4
  %37 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %10, align 4
  %qrtr_tx_flow = getelementptr inbounds %struct.qrtr_node, ptr %1, i32 0, i32 4
  br label %for.cond24

for.cond24.loopexit:                              ; preds = %while.body.i62.for.cond24.loopexit_crit_edge, %while.cond.i58.for.cond24.loopexit_crit_edge
  %slot.2.ph = phi ptr [ null, %while.cond.i58.for.cond24.loopexit_crit_edge ], [ %incdec.ptr29.i59, %while.body.i62.for.cond24.loopexit_crit_edge ]
  br label %for.cond24

for.cond24:                                       ; preds = %for.cond24.loopexit, %for.end
  %slot.2 = phi ptr [ null, %for.end ], [ %slot.2.ph, %for.cond24.loopexit ]
  %tobool25.not = icmp eq ptr %slot.2, null
  br i1 %tobool25.not, label %lor.rhs26, label %for.cond24.for.body30_crit_edge

for.cond24.for.body30_crit_edge:                  ; preds = %for.cond24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body30

lor.rhs26:                                        ; preds = %for.cond24
  %call27 = call ptr @radix_tree_next_chunk(ptr noundef %qrtr_tx_flow, ptr noundef nonnull %iter, i32 noundef 0) #10
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %for.end33, label %lor.rhs26.for.body30_crit_edge

lor.rhs26.for.body30_crit_edge:                   ; preds = %lor.rhs26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body30

for.body30:                                       ; preds = %lor.rhs26.for.body30_crit_edge, %for.cond24.for.body30_crit_edge
  %slot.3 = phi ptr [ %slot.2, %for.cond24.for.body30_crit_edge ], [ %call27, %lor.rhs26.for.body30_crit_edge ]
  %38 = ptrtoint ptr %slot.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %slot.3, align 4
  call void @__wake_up(ptr noundef %39, i32 noundef 1, i32 noundef 0, ptr noundef null) #10
  %40 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %10, align 4
  %42 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %iter, align 4
  %sub.i.i53 = sub i32 %41, %43
  br label %while.cond.i58

while.cond.i58:                                   ; preds = %while.body.i62.while.cond.i58_crit_edge, %for.body30
  %slot.addr.0.i54 = phi ptr [ %slot.3, %for.body30 ], [ %incdec.ptr29.i59, %while.body.i62.while.cond.i58_crit_edge ]
  %count.0.i55 = phi i32 [ %sub.i.i53, %for.body30 ], [ %dec.i56, %while.body.i62.while.cond.i58_crit_edge ]
  %dec.i56 = add i32 %count.0.i55, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i56)
  %cmp.i57 = icmp sgt i32 %dec.i56, 0
  br i1 %cmp.i57, label %while.body.i62, label %while.cond.i58.for.cond24.loopexit_crit_edge

while.cond.i58.for.cond24.loopexit_crit_edge:     ; preds = %while.cond.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond24.loopexit

while.body.i62:                                   ; preds = %while.cond.i58
  %incdec.ptr29.i59 = getelementptr ptr, ptr %slot.addr.0.i54, i32 1
  %44 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %iter, align 4
  %add.i.i60 = add i32 %45, 1
  store i32 %add.i.i60, ptr %iter, align 4
  %46 = ptrtoint ptr %incdec.ptr29.i59 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %incdec.ptr29.i59, align 4
  %tobool32.not.i61 = icmp eq ptr %47, null
  br i1 %tobool32.not.i61, label %while.body.i62.while.cond.i58_crit_edge, label %while.body.i62.for.cond24.loopexit_crit_edge, !prof !88

while.body.i62.for.cond24.loopexit_crit_edge:     ; preds = %while.body.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond24.loopexit

while.body.i62.while.cond.i58_crit_edge:          ; preds = %while.body.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i58

for.end33:                                        ; preds = %lor.rhs26
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %qrtr_tx_lock) #10
  call fastcc void @qrtr_node_release(ptr noundef %1)
  %48 = ptrtoint ptr %node1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %node1, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dst) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %src) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_next_chunk(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qrtr_local_enqueue(ptr nocapture noundef readnone %node, ptr noundef %skb, i32 noundef %type, ptr nocapture noundef readonly %from, ptr nocapture noundef readonly %to) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sq_port = getelementptr inbounds %struct.sockaddr_qrtr, ptr %to, i32 0, i32 2
  %0 = ptrtoint ptr %sq_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sq_port, align 4
  %call = tail call fastcc ptr @qrtr_port_lookup(i32 noundef %1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %lor.lhs.false

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %cmp = icmp eq ptr %call, %4
  br i1 %cmp, label %if.then2.critedge, label %if.end3

if.then2.critedge:                                ; preds = %lor.lhs.false
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !90
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #10, !srcloc !91
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then2.critedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !89

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #10
  br label %if.end

if.then.i.i:                                      ; preds = %if.then2.critedge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !92
  tail call void @sk_free(ptr noundef nonnull %call) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %cb4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %sq_node = getelementptr inbounds %struct.sockaddr_qrtr, ptr %from, i32 0, i32 1
  %6 = ptrtoint ptr %sq_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sq_node, align 4
  %8 = ptrtoint ptr %cb4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %cb4, align 4
  %sq_port5 = getelementptr inbounds %struct.sockaddr_qrtr, ptr %from, i32 0, i32 2
  %9 = ptrtoint ptr %sq_port5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sq_port5, align 4
  %src_port = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %src_port to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %src_port, align 4
  %call7 = tail call i32 @sock_queue_rcv_skb(ptr noundef nonnull %call, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %skc_refcnt.i.i33 = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 19
  %call.i.i.i.i.i.i.i34 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i33, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i33, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i33, ptr %skc_refcnt.i.i33, i32 1, ptr elementtype(i32) %skc_refcnt.i.i33) #10
  %asmresult.i.i.i.i.i.i.i.i35 = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i35)
  %cmp.i.i.i.i.i36 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i35, 1
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end3
  br i1 %cmp.i.i.i.i.i36, label %if.then.i.i31, label %if.end5.i.i.i.i.i29

if.end5.i.i.i.i.i29:                              ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i35)
  %.not.i.i.i.i.i28 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i35, 0
  br i1 %.not.i.i.i.i.i28, label %if.end5.i.i.i.i.i29.qrtr_port_put.exit32_crit_edge, label %if.then10.i.i.i.i.i30, !prof !89

if.end5.i.i.i.i.i29.qrtr_port_put.exit32_crit_edge: ; preds = %if.end5.i.i.i.i.i29
  call void @__sanitizer_cov_trace_pc() #12
  br label %qrtr_port_put.exit32

if.then10.i.i.i.i.i30:                            ; preds = %if.end5.i.i.i.i.i29
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i33, i32 noundef 3) #10
  br label %qrtr_port_put.exit32

if.then.i.i31:                                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !92
  tail call void @sk_free(ptr noundef nonnull %call) #10
  br label %qrtr_port_put.exit32

qrtr_port_put.exit32:                             ; preds = %if.then.i.i31, %if.then10.i.i.i.i.i30, %if.end5.i.i.i.i.i29.qrtr_port_put.exit32_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end3
  br i1 %cmp.i.i.i.i.i36, label %if.then.i.i40, label %if.end5.i.i.i.i.i38

if.end5.i.i.i.i.i38:                              ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i35)
  %.not.i.i.i.i.i37 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i35, 0
  br i1 %.not.i.i.i.i.i37, label %if.end5.i.i.i.i.i38.cleanup_crit_edge, label %if.then10.i.i.i.i.i39, !prof !89

if.end5.i.i.i.i.i38.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i39:                            ; preds = %if.end5.i.i.i.i.i38
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i33, i32 noundef 3) #10
  br label %cleanup

if.then.i.i40:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !92
  tail call void @sk_free(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i40, %if.then10.i.i.i.i.i39, %if.end5.i.i.i.i.i38.cleanup_crit_edge, %qrtr_port_put.exit32, %if.end
  %retval.0 = phi i32 [ -19, %if.end ], [ -28, %qrtr_port_put.exit32 ], [ 0, %if.end5.i.i.i.i.i38.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i39 ], [ 0, %if.then.i.i40 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qrtr_node_release(ptr noundef %node) unnamed_addr #0 align 64 {
entry:
  %iter.i.i = alloca %struct.radix_tree_iter, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %node, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %ref = getelementptr inbounds %struct.qrtr_node, ptr %node, i32 0, i32 2
  %call.i = tail call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %ref, ptr noundef nonnull @qrtr_node_lock) #10
  br i1 %call.i, label %if.then.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter.i.i) #10
  %0 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter.i.i, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %iter.i.i, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 -1, ptr %1, align 4
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @qrtr_nodes_lock) #10
  %3 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %iter.i.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %0, align 4
  br label %for.cond.i.i

for.cond.i.i.loopexit:                            ; preds = %while.body.i.i.i.for.cond.i.i.loopexit_crit_edge, %while.cond.i.i.i.for.cond.i.i.loopexit_crit_edge
  %slot.0.i.i.ph = phi ptr [ null, %while.cond.i.i.i.for.cond.i.i.loopexit_crit_edge ], [ %incdec.ptr29.i.i.i, %while.body.i.i.i.for.cond.i.i.loopexit_crit_edge ]
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.loopexit, %if.then.i
  %slot.0.i.i = phi ptr [ null, %if.then.i ], [ %slot.0.i.i.ph, %for.cond.i.i.loopexit ]
  %tobool.not.i.i = icmp eq ptr %slot.0.i.i, null
  br i1 %tobool.not.i.i, label %lor.rhs.i.i, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

lor.rhs.i.i:                                      ; preds = %for.cond.i.i
  %call7.i.i = call ptr @radix_tree_next_chunk(ptr noundef nonnull @qrtr_nodes, ptr noundef nonnull %iter.i.i, i32 noundef 0) #10
  %tobool8.not.i.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not.i.i, label %for.end.i.i, label %lor.rhs.i.i.for.body.i.i_crit_edge

lor.rhs.i.i.for.body.i.i_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %lor.rhs.i.i.for.body.i.i_crit_edge, %for.cond.i.i.for.body.i.i_crit_edge
  %slot.1.i.i = phi ptr [ %slot.0.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ %call7.i.i, %lor.rhs.i.i.for.body.i.i_crit_edge ]
  %5 = ptrtoint ptr %slot.1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %slot.1.i.i, align 4
  %cmp9.i.i = icmp eq ptr %6, %node
  br i1 %cmp9.i.i, label %if.then.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @radix_tree_iter_delete(ptr noundef nonnull @qrtr_nodes, ptr noundef nonnull %iter.i.i, ptr noundef nonnull %slot.1.i.i) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %0, align 4
  %9 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iter.i.i, align 4
  %sub.i.i.i.i = sub i32 %8, %10
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %for.inc.i.i
  %slot.addr.0.i.i.i = phi ptr [ %slot.1.i.i, %for.inc.i.i ], [ %incdec.ptr29.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ]
  %count.0.i.i.i = phi i32 [ %sub.i.i.i.i, %for.inc.i.i ], [ %dec.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ]
  %dec.i.i.i = add i32 %count.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %dec.i.i.i, 0
  br i1 %cmp.i.i.i, label %while.body.i.i.i, label %while.cond.i.i.i.for.cond.i.i.loopexit_crit_edge

while.cond.i.i.i.for.cond.i.i.loopexit_crit_edge: ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i.loopexit

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %incdec.ptr29.i.i.i = getelementptr ptr, ptr %slot.addr.0.i.i.i, i32 1
  %11 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iter.i.i, align 4
  %add.i.i.i.i = add i32 %12, 1
  store i32 %add.i.i.i.i, ptr %iter.i.i, align 4
  %13 = ptrtoint ptr %incdec.ptr29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %incdec.ptr29.i.i.i, align 4
  %tobool32.not.i.i.i = icmp eq ptr %14, null
  br i1 %tobool32.not.i.i.i, label %while.body.i.i.i.while.cond.i.i.i_crit_edge, label %while.body.i.i.i.for.cond.i.i.loopexit_crit_edge, !prof !88

while.body.i.i.i.for.cond.i.i.loopexit_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i.loopexit

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i.i

for.end.i.i:                                      ; preds = %lor.rhs.i.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @qrtr_nodes_lock, i32 noundef %call3.i.i) #10
  %item.i.i = getelementptr %struct.qrtr_node, ptr %node, i32 0, i32 7
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %item.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.end.i.i.list_del.exit.i.i_crit_edge

for.end.i.i.list_del.exit.i.i_crit_edge:          ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr %struct.qrtr_node, ptr %node, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i.i, align 4
  %17 = ptrtoint ptr %item.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %item.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.end.i.i.list_del.exit.i.i_crit_edge
  %21 = ptrtoint ptr %item.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %item.i.i, align 4
  %prev.i.i.i = getelementptr %struct.qrtr_node, ptr %node, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @mutex_unlock(ptr noundef nonnull @qrtr_node_lock) #10
  %rx_queue.i.i = getelementptr %struct.qrtr_node, ptr %node, i32 0, i32 6
  call void @skb_queue_purge(ptr noundef %rx_queue.i.i) #10
  %23 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %iter.i.i, align 4
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %0, align 4
  %qrtr_tx_flow.i.i = getelementptr %struct.qrtr_node, ptr %node, i32 0, i32 4
  br label %for.cond13.i.i

for.cond13.i.i.loopexit:                          ; preds = %while.body.i47.i.i.for.cond13.i.i.loopexit_crit_edge, %while.cond.i43.i.i.for.cond13.i.i.loopexit_crit_edge
  %slot.2.i.i.ph = phi ptr [ null, %while.cond.i43.i.i.for.cond13.i.i.loopexit_crit_edge ], [ %incdec.ptr29.i44.i.i, %while.body.i47.i.i.for.cond13.i.i.loopexit_crit_edge ]
  br label %for.cond13.i.i

for.cond13.i.i:                                   ; preds = %for.cond13.i.i.loopexit, %list_del.exit.i.i
  %slot.2.i.i = phi ptr [ null, %list_del.exit.i.i ], [ %slot.2.i.i.ph, %for.cond13.i.i.loopexit ]
  %tobool14.not.i.i = icmp eq ptr %slot.2.i.i, null
  br i1 %tobool14.not.i.i, label %lor.rhs15.i.i, label %for.cond13.i.i.for.body19.i.i_crit_edge

for.cond13.i.i.for.body19.i.i_crit_edge:          ; preds = %for.cond13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body19.i.i

lor.rhs15.i.i:                                    ; preds = %for.cond13.i.i
  %call16.i.i = call ptr @radix_tree_next_chunk(ptr noundef %qrtr_tx_flow.i.i, ptr noundef nonnull %iter.i.i, i32 noundef 0) #10
  %tobool17.not.i.i = icmp eq ptr %call16.i.i, null
  br i1 %tobool17.not.i.i, label %__qrtr_node_release.exit.i, label %lor.rhs15.i.i.for.body19.i.i_crit_edge

lor.rhs15.i.i.for.body19.i.i_crit_edge:           ; preds = %lor.rhs15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body19.i.i

for.body19.i.i:                                   ; preds = %lor.rhs15.i.i.for.body19.i.i_crit_edge, %for.cond13.i.i.for.body19.i.i_crit_edge
  %slot.3.i.i = phi ptr [ %slot.2.i.i, %for.cond13.i.i.for.body19.i.i_crit_edge ], [ %call16.i.i, %lor.rhs15.i.i.for.body19.i.i_crit_edge ]
  %25 = ptrtoint ptr %slot.3.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %slot.3.i.i, align 4
  call void @radix_tree_iter_delete(ptr noundef %qrtr_tx_flow.i.i, ptr noundef nonnull %iter.i.i, ptr noundef nonnull %slot.3.i.i) #10
  call void @kfree(ptr noundef %26) #10
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %0, align 4
  %29 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iter.i.i, align 4
  %sub.i.i38.i.i = sub i32 %28, %30
  br label %while.cond.i43.i.i

while.cond.i43.i.i:                               ; preds = %while.body.i47.i.i.while.cond.i43.i.i_crit_edge, %for.body19.i.i
  %slot.addr.0.i39.i.i = phi ptr [ %slot.3.i.i, %for.body19.i.i ], [ %incdec.ptr29.i44.i.i, %while.body.i47.i.i.while.cond.i43.i.i_crit_edge ]
  %count.0.i40.i.i = phi i32 [ %sub.i.i38.i.i, %for.body19.i.i ], [ %dec.i41.i.i, %while.body.i47.i.i.while.cond.i43.i.i_crit_edge ]
  %dec.i41.i.i = add i32 %count.0.i40.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i41.i.i)
  %cmp.i42.i.i = icmp sgt i32 %dec.i41.i.i, 0
  br i1 %cmp.i42.i.i, label %while.body.i47.i.i, label %while.cond.i43.i.i.for.cond13.i.i.loopexit_crit_edge

while.cond.i43.i.i.for.cond13.i.i.loopexit_crit_edge: ; preds = %while.cond.i43.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond13.i.i.loopexit

while.body.i47.i.i:                               ; preds = %while.cond.i43.i.i
  %incdec.ptr29.i44.i.i = getelementptr ptr, ptr %slot.addr.0.i39.i.i, i32 1
  %31 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iter.i.i, align 4
  %add.i.i45.i.i = add i32 %32, 1
  store i32 %add.i.i45.i.i, ptr %iter.i.i, align 4
  %33 = ptrtoint ptr %incdec.ptr29.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %incdec.ptr29.i44.i.i, align 4
  %tobool32.not.i46.i.i = icmp eq ptr %34, null
  br i1 %tobool32.not.i46.i.i, label %while.body.i47.i.i.while.cond.i43.i.i_crit_edge, label %while.body.i47.i.i.for.cond13.i.i.loopexit_crit_edge, !prof !88

while.body.i47.i.i.for.cond13.i.i.loopexit_crit_edge: ; preds = %while.body.i47.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond13.i.i.loopexit

while.body.i47.i.i.while.cond.i43.i.i_crit_edge:  ; preds = %while.body.i47.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i43.i.i

__qrtr_node_release.exit.i:                       ; preds = %lor.rhs15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %node) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter.i.i) #10
  br label %return

return:                                           ; preds = %__qrtr_node_release.exit.i, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qrtr_proto_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proto_register(ptr noundef nonnull @qrtr_proto, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @sock_register(ptr noundef nonnull @qrtr_family) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_proto_crit_edge

if.end.err_proto_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_proto

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @qrtr_ns_init() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %err_sock

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_sock:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sock_unregister(i32 noundef 42) #10
  br label %err_proto

err_proto:                                        ; preds = %err_sock, %if.end.err_proto_crit_edge
  %rc.0 = phi i32 [ %call1, %if.end.err_proto_crit_edge ], [ %call5, %err_sock ]
  tail call void @proto_unregister(ptr noundef nonnull @qrtr_proto) #10
  br label %cleanup

cleanup:                                          ; preds = %err_proto, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %err_proto ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qrtr_proto_fini() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qrtr_ns_remove() #10
  tail call void @sock_unregister(i32 noundef 42) #10
  tail call void @proto_unregister(ptr noundef nonnull @qrtr_proto) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qrtr_ns_remove() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radix_tree_iter_delete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qrtr_ns_init() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qrtr_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp.not = icmp eq i16 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @sk_alloc(ptr noundef %net, i32 noundef 42, i32 noundef 3264, ptr noundef nonnull @qrtr_proto, i32 noundef %kern) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %or.i.i = or i32 %4, 256
  store i32 %or.i.i, ptr %2, align 4
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call) #10
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @qrtr_proto_ops, ptr %ops, align 4
  %us = getelementptr inbounds %struct.qrtr_sock, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %us to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 42, ptr %us, align 8
  %sq_node = getelementptr inbounds %struct.qrtr_sock, ptr %call, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %sq_node to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %sq_node, align 4
  %sq_port = getelementptr inbounds %struct.qrtr_sock, ptr %call, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %sq_port to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %sq_port, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -91, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qrtr_release(ptr nocapture noundef %sock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #10
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %2 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %sk_shutdown, align 2
  %3 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %6 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 76
  %7 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk_state_change, align 4
  tail call void %8(ptr noundef nonnull %1) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %3, align 4
  %or.i.i = or i32 %10, 1
  store i32 %or.i.i, ptr %3, align 4
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #10
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  %or.i.i.i = or i32 %12, 1
  store i32 %or.i.i.i, ptr %3, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %13 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %sk_socket.i.i, align 8
  %14 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %14, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #10
  %16 = ptrtoint ptr %sk1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %sk1, align 16
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %3, align 4
  %19 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i23.not = icmp eq i32 %19, 0
  br i1 %tobool.i23.not, label %if.then7, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @qrtr_port_remove(ptr noundef nonnull %1)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %sk_receive_queue) #10
  tail call void @release_sock(ptr noundef nonnull %1) #10
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !90
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !91
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !89

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !92
  tail call void @sk_free(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qrtr_bind(ptr nocapture noundef readonly %sock, ptr nocapture noundef readonly %saddr, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %len)
  %cmp = icmp ult i32 %len, 12
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %saddr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %saddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 42, i16 %3)
  %cmp3.not = icmp eq i16 %3, 42
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sq_node = getelementptr inbounds %struct.sockaddr_qrtr, ptr %saddr, i32 0, i32 1
  %4 = ptrtoint ptr %sq_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sq_node, align 4
  %sq_node5 = getelementptr inbounds %struct.qrtr_sock, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %sq_node5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sq_node5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp6.not = icmp eq i32 %5, %7
  br i1 %cmp6.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #10
  %8 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %11 = lshr i32 %10, 8
  %.lobit = and i32 %11, 1
  %call12 = tail call fastcc i32 @__qrtr_bind(ptr noundef %sock, ptr noundef %saddr, i32 noundef %.lobit)
  tail call void @release_sock(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end9 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qrtr_connect(ptr nocapture noundef %sock, ptr nocapture noundef readonly %saddr, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  %addr.i = alloca %struct.sockaddr_qrtr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %len)
  %cmp = icmp ult i32 %len, 12
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %saddr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %saddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 42, i16 %3)
  %cmp3.not = icmp eq i16 %3, 42
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #10
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %4)
  store volatile i8 7, ptr %skc_state, align 2
  %5 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %sock, align 128
  %6 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk, align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %addr.i) #10
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2818047, ptr %addr.i, align 4
  %9 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %12 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i, label %qrtr_autobind.exit.thread, label %qrtr_autobind.exit

qrtr_autobind.exit.thread:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %addr.i) #10
  br label %if.end7

qrtr_autobind.exit:                               ; preds = %if.end
  %sq_node.i = getelementptr inbounds %struct.sockaddr_qrtr, ptr %addr.i, i32 0, i32 1
  %13 = ptrtoint ptr %sq_node.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %sq_node.i, align 4
  %sq_port.i = getelementptr inbounds %struct.sockaddr_qrtr, ptr %addr.i, i32 0, i32 2
  %14 = ptrtoint ptr %sq_port.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %sq_port.i, align 4
  %call2.i = call fastcc i32 @__qrtr_bind(ptr noundef %sock, ptr noundef nonnull %addr.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %addr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %qrtr_autobind.exit.if.end7_crit_edge, label %qrtr_autobind.exit.cleanup.sink.split_crit_edge

qrtr_autobind.exit.cleanup.sink.split_crit_edge:  ; preds = %qrtr_autobind.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

qrtr_autobind.exit.if.end7_crit_edge:             ; preds = %qrtr_autobind.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end7:                                          ; preds = %qrtr_autobind.exit.if.end7_crit_edge, %qrtr_autobind.exit.thread
  %peer = getelementptr inbounds %struct.qrtr_sock, ptr %1, i32 0, i32 2
  %15 = call ptr @memcpy(ptr %peer, ptr %saddr, i32 12)
  %16 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %sock, align 128
  %17 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %17)
  store volatile i8 1, ptr %skc_state, align 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end7, %qrtr_autobind.exit.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end7 ], [ %call2.i, %qrtr_autobind.exit.cleanup.sink.split_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qrtr_getname(ptr nocapture noundef readonly %sock, ptr nocapture noundef writeonly %saddr, i32 noundef %peer) #0 align 64 {
entry:
  %qaddr.sroa.7 = alloca [10 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %qaddr.sroa.7)
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer)
  %tobool.not = icmp eq i32 %peer, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @release_sock(ptr noundef %1) #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %peer5 = getelementptr inbounds %struct.qrtr_sock, ptr %1, i32 0, i32 2
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %us = getelementptr inbounds %struct.qrtr_sock, ptr %1, i32 0, i32 1
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end
  %us.sink = phi ptr [ %us, %if.else ], [ %peer5, %if.end ]
  %qaddr.sroa.7.0.us.sroa_idx = getelementptr inbounds i8, ptr %us.sink, i32 2
  %4 = call ptr @memcpy(ptr %qaddr.sroa.7, ptr %qaddr.sroa.7.0.us.sroa_idx, i32 10)
  tail call void @release_sock(ptr noundef %1) #10
  %5 = ptrtoint ptr %saddr to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 42, ptr %saddr, align 2
  %qaddr.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %saddr, i32 2
  %6 = call ptr @memcpy(ptr %qaddr.sroa.7.0..sroa_idx, ptr %qaddr.sroa.7, i32 10)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4
  %retval.0 = phi i32 [ -107, %if.then4 ], [ 12, %if.end6 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %qaddr.sroa.7)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qrtr_ioctl(ptr nocapture noundef readonly %sock, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %ifr = alloca %struct.ifreq, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %1 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ifr) #10
  %3 = call ptr @memset(ptr %ifr, i32 255, i32 32)
  tail call void @lock_sock_nested(ptr noundef %2, i32 noundef 0) #10
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %cmd, label %sw.default [
    i32 21521, label %sw.bb
    i32 21531, label %sw.bb6
    i32 35093, label %sw.bb26
    i32 35083, label %entry.sw.epilog_crit_edge
    i32 35084, label %entry.sw.epilog_crit_edge52
    i32 35094, label %entry.sw.epilog_crit_edge53
    i32 35095, label %entry.sw.epilog_crit_edge54
    i32 35096, label %entry.sw.epilog_crit_edge55
    i32 35097, label %entry.sw.epilog_crit_edge56
    i32 35098, label %entry.sw.epilog_crit_edge57
    i32 35099, label %entry.sw.epilog_crit_edge58
    i32 35100, label %entry.sw.epilog_crit_edge59
  ]

entry.sw.epilog_crit_edge59:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge58:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge57:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge56:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge55:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge54:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge53:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge52:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 21
  %5 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sk_sndbuf, align 4
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #10
  %7 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sub.i.neg = add i32 %6, 1
  %sub = sub i32 %sub.i.neg, %8
  %9 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1155) #10
  %10 = tail call i32 @llvm.read_register.i32(metadata !75) #10
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !93
  %and.i = and i32 %12, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  %13 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %9, i32 -1226833921) #10, !srcloc !96
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 8
  %14 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i = icmp eq ptr %15, %sk_receive_queue
  %tobool.not51 = icmp eq ptr %15, null
  %tobool.not = or i1 %cmp.i, %tobool.not51
  br i1 %tobool.not, label %sw.bb6.if.end10_crit_edge, label %if.then8

sw.bb6.if.end10_crit_edge:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then8:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  %len9 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %sw.bb6.if.end10_crit_edge
  %len.0 = phi i32 [ %17, %if.then8 ], [ 0, %sw.bb6.if.end10_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1161) #10
  %18 = tail call i32 @llvm.read_register.i32(metadata !75) #10
  %and.i.i.i47 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i47 to ptr
  %cpu_domain.i.i48 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i48) #7, !srcloc !93
  %and.i49 = and i32 %20, -13
  %or.i50 = or i32 %and.i49, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i50) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  %21 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %len.0, i32 -1226833921) #10, !srcloc !97
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  %call27 = call i32 @get_user_ifreq(ptr noundef nonnull %ifr, ptr noundef null, ptr noundef %0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %sw.bb26.sw.epilog_crit_edge

sw.bb26.sw.epilog_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end30:                                         ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #12
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %us = getelementptr inbounds %struct.qrtr_sock, ptr %2, i32 0, i32 1
  %22 = call ptr @memcpy(ptr %ifr_ifru, ptr %us, i32 12)
  %call31 = call i32 @put_user_ifreq(ptr noundef nonnull %ifr, ptr noundef %0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  %spec.select = select i1 %tobool32.not, i32 0, i32 -14
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end30, %sw.bb26.sw.epilog_crit_edge, %if.end10, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge52, %entry.sw.epilog_crit_edge53, %entry.sw.epilog_crit_edge54, %entry.sw.epilog_crit_edge55, %entry.sw.epilog_crit_edge56, %entry.sw.epilog_crit_edge57, %entry.sw.epilog_crit_edge58, %entry.sw.epilog_crit_edge59
  %rc.0 = phi i32 [ -515, %sw.default ], [ %21, %if.end10 ], [ %13, %sw.bb ], [ -14, %sw.bb26.sw.epilog_crit_edge ], [ %spec.select, %if.end30 ], [ -22, %entry.sw.epilog_crit_edge ], [ -22, %entry.sw.epilog_crit_edge52 ], [ -22, %entry.sw.epilog_crit_edge53 ], [ -22, %entry.sw.epilog_crit_edge54 ], [ -22, %entry.sw.epilog_crit_edge55 ], [ -22, %entry.sw.epilog_crit_edge56 ], [ -22, %entry.sw.epilog_crit_edge57 ], [ -22, %entry.sw.epilog_crit_edge58 ], [ -22, %entry.sw.epilog_crit_edge59 ]
  call void @release_sock(ptr noundef %2) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ifr) #10
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qrtr_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len) #0 align 64 {
entry:
  %addr.i = alloca %struct.sockaddr_qrtr, align 4
  %qrtr_type = alloca i32, align 4
  %rc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qrtr_type) #10
  %2 = ptrtoint ptr %qrtr_type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16777216, ptr %qrtr_type, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %3 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rc) #10
  %5 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %rc, align 4, !annotation !98
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %6 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_flags, align 4
  %and = and i32 %7, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %len)
  %cmp = icmp ugt i32 %len, 65535
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @lock_sock_nested(ptr noundef %4, i32 noundef 0) #10
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_namelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %9)
  %cmp7 = icmp ult i32 %9, 12
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @release_sock(ptr noundef %4) #10
  br label %cleanup

if.end9:                                          ; preds = %if.then6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 42, i16 %11)
  %cmp10.not = icmp eq i16 %11, 42
  br i1 %cmp10.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @release_sock(ptr noundef %4) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %12 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk, align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %addr.i) #10
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2818047, ptr %addr.i, align 4
  %15 = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 13
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %18 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i, label %qrtr_autobind.exit.thread, label %qrtr_autobind.exit

qrtr_autobind.exit.thread:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %addr.i) #10
  %19 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %rc, align 4
  br label %if.end24

qrtr_autobind.exit:                               ; preds = %if.end13
  %sq_node.i = getelementptr inbounds %struct.sockaddr_qrtr, ptr %addr.i, i32 0, i32 1
  %20 = ptrtoint ptr %sq_node.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %sq_node.i, align 4
  %sq_port.i = getelementptr inbounds %struct.sockaddr_qrtr, ptr %addr.i, i32 0, i32 2
  %21 = ptrtoint ptr %sq_port.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %sq_port.i, align 4
  %call2.i = call fastcc i32 @__qrtr_bind(ptr noundef %sock, ptr noundef nonnull %addr.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %addr.i) #10
  %22 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call2.i, ptr %rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool15.not = icmp eq i32 %call2.i, 0
  br i1 %tobool15.not, label %qrtr_autobind.exit.if.end24_crit_edge, label %if.then16

qrtr_autobind.exit.if.end24_crit_edge:            ; preds = %qrtr_autobind.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then16:                                        ; preds = %qrtr_autobind.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @release_sock(ptr noundef %4) #10
  %23 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rc, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 4
  %25 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp19 = icmp eq i8 %26, 1
  br i1 %cmp19, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %peer = getelementptr inbounds %struct.qrtr_sock, ptr %4, i32 0, i32 2
  br label %if.end24

if.else22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @release_sock(ptr noundef %4) #10
  br label %cleanup

if.end24:                                         ; preds = %if.then21, %qrtr_autobind.exit.if.end24_crit_edge, %qrtr_autobind.exit.thread
  %addr.0 = phi ptr [ %1, %qrtr_autobind.exit.if.end24_crit_edge ], [ %peer, %if.then21 ], [ %1, %qrtr_autobind.exit.thread ]
  %sq_node = getelementptr inbounds %struct.sockaddr_qrtr, ptr %addr.0, i32 0, i32 1
  %27 = ptrtoint ptr %sq_node to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sq_node, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp25 = icmp eq i32 %28, -1
  br i1 %cmp25, label %if.then27, label %if.else34

if.then27:                                        ; preds = %if.end24
  %sq_port = getelementptr inbounds %struct.sockaddr_qrtr, ptr %addr.0, i32 0, i32 2
  %29 = ptrtoint ptr %sq_port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sq_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %30)
  %cmp28.not = icmp eq i32 %30, -2
  br i1 %cmp28.not, label %if.then27.if.end47_crit_edge, label %if.then32

if.then27.if.end47_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then32:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @release_sock(ptr noundef %4) #10
  br label %cleanup

if.else34:                                        ; preds = %if.end24
  %sq_node36 = getelementptr inbounds %struct.qrtr_sock, ptr %4, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %sq_node36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sq_node36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %32)
  %cmp37 = icmp eq i32 %28, %32
  br i1 %cmp37, label %if.else34.if.end47_crit_edge, label %if.else40

if.else34.if.end47_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.else40:                                        ; preds = %if.else34
  %call42 = tail call fastcc ptr @qrtr_node_lookup(i32 noundef %28)
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.then44, label %if.else40.if.end47_crit_edge

if.else40.if.end47_crit_edge:                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then44:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @release_sock(ptr noundef %4) #10
  br label %cleanup

if.end47:                                         ; preds = %if.else40.if.end47_crit_edge, %if.else34.if.end47_crit_edge, %if.then27.if.end47_crit_edge
  %enqueue_fn.0 = phi ptr [ @qrtr_bcast_enqueue, %if.then27.if.end47_crit_edge ], [ @qrtr_local_enqueue, %if.else34.if.end47_crit_edge ], [ @qrtr_node_enqueue, %if.else40.if.end47_crit_edge ]
  %node.0 = phi ptr [ null, %if.then27.if.end47_crit_edge ], [ null, %if.else34.if.end47_crit_edge ], [ %call42, %if.else40.if.end47_crit_edge ]
  %33 = add nuw nsw i32 %len, 35
  %add49 = and i32 %33, -4
  %34 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_flags, align 4
  %and51 = and i32 %35, 64
  %call52 = call ptr @sock_alloc_send_skb(ptr noundef %4, i32 noundef %add49, i32 noundef %and51, ptr noundef nonnull %rc) #10
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -12, ptr %rc, align 4
  br label %out_node

if.end55:                                         ; preds = %if.end47
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call52, i32 0, i32 19
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %38, i32 32
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call52, i32 0, i32 16
  %39 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %40, i32 32
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call56 = call ptr @skb_put(ptr noundef nonnull %call52, i32 noundef %len) #10
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__check_object_size(ptr noundef %call56, i32 noundef %len, i1 noundef zeroext false) #10
  %call3.i.i.i = call i32 @_copy_from_iter(ptr noundef %call56, i32 noundef %len, ptr noundef %msg_iter.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i.i, i32 %len)
  %cmp.i.i = icmp eq i32 %call3.i.i.i, %len
  br i1 %cmp.i.i, label %if.end60, label %if.then59, !prof !89

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %call3.i.i.i) #10
  %41 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -14, ptr %rc, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %call52, i32 noundef 0) #10
  br label %out_node

if.end60:                                         ; preds = %if.end55
  %42 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %rc, align 4
  %us61 = getelementptr inbounds %struct.qrtr_sock, ptr %4, i32 0, i32 1
  %sq_port62 = getelementptr inbounds %struct.qrtr_sock, ptr %4, i32 0, i32 1, i32 2
  %43 = ptrtoint ptr %sq_port62 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sq_port62, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %44)
  %cmp63 = icmp eq i32 %44, -2
  br i1 %cmp63, label %if.then65, label %if.end60.if.end71_crit_edge

if.end60.if.end71_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp66 = icmp ult i32 %len, 4
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -22, ptr %rc, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %call52, i32 noundef 0) #10
  br label %out_node

if.end69:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  %call70 = call i32 @skb_copy_bits(ptr noundef nonnull %call52, i32 noundef 0, ptr noundef nonnull %qrtr_type, i32 noundef 4) #10
  br label %if.end71

if.end71:                                         ; preds = %if.end69, %if.end60.if.end71_crit_edge
  %46 = ptrtoint ptr %qrtr_type to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %qrtr_type, align 4
  %48 = call i32 @llvm.bswap.i32(i32 %47)
  %call73 = call i32 %enqueue_fn.0(ptr noundef %node.0, ptr noundef nonnull %call52, i32 noundef %48, ptr noundef %us61, ptr noundef %addr.0) #10, !callees !99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74129 = icmp slt i32 %call73, 0
  %spec.store.select = select i1 %cmp74129, i32 %call73, i32 %len
  %49 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %spec.store.select, ptr %rc, align 4
  br label %out_node

out_node:                                         ; preds = %if.end71, %if.then68, %if.then59, %if.then54
  call fastcc void @qrtr_node_release(ptr noundef %node.0)
  call void @release_sock(ptr noundef %4) #10
  %50 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rc, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_node, %if.then44, %if.then32, %if.else22, %if.then16, %if.then12, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then8 ], [ -22, %if.then12 ], [ %24, %if.then16 ], [ -107, %if.then32 ], [ %51, %out_node ], [ -104, %if.then44 ], [ -107, %if.else22 ], [ -22, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rc) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qrtr_type) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qrtr_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  %remote.i = alloca %struct.sockaddr_qrtr, align 4
  %local.i = alloca %struct.sockaddr_qrtr, align 4
  %rc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 8
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %2 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rc) #10
  %4 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rc, align 4, !annotation !98
  tail call void @lock_sock_nested(ptr noundef %3, i32 noundef 0) #10
  %5 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @release_sock(ptr noundef %3) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %flags, -65
  %and2 = and i32 %flags, 64
  %call3 = call ptr @skb_recv_datagram(ptr noundef %3, i32 noundef %and, i32 noundef %and2, ptr noundef nonnull %rc) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @release_sock(ptr noundef %3) #10
  %9 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rc, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cb6 = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 3
  %len = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 6
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %size)
  %cmp = icmp ugt i32 %12, %size
  br i1 %cmp, label %if.then7, label %if.end5.if.end8_crit_edge

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %13 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_flags, align 4
  %or = or i32 %14, 32
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  %copied.0 = phi i32 [ %size, %if.then7 ], [ %12, %if.end5.if.end8_crit_edge ]
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %call3, i32 noundef 0, ptr noundef %msg_iter.i, i32 noundef %copied.0) #10
  %15 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i, ptr %rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10 = icmp slt i32 %call.i, 0
  br i1 %cmp10, label %if.end8.out_crit_edge, label %if.end12

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end12:                                         ; preds = %if.end8
  %16 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %copied.0, ptr %rc, align 4
  %tobool13.not = icmp eq ptr %1, null
  br i1 %tobool13.not, label %if.end12.out_crit_edge, label %if.then14

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %17 = call ptr @memset(ptr %1, i32 0, i32 12)
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 42, ptr %1, align 4
  %19 = ptrtoint ptr %cb6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cb6, align 4
  %sq_node = getelementptr inbounds %struct.sockaddr_qrtr, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %sq_node to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %sq_node, align 4
  %src_port = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 3, i32 4
  %22 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %src_port, align 4
  %sq_port = getelementptr inbounds %struct.sockaddr_qrtr, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %sq_port to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %sq_port, align 4
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %25 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 12, ptr %msg_namelen, align 4
  br label %out

out:                                              ; preds = %if.then14, %if.end12.out_crit_edge, %if.end8.out_crit_edge
  %confirm_rx = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 3, i32 17
  %26 = ptrtoint ptr %confirm_rx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %confirm_rx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool16.not = icmp eq i8 %27, 0
  br i1 %tobool16.not, label %out.if.end19_crit_edge, label %if.then17

out.if.end19_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then17:                                        ; preds = %out
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %remote.i) #10
  %28 = ptrtoint ptr %remote.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2818047, ptr %remote.i, align 4
  %sq_node.i = getelementptr inbounds %struct.sockaddr_qrtr, ptr %remote.i, i32 0, i32 1
  %29 = ptrtoint ptr %cb6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cb6, align 4
  %31 = ptrtoint ptr %sq_node.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %sq_node.i, align 4
  %sq_port.i = getelementptr inbounds %struct.sockaddr_qrtr, ptr %remote.i, i32 0, i32 2
  %src_port.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 3, i32 4
  %32 = ptrtoint ptr %src_port.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %src_port.i, align 4
  %34 = ptrtoint ptr %sq_port.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %sq_port.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %local.i) #10
  %35 = ptrtoint ptr %local.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2818047, ptr %local.i, align 4
  %sq_node2.i = getelementptr inbounds %struct.sockaddr_qrtr, ptr %local.i, i32 0, i32 1
  %dst_node.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 3, i32 8
  %36 = ptrtoint ptr %dst_node.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dst_node.i, align 4
  %38 = ptrtoint ptr %sq_node2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %sq_node2.i, align 4
  %sq_port3.i = getelementptr inbounds %struct.sockaddr_qrtr, ptr %local.i, i32 0, i32 2
  %dst_port.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 3, i32 12
  %39 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dst_port.i, align 4
  %41 = ptrtoint ptr %sq_port3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %sq_port3.i, align 4
  %call.i50 = call fastcc ptr @qrtr_node_lookup(i32 noundef %30) #10
  %tobool.not.i = icmp eq ptr %call.i50, null
  br i1 %tobool.not.i, label %if.then17.qrtr_send_resume_tx.exit_crit_edge, label %if.end.i

if.then17.qrtr_send_resume_tx.exit_crit_edge:     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %qrtr_send_resume_tx.exit

if.end.i:                                         ; preds = %if.then17
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef 52, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.qrtr_send_resume_tx.exit_crit_edge, label %if.end8.i

if.end.i.qrtr_send_resume_tx.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qrtr_send_resume_tx.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %42 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %43, i32 32
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %44 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %45, i32 32
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call.i6.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 20) #10
  %46 = getelementptr inbounds i8, ptr %call.i6.i.i, i32 4
  %47 = call ptr @memset(ptr %46, i32 0, i32 16)
  %48 = ptrtoint ptr %call.i6.i.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 117440512, ptr %call.i6.i.i, align 1
  %49 = ptrtoint ptr %dst_node.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dst_node.i, align 4
  %51 = call i32 @llvm.bswap.i32(i32 %50) #10
  %52 = ptrtoint ptr %46 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %51, ptr %46, align 1
  %53 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dst_port.i, align 4
  %55 = call i32 @llvm.bswap.i32(i32 %54) #10
  %port.i = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %call.i6.i.i, i32 0, i32 1, i32 0, i32 1
  %56 = ptrtoint ptr %port.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %55, ptr %port.i, align 1
  %call12.i = call i32 @qrtr_node_enqueue(ptr noundef nonnull %call.i50, ptr noundef nonnull %call.i.i.i, i32 noundef 7, ptr noundef nonnull %local.i, ptr noundef nonnull %remote.i) #10
  call fastcc void @qrtr_node_release(ptr noundef nonnull %call.i50) #10
  br label %qrtr_send_resume_tx.exit

qrtr_send_resume_tx.exit:                         ; preds = %if.end8.i, %if.end.i.qrtr_send_resume_tx.exit_crit_edge, %if.then17.qrtr_send_resume_tx.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %local.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %remote.i) #10
  br label %if.end19

if.end19:                                         ; preds = %qrtr_send_resume_tx.exit, %out.if.end19_crit_edge
  call void @skb_free_datagram(ptr noundef %3, ptr noundef nonnull %call3) #10
  call void @release_sock(ptr noundef %3) #10
  %57 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then4, %if.then
  %retval.0 = phi i32 [ -99, %if.then ], [ %58, %if.end19 ], [ %10, %if.then4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rc) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qrtr_port_remove(ptr noundef %ipc) unnamed_addr #0 align 64 {
entry:
  %to = alloca %struct.sockaddr_qrtr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sq_port = getelementptr inbounds %struct.qrtr_sock, ptr %ipc, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %sq_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sq_port, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %to) #10
  %2 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %to, align 4
  store i16 42, ptr %to, align 4
  %sq_node = getelementptr inbounds %struct.sockaddr_qrtr, ptr %to, i32 0, i32 1
  %3 = ptrtoint ptr %sq_node to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %sq_node, align 4
  %sq_port1 = getelementptr inbounds %struct.sockaddr_qrtr, ptr %to, i32 0, i32 2
  %4 = ptrtoint ptr %sq_port1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -2, ptr %sq_port1, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 52, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 32
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %8, i32 32
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call.i6.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 20) #10
  %9 = getelementptr inbounds i8, ptr %call.i6.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 16)
  %us = getelementptr inbounds %struct.qrtr_sock, ptr %ipc, i32 0, i32 1
  %11 = ptrtoint ptr %call.i6.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 100663296, ptr %call.i6.i, align 1
  %sq_node3 = getelementptr inbounds %struct.qrtr_sock, ptr %ipc, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %sq_node3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sq_node3, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %call.i6.i, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %14, ptr %15, align 1
  %17 = ptrtoint ptr %sq_port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sq_port, align 8
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %port6 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %call.i6.i, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %port6 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %port6, align 1
  tail call void @skb_set_owner_w(ptr noundef nonnull %call.i.i, ptr noundef %ipc) #10
  %call8 = call i32 @qrtr_bcast_enqueue(ptr noundef null, ptr noundef nonnull %call.i.i, i32 noundef 6, ptr noundef %us, ptr noundef nonnull %to)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %ipc, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !90
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !91
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %if.end.__sock_put.exit_crit_edge, !prof !88

if.end.__sock_put.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sock_put.exit

if.then3.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  br label %__sock_put.exit

__sock_put.exit:                                  ; preds = %if.then3.i.i.i, %if.end.__sock_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %1)
  %cmp = icmp eq i32 %1, -2
  %spec.store.select = select i1 %cmp, i32 0, i32 %1
  %call12 = tail call ptr @xa_erase(ptr noundef nonnull @qrtr_ports, i32 noundef %spec.store.select) #10
  tail call void @synchronize_rcu() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %to) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qrtr_bcast_enqueue(ptr nocapture noundef readnone %node, ptr noundef %skb, i32 noundef %type, ptr nocapture noundef readonly %from, ptr nocapture noundef readonly %to) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @qrtr_node_lock, i32 noundef 0) #10
  %.pn16 = load ptr, ptr @qrtr_all_nodes, align 4
  %cmp.not18 = icmp eq ptr %.pn16, @qrtr_all_nodes
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %.pn19 = phi ptr [ %.pn16, %for.body.lr.ph ], [ %.pn, %if.end.for.body_crit_edge ]
  %call = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 3264) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end:                                           ; preds = %for.body
  %node.addr.020 = getelementptr i8, ptr %.pn19, i32 -304
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call void @skb_set_owner_w(ptr noundef nonnull %call, ptr noundef %2) #10
  %call1 = tail call i32 @qrtr_node_enqueue(ptr noundef %node.addr.020, ptr noundef nonnull %call, i32 noundef %type, ptr noundef %from, ptr noundef %to)
  %3 = ptrtoint ptr %.pn19 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn19, align 4
  %cmp.not = icmp eq ptr %.pn, @qrtr_all_nodes
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @qrtr_node_lock) #10
  %call6 = tail call i32 @qrtr_local_enqueue(ptr noundef null, ptr noundef %skb, i32 noundef %type, ptr noundef %from, ptr noundef %to)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qrtr_node_enqueue(ptr noundef %node, ptr noundef %skb, i32 noundef %type, ptr nocapture noundef readonly %from, ptr nocapture noundef readonly %to) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  %sq_node = getelementptr inbounds %struct.sockaddr_qrtr, ptr %to, i32 0, i32 1
  %2 = ptrtoint ptr %sq_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sq_node, align 4
  %sq_port = getelementptr inbounds %struct.sockaddr_qrtr, ptr %to, i32 0, i32 2
  %4 = ptrtoint ptr %sq_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sq_port, align 4
  %call = tail call fastcc i32 @qrtr_tx_wait(ptr noundef %node, i32 noundef %3, i32 noundef %5, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 32) #10
  %6 = ptrtoint ptr %call2 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 16777216, ptr %call2, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %type)
  %type3 = getelementptr inbounds %struct.qrtr_hdr_v1, ptr %call2, i32 0, i32 1
  %8 = ptrtoint ptr %type3 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %type3, align 1
  %sq_node4 = getelementptr inbounds %struct.sockaddr_qrtr, ptr %from, i32 0, i32 1
  %9 = ptrtoint ptr %sq_node4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sq_node4, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %src_node_id = getelementptr inbounds %struct.qrtr_hdr_v1, ptr %call2, i32 0, i32 2
  %12 = ptrtoint ptr %src_node_id to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %src_node_id, align 1
  %sq_port5 = getelementptr inbounds %struct.sockaddr_qrtr, ptr %from, i32 0, i32 2
  %13 = ptrtoint ptr %sq_port5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sq_port5, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %src_port_id = getelementptr inbounds %struct.qrtr_hdr_v1, ptr %call2, i32 0, i32 3
  %16 = ptrtoint ptr %src_port_id to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %src_port_id, align 1
  %17 = ptrtoint ptr %sq_port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sq_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %18)
  %cmp7 = icmp eq i32 %18, -2
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %nid = getelementptr inbounds %struct.qrtr_node, ptr %node, i32 0, i32 3
  %19 = ptrtoint ptr %nid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nid, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %dst_node_id = getelementptr inbounds %struct.qrtr_hdr_v1, ptr %call2, i32 0, i32 6
  %22 = ptrtoint ptr %dst_node_id to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %dst_node_id, align 1
  br label %if.end13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %sq_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sq_node, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %dst_node_id10 = getelementptr inbounds %struct.qrtr_hdr_v1, ptr %call2, i32 0, i32 6
  %26 = ptrtoint ptr %dst_node_id10 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %dst_node_id10, align 1
  %27 = ptrtoint ptr %sq_port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sq_port, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then8
  %.sink = phi i32 [ -16777217, %if.then8 ], [ %29, %if.else ]
  %30 = getelementptr inbounds %struct.qrtr_hdr_v1, ptr %call2, i32 0, i32 7
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %.sink, ptr %30, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %1)
  %size = getelementptr inbounds %struct.qrtr_hdr_v1, ptr %call2, i32 0, i32 5
  %33 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %size, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  %confirm_rx15 = getelementptr inbounds %struct.qrtr_hdr_v1, ptr %call2, i32 0, i32 4
  %34 = ptrtoint ptr %confirm_rx15 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %lnot.ext, ptr %confirm_rx15, align 1
  %35 = add i32 %1, 35
  %add16 = and i32 %35, -4
  %36 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add16, i32 %37)
  %cmp.i.i = icmp ugt i32 %add16, %37
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end13.if.then19_crit_edge, !prof !88

if.end13.if.then19_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

if.then.i.i:                                      ; preds = %if.end13
  %sub.i.i = sub i32 %add16, %37
  %call.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i, label %if.then.i.i.if.end28_crit_edge

if.then.i.i.if.end28_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.end.i.i:                                       ; preds = %if.then.i.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %38 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.i.not.i.i.i = icmp eq i32 %39, 0
  br i1 %tobool.i.not.i.i.i, label %__skb_put.exit.i.i, label %do.body3.i.i.i, !prof !89

do.body3.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !100
  unreachable

__skb_put.exit.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %40 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %41, i32 %sub.i.i
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i, align 8
  %42 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len1, align 4
  %add.i.i.i = add i32 %43, %sub.i.i
  store i32 %add.i.i.i, ptr %len1, align 4
  br label %if.then19

if.then19:                                        ; preds = %__skb_put.exit.i.i, %if.end13.if.then19_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %node, i32 noundef 0) #10
  %ep = getelementptr inbounds %struct.qrtr_node, ptr %node, i32 0, i32 1
  %44 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ep, align 4
  %tobool20.not = icmp eq ptr %45, null
  br i1 %tobool20.not, label %if.else25, label %if.then21

if.then21:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %call24 = tail call i32 %47(ptr noundef nonnull %45, ptr noundef %skb) #10
  br label %if.end26

if.else25:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %if.then21
  %rc.0 = phi i32 [ %call24, %if.then21 ], [ -19, %if.else25 ]
  tail call void @mutex_unlock(ptr noundef %node) #10
  br label %if.end28

if.end28:                                         ; preds = %if.end26, %if.then.i.i.if.end28_crit_edge
  %rc.1 = phi i32 [ %rc.0, %if.end26 ], [ -12, %if.then.i.i.if.end28_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %tobool29.not = icmp eq i32 %rc.1, 0
  %tobool.not = xor i1 %tobool, true
  %brmerge = select i1 %tobool29.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end28.cleanup_crit_edge, label %if.then31

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then31:                                        ; preds = %if.end28
  %48 = ptrtoint ptr %sq_port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sq_port, align 4
  %50 = tail call i32 @llvm.read_register.i32(metadata !75) #10
  %and.i.i.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %53, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i73 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i73, label %if.then31.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then31.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then31
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i74

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i74:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i74, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then31.rcu_read_lock.exit.i_crit_edge
  %qrtr_tx_flow.i = getelementptr inbounds %struct.qrtr_node, ptr %node, i32 0, i32 4
  %call.i = tail call ptr @radix_tree_lookup(ptr noundef %qrtr_tx_flow.i, i32 noundef %49) #10
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i10.i, label %rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i13.i

rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true.i13.i:                              ; preds = %rcu_read_lock.exit.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, %rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %54 = tail call i32 @llvm.read_register.i32(metadata !75) #10
  %and.i.i.i.i.i17.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %rcu_read_unlock.exit.i.cleanup_crit_edge, label %if.then.i

rcu_read_unlock.exit.i.cleanup_crit_edge:         ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull %call.i) #10
  %tx_failed.i = getelementptr inbounds %struct.qrtr_tx_flow, ptr %call.i, i32 0, i32 2
  %58 = ptrtoint ptr %tx_failed.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %tx_failed.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %rcu_read_unlock.exit.i.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %rc.1, %if.end28.cleanup_crit_edge ], [ %rc.1, %rcu_read_unlock.exit.i.cleanup_crit_edge ], [ %rc.1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qrtr_tx_wait(ptr noundef %node, i32 noundef %dest_node, i32 noundef %dest_port, i32 noundef %type) #0 align 64 {
entry:
  %__wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %qrtr_tx_lock = getelementptr inbounds %struct.qrtr_node, ptr %node, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %qrtr_tx_lock, i32 noundef 0) #10
  %qrtr_tx_flow = getelementptr inbounds %struct.qrtr_node, ptr %node, i32 0, i32 4
  %call = tail call ptr @radix_tree_lookup(ptr noundef %qrtr_tx_flow, i32 noundef %dest_port) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then4, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then4:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 60) #14
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.then4.if.end14.thread_crit_edge, label %do.body

if.then4.if.end14.thread_crit_edge:               ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.thread

do.body:                                          ; preds = %if.then4
  tail call void @__init_waitqueue_head(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @qrtr_tx_wait.__key) #10
  %call9 = tail call i32 @radix_tree_insert(ptr noundef %qrtr_tx_flow, i32 noundef %dest_port, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body.if.end18_crit_edge, label %if.then11

do.body.if.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %if.end14.thread

if.end14.thread:                                  ; preds = %if.then11, %if.then4.if.end14.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %qrtr_tx_lock) #10
  br label %cleanup

if.end18:                                         ; preds = %do.body.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %flow.0 = phi ptr [ %call, %if.end.if.end18_crit_edge ], [ %call7.i.i, %do.body.if.end18_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %qrtr_tx_lock) #10
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull %flow.0) #10
  %pending = getelementptr inbounds %struct.qrtr_tx_flow, ptr %flow.0, i32 0, i32 1
  %1 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %2)
  %cmp20 = icmp slt i32 %2, 10
  br i1 %cmp20, label %if.end18.if.else_crit_edge, label %lor.lhs.false

if.end18.if.else_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

lor.lhs.false:                                    ; preds = %if.end18
  %tx_failed = getelementptr inbounds %struct.qrtr_tx_flow, ptr %flow.0, i32 0, i32 2
  %3 = ptrtoint ptr %tx_failed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_failed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool22.not = icmp eq i32 %4, 0
  br i1 %tobool22.not, label %lor.lhs.false23, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %ep = getelementptr inbounds %struct.qrtr_node, ptr %node, i32 0, i32 1
  %5 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ep, align 4
  %tobool24.not = icmp eq ptr %6, null
  br i1 %tobool24.not, label %lor.lhs.false23.if.else_crit_edge, label %cond.false

lor.lhs.false23.if.else_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

cond.false:                                       ; preds = %lor.lhs.false23
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wait) #10
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 1
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 2
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %__wait to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %__wait, align 4
  %12 = tail call i32 @llvm.read_register.i32(metadata !75) #10
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %7, align 4
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @autoremove_wake_function, ptr %8, align 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %9, ptr %9, align 4
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %9, ptr %10, align 4
  br label %do.body29

do.body29:                                        ; preds = %lor.rhs.do.body29_crit_edge, %cond.false
  %call31 = call i32 @do_wait_intr_irq(ptr noundef nonnull %flow.0, ptr noundef nonnull %__wait) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.cond35, label %do.body29.do.end45_crit_edge

do.body29.do.end45_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45

do.cond35:                                        ; preds = %do.body29
  %20 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %21)
  %cmp37 = icmp slt i32 %21, 10
  br i1 %cmp37, label %do.cond35.do.end45_crit_edge, label %lor.lhs.false39

do.cond35.do.end45_crit_edge:                     ; preds = %do.cond35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45

lor.lhs.false39:                                  ; preds = %do.cond35
  %22 = ptrtoint ptr %tx_failed to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_failed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool41.not = icmp eq i32 %23, 0
  br i1 %tobool41.not, label %lor.rhs, label %lor.lhs.false39.do.end45_crit_edge

lor.lhs.false39.do.end45_crit_edge:               ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45

lor.rhs:                                          ; preds = %lor.lhs.false39
  %24 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ep, align 4
  %tobool43.not = icmp eq ptr %25, null
  br i1 %tobool43.not, label %lor.rhs.do.end45_crit_edge, label %lor.rhs.do.body29_crit_edge

lor.rhs.do.body29_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body29

lor.rhs.do.end45_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45

do.end45:                                         ; preds = %lor.rhs.do.end45_crit_edge, %lor.lhs.false39.do.end45_crit_edge, %do.cond35.do.end45_crit_edge, %do.body29.do.end45_crit_edge
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end45.cond.end_crit_edge

do.end45.cond.end_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i.i.i:                                     ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %10, align 4
  %28 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %9, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i.i.i, %do.end45.cond.end_crit_edge
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 212
  %34 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 ptrtoint (ptr blockaddress(@qrtr_tx_wait, %cond.end) to i32), ptr %task_state_change, align 4
  %35 = load ptr, ptr %task, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 0, ptr %35, align 128
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wait) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp108 = icmp slt i32 %call31, 0
  br i1 %cmp108, label %cond.end.if.end126_crit_edge, label %cond.end.if.else_crit_edge

cond.end.if.else_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

cond.end.if.end126_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end126

if.else:                                          ; preds = %cond.end.if.else_crit_edge, %lor.lhs.false23.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge, %if.end18.if.else_crit_edge
  %ep111 = getelementptr inbounds %struct.qrtr_node, ptr %node, i32 0, i32 1
  %37 = ptrtoint ptr %ep111 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ep111, align 4
  %tobool112.not = icmp eq ptr %38, null
  br i1 %tobool112.not, label %if.else.if.end126_crit_edge, label %if.else114

if.else.if.end126_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end126

if.else114:                                       ; preds = %if.else
  %tx_failed115 = getelementptr inbounds %struct.qrtr_tx_flow, ptr %flow.0, i32 0, i32 2
  %39 = ptrtoint ptr %tx_failed115 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_failed115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool116.not = icmp eq i32 %40, 0
  br i1 %tobool116.not, label %if.else119, label %if.then117

if.then117:                                       ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %tx_failed115 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %tx_failed115, align 4
  br label %if.end126

if.else119:                                       ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pending, align 4
  %inc = add i32 %43, 1
  store i32 %inc, ptr %pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc)
  %cmp122 = icmp eq i32 %inc, 5
  %conv123 = zext i1 %cmp122 to i32
  br label %if.end126

if.end126:                                        ; preds = %if.else119, %if.then117, %if.else.if.end126_crit_edge, %cond.end.if.end126_crit_edge
  %confirm_rx.0 = phi i32 [ 1, %if.then117 ], [ %conv123, %if.else119 ], [ %call31, %cond.end.if.end126_crit_edge ], [ -32, %if.else.if.end126_crit_edge ]
  call void @_raw_spin_unlock_irq(ptr noundef %flow.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end126, %if.end14.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %confirm_rx.0, %if.end126 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end14.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_wait_intr_irq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__qrtr_bind(ptr nocapture noundef readonly %sock, ptr nocapture noundef readonly %addr, i32 noundef %zapped) unnamed_addr #0 align 64 {
entry:
  %index.i = alloca i32, align 4
  %port = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zapped)
  %tobool.not = icmp eq i32 %zapped, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sq_port = getelementptr inbounds %struct.sockaddr_qrtr, ptr %addr, i32 0, i32 2
  %2 = ptrtoint ptr %sq_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sq_port, align 4
  %sq_port3 = getelementptr inbounds %struct.qrtr_sock, ptr %1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %sq_port3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sq_port3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %sq_port4 = getelementptr inbounds %struct.sockaddr_qrtr, ptr %addr, i32 0, i32 2
  %6 = ptrtoint ptr %sq_port4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sq_port4, align 4
  %8 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock(ptr noundef nonnull @qrtr_ports) #10
  %call.i.i = call i32 @__xa_alloc(ptr noundef nonnull @qrtr_ports, ptr noundef nonnull %port, ptr noundef %1, [2 x i32] [i32 32767, i32 16384], i32 noundef 3264) #10
  br label %if.end10.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %7)
  %cmp.i = icmp slt i32 %7, 16384
  br i1 %cmp.i, label %land.lhs.true.i, label %if.else.i.if.else7.i_crit_edge

if.else.i.if.else7.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else7.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %call1.i = tail call zeroext i1 @capable(i32 noundef 12) #10
  br i1 %call1.i, label %if.else3.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else3.i:                                       ; preds = %land.lhs.true.i
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr.i = load i32, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %.pr.i)
  %cmp4.i = icmp eq i32 %.pr.i, -2
  br i1 %cmp4.i, label %if.then5.i, label %if.else3.i.if.else7.i_crit_edge

if.else3.i.if.else7.i_crit_edge:                  ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else7.i

if.then5.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock(ptr noundef nonnull @qrtr_ports) #10
  %call.i28.i = tail call i32 @__xa_insert(ptr noundef nonnull @qrtr_ports, i32 noundef 0, ptr noundef %1, i32 noundef 3264) #10
  br label %if.end10.i

if.else7.i:                                       ; preds = %if.else3.i.if.else7.i_crit_edge, %if.else.i.if.else7.i_crit_edge
  %10 = phi i32 [ %.pr.i, %if.else3.i.if.else7.i_crit_edge ], [ %7, %if.else.i.if.else7.i_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @qrtr_ports) #10
  %call.i29.i = tail call i32 @__xa_insert(ptr noundef nonnull @qrtr_ports, i32 noundef %10, ptr noundef %1, i32 noundef 3264) #10
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else7.i, %if.then5.i, %if.then.i
  %rc.0.i = phi i32 [ %call.i28.i, %if.then5.i ], [ %call.i29.i, %if.else7.i ], [ %call.i.i, %if.then.i ]
  call void @_raw_spin_unlock(ptr noundef nonnull @qrtr_ports) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %rc.0.i)
  %cmp11.i = icmp eq i32 %rc.0.i, -16
  br i1 %cmp11.i, label %if.end10.i.cleanup_crit_edge, label %if.else13.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %cmp14.i = icmp slt i32 %rc.0.i, 0
  br i1 %cmp14.i, label %if.else13.i.cleanup_crit_edge, label %if.end17.i

if.else13.i.cleanup_crit_edge:                    ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17.i:                                       ; preds = %if.else13.i
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #10
  %11 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #10, !srcloc !87
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end17.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !88

if.end17.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end17.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end8_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !89

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end8_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end17.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end17.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %if.end8

if.end8:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end8_crit_edge
  br i1 %tobool.not, label %if.then10, label %if.end8.if.end11_crit_edge

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @qrtr_port_remove(ptr noundef %1)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8.if.end11_crit_edge
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port, align 4
  %sq_port13 = getelementptr inbounds %struct.qrtr_sock, ptr %1, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %sq_port13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %sq_port13, align 8
  %16 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %and.i.i = and i32 %18, -257
  store i32 %and.i.i, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %14)
  %cmp14 = icmp eq i32 %14, -2
  br i1 %cmp14, label %if.then15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i) #10
  %19 = call i32 @llvm.read_register.i32(metadata !75) #10
  %and.i.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %22, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i27 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i27, label %if.then15.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then15.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then15
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #10
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then15.rcu_read_lock.exit.i_crit_edge
  %23 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %index.i, align 4
  %call.i = call ptr @xa_find(ptr noundef nonnull @qrtr_ports, ptr noundef nonnull %index.i, i32 noundef -1, i32 noundef 8) #10
  %tobool.not22.i = icmp eq ptr %call.i, null
  br i1 %tobool.not22.i, label %rcu_read_lock.exit.i.for.end.i_crit_edge, label %rcu_read_lock.exit.i.for.body.i_crit_edge

rcu_read_lock.exit.i.for.body.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  br label %for.body.i

rcu_read_lock.exit.i.for.end.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %sock_put.exit.i.for.body.i_crit_edge, %rcu_read_lock.exit.i.for.body.i_crit_edge
  %ipc.023.i = phi ptr [ %call4.i, %sock_put.exit.i.for.body.i_crit_edge ], [ %call.i, %rcu_read_lock.exit.i.for.body.i_crit_edge ]
  %skc_refcnt.i.i28 = getelementptr inbounds %struct.sock_common, ptr %ipc.023.i, i32 0, i32 19
  %call.i.i.i.i.i.i.i29 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i28, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i28, i32 1, i32 3, i32 1) #10
  %24 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i28, ptr %skc_refcnt.i.i28, i32 1, ptr elementtype(i32) %skc_refcnt.i.i28) #10, !srcloc !87
  %asmresult.i.i.i.i.i.i.i30 = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i30)
  %tobool1.not.i.i.i.i.i31 = icmp eq i32 %asmresult.i.i.i.i.i.i.i30, 0
  br i1 %tobool1.not.i.i.i.i.i31, label %for.body.i.if.end15.sink.split.i.i.i.i.i36_crit_edge, label %if.else.i.i.i.i.i34, !prof !88

for.body.i.if.end15.sink.split.i.i.i.i.i36_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i36

if.else.i.i.i.i.i34:                              ; preds = %for.body.i
  %add.i.i.i.i.i32 = add i32 %asmresult.i.i.i.i.i.i.i30, 1
  %25 = or i32 %add.i.i.i.i.i32, %asmresult.i.i.i.i.i.i.i30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i.i33 = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i.i33, label %if.else.i.i.i.i.i34.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i34.if.end15.sink.split.i.i.i.i.i36_crit_edge, !prof !89

if.else.i.i.i.i.i34.if.end15.sink.split.i.i.i.i.i36_crit_edge: ; preds = %if.else.i.i.i.i.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i36

if.else.i.i.i.i.i34.sock_hold.exit.i_crit_edge:   ; preds = %if.else.i.i.i.i.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i36:                  ; preds = %if.else.i.i.i.i.i34.if.end15.sink.split.i.i.i.i.i36_crit_edge, %for.body.i.if.end15.sink.split.i.i.i.i.i36_crit_edge
  %.sink.i.i.i.i.i35 = phi i32 [ 2, %for.body.i.if.end15.sink.split.i.i.i.i.i36_crit_edge ], [ 1, %if.else.i.i.i.i.i34.if.end15.sink.split.i.i.i.i.i36_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i28, i32 noundef %.sink.i.i.i.i.i35) #10
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i36, %if.else.i.i.i.i.i34.sock_hold.exit.i_crit_edge
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %ipc.023.i, i32 0, i32 51
  %26 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 102, ptr %sk_err.i, align 4
  call void @sk_error_report(ptr noundef nonnull %ipc.023.i) #10
  %call.i.i.i.i.i.i10.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i28, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !90
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i28, i32 1, i32 3, i32 1) #10
  %27 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i28, ptr %skc_refcnt.i.i28, i32 1, ptr elementtype(i32) %skc_refcnt.i.i28) #10, !srcloc !91
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i12.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i11.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i11.i, label %if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !89

if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i28, i32 noundef 3) #10
  br label %sock_put.exit.i

if.then.i12.i:                                    ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !92
  call void @sk_free(ptr noundef nonnull %ipc.023.i) #10
  br label %sock_put.exit.i

sock_put.exit.i:                                  ; preds = %if.then.i12.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge
  %call4.i = call ptr @xa_find_after(ptr noundef nonnull @qrtr_ports, ptr noundef nonnull %index.i, i32 noundef -1, i32 noundef 8) #10
  %tobool.not.i37 = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i37, label %sock_put.exit.i.for.end.i_crit_edge, label %sock_put.exit.i.for.body.i_crit_edge

sock_put.exit.i.for.body.i_crit_edge:             ; preds = %sock_put.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

sock_put.exit.i.for.end.i_crit_edge:              ; preds = %sock_put.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %sock_put.exit.i.for.end.i_crit_edge, %rcu_read_lock.exit.i.for.end.i_crit_edge
  %call.i13.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i13.i, label %for.end.i.qrtr_reset_ports.exit_crit_edge, label %land.lhs.true.i16.i

for.end.i.qrtr_reset_ports.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qrtr_reset_ports.exit

land.lhs.true.i16.i:                              ; preds = %for.end.i
  %call1.i14.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14.i)
  %tobool.not.i15.i = icmp eq i32 %call1.i14.i, 0
  br i1 %tobool.not.i15.i, label %land.lhs.true.i16.i.qrtr_reset_ports.exit_crit_edge, label %land.lhs.true2.i18.i

land.lhs.true.i16.i.qrtr_reset_ports.exit_crit_edge: ; preds = %land.lhs.true.i16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qrtr_reset_ports.exit

land.lhs.true2.i18.i:                             ; preds = %land.lhs.true.i16.i
  %.b4.i17.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i17.i, label %land.lhs.true2.i18.i.qrtr_reset_ports.exit_crit_edge, label %if.then.i19.i

land.lhs.true2.i18.i.qrtr_reset_ports.exit_crit_edge: ; preds = %land.lhs.true2.i18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qrtr_reset_ports.exit

if.then.i19.i:                                    ; preds = %land.lhs.true2.i18.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #10
  br label %qrtr_reset_ports.exit

qrtr_reset_ports.exit:                            ; preds = %if.then.i19.i, %land.lhs.true2.i18.i.qrtr_reset_ports.exit_crit_edge, %land.lhs.true.i16.i.qrtr_reset_ports.exit_crit_edge, %for.end.i.qrtr_reset_ports.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %28 = call i32 @llvm.read_register.i32(metadata !75) #10
  %and.i.i.i.i.i20.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i20.i to ptr
  %preempt_count.i.i.i.i21.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i21.i, align 4
  %sub.i.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i21.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #10
  br label %cleanup

cleanup:                                          ; preds = %qrtr_reset_ports.exit, %if.end11.cleanup_crit_edge, %if.else13.i.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %qrtr_reset_ports.exit ], [ 0, %if.end11.cleanup_crit_edge ], [ -13, %land.lhs.true.i.cleanup_crit_edge ], [ %rc.0.i, %if.else13.i.cleanup_crit_edge ], [ -98, %if.end10.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_alloc(ptr noundef, ptr noundef, ptr noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_user_ifreq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_user_ifreq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qrtr_node_lookup(i32 noundef %nid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @qrtr_nodes_lock) #10
  %call5 = tail call ptr @radix_tree_lookup(ptr noundef nonnull @qrtr_nodes, i32 noundef %nid) #10
  %tobool.not.i = icmp eq ptr %call5, null
  br i1 %tobool.not.i, label %entry.qrtr_node_acquire.exit_crit_edge, label %if.then.i

entry.qrtr_node_acquire.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %qrtr_node_acquire.exit

if.then.i:                                        ; preds = %entry
  %ref.i = getelementptr inbounds %struct.qrtr_node, ptr %call5, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #10, !srcloc !87
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !88

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.qrtr_node_acquire.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !89

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.qrtr_node_acquire.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qrtr_node_acquire.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %qrtr_node_acquire.exit

qrtr_node_acquire.exit:                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.qrtr_node_acquire.exit_crit_edge, %entry.qrtr_node_acquire.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @qrtr_nodes_lock, i32 noundef %call2) #10
  ret ptr %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !46, !48, !50, !52, !53, !55, !56, !58, !59, !61, !63, !65, !66, !68, !70, !71, !73}
!llvm.named.register.sp = !{!75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/qrtr/af_qrtr.c", i32 492, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qrtr_endpoint_post._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qrtr_endpoint_post._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_qrtr_endpoint_post, !7, !"__ksymtab_qrtr_endpoint_post", i1 false, i1 false}
!7 = !{!"../net/qrtr/af_qrtr.c", i32 540, i32 1}
!8 = !{ptr @qrtr_endpoint_register.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../net/qrtr/af_qrtr.c", i32 588, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @qrtr_endpoint_register.__key.4, !12, !"__key", i1 false, i1 false}
!12 = !{!"../net/qrtr/af_qrtr.c", i32 594, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__ksymtab_qrtr_endpoint_register, !15, !"__ksymtab_qrtr_endpoint_register", i1 false, i1 false}
!15 = !{!"../net/qrtr/af_qrtr.c", i32 605, i32 1}
!16 = !{ptr @__ksymtab_qrtr_endpoint_unregister, !17, !"__ksymtab_qrtr_endpoint_unregister", i1 false, i1 false}
!17 = !{!"../net/qrtr/af_qrtr.c", i32 652, i32 1}
!18 = !{ptr @__initcall__kmod_qrtr__471_1309_qrtr_proto_init2, !19, !"__initcall__kmod_qrtr__471_1309_qrtr_proto_init2", i1 false, i1 false}
!19 = !{!"../net/qrtr/af_qrtr.c", i32 1309, i32 1}
!20 = !{ptr @__exitcall_qrtr_proto_fini, !21, !"__exitcall_qrtr_proto_fini", i1 false, i1 false}
!21 = !{!"../net/qrtr/af_qrtr.c", i32 1317, i32 1}
!22 = !{ptr @__UNIQUE_ID_description472, !23, !"__UNIQUE_ID_description472", i1 false, i1 false}
!23 = !{!"../net/qrtr/af_qrtr.c", i32 1319, i32 1}
!24 = !{ptr @__UNIQUE_ID_file473, !25, !"__UNIQUE_ID_file473", i1 false, i1 false}
!25 = !{!"../net/qrtr/af_qrtr.c", i32 1320, i32 1}
!26 = !{ptr @__UNIQUE_ID_license474, !25, !"__UNIQUE_ID_license474", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_alias475, !28, !"__UNIQUE_ID_alias475", i1 false, i1 false}
!28 = !{!"../net/qrtr/af_qrtr.c", i32 1321, i32 1}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!35 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @skb_queue_head_init.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!38 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @xa_init_flags.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!41 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/qrtr/af_qrtr.c", i32 108, i32 8}
!44 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @qrtr_node_lock, !43, !"qrtr_node_lock", i1 false, i1 false}
!46 = !{ptr @qrtr_all_nodes, !47, !"qrtr_all_nodes", i1 false, i1 false}
!47 = !{!"../net/qrtr/af_qrtr.c", i32 106, i32 8}
!48 = distinct !{null, !49, !"qrtr_local_nid", i1 false, i1 false}
!49 = !{!"../net/qrtr/af_qrtr.c", i32 100, i32 21}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/qrtr/af_qrtr.c", i32 104, i32 8}
!52 = !{ptr @qrtr_nodes_lock, !51, !"qrtr_nodes_lock", i1 false, i1 false}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/qrtr/af_qrtr.c", i32 103, i32 8}
!55 = !{ptr @qrtr_nodes, !54, !"qrtr_nodes", i1 false, i1 false}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/qrtr/af_qrtr.c", i32 111, i32 8}
!58 = !{ptr @qrtr_ports, !57, !"qrtr_ports", i1 false, i1 false}
!59 = !{ptr @qrtr_family, !60, !"qrtr_family", i1 false, i1 false}
!60 = !{!"../net/qrtr/af_qrtr.c", i32 1279, i32 38}
!61 = !{ptr @qrtr_proto_ops, !62, !"qrtr_proto_ops", i1 false, i1 false}
!62 = !{!"../net/qrtr/af_qrtr.c", i32 1227, i32 31}
!63 = !{ptr @qrtr_tx_wait.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../net/qrtr/af_qrtr.c", i32 274, i32 4}
!65 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../net/qrtr/af_qrtr.c", i32 288, i32 8}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!70 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!73 = !{ptr @qrtr_proto, !74, !"qrtr_proto", i1 false, i1 false}
!74 = !{!"../net/qrtr/af_qrtr.c", i32 1247, i32 21}
!75 = !{!"sp"}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i64 2149385060}
!86 = !{i64 2149385326}
!87 = !{i64 2148370431, i64 2148370463, i64 2148370492, i64 2148370526, i64 2148370557, i64 2148370580}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{!"branch_weights", i32 2000, i32 1}
!90 = !{i64 2148458456}
!91 = !{i64 2148372896, i64 2148372928, i64 2148372957, i64 2148372991, i64 2148373022, i64 2148373045}
!92 = !{i64 2149334570}
!93 = !{i64 5093892}
!94 = !{i64 5094089}
!95 = !{i64 2152579322}
!96 = !{i64 2157020044, i64 2157020324, i64 2157020658, i64 2157020992}
!97 = !{i64 2157028902, i64 2157029182, i64 2157029516, i64 2157029850}
!98 = !{!"auto-init"}
!99 = !{ptr @qrtr_bcast_enqueue, ptr @qrtr_local_enqueue, ptr @qrtr_node_enqueue}
!100 = !{i64 2154598178, i64 2154598666, i64 2154598215, i64 2154598271, i64 2154598305, i64 2154598329, i64 2154598370, i64 2154598391, i64 2154598419, i64 2154598453}
