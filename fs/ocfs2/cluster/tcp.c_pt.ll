; ModuleID = '/llk/IR_all_yes/fs/ocfs2/cluster/tcp.c_pt.bc'
source_filename = "../fs/ocfs2/cluster/tcp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+o2net_register_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_o2net_register_handler\09\09\09\09"
module asm "\09.long\09__crc_o2net_register_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_o2net_register_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22o2net_register_handler\22\09\09\09\09\09"
module asm "__kstrtabns_o2net_register_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+o2net_unregister_handler_list\22, \22a\22\09"
module asm "\09.weak\09__crc_o2net_unregister_handler_list\09\09\09\09"
module asm "\09.long\09__crc_o2net_unregister_handler_list\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_o2net_unregister_handler_list:\09\09\09\09\09"
module asm "\09.asciz \09\22o2net_unregister_handler_list\22\09\09\09\09\09"
module asm "__kstrtabns_o2net_unregister_handler_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+o2net_fill_node_map\22, \22a\22\09"
module asm "\09.weak\09__crc_o2net_fill_node_map\09\09\09\09"
module asm "\09.long\09__crc_o2net_fill_node_map\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_o2net_fill_node_map:\09\09\09\09\09"
module asm "\09.asciz \09\22o2net_fill_node_map\22\09\09\09\09\09"
module asm "__kstrtabns_o2net_fill_node_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+o2net_send_message_vec\22, \22a\22\09"
module asm "\09.weak\09__crc_o2net_send_message_vec\09\09\09\09"
module asm "\09.long\09__crc_o2net_send_message_vec\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_o2net_send_message_vec:\09\09\09\09\09"
module asm "\09.asciz \09\22o2net_send_message_vec\22\09\09\09\09\09"
module asm "__kstrtabns_o2net_send_message_vec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+o2net_send_message\22, \22a\22\09"
module asm "\09.weak\09__crc_o2net_send_message\09\09\09\09"
module asm "\09.long\09__crc_o2net_send_message\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_o2net_send_message:\09\09\09\09\09"
module asm "\09.asciz \09\22o2net_send_message\22\09\09\09\09\09"
module asm "__kstrtabns_o2net_send_message:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rb_root = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.o2hb_callback_func = type { i32, %struct.list_head, ptr, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.o2net_node = type { %struct.spinlock, ptr, i8, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.idr, %struct.list_head, %struct.delayed_work, i32, %struct.delayed_work, %struct.delayed_work }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.o2net_msg_handler = type { %struct.rb_node, i32, i32, i32, ptr, ptr, ptr, %struct.kref, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.o2net_sock_container = type { %struct.kref, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.delayed_work, i8, ptr, i32, ptr, ptr, i32, i16, %struct.list_head, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.o2nm_node = type { %struct.spinlock, %struct.config_item, [65 x i8], i8, i32, i16, %struct.rb_node, i32, i32 }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.o2net_status_wait = type { i32, i32, i32, %struct.wait_queue_head, %struct.list_head }
%struct.o2net_send_tracking = type { %struct.list_head, ptr, ptr, i32, i32, i32, i8, i64, i64, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iovec = type { ptr, i32 }
%struct.o2net_msg = type { i16, i16, i16, i16, i32, i32, i32, i32, [0 x i8] }
%struct.kvec = type { ptr, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.47, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.44, %union.anon.45 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.47 = type { ptr }
%struct.o2nm_cluster = type { %struct.config_group, i8, i8, %struct.rwlock_t, [255 x ptr], %struct.rb_root, i32, i32, i32, i32, [8 x i32] }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.79, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.119, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.120, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.38, %union.anon.40, %union.anon.41, i16, i8, i8, i32, %union.anon.43, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.71, [0 x i32], %union.anon.72, i16, i16, %union.anon.73, %struct.refcount_struct, [0 x i32], %union.anon.74 }
%union.anon.38 = type { i64 }
%union.anon.40 = type { i32 }
%union.anon.41 = type { i32 }
%union.anon.43 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.70 }
%union.anon.70 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { i32 }
%union.anon.72 = type { %struct.hlist_node }
%union.anon.73 = type { i32 }
%union.anon.74 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.79 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.119 = type { ptr }
%union.anon.120 = type { ptr }
%struct.sk_buff_head = type { %union.anon.77, i32, %struct.spinlock }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.o2net_handshake = type { i64, i64, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.149, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.149 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.page = type { i32, %union.anon.17, %union.anon.155, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.155 = type { %struct.atomic_t }

@o2net_connected_peers = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@__func__.o2net_register_handler = private unnamed_addr constant [23 x i8] c"o2net_register_handler\00", align 1
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"max_len for message handler out of range: %u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"no message type provided: %u, %p\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"no message handler provided: %u, %p\0A\00", [59 x i8] zeroinitializer }, align 32
@o2net_handler_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@o2net_handler_tree = internal global { %struct.rb_root, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"registered handler func %p type %u key %08x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"bug expression: o2net_handler_tree_lookup(msg_type, key, &p, &parent) == NULL\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"couldn't find handler we *just* registered for type %u key %08x\0A\00", [63 x i8] zeroinitializer }, align 32
@__kstrtab_o2net_register_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_o2net_register_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_o2net_register_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @o2net_register_handler to i32), ptr @__kstrtab_o2net_register_handler, ptr @__kstrtabns_o2net_register_handler }, section "___ksymtab_gpl+o2net_register_handler", align 4
@__func__.o2net_unregister_handler_list = private unnamed_addr constant [30 x i8] c"o2net_unregister_handler_list\00", align 1
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"unregistering handler func %p type %u key %08x\0A\00", [48 x i8] zeroinitializer }, align 32
@__kstrtab_o2net_unregister_handler_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_o2net_unregister_handler_list = external dso_local constant [0 x i8], align 1
@__ksymtab_o2net_unregister_handler_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @o2net_unregister_handler_list to i32), ptr @__kstrtab_o2net_unregister_handler_list, ptr @__kstrtabns_o2net_unregister_handler_list }, section "___ksymtab_gpl+o2net_unregister_handler_list", align 4
@__kstrtab_o2net_fill_node_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_o2net_fill_node_map = external dso_local constant [0 x i8], align 1
@__ksymtab_o2net_fill_node_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @o2net_fill_node_map to i32), ptr @__kstrtab_o2net_fill_node_map, ptr @__kstrtabns_o2net_fill_node_map }, section "___ksymtab_gpl+o2net_fill_node_map", align 4
@o2net_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__func__.o2net_send_message_vec = private unnamed_addr constant [23 x i8] c"o2net_send_message_vec\00", align 1
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"attempt to tx without o2netd running\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bad kvec array length\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"total payload len %zu too large\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/ocfs2/cluster/tcp.c\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to %zu element kvec!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate a o2net_msg!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"[mag %u len %u typ %u stat %d sys_stat %d key %08x num %u] sending returned %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"error returned from o2net_send_tcp_msg=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"woken, returning system status %d, user status %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_o2net_send_message_vec = external dso_local constant [0 x i8], align 1
@__kstrtabns_o2net_send_message_vec = external dso_local constant [0 x i8], align 1
@__ksymtab_o2net_send_message_vec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @o2net_send_message_vec to i32), ptr @__kstrtab_o2net_send_message_vec, ptr @__kstrtabns_o2net_send_message_vec }, section "___ksymtab_gpl+o2net_send_message_vec", align 4
@__kstrtab_o2net_send_message = external dso_local constant [0 x i8], align 1
@__kstrtabns_o2net_send_message = external dso_local constant [0 x i8], align 1
@__ksymtab_o2net_send_message = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @o2net_send_message to i32), ptr @__kstrtab_o2net_send_message, ptr @__kstrtabns_o2net_send_message }, section "___ksymtab_gpl+o2net_send_message", align 4
@o2net_hb_up = internal global { %struct.o2hb_callback_func, [36 x i8] } zeroinitializer, align 32
@o2net_hb_down = internal global { %struct.o2hb_callback_func, [36 x i8] } zeroinitializer, align 32
@o2net_listen_sock = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__func__.o2net_start_listening = private unnamed_addr constant [22 x i8] c"o2net_start_listening\00", align 1
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"starting o2net thread...\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"o2net\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to launch o2net thread\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.o2net_stop_listening = private unnamed_addr constant [21 x i8] c"o2net_stop_listening\00", align 1
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"waiting for o2net thread to exit....\0A\00", [58 x i8] zeroinitializer }, align 32
@o2net_hand = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@o2net_keep_req = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@o2net_keep_resp = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@o2net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&nn->nn_lock\00", [19 x i8] zeroinitializer }, align 32
@o2net_init.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&nn->nn_connect_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@o2net_init.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&nn->nn_connect_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@o2net_init.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(work_completion)(&(&nn->nn_connect_expired)->work)\00", [44 x i8] zeroinitializer }, align 32
@o2net_init.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&(&nn->nn_connect_expired)->timer\00", [62 x i8] zeroinitializer }, align 32
@o2net_init.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&nn->nn_still_up)->work)\00", [51 x i8] zeroinitializer }, align 32
@o2net_init.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&nn->nn_still_up)->timer\00", [37 x i8] zeroinitializer }, align 32
@o2net_init.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&nn->nn_sc_wq\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"o2net_handler_lock\00", [45 x i8] zeroinitializer }, align 32
@o2net_nodes = internal global { [255 x %struct.o2net_node], [30852 x i8] } zeroinitializer, align 32
@__func__.sc_put = private unnamed_addr constant [7 x i8] c"sc_put\00", align 1
@.str.36 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[sc %p refs %d sock %p node %u page %p pg_off %zu] put\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.sc_kref_release = private unnamed_addr constant [16 x i8] c"sc_kref_release\00", align 1
@.str.37 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[sc %p refs %d sock %p node %u page %p pg_off %zu] releasing\0A\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@o2net_prep_nsw.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&nsw->ns_wq\00", [20 x i8] zeroinitializer }, align 32
@__func__.o2net_send_tcp_msg = private unnamed_addr constant [19 x i8] c"o2net_send_tcp_msg\00", align 1
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sendmsg returned %d instead of %zu\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"returning error: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@o2net_sys_err_translations = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 -92, i32 -75, i32 -112], [16 x i8] zeroinitializer }, align 32
@__func__.o2net_set_nn_state = private unnamed_addr constant [19 x i8] c"o2net_set_nn_state\00", align 1
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bug expression: err && valid\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"err %d valid %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bug expression: valid && !sc\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"valid %u sc %p\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"node %u sc: %p -> %p, valid %u -> %u, err %d -> %d\0A\00", [44 x i8] zeroinitializer }, align 32
@o2hb_dead_threshold = external dso_local local_unnamed_addr global i32, align 4
@o2net_set_nn_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @__func__.o2net_set_nn_state, ptr @.str.10, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\015o2net: No longer connected to node %s (num %u) at %pI4:%u\0A\00", [35 x i8] zeroinitializer }, align 32
@o2net_set_nn_state._entry_ptr = internal global ptr @o2net_set_nn_state._entry, section ".printk_index", align 4
@o2net_set_nn_state._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @__func__.o2net_set_nn_state, ptr @.str.10, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015o2net: %s node %s (num %u) at %pI4:%u\0A\00", [55 x i8] zeroinitializer }, align 32
@o2net_set_nn_state._entry_ptr.49 = internal global ptr @o2net_set_nn_state._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Connected to\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Accepted connection from\00", [39 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"queueing conn attempt in %lu jiffies\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.o2net_complete_nodes_nsw = private unnamed_addr constant [25 x i8] c"o2net_complete_nodes_nsw\00", align 1
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"completed %d messages for node %u\0A\00", [61 x i8] zeroinitializer }, align 32
@o2nm_single_cluster = external dso_local local_unnamed_addr global ptr, align 4
@__func__.sc_get = private unnamed_addr constant [7 x i8] c"sc_get\00", align 1
@.str.54 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[sc %p refs %d sock %p node %u page %p pg_off %zu] get\0A\00", [40 x i8] zeroinitializer }, align 32
@o2net_open_listening_sock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.10, i32 1979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013o2net: Error %d while creating socket\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"o2net_open_listening_sock\00", [38 x i8] zeroinitializer }, align 32
@o2net_open_listening_sock._entry_ptr = internal global ptr @o2net_open_listening_sock._entry, section ".printk_index", align 4
@o2net_open_listening_sock.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@o2net_listen_work = internal global { %struct.work_struct, [52 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&o2net_listen_work)\00", [58 x i8] zeroinitializer }, align 32
@o2net_open_listening_sock._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.56, ptr @.str.10, i32 1997, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013o2net: Error %d while binding socket at %pI4:%u\0A\00", [45 x i8] zeroinitializer }, align 32
@o2net_open_listening_sock._entry_ptr.60 = internal global ptr @o2net_open_listening_sock._entry.58, section ".printk_index", align 4
@o2net_open_listening_sock._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.56, ptr @.str.10, i32 2004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013o2net: Error %d while listening on %pI4:%u\0A\00", [50 x i8] zeroinitializer }, align 32
@o2net_open_listening_sock._entry_ptr.63 = internal global ptr @o2net_open_listening_sock._entry.61, section ".printk_index", align 4
@o2net_accept_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.10, i32 1818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\015o2net: Attempt to connect from unknown node at %pI4:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"o2net_accept_one\00", [47 x i8] zeroinitializer }, align 32
@o2net_accept_one._entry_ptr = internal global ptr @o2net_accept_one._entry, section ".printk_index", align 4
@o2net_accept_one._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.10, i32 1834, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\015o2net: Unexpected connect attempt seen at node '%s' (%u, %pI4:%d) from node '%s' (%u, %pI4:%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@o2net_accept_one._entry_ptr.68 = internal global ptr @o2net_accept_one._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"attempt to connect from node '%s' at %pI4:%d but it isn't heartbeating\0A\00", [56 x i8] zeroinitializer }, align 32
@o2net_accept_one._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.65, ptr @.str.10, i32 1862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\015o2net: Attempt to connect from node '%s' at %pI4:%d but it already has an open connection\0A\00", [35 x i8] zeroinitializer }, align 32
@o2net_accept_one._entry_ptr.72 = internal global ptr @o2net_accept_one._entry.70, section ".printk_index", align 4
@__func__.sc_alloc = private unnamed_addr constant [9 x i8] c"sc_alloc\00", align 1
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@sc_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.74 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&sc->sc_connect_work)\00", [56 x i8] zeroinitializer }, align 32
@sc_alloc.__key.75 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.76 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&sc->sc_rx_work)\00", [61 x i8] zeroinitializer }, align 32
@sc_alloc.__key.77 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.78 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&sc->sc_shutdown_work)\00", [55 x i8] zeroinitializer }, align 32
@sc_alloc.__key.79 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.80 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&sc->sc_keepalive_work)->work)\00", [45 x i8] zeroinitializer }, align 32
@sc_alloc.__key.81 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.82 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&sc->sc_keepalive_work)->timer\00", [63 x i8] zeroinitializer }, align 32
@sc_alloc.__key.83 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&sc->sc_idle_timeout)\00", [41 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[sc %p refs %d sock %p node %u page %p pg_off %zu] alloced\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.o2net_sc_connect_completed = private unnamed_addr constant [27 x i8] c"o2net_sc_connect_completed\00", align 1
@.str.87 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sc sending handshake with ver %llu id %llx\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.o2net_rx_until_empty = private unnamed_addr constant [21 x i8] c"o2net_rx_until_empty\00", align 1
@.str.88 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"[sc %p refs %d sock %p node %u page %p pg_off %zu] saw error %d, closing\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.o2net_advance_rx = private unnamed_addr constant [17 x i8] c"o2net_advance_rx\00", align 1
@.str.89 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[sc %p refs %d sock %p node %u page %p pg_off %zu] receiving\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"[mag %u len %u typ %u stat %d sys_stat %d key %08x num %u] at page_off %zu\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[sc %p refs %d sock %p node %u page %p pg_off %zu] ret = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@o2net_check_handshake._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.10, i32 1263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"\015o2net: node %s (num %u) at %pI4:%u Advertised net protocol version %llu but %llu is required. Disconnecting.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"o2net_check_handshake\00", [42 x i8] zeroinitializer }, align 32
@o2net_check_handshake._entry_ptr = internal global ptr @o2net_check_handshake._entry, section ".printk_index", align 4
@o2net_check_handshake._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.10, i32 1281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"\015o2net: node %s (num %u) at %pI4:%u uses a network idle timeout of %u ms, but we use %u ms locally. Disconnecting.\0A\00", [43 x i8] zeroinitializer }, align 32
@o2net_check_handshake._entry_ptr.96 = internal global ptr @o2net_check_handshake._entry.94, section ".printk_index", align 4
@o2net_check_handshake._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.93, ptr @.str.10, i32 1292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"\015o2net: node %s (num %u) at %pI4:%u uses a keepalive delay of %u ms, but we use %u ms locally. Disconnecting.\0A\00", [48 x i8] zeroinitializer }, align 32
@o2net_check_handshake._entry_ptr.99 = internal global ptr @o2net_check_handshake._entry.97, section ".printk_index", align 4
@o2net_check_handshake._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.93, ptr @.str.10, i32 1303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"\015o2net: node %s (num %u) at %pI4:%u uses a heartbeat timeout of %u ms, but we use %u ms locally. Disconnecting.\0A\00", [46 x i8] zeroinitializer }, align 32
@o2net_check_handshake._entry_ptr.102 = internal global ptr @o2net_check_handshake._entry.100, section ".printk_index", align 4
@__func__.o2net_process_message = private unnamed_addr constant [22 x i8] c"o2net_process_message\00", align 1
@.str.103 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"[mag %u len %u typ %u stat %d sys_stat %d key %08x num %u] processing message\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"[mag %u len %u typ %u stat %d sys_stat %d key %08x num %u] bad magic\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"couldn't find handler for type %u key %08x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"sending handler status %d, syserr %d returned %d\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.o2net_send_status_magic = private unnamed_addr constant [24 x i8] c"o2net_send_status_magic\00", align 1
@.str.107 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"[mag %u len %u typ %u stat %d sys_stat %d key %08x num %u] about to send status magic %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.o2net_shutdown_sc = private unnamed_addr constant [18 x i8] c"o2net_shutdown_sc\00", align 1
@.str.108 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"[sc %p refs %d sock %p node %u page %p pg_off %zu] shutting down\0A\00", [62 x i8] zeroinitializer }, align 32
@o2net_idle_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.10, i32 1498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\015o2net: Connection to node %s (num %u) at %pI4:%u has been idle for %lu.%lu secs.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"o2net_idle_timer\00", [47 x i8] zeroinitializer }, align 32
@o2net_idle_timer._entry_ptr = internal global ptr @o2net_idle_timer._entry, section ".printk_index", align 4
@o2net_register_callbacks.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&sc->sc_send_lock\00", [46 x i8] zeroinitializer }, align 32
@__func__.o2net_data_ready = private unnamed_addr constant [17 x i8] c"o2net_data_ready\00", align 1
@.str.112 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"[sc %p refs %d sock %p node %u page %p pg_off %zu] data_ready hit\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.o2net_state_change = private unnamed_addr constant [19 x i8] c"o2net_state_change\00", align 1
@.str.113 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"[sc %p refs %d sock %p node %u page %p pg_off %zu] state_change to %d\0A\00", [57 x i8] zeroinitializer }, align 32
@o2net_state_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @__func__.o2net_state_change, ptr @.str.10, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016o2net: Connection to node %s (num %u) at %pI4:%u shutdown, state %d\0A\00", [57 x i8] zeroinitializer }, align 32
@o2net_state_change._entry_ptr = internal global ptr @o2net_state_change._entry, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__func__.o2net_sendpage = private unnamed_addr constant [15 x i8] c"o2net_sendpage\00", align 1
@.str.115 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"sendpage of size %zu to node %s (num %u) at %pI4:%u returned EAGAIN\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"sendpage of size %zu to node %s (num %u) at %pI4:%u failed with %zd\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.o2net_start_connect = private unnamed_addr constant [20 x i8] c"o2net_start_connect\00", align 1
@.str.117 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"couldn't allocate sc\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't create socket: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bind failed with %d at address %pI4\0A\00", [59 x i8] zeroinitializer }, align 32
@o2net_start_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @__func__.o2net_start_connect, ptr @.str.10, i32 1644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\015o2net: Connect attempt to node %s (num %u) at %pI4:%u failed with errno %d\0A\00", [50 x i8] zeroinitializer }, align 32
@o2net_start_connect._entry_ptr = internal global ptr @o2net_start_connect._entry, section ".printk_index", align 4
@o2net_connect_expired._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.10, i32 1672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"\015o2net: No connection established with node %u after %u.%u seconds, check network and cluster configuration.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"o2net_connect_expired\00", [42 x i8] zeroinitializer }, align 32
@o2net_connect_expired._entry_ptr = internal global ptr @o2net_connect_expired._entry, section ".printk_index", align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967189]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@__sancov_gen_cov_switch_values.125 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.126 = internal global [6 x i64] [i64 4, i64 16, i64 64085, i64 64086, i64 64087, i64 64088]
@__sancov_gen_cov_switch_values.127 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.128 = private unnamed_addr constant [22 x i8] c"o2net_connected_peers\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 479, i32 17 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 806, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 813, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 819, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [19 x i8] c"o2net_handler_lock\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [19 x i8] c"o2net_handler_tree\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 91, i32 23 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 850, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 853, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 874, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [9 x i8] c"o2net_wq\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 106, i32 33 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1029, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1035, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1042, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1056, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1065, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1072, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1098, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1100, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1117, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [12 x i8] c"o2net_hb_up\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 109, i32 34 }
@___asan_gen_.191 = private unnamed_addr constant [14 x i8] c"o2net_hb_down\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 109, i32 47 }
@___asan_gen_.194 = private unnamed_addr constant [18 x i8] c"o2net_listen_sock\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 96, i32 23 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 2029, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 2030, i32 13 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 2032, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 2072, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [11 x i8] c"o2net_hand\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 112, i32 32 }
@___asan_gen_.212 = private unnamed_addr constant [15 x i8] c"o2net_keep_req\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 113, i32 26 }
@___asan_gen_.215 = private unnamed_addr constant [16 x i8] c"o2net_keep_resp\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 113, i32 43 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 2108, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 2109, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 2110, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 2112, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 2115, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 90, i32 8 }
@___asan_gen_.269 = private unnamed_addr constant [12 x i8] c"o2net_nodes\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 93, i32 26 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 402, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 382, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 304, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 921, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 925, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant [27 x i8] c"o2net_sys_err_translations\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 115, i32 12 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 504, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 505, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 510, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 530, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 538, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 557, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 360, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 407, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1979, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant [18 x i8] c"o2net_listen_work\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 107, i32 27 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1991, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1996, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 2003, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1816, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1826, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1842, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1859, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 428, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 432, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 433, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 434, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 435, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 437, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 439, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1462, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1433, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1338, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1387, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1413, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1259, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1277, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1288, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1299, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1175, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1196, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1206, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1237, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1159, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 718, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1496, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 665, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 591, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 616, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 629, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 946, i32 4 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 951, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1594, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1601, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1615, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1643, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.546 = private constant [26 x i8] c"../fs/ocfs2/cluster/tcp.c\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1667, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.551 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.552 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 378, i32 2 }
@llvm.compiler.used = appending global [163 x ptr] [ptr @__ksymtab_o2net_fill_node_map, ptr @__ksymtab_o2net_register_handler, ptr @__ksymtab_o2net_send_message, ptr @__ksymtab_o2net_send_message_vec, ptr @__ksymtab_o2net_unregister_handler_list, ptr @o2net_accept_one._entry, ptr @o2net_accept_one._entry.66, ptr @o2net_accept_one._entry.70, ptr @o2net_accept_one._entry_ptr, ptr @o2net_accept_one._entry_ptr.68, ptr @o2net_accept_one._entry_ptr.72, ptr @o2net_check_handshake._entry, ptr @o2net_check_handshake._entry.100, ptr @o2net_check_handshake._entry.94, ptr @o2net_check_handshake._entry.97, ptr @o2net_check_handshake._entry_ptr, ptr @o2net_check_handshake._entry_ptr.102, ptr @o2net_check_handshake._entry_ptr.96, ptr @o2net_check_handshake._entry_ptr.99, ptr @o2net_connect_expired._entry, ptr @o2net_connect_expired._entry_ptr, ptr @o2net_idle_timer._entry, ptr @o2net_idle_timer._entry_ptr, ptr @o2net_open_listening_sock._entry, ptr @o2net_open_listening_sock._entry.58, ptr @o2net_open_listening_sock._entry.61, ptr @o2net_open_listening_sock._entry_ptr, ptr @o2net_open_listening_sock._entry_ptr.60, ptr @o2net_open_listening_sock._entry_ptr.63, ptr @o2net_set_nn_state._entry, ptr @o2net_set_nn_state._entry.47, ptr @o2net_set_nn_state._entry_ptr, ptr @o2net_set_nn_state._entry_ptr.49, ptr @o2net_start_connect._entry, ptr @o2net_start_connect._entry_ptr, ptr @o2net_state_change._entry, ptr @o2net_state_change._entry_ptr, ptr @o2net_connected_peers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @o2net_handler_lock, ptr @o2net_handler_tree, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @o2net_wq, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @o2net_hb_up, ptr @o2net_hb_down, ptr @o2net_listen_sock, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @o2net_hand, ptr @o2net_keep_req, ptr @o2net_keep_resp, ptr @o2net_init.__key, ptr @.str.20, ptr @o2net_init.__key.21, ptr @.str.22, ptr @o2net_init.__key.23, ptr @.str.24, ptr @o2net_init.__key.25, ptr @.str.26, ptr @o2net_init.__key.27, ptr @.str.28, ptr @o2net_init.__key.29, ptr @.str.30, ptr @o2net_init.__key.31, ptr @.str.32, ptr @o2net_init.__key.33, ptr @.str.34, ptr @.str.35, ptr @o2net_nodes, ptr @.str.36, ptr @.str.37, ptr @o2net_prep_nsw.__key, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @o2net_sys_err_translations, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @o2net_open_listening_sock.__key, ptr @o2net_listen_work, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @sc_alloc.__key, ptr @.str.74, ptr @sc_alloc.__key.75, ptr @.str.76, ptr @sc_alloc.__key.77, ptr @.str.78, ptr @sc_alloc.__key.79, ptr @.str.80, ptr @sc_alloc.__key.81, ptr @.str.82, ptr @sc_alloc.__key.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @o2net_register_callbacks.__key, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @xa_init_flags.__key, ptr @.str.123], section "llvm.metadata"
@0 = internal global [142 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_connected_peers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_handler_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_handler_tree to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_hb_up to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_hb_down to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_listen_sock to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_hand to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_keep_req to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_keep_resp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_init.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_init.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_init.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_init.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_init.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_init.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_init.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_nodes to i32), i32 123420, i32 154272, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_prep_nsw.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_sys_err_translations to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_set_nn_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_set_nn_state._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_open_listening_sock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_open_listening_sock.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_listen_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_open_listening_sock._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_open_listening_sock._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_accept_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_accept_one._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_accept_one._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc_alloc.__key.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc_alloc.__key.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc_alloc.__key.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc_alloc.__key.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc_alloc.__key.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_check_handshake._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_check_handshake._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_check_handshake._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_check_handshake._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_idle_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_register_callbacks.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_state_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_start_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_connect_expired._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @o2net_num_connected_peers() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @o2net_connected_peers, i32 noundef 4) #10
  %0 = load volatile i32, ptr @o2net_connected_peers, align 4
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @o2net_register_handler(i32 noundef %msg_type, i32 noundef %key, i32 noundef %max_len, ptr noundef %func, ptr noundef %data, ptr noundef %post_func, ptr noundef %unreg_list) #0 align 64 {
entry:
  %msg_type.addr.i.i108 = alloca i32, align 4
  %key.addr.i.i109 = alloca i32, align 4
  %msg_type.addr.i.i = alloca i32, align 4
  %key.addr.i.i = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m6 = alloca i64, align 8
  %_m17 = alloca i64, align 8
  %_m34 = alloca i64, align 8
  %_m46 = alloca i64, align 8
  %_m54 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4072, i32 %max_len)
  %cmp = icmp ugt i32 %max_len, 4072
  br i1 %cmp, label %do.body, label %if.end2

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.o2net_register_handler, i32 noundef 807, ptr noundef nonnull @.str, i32 noundef %max_len) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %if.then72

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msg_type)
  %tobool3.not = icmp eq i32 %msg_type, 0
  br i1 %tobool3.not, label %do.body5, label %if.end13

do.body5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m6) #10
  %1 = ptrtoint ptr %_m6 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 1, ptr %_m6, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m6, ptr noundef nonnull @__func__.o2net_register_handler, i32 noundef 813, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %func) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m6) #10
  br label %if.then72

if.end13:                                         ; preds = %if.end2
  %tobool14.not = icmp eq ptr %func, null
  br i1 %tobool14.not, label %do.body16, label %if.end24

do.body16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m17) #10
  %2 = ptrtoint ptr %_m17 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1, ptr %_m17, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m17, ptr noundef nonnull @__func__.o2net_register_handler, i32 noundef 820, ptr noundef nonnull @.str.2, i32 noundef %msg_type, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m17) #10
  br label %if.then72

if.end24:                                         ; preds = %if.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3392, i32 noundef 48) #13
  %cmp25 = icmp eq ptr %call7.i.i, null
  br i1 %cmp25, label %if.end24.if.then72_crit_edge, label %if.end27

if.end24.if.then72_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then72

if.end27:                                         ; preds = %if.end24
  %nh_func = getelementptr inbounds %struct.o2net_msg_handler, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %nh_func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %func, ptr %nh_func, align 8
  %nh_func_data = getelementptr inbounds %struct.o2net_msg_handler, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %nh_func_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data, ptr %nh_func_data, align 4
  %nh_post_func = getelementptr inbounds %struct.o2net_msg_handler, ptr %call7.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %nh_post_func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %post_func, ptr %nh_post_func, align 8
  %nh_msg_type = getelementptr inbounds %struct.o2net_msg_handler, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %nh_msg_type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %msg_type, ptr %nh_msg_type, align 8
  %nh_max_len = getelementptr inbounds %struct.o2net_msg_handler, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %nh_max_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %max_len, ptr %nh_max_len, align 4
  %nh_key = getelementptr inbounds %struct.o2net_msg_handler, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %nh_key to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %key, ptr %nh_key, align 4
  %nh_kref = getelementptr inbounds %struct.o2net_msg_handler, ptr %call7.i.i, i32 0, i32 7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nh_kref, i32 noundef 4) #10
  %10 = ptrtoint ptr %nh_kref to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %nh_kref, align 4
  %nh_unregister_item = getelementptr inbounds %struct.o2net_msg_handler, ptr %call7.i.i, i32 0, i32 8
  %11 = ptrtoint ptr %nh_unregister_item to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %nh_unregister_item, ptr %nh_unregister_item, align 8
  %prev.i = getelementptr inbounds %struct.o2net_msg_handler, ptr %call7.i.i, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %nh_unregister_item, ptr %prev.i, align 4
  tail call void @_raw_write_lock(ptr noundef nonnull @o2net_handler_lock) #10
  %13 = load ptr, ptr @o2net_handler_tree, align 4
  %tobool.not21.i = icmp eq ptr %13, null
  br i1 %tobool.not21.i, label %if.end27.if.else_crit_edge, label %if.end27.while.body.i_crit_edge

if.end27.while.body.i_crit_edge:                  ; preds = %if.end27
  br label %while.body.i

if.end27.if.else_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %if.end27.while.body.i_crit_edge
  %14 = phi ptr [ %22, %if.end5.i.while.body.i_crit_edge ], [ %13, %if.end27.while.body.i_crit_edge ]
  %p.022.i = phi ptr [ %p.1.i, %if.end5.i.while.body.i_crit_edge ], [ @o2net_handler_tree, %if.end27.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg_type.addr.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.addr.i.i) #10
  %15 = ptrtoint ptr %msg_type.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %msg_type, ptr %msg_type.addr.i.i, align 4
  %16 = ptrtoint ptr %key.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %key, ptr %key.addr.i.i, align 4
  %nh_key.i.i = getelementptr inbounds %struct.o2net_msg_handler, ptr %14, i32 0, i32 3
  %call.i.i = call i32 @memcmp(ptr noundef dereferenceable(4) %nh_key.i.i, ptr noundef nonnull dereferenceable(4) %key.addr.i.i, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %while.body.i.o2net_handler_cmp.exit.i_crit_edge

while.body.i.o2net_handler_cmp.exit.i_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_handler_cmp.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %nh_msg_type.i.i = getelementptr inbounds %struct.o2net_msg_handler, ptr %14, i32 0, i32 2
  %call1.i.i = call i32 @memcmp(ptr noundef dereferenceable(4) %nh_msg_type.i.i, ptr noundef nonnull dereferenceable(4) %msg_type.addr.i.i, i32 noundef 4) #14
  br label %o2net_handler_cmp.exit.i

o2net_handler_cmp.exit.i:                         ; preds = %if.then.i.i, %while.body.i.o2net_handler_cmp.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ %call1.i.i, %if.then.i.i ], [ %call.i.i, %while.body.i.o2net_handler_cmp.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_type.addr.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.addr.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %cmp1.i = icmp slt i32 %ret.0.i.i, 0
  br i1 %cmp1.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %o2net_handler_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %p.022.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p.022.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 2
  br label %if.end5.i

if.else.i:                                        ; preds = %o2net_handler_cmp.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %cmp2.not.i = icmp eq i32 %ret.0.i.i, 0
  br i1 %cmp2.not.i, label %out, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %p.022.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %p.022.i, align 4
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %20, i32 0, i32 1
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.then.i
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %21 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end5.i.if.else_crit_edge, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end5.i.if.else_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.else:                                          ; preds = %if.end5.i.if.else_crit_edge, %if.end27.if.else_crit_edge
  %p.0.lcssa.i.ph = phi ptr [ @o2net_handler_tree, %if.end27.if.else_crit_edge ], [ %p.1.i, %if.end5.i.if.else_crit_edge ]
  %parent.1.i.ph = phi ptr [ null, %if.end27.if.else_crit_edge ], [ %14, %if.end5.i.if.else_crit_edge ]
  %23 = ptrtoint ptr %parent.1.i.ph to i32
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %call7.i.i, align 8
  %rb_right.i104 = getelementptr inbounds %struct.rb_node, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %rb_right.i104 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %rb_right.i104, align 4
  %rb_left.i105 = getelementptr inbounds %struct.rb_node, ptr %call7.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %rb_left.i105 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %rb_left.i105, align 8
  %27 = ptrtoint ptr %p.0.lcssa.i.ph to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %p.0.lcssa.i.ph, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @o2net_handler_tree) #10
  %prev.i106 = getelementptr inbounds %struct.list_head, ptr %unreg_list, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i106 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i106, align 4
  %call.i.i107 = tail call zeroext i1 @__list_add_valid(ptr noundef %nh_unregister_item, ptr noundef %29, ptr noundef %unreg_list) #10
  br i1 %call.i.i107, label %if.end.i.i, label %if.else.list_add_tail.exit_crit_edge

if.else.list_add_tail.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %prev.i106 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %nh_unregister_item, ptr %prev.i106, align 4
  %31 = ptrtoint ptr %nh_unregister_item to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %unreg_list, ptr %nh_unregister_item, align 8
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %nh_unregister_item, ptr %29, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.else.list_add_tail.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m34) #10
  %34 = ptrtoint ptr %_m34 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 1, ptr %_m34, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m34, ptr noundef nonnull @__func__.o2net_register_handler, i32 noundef 851, ptr noundef nonnull @.str.3, ptr noundef nonnull %func, i32 noundef %msg_type, i32 noundef %key) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m34) #10
  %35 = load ptr, ptr @o2net_handler_tree, align 4
  %tobool.not21.i110 = icmp eq ptr %35, null
  br i1 %tobool.not21.i110, label %list_add_tail.exit.do.body45_crit_edge, label %list_add_tail.exit.while.body.i115_crit_edge

list_add_tail.exit.while.body.i115_crit_edge:     ; preds = %list_add_tail.exit
  br label %while.body.i115

list_add_tail.exit.do.body45_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45

while.body.i115:                                  ; preds = %if.end5.i130.while.body.i115_crit_edge, %list_add_tail.exit.while.body.i115_crit_edge
  %36 = phi ptr [ %44, %if.end5.i130.while.body.i115_crit_edge ], [ %35, %list_add_tail.exit.while.body.i115_crit_edge ]
  %p.022.i111 = phi ptr [ %p.1.i128, %if.end5.i130.while.body.i115_crit_edge ], [ @o2net_handler_tree, %list_add_tail.exit.while.body.i115_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg_type.addr.i.i108) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.addr.i.i109) #10
  %37 = ptrtoint ptr %msg_type.addr.i.i108 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %msg_type, ptr %msg_type.addr.i.i108, align 4
  %38 = ptrtoint ptr %key.addr.i.i109 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %key, ptr %key.addr.i.i109, align 4
  %nh_key.i.i112 = getelementptr inbounds %struct.o2net_msg_handler, ptr %36, i32 0, i32 3
  %call.i.i113 = call i32 @memcmp(ptr noundef dereferenceable(4) %nh_key.i.i112, ptr noundef nonnull dereferenceable(4) %key.addr.i.i109, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i113)
  %cmp.i.i114 = icmp eq i32 %call.i.i113, 0
  br i1 %cmp.i.i114, label %if.then.i.i118, label %while.body.i115.o2net_handler_cmp.exit.i121_crit_edge

while.body.i115.o2net_handler_cmp.exit.i121_crit_edge: ; preds = %while.body.i115
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_handler_cmp.exit.i121

if.then.i.i118:                                   ; preds = %while.body.i115
  call void @__sanitizer_cov_trace_pc() #12
  %nh_msg_type.i.i116 = getelementptr inbounds %struct.o2net_msg_handler, ptr %36, i32 0, i32 2
  %call1.i.i117 = call i32 @memcmp(ptr noundef dereferenceable(4) %nh_msg_type.i.i116, ptr noundef nonnull dereferenceable(4) %msg_type.addr.i.i108, i32 noundef 4) #14
  br label %o2net_handler_cmp.exit.i121

o2net_handler_cmp.exit.i121:                      ; preds = %if.then.i.i118, %while.body.i115.o2net_handler_cmp.exit.i121_crit_edge
  %ret.0.i.i119 = phi i32 [ %call1.i.i117, %if.then.i.i118 ], [ %call.i.i113, %while.body.i115.o2net_handler_cmp.exit.i121_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_type.addr.i.i108) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.addr.i.i109) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i119)
  %cmp1.i120 = icmp slt i32 %ret.0.i.i119, 0
  br i1 %cmp1.i120, label %if.then.i123, label %if.else.i125

if.then.i123:                                     ; preds = %o2net_handler_cmp.exit.i121
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %p.022.i111 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %p.022.i111, align 4
  %rb_left.i122 = getelementptr inbounds %struct.rb_node, ptr %40, i32 0, i32 2
  br label %if.end5.i130

if.else.i125:                                     ; preds = %o2net_handler_cmp.exit.i121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i119)
  %cmp2.not.i124 = icmp eq i32 %ret.0.i.i119, 0
  br i1 %cmp2.not.i124, label %out.thread149, label %if.then3.i127

out.thread149:                                    ; preds = %if.else.i125
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_write_unlock(ptr noundef nonnull @o2net_handler_lock) #10
  br label %if.end73

if.then3.i127:                                    ; preds = %if.else.i125
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %p.022.i111 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %p.022.i111, align 4
  %rb_right.i126 = getelementptr inbounds %struct.rb_node, ptr %42, i32 0, i32 1
  br label %if.end5.i130

if.end5.i130:                                     ; preds = %if.then3.i127, %if.then.i123
  %p.1.i128 = phi ptr [ %rb_left.i122, %if.then.i123 ], [ %rb_right.i126, %if.then3.i127 ]
  %43 = ptrtoint ptr %p.1.i128 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %p.1.i128, align 4
  %tobool.not.i129 = icmp eq ptr %44, null
  br i1 %tobool.not.i129, label %if.end5.i130.do.body45_crit_edge, label %if.end5.i130.while.body.i115_crit_edge

if.end5.i130.while.body.i115_crit_edge:           ; preds = %if.end5.i130
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i115

if.end5.i130.do.body45_crit_edge:                 ; preds = %if.end5.i130
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45

do.body45:                                        ; preds = %if.end5.i130.do.body45_crit_edge, %list_add_tail.exit.do.body45_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m46) #10
  %45 = ptrtoint ptr %_m46 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 1152921504606846977, ptr %_m46, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m46, ptr noundef nonnull @__func__.o2net_register_handler, i32 noundef 856, ptr noundef nonnull @.str.4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m46) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m54) #10
  %46 = ptrtoint ptr %_m54 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 1152921504606846977, ptr %_m54, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m54, ptr noundef nonnull @__func__.o2net_register_handler, i32 noundef 856, ptr noundef nonnull @.str.5, i32 noundef %msg_type, i32 noundef %key) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m54) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 856, 0\0A.popsection", ""() #10, !srcloc !295
  unreachable

out:                                              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_write_unlock(ptr noundef nonnull @o2net_handler_lock) #10
  br label %if.then72

if.then72:                                        ; preds = %out, %if.end24.if.then72_crit_edge, %do.body16, %do.body5, %do.body
  %ret.1147 = phi i32 [ -17, %out ], [ -12, %if.end24.if.then72_crit_edge ], [ -22, %do.body5 ], [ -22, %do.body16 ], [ -22, %do.body ]
  %nmh.0146 = phi ptr [ %call7.i.i, %out ], [ null, %if.end24.if.then72_crit_edge ], [ null, %do.body5 ], [ null, %do.body16 ], [ null, %do.body ]
  call void @kfree(ptr noundef %nmh.0146) #10
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %out.thread149
  %ret.1148 = phi i32 [ %ret.1147, %if.then72 ], [ 0, %out.thread149 ]
  ret i32 %ret.1148
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @o2net_unregister_handler_list(ptr noundef readonly %list) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock(ptr noundef nonnull @o2net_handler_lock) #10
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %cmp.not23 = icmp eq ptr %1, %list
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.body:                                          ; preds = %kref_put.exit.do.body_crit_edge, %entry.do.body_crit_edge
  %.pn.in24 = phi ptr [ %.pn25, %kref_put.exit.do.body_crit_edge ], [ %1, %entry.do.body_crit_edge ]
  %2 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn25 = load ptr, ptr %.pn.in24, align 4
  %nmh.0 = getelementptr i8, ptr %.pn.in24, i32 -40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %3 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1, ptr %_m, align 8
  %nh_func = getelementptr i8, ptr %.pn.in24, i32 -16
  %4 = ptrtoint ptr %nh_func to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nh_func, align 4
  %nh_msg_type = getelementptr i8, ptr %.pn.in24, i32 -24
  %6 = ptrtoint ptr %nh_msg_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nh_msg_type, align 4
  %nh_key = getelementptr i8, ptr %.pn.in24, i32 -20
  %8 = ptrtoint ptr %nh_key to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nh_key, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.o2net_unregister_handler_list, i32 noundef 875, ptr noundef nonnull @.str.6, ptr noundef %5, i32 noundef %7, i32 noundef %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  call void @rb_erase(ptr noundef %nmh.0, ptr noundef nonnull @o2net_handler_tree) #10
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in24) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.body.list_del_init.exit_crit_edge

do.body.list_del_init.exit_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in24, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %.pn.in24, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.body.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %.pn.in24, ptr %.pn.in24, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in24, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %.pn.in24, ptr %prev.i3.i, align 4
  %nh_kref = getelementptr i8, ptr %.pn.in24, i32 -4
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nh_kref, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !296
  call void @llvm.prefetch.p0(ptr %nh_kref, i32 1, i32 3, i32 1) #10
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nh_kref, ptr %nh_kref, i32 1, ptr elementtype(i32) %nh_kref) #10, !srcloc !297
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !298

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %nh_kref, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !299
  call void @kfree(ptr noundef %nmh.0) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn25, %list
  br i1 %cmp.not, label %kref_put.exit.for.end_crit_edge, label %kref_put.exit.do.body_crit_edge

kref_put.exit.do.body_crit_edge:                  ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

kref_put.exit.for.end_crit_edge:                  ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %kref_put.exit.for.end_crit_edge, %entry.for.end_crit_edge
  call void @_raw_write_unlock(ptr noundef nonnull @o2net_handler_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @o2net_fill_node_map(ptr noundef %map, i32 noundef %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bytes)
  %cmp = icmp ult i32 %bytes, 32
  br i1 %cmp, label %do.body2, label %do.end7, !prof !300

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 998, 0\0A.popsection", ""() #10, !srcloc !301
  unreachable

do.end7:                                          ; preds = %entry
  %0 = call ptr @memset(ptr %map, i32 0, i32 %bytes)
  br label %o2net_nn_from_num.exit

o2net_nn_from_num.exit:                           ; preds = %for.inc.o2net_nn_from_num.exit_crit_edge, %do.end7
  %node.034 = phi i32 [ 0, %do.end7 ], [ %inc, %for.inc.o2net_nn_from_num.exit_crit_edge ]
  %arrayidx.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %node.034
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.i) #10
  %nn_persistent_error.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %node.034, i32 3
  %1 = ptrtoint ptr %nn_persistent_error.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nn_persistent_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end12

if.else.i:                                        ; preds = %o2net_nn_from_num.exit
  %nn_sc_valid.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %node.034, i32 2
  %3 = ptrtoint ptr %nn_sc_valid.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i = load i8, ptr %nn_sc_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool2.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool2.not.i, label %o2net_tx_can_proceed.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  %nn_sc.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %node.034, i32 1
  %4 = ptrtoint ptr %nn_sc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nn_sc.i, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %5, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %5, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #10, !srcloc !302
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then3.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !300

if.then3.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then3.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.then14_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !298

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.then14_crit_edge:            ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then3.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then3.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef %.sink.i.i.i.i.i) #10
  br label %if.then14

o2net_tx_can_proceed.exit:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i) #10
  br label %for.inc

if.end12:                                         ; preds = %o2net_nn_from_num.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i) #10
  br label %for.inc

if.then14:                                        ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.then14_crit_edge
  %8 = ptrtoint ptr %nn_sc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nn_sc.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i) #10
  tail call void @_set_bit(i32 noundef %node.034, ptr noundef %map) #10
  tail call fastcc void @sc_put(ptr noundef %9)
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %if.end12, %o2net_tx_can_proceed.exit
  %inc = add nuw nsw i32 %node.034, 1
  %exitcond.not = icmp eq i32 %inc, 255
  br i1 %exitcond.not, label %for.end, label %for.inc.o2net_nn_from_num.exit_crit_edge

for.inc.o2net_nn_from_num.exit_crit_edge:         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_nn_from_num.exit

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sc_put(ptr noundef %sc) unnamed_addr #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 5, ptr %_m, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sc, i32 noundef 4) #10
  %1 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %sc, align 4
  %sc_sock = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 1
  %3 = ptrtoint ptr %sc_sock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sc_sock, align 4
  %sc_node = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 2
  %5 = ptrtoint ptr %sc_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sc_node, align 8
  %nd_num = getelementptr inbounds %struct.o2nm_node, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %nd_num to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nd_num, align 1
  %conv = zext i8 %8 to i32
  %sc_page = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 9
  %9 = ptrtoint ptr %sc_page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sc_page, align 8
  %sc_page_off = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 10
  %11 = ptrtoint ptr %sc_page_off to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sc_page_off, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.sc_put, i32 noundef 402, ptr noundef nonnull @.str.36, ptr noundef %sc, i32 noundef %2, ptr noundef %4, i32 noundef %conv, ptr noundef %10, i32 noundef %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sc, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !296
  call void @llvm.prefetch.p0(ptr %sc, i32 1, i32 3, i32 1) #10
  %13 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sc, ptr %sc, i32 1, ptr elementtype(i32) %sc) #10, !srcloc !297
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !298

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %sc, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !299
  %pprev.i.i.i = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 6, i32 0, i32 1
  %14 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.not.i, label %do.body9.i, label %do.body3.i, !prof !298

do.body3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 380, 0\0A.popsection", ""() #10, !srcloc !303
  unreachable

do.body9.i:                                       ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %16 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 5, ptr %_m.i, align 8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sc, i32 noundef 4) #10
  %17 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %sc, align 4
  %19 = ptrtoint ptr %sc_sock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sc_sock, align 4
  %21 = ptrtoint ptr %sc_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sc_node, align 8
  %nd_num.i = getelementptr inbounds %struct.o2nm_node, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %nd_num.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %nd_num.i, align 1
  %conv.i = zext i8 %24 to i32
  %25 = ptrtoint ptr %sc_page to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sc_page, align 8
  %27 = ptrtoint ptr %sc_page_off to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sc_page_off, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.sc_kref_release, i32 noundef 382, ptr noundef nonnull @.str.37, ptr noundef %sc, i32 noundef %18, ptr noundef %20, i32 noundef %conv.i, ptr noundef %26, i32 noundef %28) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  %29 = ptrtoint ptr %sc_sock to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sc_sock, align 4
  %tobool20.not.i = icmp eq ptr %30, null
  br i1 %tobool20.not.i, label %do.body9.i.if.end24.i_crit_edge, label %if.then21.i

do.body9.i.if.end24.i_crit_edge:                  ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

if.then21.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @sock_release(ptr noundef nonnull %30) #10
  %31 = ptrtoint ptr %sc_sock to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %sc_sock, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then21.i, %do.body9.i.if.end24.i_crit_edge
  %32 = ptrtoint ptr %sc_node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sc_node, align 8
  %nd_item.i = getelementptr inbounds %struct.o2nm_node, ptr %33, i32 0, i32 1
  call void @o2nm_undepend_item(ptr noundef %nd_item.i) #10
  %34 = ptrtoint ptr %sc_node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sc_node, align 8
  call void @o2nm_node_put(ptr noundef %35) #10
  %36 = ptrtoint ptr %sc_node to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %sc_node, align 8
  call void @o2net_debug_del_sc(ptr noundef %sc) #10
  %37 = ptrtoint ptr %sc_page to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sc_page, align 8
  %tobool29.not.i = icmp eq ptr %38, null
  br i1 %tobool29.not.i, label %if.end24.i.sc_kref_release.exit_crit_edge, label %if.then30.i

if.end24.i.sc_kref_release.exit_crit_edge:        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sc_kref_release.exit

if.then30.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__free_pages(ptr noundef nonnull %38, i32 noundef 0) #10
  br label %sc_kref_release.exit

sc_kref_release.exit:                             ; preds = %if.then30.i, %if.end24.i.sc_kref_release.exit_crit_edge
  call void @kfree(ptr noundef %sc) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %sc_kref_release.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @o2net_send_message_vec(i32 noundef %msg_type, i32 noundef %key, ptr nocapture noundef readonly %caller_vec, i32 noundef %caller_veclen, i8 noundef zeroext %target_node, ptr noundef writeonly %status) #0 align 64 {
entry:
  %nsw = alloca %struct.o2net_status_wait, align 4
  %nst = alloca %struct.o2net_send_tracking, align 8
  %_m = alloca i64, align 8
  %_m9 = alloca i64, align 8
  %_m21 = alloca i64, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %_m62 = alloca i64, align 8
  %_m74 = alloca i64, align 8
  %_m96 = alloca i64, align 8
  %_m116 = alloca i64, align 8
  %__wq_entry135 = alloca %struct.wait_queue_entry, align 4
  %_m159 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %target_node)
  %cmp.i = icmp eq i8 %target_node, -1
  br i1 %cmp.i, label %do.body3.i, label %o2net_nn_from_num.exit, !prof !300

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 278, 0\0A.popsection", ""() #10, !srcloc !304
  unreachable

o2net_nn_from_num.exit:                           ; preds = %entry
  %conv.i = zext i8 %target_node to i32
  %arrayidx.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %nsw) #10
  %0 = call ptr @memset(ptr %nsw, i32 0, i32 64)
  %ns_node_item = getelementptr inbounds %struct.o2net_status_wait, ptr %nsw, i32 0, i32 4
  %1 = ptrtoint ptr %ns_node_item to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ns_node_item, ptr %ns_node_item, align 4
  %prev = getelementptr inbounds %struct.o2net_status_wait, ptr %nsw, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ns_node_item, ptr %prev, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %nst) #10
  %3 = call ptr @memset(ptr %nst, i32 255, i32 56)
  %4 = call i32 @llvm.read_register.i32(metadata !285) #10
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %8 = ptrtoint ptr %nst to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %nst, ptr %nst, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %nst, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %nst, ptr %prev.i.i, align 4
  %st_task.i = getelementptr inbounds %struct.o2net_send_tracking, ptr %nst, i32 0, i32 1
  %10 = ptrtoint ptr %st_task.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %st_task.i, align 8
  %st_msg_type.i = getelementptr inbounds %struct.o2net_send_tracking, ptr %nst, i32 0, i32 4
  %11 = ptrtoint ptr %st_msg_type.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %msg_type, ptr %st_msg_type.i, align 4
  %st_msg_key.i = getelementptr inbounds %struct.o2net_send_tracking, ptr %nst, i32 0, i32 5
  %12 = ptrtoint ptr %st_msg_key.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %key, ptr %st_msg_key.i, align 8
  %st_node.i = getelementptr inbounds %struct.o2net_send_tracking, ptr %nst, i32 0, i32 6
  %13 = ptrtoint ptr %st_node.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %target_node, ptr %st_node.i, align 4
  %14 = load ptr, ptr @o2net_wq, align 4
  %cmp = icmp eq ptr %14, null
  br i1 %cmp, label %do.body, label %if.end5

do.body:                                          ; preds = %o2net_nn_from_num.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %15 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.o2net_send_message_vec, i32 noundef 1029, ptr noundef nonnull @.str.7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %out.thread

if.end5:                                          ; preds = %o2net_nn_from_num.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %caller_veclen)
  %cmp6 = icmp eq i32 %caller_veclen, 0
  br i1 %cmp6, label %do.body8, label %if.end5.for.body.i_crit_edge

if.end5.for.body.i_crit_edge:                     ; preds = %if.end5
  br label %for.body.i

do.body8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m9) #10
  %16 = ptrtoint ptr %_m9 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 1, ptr %_m9, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m9, ptr noundef nonnull @__func__.o2net_send_message_vec, i32 noundef 1035, ptr noundef nonnull @.str.8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m9) #10
  br label %out.thread

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end5.for.body.i_crit_edge
  %ret.06.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end5.for.body.i_crit_edge ]
  %seg.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end5.for.body.i_crit_edge ]
  %iov_len.i = getelementptr %struct.iovec, ptr %caller_vec, i32 %seg.05.i, i32 1
  %17 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iov_len.i, align 4
  %add.i = add i32 %18, %ret.06.i
  %inc.i = add nuw i32 %seg.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %caller_veclen
  br i1 %exitcond.not.i, label %iov_length.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

iov_length.exit:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4072, i32 %add.i)
  %cmp18 = icmp ugt i32 %add.i, 4072
  br i1 %cmp18, label %do.body20, label %if.end28

do.body20:                                        ; preds = %iov_length.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m21) #10
  %19 = ptrtoint ptr %_m21 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 1, ptr %_m21, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m21, ptr noundef nonnull @__func__.o2net_send_message_vec, i32 noundef 1042, ptr noundef nonnull @.str.9, i32 noundef %add.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m21) #10
  br label %out.thread

if.end28:                                         ; preds = %iov_length.exit
  %call29 = call zeroext i8 @o2nm_this_node() #10
  call void @__sanitizer_cov_trace_cmp1(i8 %call29, i8 %target_node)
  %cmp31 = icmp eq i8 %call29, %target_node
  br i1 %cmp31, label %if.end28.out.thread_crit_edge, label %if.end34

if.end28.out.thread_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.end34:                                         ; preds = %if.end28
  call void @o2net_debug_add_nst(ptr noundef nonnull %nst) #10
  %call.i = call i64 @ktime_get() #10
  %st_sock_time.i = getelementptr inbounds %struct.o2net_send_tracking, ptr %nst, i32 0, i32 7
  %20 = ptrtoint ptr %st_sock_time.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %call.i, ptr %st_sock_time.i, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 1056) #10
  call void @_raw_spin_lock(ptr noundef %arrayidx.i) #10
  %nn_persistent_error.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i, i32 3
  %21 = ptrtoint ptr %nn_persistent_error.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nn_persistent_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end34.o2net_tx_can_proceed.exit.thread_crit_edge

if.end34.o2net_tx_can_proceed.exit.thread_crit_edge: ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_tx_can_proceed.exit.thread

if.else.i:                                        ; preds = %if.end34
  %nn_sc_valid.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i, i32 2
  %23 = ptrtoint ptr %nn_sc_valid.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %nn_sc_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool2.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool2.not.i, label %if.end45, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  %nn_sc.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i, i32 1
  %24 = ptrtoint ptr %nn_sc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nn_sc.i, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %25, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %25, i32 1, i32 3, i32 1) #10
  %26 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #10, !srcloc !302
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then3.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !300

if.then3.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then3.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %27 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %.not.i.i.i.i.i = icmp sgt i32 %27, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !298

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.kref_get.exit.i_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then3.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then3.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %25, i32 noundef %.sink.i.i.i.i.i) #10
  br label %kref_get.exit.i

kref_get.exit.i:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge
  %28 = ptrtoint ptr %nn_sc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nn_sc.i, align 4
  br label %o2net_tx_can_proceed.exit.thread

o2net_tx_can_proceed.exit.thread:                 ; preds = %kref_get.exit.i, %if.end34.o2net_tx_can_proceed.exit.thread_crit_edge
  %sc.1.ph = phi ptr [ null, %if.end34.o2net_tx_can_proceed.exit.thread_crit_edge ], [ %29, %kref_get.exit.i ]
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i) #10
  br label %do.end53

if.end45:                                         ; preds = %if.else.i
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i) #10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %30 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %nn_sc_wq = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i, i32 5
  %call46290 = call i32 @prepare_to_wait_event(ptr noundef %nn_sc_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  call void @_raw_spin_lock(ptr noundef %arrayidx.i) #10
  %31 = ptrtoint ptr %nn_persistent_error.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nn_persistent_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i219291 = icmp eq i32 %32, 0
  br i1 %tobool.not.i219291, label %if.end45.if.else.i224_crit_edge, label %if.end45.for.end_crit_edge

if.end45.for.end_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end45.if.else.i224_crit_edge:                  ; preds = %if.end45
  br label %if.else.i224

if.else.i224:                                     ; preds = %cleanup.if.else.i224_crit_edge, %if.end45.if.else.i224_crit_edge
  %33 = ptrtoint ptr %nn_sc_valid.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i222 = load i8, ptr %nn_sc_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i222)
  %tobool2.not.i223 = icmp sgt i8 %bf.load.i222, -1
  br i1 %tobool2.not.i223, label %cleanup, label %if.then3.i229

if.then3.i229:                                    ; preds = %if.else.i224
  %nn_sc.i225 = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i, i32 1
  %34 = ptrtoint ptr %nn_sc.i225 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %nn_sc.i225, align 4
  %call.i.i.i.i.i.i.i226 = call zeroext i1 @__kasan_check_write(ptr noundef %35, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %35, i32 1, i32 3, i32 1) #10
  %36 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #10, !srcloc !302
  %asmresult.i.i.i.i.i.i.i227 = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i227)
  %tobool1.not.i.i.i.i.i228 = icmp eq i32 %asmresult.i.i.i.i.i.i.i227, 0
  br i1 %tobool1.not.i.i.i.i.i228, label %if.then3.i229.if.end15.sink.split.i.i.i.i.i234_crit_edge, label %if.else.i.i.i.i.i232, !prof !300

if.then3.i229.if.end15.sink.split.i.i.i.i.i234_crit_edge: ; preds = %if.then3.i229
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i234

if.else.i.i.i.i.i232:                             ; preds = %if.then3.i229
  %add.i.i.i.i.i230 = add i32 %asmresult.i.i.i.i.i.i.i227, 1
  %37 = or i32 %add.i.i.i.i.i230, %asmresult.i.i.i.i.i.i.i227
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %.not.i.i.i.i.i231 = icmp sgt i32 %37, -1
  br i1 %.not.i.i.i.i.i231, label %if.else.i.i.i.i.i232.kref_get.exit.i235_crit_edge, label %if.else.i.i.i.i.i232.if.end15.sink.split.i.i.i.i.i234_crit_edge, !prof !298

if.else.i.i.i.i.i232.if.end15.sink.split.i.i.i.i.i234_crit_edge: ; preds = %if.else.i.i.i.i.i232
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i234

if.else.i.i.i.i.i232.kref_get.exit.i235_crit_edge: ; preds = %if.else.i.i.i.i.i232
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit.i235

if.end15.sink.split.i.i.i.i.i234:                 ; preds = %if.else.i.i.i.i.i232.if.end15.sink.split.i.i.i.i.i234_crit_edge, %if.then3.i229.if.end15.sink.split.i.i.i.i.i234_crit_edge
  %.sink.i.i.i.i.i233 = phi i32 [ 2, %if.then3.i229.if.end15.sink.split.i.i.i.i.i234_crit_edge ], [ 1, %if.else.i.i.i.i.i232.if.end15.sink.split.i.i.i.i.i234_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %35, i32 noundef %.sink.i.i.i.i.i233) #10
  br label %kref_get.exit.i235

kref_get.exit.i235:                               ; preds = %if.end15.sink.split.i.i.i.i.i234, %if.else.i.i.i.i.i232.kref_get.exit.i235_crit_edge
  %38 = ptrtoint ptr %nn_sc.i225 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nn_sc.i225, align 4
  br label %for.end

cleanup:                                          ; preds = %if.else.i224
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i) #10
  call void @schedule() #10
  %call46 = call i32 @prepare_to_wait_event(ptr noundef %nn_sc_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  call void @_raw_spin_lock(ptr noundef %arrayidx.i) #10
  %40 = ptrtoint ptr %nn_persistent_error.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nn_persistent_error.i, align 4
  %tobool.not.i219 = icmp eq i32 %41, 0
  br i1 %tobool.not.i219, label %cleanup.if.else.i224_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.if.else.i224_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i224

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %kref_get.exit.i235, %if.end45.for.end_crit_edge
  %42 = phi i32 [ 0, %kref_get.exit.i235 ], [ %32, %if.end45.for.end_crit_edge ], [ %41, %cleanup.for.end_crit_edge ]
  %sc.4.ph = phi ptr [ %39, %kref_get.exit.i235 ], [ null, %if.end45.for.end_crit_edge ], [ null, %cleanup.for.end_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i) #10
  call void @finish_wait(ptr noundef %nn_sc_wq, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %do.end53

do.end53:                                         ; preds = %for.end, %o2net_tx_can_proceed.exit.thread
  %ret.3 = phi i32 [ %42, %for.end ], [ %22, %o2net_tx_can_proceed.exit.thread ]
  %sc.5 = phi ptr [ %sc.4.ph, %for.end ], [ %sc.1.ph, %o2net_tx_can_proceed.exit.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %tobool54.not = icmp eq i32 %ret.3, 0
  br i1 %tobool54.not, label %if.end56, label %do.end53.out_crit_edge

do.end53.out_crit_edge:                           ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end56:                                         ; preds = %do.end53
  %st_sc.i = getelementptr inbounds %struct.o2net_send_tracking, ptr %nst, i32 0, i32 2
  %43 = ptrtoint ptr %st_sc.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %sc.5, ptr %st_sc.i, align 4
  %add = add i32 %caller_veclen, 1
  %44 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 8) #10
  %45 = extractvalue { i32, i1 } %44, 1
  br i1 %45, label %if.end56.do.body61_crit_edge, label %if.end7.i, !prof !300

if.end56.do.body61_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body61

if.end7.i:                                        ; preds = %if.end56
  %46 = extractvalue { i32, i1 } %44, 0
  %call8.i = call noalias align 128 ptr @__kmalloc(i32 noundef %46, i32 noundef 2592) #15
  %cmp58 = icmp eq ptr %call8.i, null
  br i1 %cmp58, label %if.end7.i.do.body61_crit_edge, label %if.end69

if.end7.i.do.body61_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body61

do.body61:                                        ; preds = %if.end7.i.do.body61_crit_edge, %if.end56.do.body61_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m62) #10
  %47 = ptrtoint ptr %_m62 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 1, ptr %_m62, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m62, ptr noundef nonnull @__func__.o2net_send_message_vec, i32 noundef 1065, ptr noundef nonnull @.str.11, i32 noundef %add) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m62) #10
  br label %out

if.end69:                                         ; preds = %if.end7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 2592, i32 noundef 24) #13
  %tobool71.not = icmp eq ptr %call7.i, null
  br i1 %tobool71.not, label %do.body73, label %if.end81

do.body73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m74) #10
  %49 = ptrtoint ptr %_m74 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 1, ptr %_m74, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m74, ptr noundef nonnull @__func__.o2net_send_message_vec, i32 noundef 1072, ptr noundef nonnull @.str.12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m74) #10
  br label %out

if.end81:                                         ; preds = %if.end69
  %conv82 = trunc i32 %add.i to i16
  %conv83 = trunc i32 %msg_type to i16
  %50 = getelementptr inbounds i8, ptr %call7.i, i32 4
  %51 = call ptr @memset(ptr %50, i32 0, i32 20)
  %52 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 -1451, ptr %call7.i, align 8
  %data_len1.i = getelementptr inbounds %struct.o2net_msg, ptr %call7.i, i32 0, i32 1
  %53 = ptrtoint ptr %data_len1.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv82, ptr %data_len1.i, align 2
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv83, ptr %50, align 4
  %key3.i = getelementptr inbounds %struct.o2net_msg, ptr %call7.i, i32 0, i32 6
  %55 = ptrtoint ptr %key3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %key, ptr %key3.i, align 8
  %iov_len = getelementptr inbounds %struct.kvec, ptr %call8.i, i32 0, i32 1
  %56 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 24, ptr %iov_len, align 4
  %57 = ptrtoint ptr %call8.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call7.i, ptr %call8.i, align 128
  %arrayidx85 = getelementptr %struct.kvec, ptr %call8.i, i32 1
  %mul = shl i32 %caller_veclen, 3
  %58 = call ptr @memcpy(ptr %arrayidx85, ptr %caller_vec, i32 %mul)
  %call86 = call fastcc i32 @o2net_prep_nsw(ptr noundef %arrayidx.i, ptr noundef nonnull %nsw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.end81.out_crit_edge

if.end81.out_crit_edge:                           ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end89:                                         ; preds = %if.end81
  %status.i = getelementptr inbounds %struct.o2net_msg, ptr %call7.i, i32 0, i32 5
  %ns_id = getelementptr inbounds %struct.o2net_status_wait, ptr %nsw, i32 0, i32 2
  %59 = ptrtoint ptr %ns_id to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ns_id, align 4
  %msg_num = getelementptr inbounds %struct.o2net_msg, ptr %call7.i, i32 0, i32 7
  %61 = ptrtoint ptr %msg_num to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %msg_num, align 4
  %st_id.i = getelementptr inbounds %struct.o2net_send_tracking, ptr %nst, i32 0, i32 3
  %62 = ptrtoint ptr %st_id.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %60, ptr %st_id.i, align 8
  %call.i240 = call i64 @ktime_get() #10
  %st_send_time.i = getelementptr inbounds %struct.o2net_send_tracking, ptr %nst, i32 0, i32 8
  %63 = ptrtoint ptr %st_send_time.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %call.i240, ptr %st_send_time.i, align 8
  %sc_send_lock = getelementptr inbounds %struct.o2net_sock_container, ptr %sc.5, i32 0, i32 28
  call void @mutex_lock_nested(ptr noundef %sc_send_lock, i32 noundef 0) #10
  %sc_sock = getelementptr inbounds %struct.o2net_sock_container, ptr %sc.5, i32 0, i32 1
  %64 = ptrtoint ptr %sc_sock to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sc_sock, align 4
  %add91 = add i32 %add.i, 24
  %call92 = call fastcc i32 @o2net_send_tcp_msg(ptr noundef %65, ptr noundef nonnull %call8.i, i32 noundef %add, i32 noundef %add91)
  call void @mutex_unlock(ptr noundef %sc_send_lock) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m96) #10
  %66 = ptrtoint ptr %_m96 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 3, ptr %_m96, align 8
  %67 = ptrtoint ptr %call7.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %call7.i, align 8
  %conv100 = zext i16 %68 to i32
  %69 = ptrtoint ptr %data_len1.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %data_len1.i, align 2
  %conv101 = zext i16 %70 to i32
  %71 = ptrtoint ptr %50 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %50, align 4
  %conv103 = zext i16 %72 to i32
  %73 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %status.i, align 4
  %sys_status = getelementptr inbounds %struct.o2net_msg, ptr %call7.i, i32 0, i32 4
  %75 = ptrtoint ptr %sys_status to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sys_status, align 8
  %77 = ptrtoint ptr %key3.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %key3.i, align 8
  %79 = ptrtoint ptr %msg_num to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %msg_num, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m96, ptr noundef nonnull @__func__.o2net_send_message_vec, i32 noundef 1098, ptr noundef nonnull @.str.13, i32 noundef %conv100, i32 noundef %conv101, i32 noundef %conv103, i32 noundef %74, i32 noundef %76, i32 noundef %78, i32 noundef %80, i32 noundef %call92) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m96) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp112 = icmp slt i32 %call92, 0
  br i1 %cmp112, label %do.body115, label %if.end123

do.body115:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m116) #10
  %81 = ptrtoint ptr %_m116 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 1, ptr %_m116, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m116, ptr noundef nonnull @__func__.o2net_send_message_vec, i32 noundef 1100, ptr noundef nonnull @.str.14, i32 noundef %call92) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m116) #10
  br label %out

if.end123:                                        ; preds = %if.end89
  %call.i241 = call i64 @ktime_get() #10
  %st_status_time.i = getelementptr inbounds %struct.o2net_send_tracking, ptr %nst, i32 0, i32 9
  %82 = ptrtoint ptr %st_status_time.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %call.i241, ptr %st_status_time.i, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 1106) #10
  %call131 = call fastcc i32 @o2net_nsw_completed(ptr noundef %arrayidx.i, ptr noundef nonnull %nsw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end134, label %if.end123.do.end152_crit_edge

if.end123.do.end152_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end152

if.end134:                                        ; preds = %if.end123
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry135) #10
  %83 = call ptr @memset(ptr %__wq_entry135, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry135, i32 noundef 0) #10
  %ns_wq = getelementptr inbounds %struct.o2net_status_wait, ptr %nsw, i32 0, i32 3
  %call139293 = call i32 @prepare_to_wait_event(ptr noundef %ns_wq, ptr noundef nonnull %__wq_entry135, i32 noundef 2) #10
  call void @_raw_spin_lock(ptr noundef %arrayidx.i) #10
  %84 = ptrtoint ptr %ns_node_item to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile ptr, ptr %ns_node_item, align 4
  %cmp.i.i242.not294 = icmp eq ptr %85, %ns_node_item
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i) #10
  br i1 %cmp.i.i242.not294, label %if.end134.for.end147_crit_edge, label %if.end134.cleanup144_crit_edge

if.end134.cleanup144_crit_edge:                   ; preds = %if.end134
  br label %cleanup144

if.end134.for.end147_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end147

cleanup144:                                       ; preds = %cleanup144.cleanup144_crit_edge, %if.end134.cleanup144_crit_edge
  call void @schedule() #10
  %call139 = call i32 @prepare_to_wait_event(ptr noundef %ns_wq, ptr noundef nonnull %__wq_entry135, i32 noundef 2) #10
  call void @_raw_spin_lock(ptr noundef %arrayidx.i) #10
  %86 = ptrtoint ptr %ns_node_item to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile ptr, ptr %ns_node_item, align 4
  %cmp.i.i242.not = icmp eq ptr %87, %ns_node_item
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i) #10
  br i1 %cmp.i.i242.not, label %cleanup144.for.end147_crit_edge, label %cleanup144.cleanup144_crit_edge

cleanup144.cleanup144_crit_edge:                  ; preds = %cleanup144
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup144

cleanup144.for.end147_crit_edge:                  ; preds = %cleanup144
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end147

for.end147:                                       ; preds = %cleanup144.for.end147_crit_edge, %if.end134.for.end147_crit_edge
  call void @finish_wait(ptr noundef %ns_wq, ptr noundef nonnull %__wq_entry135) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry135) #10
  br label %do.end152

do.end152:                                        ; preds = %for.end147, %if.end123.do.end152_crit_edge
  call fastcc void @o2net_update_send_stats(ptr noundef nonnull %nst, ptr noundef %sc.5)
  %88 = ptrtoint ptr %nsw to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %nsw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %89)
  %cmp.i243 = icmp ugt i32 %89, 3
  br i1 %cmp.i243, label %do.body2.i, label %o2net_sys_err_to_errno.exit, !prof !300

do.body2.i:                                       ; preds = %do.end152
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 268, 0\0A.popsection", ""() #10, !srcloc !305
  unreachable

o2net_sys_err_to_errno.exit:                      ; preds = %do.end152
  %arrayidx.i244 = getelementptr [4 x i32], ptr @o2net_sys_err_translations, i32 0, i32 %89
  %90 = ptrtoint ptr %arrayidx.i244 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i244, align 4
  %tobool154.not = icmp ne ptr %status, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool155.not = icmp eq i32 %89, 0
  %or.cond = select i1 %tobool154.not, i1 %tobool155.not, i1 false
  br i1 %or.cond, label %if.then156, label %o2net_sys_err_to_errno.exit.do.body158_crit_edge

o2net_sys_err_to_errno.exit.do.body158_crit_edge: ; preds = %o2net_sys_err_to_errno.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body158

if.then156:                                       ; preds = %o2net_sys_err_to_errno.exit
  call void @__sanitizer_cov_trace_pc() #12
  %ns_status = getelementptr inbounds %struct.o2net_status_wait, ptr %nsw, i32 0, i32 1
  %92 = ptrtoint ptr %ns_status to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ns_status, align 4
  %94 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %status, align 4
  br label %do.body158

do.body158:                                       ; preds = %if.then156, %o2net_sys_err_to_errno.exit.do.body158_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m159) #10
  %95 = ptrtoint ptr %_m159 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 1, ptr %_m159, align 8
  %ns_status163 = getelementptr inbounds %struct.o2net_status_wait, ptr %nsw, i32 0, i32 1
  %96 = ptrtoint ptr %ns_status163 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ns_status163, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m159, ptr noundef nonnull @__func__.o2net_send_message_vec, i32 noundef 1118, ptr noundef nonnull @.str.15, i32 noundef %91, i32 noundef %97) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m159) #10
  br label %out

out.thread:                                       ; preds = %if.end28.out.thread_crit_edge, %do.body20, %do.body8, %do.body
  %ret.4.ph = phi i32 [ -40, %if.end28.out.thread_crit_edge ], [ -22, %do.body20 ], [ -22, %do.body8 ], [ -3, %do.body ]
  call void @o2net_debug_del_nst(ptr noundef nonnull %nst) #10
  br label %if.end169

out:                                              ; preds = %do.body158, %do.body115, %if.end81.out_crit_edge, %do.body73, %do.body61, %do.end53.out_crit_edge
  %ret.4 = phi i32 [ -12, %do.body61 ], [ -12, %do.body73 ], [ %call92, %do.body115 ], [ %91, %do.body158 ], [ %call86, %if.end81.out_crit_edge ], [ %ret.3, %do.end53.out_crit_edge ]
  %vec.0 = phi ptr [ null, %do.body61 ], [ %call8.i, %do.body73 ], [ %call8.i, %do.body115 ], [ %call8.i, %do.body158 ], [ %call8.i, %if.end81.out_crit_edge ], [ null, %do.end53.out_crit_edge ]
  %msg.0 = phi ptr [ null, %do.body61 ], [ null, %do.body73 ], [ %call7.i, %do.body115 ], [ %call7.i, %do.body158 ], [ %call7.i, %if.end81.out_crit_edge ], [ null, %do.end53.out_crit_edge ]
  call void @o2net_debug_del_nst(ptr noundef nonnull %nst) #10
  %tobool167.not = icmp eq ptr %sc.5, null
  br i1 %tobool167.not, label %out.if.end169_crit_edge, label %if.then168

out.if.end169_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end169

if.then168:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @sc_put(ptr noundef nonnull %sc.5)
  br label %if.end169

if.end169:                                        ; preds = %if.then168, %out.if.end169_crit_edge, %out.thread
  %msg.0286 = phi ptr [ null, %out.thread ], [ %msg.0, %if.then168 ], [ %msg.0, %out.if.end169_crit_edge ]
  %vec.0285 = phi ptr [ null, %out.thread ], [ %vec.0, %if.then168 ], [ %vec.0, %out.if.end169_crit_edge ]
  %ret.4284 = phi i32 [ %ret.4.ph, %out.thread ], [ %ret.4, %if.then168 ], [ %ret.4, %out.if.end169_crit_edge ]
  call void @kfree(ptr noundef %vec.0285) #10
  call void @kfree(ptr noundef %msg.0286) #10
  call fastcc void @o2net_complete_nsw(ptr noundef %arrayidx.i, ptr noundef nonnull %nsw, i64 noundef 0, i32 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %nst) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %nsw) #10
  ret i32 %ret.4284
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @o2nm_this_node() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2net_debug_add_nst(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @o2net_prep_nsw(ptr noundef %nn, ptr noundef %nsw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %nn) #10
  %nn_status_idr = getelementptr inbounds %struct.o2net_node, ptr %nn, i32 0, i32 6
  %call = tail call i32 @idr_alloc(ptr noundef %nn_status_idr, ptr noundef %nsw, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %ns_id = getelementptr inbounds %struct.o2net_status_wait, ptr %nsw, i32 0, i32 2
  %0 = ptrtoint ptr %ns_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %ns_id, align 4
  %ns_node_item = getelementptr inbounds %struct.o2net_status_wait, ptr %nsw, i32 0, i32 4
  %nn_status_list = getelementptr inbounds %struct.o2net_node, ptr %nn, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.o2net_node, ptr %nn, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ns_node_item, ptr noundef %2, ptr noundef %nn_status_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ns_node_item, ptr %prev.i, align 4
  %4 = ptrtoint ptr %ns_node_item to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %nn_status_list, ptr %ns_node_item, align 4
  %prev3.i.i = getelementptr inbounds %struct.o2net_status_wait, ptr %nsw, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev3.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %ns_node_item, ptr %2, align 4
  br label %do.body

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %nn) #10
  br label %cleanup

do.body:                                          ; preds = %if.end.i.i, %if.then.do.body_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %nn) #10
  %ns_wq = getelementptr inbounds %struct.o2net_status_wait, ptr %nsw, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %ns_wq, ptr noundef nonnull @.str.38, ptr noundef nonnull @o2net_prep_nsw.__key) #10
  %7 = ptrtoint ptr %nsw to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %nsw, align 4
  %ns_status = getelementptr inbounds %struct.o2net_status_wait, ptr %nsw, i32 0, i32 1
  %8 = ptrtoint ptr %ns_status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ns_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end
  %retval.0 = phi i32 [ 0, %do.body ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @o2net_send_tcp_msg(ptr noundef %sock, ptr noundef %vec, i32 noundef %veclen, i32 noundef %total) unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.msghdr, align 8
  %_m = alloca i64, align 8
  %_m12 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #10
  %0 = call ptr @memset(ptr %msg, i32 0, i32 56)
  %cmp = icmp eq ptr %sock, null
  br i1 %cmp, label %entry.do.body11_crit_edge, label %if.end

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body11

if.end:                                           ; preds = %entry
  %call = call i32 @kernel_sendmsg(ptr noundef nonnull %sock, ptr noundef nonnull %msg, ptr noundef %vec, i32 noundef %veclen, i32 noundef %total) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %total)
  %cmp1 = icmp eq i32 %call, %total
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %do.body, !prof !298

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %1 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 1152921504606846977, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.o2net_send_tcp_msg, i32 noundef 921, ptr noundef nonnull @.str.39, i32 noundef %call, i32 noundef %total) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp8 = icmp sgt i32 %call, -1
  %spec.store.select = select i1 %cmp8, i32 -32, i32 %call
  br label %do.body11

do.body11:                                        ; preds = %do.body, %entry.do.body11_crit_edge
  %ret.0 = phi i32 [ %spec.store.select, %do.body ], [ -22, %entry.do.body11_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m12) #10
  %2 = ptrtoint ptr %_m12 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1, ptr %_m12, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m12, ptr noundef nonnull @__func__.o2net_send_tcp_msg, i32 noundef 925, ptr noundef nonnull @.str.40, i32 noundef %ret.0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m12) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body11, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.body11 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @o2net_nsw_completed(ptr noundef %nn, ptr noundef %nsw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %nn) #10
  %ns_node_item = getelementptr inbounds %struct.o2net_status_wait, ptr %nsw, i32 0, i32 4
  %0 = ptrtoint ptr %ns_node_item to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ns_node_item, align 4
  %cmp.i = icmp eq ptr %1, %ns_node_item
  %conv.i = zext i1 %cmp.i to i32
  tail call void @_raw_spin_unlock(ptr noundef %nn) #10
  ret i32 %conv.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @o2net_update_send_stats(ptr nocapture noundef readonly %nst, ptr nocapture noundef %sc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_tv_status_total = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 24
  %0 = ptrtoint ptr %sc_tv_status_total to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sc_tv_status_total, align 8
  %call = tail call i64 @ktime_get() #10
  %st_status_time = getelementptr inbounds %struct.o2net_send_tracking, ptr %nst, i32 0, i32 9
  %2 = ptrtoint ptr %st_status_time to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %st_status_time, align 8
  %sub = add i64 %call, %1
  %add = sub i64 %sub, %3
  %4 = ptrtoint ptr %sc_tv_status_total to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add, ptr %sc_tv_status_total, align 8
  %sc_tv_send_total = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 23
  %5 = ptrtoint ptr %sc_tv_send_total to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %sc_tv_send_total, align 8
  %7 = load i64, ptr %st_status_time, align 8
  %st_send_time = getelementptr inbounds %struct.o2net_send_tracking, ptr %nst, i32 0, i32 8
  %8 = ptrtoint ptr %st_send_time to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %st_send_time, align 8
  %sub3 = add i64 %7, %6
  %add4 = sub i64 %sub3, %9
  store i64 %add4, ptr %sc_tv_send_total, align 8
  %sc_tv_acquiry_total = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 22
  %10 = ptrtoint ptr %sc_tv_acquiry_total to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sc_tv_acquiry_total, align 8
  %12 = load i64, ptr %st_send_time, align 8
  %st_sock_time = getelementptr inbounds %struct.o2net_send_tracking, ptr %nst, i32 0, i32 7
  %13 = ptrtoint ptr %st_sock_time to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %st_sock_time, align 8
  %sub7 = add i64 %12, %11
  %add8 = sub i64 %sub7, %14
  store i64 %add8, ptr %sc_tv_acquiry_total, align 8
  %sc_send_count = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 25
  %15 = ptrtoint ptr %sc_send_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sc_send_count, align 8
  %inc = add i32 %16, 1
  store i32 %inc, ptr %sc_send_count, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2net_debug_del_nst(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @o2net_complete_nsw(ptr noundef %nn, ptr noundef %nsw, i64 noundef %id, i32 noundef %sys_status, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %nn) #10
  %cmp = icmp eq ptr %nsw, null
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %id)
  %cmp1 = icmp ugt i64 %id, 2147483647
  br i1 %cmp1, label %if.then.out_crit_edge, label %if.end

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %if.then
  %nn_status_idr = getelementptr inbounds %struct.o2net_node, ptr %nn, i32 0, i32 6
  %conv = trunc i64 %id to i32
  %call = tail call ptr @idr_find(ptr noundef %nn_status_idr, i32 noundef %conv) #10
  %cmp3 = icmp eq ptr %call, null
  br i1 %cmp3, label %if.end.out_crit_edge, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %entry.if.end7_crit_edge
  %nsw.addr.0 = phi ptr [ %call, %if.end.if.end7_crit_edge ], [ %nsw, %entry.if.end7_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %0 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %nn, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end7.i, !prof !300

do.body4.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 315, 0\0A.popsection", ""() #10, !srcloc !306
  unreachable

do.end7.i:                                        ; preds = %if.end7
  %ns_node_item.i = getelementptr inbounds %struct.o2net_status_wait, ptr %nsw.addr.0, i32 0, i32 4
  %2 = ptrtoint ptr %ns_node_item.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ns_node_item.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %ns_node_item.i
  br i1 %cmp.i.not.i, label %do.end7.i.out_crit_edge, label %if.then10.i

do.end7.i.out_crit_edge:                          ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then10.i:                                      ; preds = %do.end7.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ns_node_item.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then10.i.list_del_init.exit.i_crit_edge

if.then10.i.list_del_init.exit.i_crit_edge:       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.o2net_status_wait, ptr %nsw.addr.0, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %ns_node_item.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ns_node_item.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then10.i.list_del_init.exit.i_crit_edge
  %10 = ptrtoint ptr %ns_node_item.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %ns_node_item.i, ptr %ns_node_item.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.o2net_status_wait, ptr %nsw.addr.0, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ns_node_item.i, ptr %prev.i3.i.i, align 4
  %12 = ptrtoint ptr %nsw.addr.0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sys_status, ptr %nsw.addr.0, align 4
  %ns_status.i = getelementptr inbounds %struct.o2net_status_wait, ptr %nsw.addr.0, i32 0, i32 1
  %13 = ptrtoint ptr %ns_status.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %status, ptr %ns_status.i, align 4
  %nn_status_idr.i = getelementptr inbounds %struct.o2net_node, ptr %nn, i32 0, i32 6
  %ns_id.i = getelementptr inbounds %struct.o2net_status_wait, ptr %nsw.addr.0, i32 0, i32 2
  %14 = ptrtoint ptr %ns_id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ns_id.i, align 4
  %call12.i = tail call ptr @idr_remove(ptr noundef %nn_status_idr.i, i32 noundef %15) #10
  %ns_wq.i = getelementptr inbounds %struct.o2net_status_wait, ptr %nsw.addr.0, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %ns_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %out

out:                                              ; preds = %list_del_init.exit.i, %do.end7.i.out_crit_edge, %if.end.out_crit_edge, %if.then.out_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %nn) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @o2net_send_message(i32 noundef %msg_type, i32 noundef %key, ptr noundef %data, i32 noundef %len, i8 noundef zeroext %target_node, ptr noundef %status) #0 align 64 {
entry:
  %vec = alloca %struct.kvec, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vec) #10
  %0 = getelementptr inbounds %struct.kvec, ptr %vec, i32 0, i32 1
  %1 = ptrtoint ptr %vec to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %data, ptr %vec, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %len, ptr %0, align 4
  %call = call i32 @o2net_send_message_vec(i32 noundef %msg_type, i32 noundef %key, ptr noundef nonnull %vec, i32 noundef 1, i8 noundef zeroext %target_node, ptr noundef %status)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vec) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @o2net_disconnect_node(ptr nocapture noundef readonly %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_num = getelementptr inbounds %struct.o2nm_node, ptr %node, i32 0, i32 3
  %0 = ptrtoint ptr %nd_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nd_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp.i = icmp eq i8 %1, -1
  br i1 %cmp.i, label %do.body3.i, label %o2net_nn_from_num.exit, !prof !300

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 278, 0\0A.popsection", ""() #10, !srcloc !304
  unreachable

o2net_nn_from_num.exit:                           ; preds = %entry
  %conv.i = zext i8 %1 to i32
  %arrayidx.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.i) #10
  %nn_timeout = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nn_timeout, i32 noundef 4) #10
  %2 = ptrtoint ptr %nn_timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %nn_timeout, align 4
  tail call fastcc void @o2net_set_nn_state(ptr noundef %arrayidx.i, ptr noundef null, i32 noundef 0, i32 noundef -107)
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i) #10
  %3 = load ptr, ptr @o2net_wq, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %o2net_nn_from_num.exit.if.end_crit_edge, label %if.then

o2net_nn_from_num.exit.if.end_crit_edge:          ; preds = %o2net_nn_from_num.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %o2net_nn_from_num.exit
  call void @__sanitizer_cov_trace_pc() #12
  %nn_connect_expired = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i, i32 10
  %call2 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %nn_connect_expired) #10
  %nn_connect_work = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i, i32 8
  %call3 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %nn_connect_work) #10
  %nn_still_up = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i, i32 11
  %call4 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %nn_still_up) #10
  %4 = load ptr, ptr @o2net_wq, align 4
  tail call void @flush_workqueue(ptr noundef %4) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %o2net_nn_from_num.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @o2net_set_nn_state(ptr noundef %nn, ptr noundef %sc, i32 noundef %valid, i32 noundef %err) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %_m.i = alloca i64, align 8
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m53 = alloca i64, align 8
  %_m75 = alloca i64, align 8
  %_m83 = alloca i64, align 8
  %_m107 = alloca i64, align 8
  %_m208 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nn_sc_valid = getelementptr inbounds %struct.o2net_node, ptr %nn, i32 0, i32 2
  %0 = ptrtoint ptr %nn_sc_valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %nn_sc_valid, align 4
  %nn_persistent_error = getelementptr inbounds %struct.o2net_node, ptr %nn, i32 0, i32 3
  %1 = ptrtoint ptr %nn_persistent_error to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nn_persistent_error, align 4
  %nn_sc = getelementptr inbounds %struct.o2net_node, ptr %nn, i32 0, i32 1
  %3 = ptrtoint ptr %nn_sc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nn_sc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %5 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %5)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %nn, align 4
  %6 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end9, !prof !300

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 494, 0\0A.popsection", ""() #10, !srcloc !307
  unreachable

do.end9:                                          ; preds = %entry
  %tobool10.not = icmp eq ptr %4, null
  %tobool10.not.not = xor i1 %tobool10.not, true
  %tobool11.not = icmp eq ptr %sc, null
  %or.cond = and i1 %tobool11.not, %tobool10.not.not
  br i1 %or.cond, label %if.then12, label %if.else

if.then12:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @o2net_connected_peers, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull @o2net_connected_peers, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @o2net_connected_peers, ptr nonnull @o2net_connected_peers, i32 1, ptr nonnull elementtype(i32) @o2net_connected_peers) #10, !srcloc !308
  br label %do.body19

if.else:                                          ; preds = %do.end9
  %or.cond307 = or i1 %tobool11.not, %tobool10.not.not
  br i1 %or.cond307, label %if.else.do.body19_crit_edge, label %if.then16

if.else.do.body19_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body19

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i318 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @o2net_connected_peers, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull @o2net_connected_peers, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @o2net_connected_peers, ptr nonnull @o2net_connected_peers, i32 1, ptr nonnull elementtype(i32) @o2net_connected_peers) #10, !srcloc !309
  br label %do.body19

do.body19:                                        ; preds = %if.then16, %if.else.do.body19_crit_edge, %if.then12
  br i1 %tobool11.not, label %do.body19.do.body41_crit_edge, label %land.lhs.true21

do.body19.do.body41_crit_edge:                    ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body41

land.lhs.true21:                                  ; preds = %do.body19
  %9 = ptrtoint ptr %nn_sc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nn_sc, align 4
  %tobool23.not = icmp ne ptr %10, null
  %cmp = icmp ne ptr %10, %sc
  %spec.select = and i1 %tobool23.not, %cmp
  br i1 %spec.select, label %do.body32, label %land.lhs.true21.do.body41_crit_edge, !prof !300

land.lhs.true21.do.body41_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body41

do.body32:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 503, 0\0A.popsection", ""() #10, !srcloc !310
  unreachable

do.body41:                                        ; preds = %land.lhs.true21.do.body41_crit_edge, %do.body19.do.body41_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool42.not = icmp eq i32 %err, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %valid)
  %tobool44.not = icmp eq i32 %valid, 0
  %or.cond308 = or i1 %tobool44.not, %tobool42.not
  br i1 %or.cond308, label %do.body69, label %do.body46

do.body46:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %11 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1152921504606846977, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.o2net_set_nn_state, i32 noundef 504, ptr noundef nonnull @.str.41) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m53) #10
  %12 = ptrtoint ptr %_m53 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606846977, ptr %_m53, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m53, ptr noundef nonnull @__func__.o2net_set_nn_state, i32 noundef 504, ptr noundef nonnull @.str.42, i32 noundef %err, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m53) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 504, 0\0A.popsection", ""() #10, !srcloc !311
  unreachable

do.body69:                                        ; preds = %do.body41
  %tobool20.not.not = xor i1 %tobool11.not, true
  %brmerge = or i1 %tobool44.not, %tobool20.not.not
  br i1 %brmerge, label %do.end98, label %do.body74

do.body74:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m75) #10
  %13 = ptrtoint ptr %_m75 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1152921504606846977, ptr %_m75, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m75, ptr noundef nonnull @__func__.o2net_set_nn_state, i32 noundef 505, ptr noundef nonnull @.str.43) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m75) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m83) #10
  %14 = ptrtoint ptr %_m83 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1152921504606846977, ptr %_m83, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m83, ptr noundef nonnull @__func__.o2net_set_nn_state, i32 noundef 505, ptr noundef nonnull @.str.44, i32 noundef 1, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m83) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 505, 0\0A.popsection", ""() #10, !srcloc !312
  unreachable

do.end98:                                         ; preds = %do.body69
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool99.not = icmp sgt i8 %bf.load, -1
  %tobool70.not.not = xor i1 %tobool44.not, true
  %brmerge309 = or i1 %tobool99.not, %tobool70.not.not
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m107) #10
  %15 = ptrtoint ptr %_m107 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 8193, ptr %_m107, align 8
  %cmp.i346 = icmp eq ptr %nn, null
  br i1 %cmp.i346, label %do.body2.i, label %o2net_num_from_nn.exit, !prof !300

do.body2.i:                                       ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 284, 0\0A.popsection", ""() #10, !srcloc !313
  unreachable

o2net_num_from_nn.exit:                           ; preds = %do.end98
  %spec.store.select = select i1 %tobool42.not, i32 -107, i32 %err
  %err.addr.0 = select i1 %brmerge309, i32 %err, i32 %spec.store.select
  %sub.ptr.lhs.cast.i = ptrtoint ptr %nn to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, ptrtoint (ptr @o2net_nodes to i32)
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 484
  %conv.i = trunc i32 %sub.ptr.div.i to i8
  %conv = and i32 %sub.ptr.div.i, 255
  %16 = ptrtoint ptr %nn_sc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nn_sc, align 4
  %18 = ptrtoint ptr %nn_sc_valid to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load114 = load i8, ptr %nn_sc_valid, align 4
  %bf.lshr115 = lshr i8 %bf.load114, 7
  %bf.cast116 = zext i8 %bf.lshr115 to i32
  %19 = ptrtoint ptr %nn_persistent_error to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nn_persistent_error, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m107, ptr noundef nonnull @__func__.o2net_set_nn_state, i32 noundef 512, ptr noundef nonnull @.str.45, i32 noundef %conv, ptr noundef %17, ptr noundef %sc, i32 noundef %bf.cast116, i32 noundef %valid, i32 noundef %20, i32 noundef %err.addr.0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m107) #10
  %21 = ptrtoint ptr %nn_sc to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %sc, ptr %nn_sc, align 4
  %22 = ptrtoint ptr %nn_sc_valid to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load124 = load i8, ptr %nn_sc_valid, align 4
  %bf.shl = select i1 %tobool44.not, i8 0, i8 -128
  %bf.clear = and i8 %bf.load124, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %nn_sc_valid, align 4
  %23 = ptrtoint ptr %nn_persistent_error to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %err.addr.0, ptr %nn_persistent_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0)
  %tobool127.not = icmp eq i32 %err.addr.0, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.set)
  %tobool132.not = icmp sgt i8 %bf.set, -1
  %or.cond369 = select i1 %tobool127.not, i1 %tobool132.not, i1 false
  br i1 %or.cond369, label %o2net_num_from_nn.exit.if.end134_crit_edge, label %if.then133

o2net_num_from_nn.exit.if.end134_crit_edge:       ; preds = %o2net_num_from_nn.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

if.then133:                                       ; preds = %o2net_num_from_nn.exit
  call void @__sanitizer_cov_trace_pc() #12
  %nn_sc_wq = getelementptr inbounds %struct.o2net_node, ptr %nn, i32 0, i32 5
  call void @__wake_up(ptr noundef %nn_sc_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end134

if.end134:                                        ; preds = %if.then133, %o2net_num_from_nn.exit.if.end134_crit_edge
  %tobool99.not.not = xor i1 %tobool99.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool137.not = icmp eq i32 %2, 0
  %or.cond310 = select i1 %tobool99.not.not, i1 %tobool137.not, i1 false
  br i1 %or.cond310, label %land.lhs.true138, label %if.end134.if.end145_crit_edge

if.end134.if.end145_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end145

land.lhs.true138:                                 ; preds = %if.end134
  %24 = ptrtoint ptr %nn_persistent_error to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nn_persistent_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool140.not = icmp eq i32 %25, 0
  br i1 %tobool140.not, label %land.lhs.true138.if.end145_crit_edge, label %o2net_num_from_nn.exit353

land.lhs.true138.if.end145_crit_edge:             ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end145

o2net_num_from_nn.exit353:                        ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #12
  call void @o2quo_conn_err(i8 noundef zeroext %conv.i) #10
  %26 = load ptr, ptr @o2net_wq, align 4
  %nn_still_up = getelementptr inbounds %struct.o2net_node, ptr %nn, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @o2hb_dead_threshold to i32))
  %27 = load i32, ptr @o2hb_dead_threshold, align 4
  %28 = mul i32 %27, 2000
  %mul = add i32 %28, 4000
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %mul) #10
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %nn_still_up, i32 noundef %call2.i) #10
  br label %if.end145

if.end145:                                        ; preds = %o2net_num_from_nn.exit353, %land.lhs.true138.if.end145_crit_edge, %if.end134.if.end145_crit_edge
  br i1 %brmerge309, label %if.end145.if.end162_crit_edge, label %if.then149

if.end145.if.end162_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end162

if.then149:                                       ; preds = %if.end145
  br i1 %tobool10.not, label %if.then149.if.end161_crit_edge, label %do.end154

if.then149.if.end161_crit_edge:                   ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161

do.end154:                                        ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #12
  %sc_node = getelementptr inbounds %struct.o2net_sock_container, ptr %4, i32 0, i32 2
  %29 = ptrtoint ptr %sc_node to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sc_node, align 8
  %nd_name = getelementptr inbounds %struct.o2nm_node, ptr %30, i32 0, i32 2
  %nd_num = getelementptr inbounds %struct.o2nm_node, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %nd_num to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %nd_num, align 1
  %conv156 = zext i8 %32 to i32
  %nd_ipv4_address = getelementptr inbounds %struct.o2nm_node, ptr %30, i32 0, i32 4
  %nd_ipv4_port = getelementptr inbounds %struct.o2nm_node, ptr %30, i32 0, i32 5
  %33 = ptrtoint ptr %nd_ipv4_port to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %nd_ipv4_port, align 4
  %conv159 = zext i16 %34 to i32
  %call160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %nd_name, i32 noundef %conv156, ptr noundef %nd_ipv4_address, i32 noundef %conv159) #16
  br label %if.end161

if.end161:                                        ; preds = %do.end154, %if.then149.if.end161_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %35 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %35)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %nn, align 4
  %36 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !300

do.body4.i:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 353, 0\0A.popsection", ""() #10, !srcloc !314
  unreachable

do.end9.i:                                        ; preds = %if.end161
  %nn_status_list.i = getelementptr inbounds %struct.o2net_node, ptr %nn, i32 0, i32 7
  %37 = ptrtoint ptr %nn_status_list.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nn_status_list.i, align 4
  %cmp.not41.i = icmp eq ptr %38, %nn_status_list.i
  br i1 %cmp.not41.i, label %do.end9.i.o2net_complete_nodes_nsw.exit_crit_edge, label %for.body.lr.ph.i

do.end9.i.o2net_complete_nodes_nsw.exit_crit_edge: ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_complete_nodes_nsw.exit

for.body.lr.ph.i:                                 ; preds = %do.end9.i
  %nn_status_idr.i.i = getelementptr inbounds %struct.o2net_node, ptr %nn, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %o2net_complete_nsw_locked.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in43.i = phi ptr [ %38, %for.body.lr.ph.i ], [ %.pn.i, %o2net_complete_nsw_locked.exit.i.for.body.i_crit_edge ]
  %num_kills.042.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %o2net_complete_nsw_locked.exit.i.for.body.i_crit_edge ]
  %nsw.0.i = getelementptr i8, ptr %.pn.in43.i, i32 -64
  %39 = ptrtoint ptr %.pn.in43.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn.i = load ptr, ptr %.pn.in43.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %40 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %40)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr %nn, align 4
  %41 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !300

do.body4.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 315, 0\0A.popsection", ""() #10, !srcloc !306
  unreachable

do.end7.i.i:                                      ; preds = %for.body.i
  %42 = ptrtoint ptr %.pn.in43.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %.pn.in43.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %43, %.pn.in43.i
  br i1 %cmp.i.not.i.i, label %do.end7.i.i.o2net_complete_nsw_locked.exit.i_crit_edge, label %if.then10.i.i

do.end7.i.i.o2net_complete_nsw_locked.exit.i_crit_edge: ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_complete_nsw_locked.exit.i

if.then10.i.i:                                    ; preds = %do.end7.i.i
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in43.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then10.i.i.list_del_init.exit.i.i_crit_edge

if.then10.i.i.list_del_init.exit.i.i_crit_edge:   ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in43.i, i32 4
  %44 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i.i.i, align 4
  %46 = ptrtoint ptr %.pn.in43.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %.pn.in43.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then10.i.i.list_del_init.exit.i.i_crit_edge
  %50 = ptrtoint ptr %.pn.in43.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %.pn.in43.i, ptr %.pn.in43.i, align 4
  %prev.i3.i.i.i = getelementptr i8, ptr %.pn.in43.i, i32 4
  %51 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %.pn.in43.i, ptr %prev.i3.i.i.i, align 4
  %52 = ptrtoint ptr %nsw.0.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3, ptr %nsw.0.i, align 4
  %ns_status.i.i = getelementptr i8, ptr %.pn.in43.i, i32 -60
  %53 = ptrtoint ptr %ns_status.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %ns_status.i.i, align 4
  %ns_id.i.i = getelementptr i8, ptr %.pn.in43.i, i32 -56
  %54 = ptrtoint ptr %ns_id.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ns_id.i.i, align 4
  %call12.i.i = call ptr @idr_remove(ptr noundef %nn_status_idr.i.i, i32 noundef %55) #10
  %ns_wq.i.i = getelementptr i8, ptr %.pn.in43.i, i32 -52
  call void @__wake_up(ptr noundef %ns_wq.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %o2net_complete_nsw_locked.exit.i

o2net_complete_nsw_locked.exit.i:                 ; preds = %list_del_init.exit.i.i, %do.end7.i.i.o2net_complete_nsw_locked.exit.i_crit_edge
  %inc.i = add i32 %num_kills.042.i, 1
  %cmp.not.i = icmp eq ptr %.pn.i, %nn_status_list.i
  br i1 %cmp.not.i, label %o2net_complete_nsw_locked.exit.i.o2net_complete_nodes_nsw.exit_crit_edge, label %o2net_complete_nsw_locked.exit.i.for.body.i_crit_edge

o2net_complete_nsw_locked.exit.i.for.body.i_crit_edge: ; preds = %o2net_complete_nsw_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

o2net_complete_nsw_locked.exit.i.o2net_complete_nodes_nsw.exit_crit_edge: ; preds = %o2net_complete_nsw_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_complete_nodes_nsw.exit

o2net_complete_nodes_nsw.exit:                    ; preds = %o2net_complete_nsw_locked.exit.i.o2net_complete_nodes_nsw.exit_crit_edge, %do.end9.i.o2net_complete_nodes_nsw.exit_crit_edge
  %num_kills.0.lcssa.i = phi i32 [ 0, %do.end9.i.o2net_complete_nodes_nsw.exit_crit_edge ], [ %inc.i, %o2net_complete_nsw_locked.exit.i.o2net_complete_nodes_nsw.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %56 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 1, ptr %_m.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.o2net_complete_nodes_nsw, i32 noundef 361, ptr noundef nonnull @.str.53, i32 noundef %num_kills.0.lcssa.i, i32 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  br label %if.end162

if.end162:                                        ; preds = %o2net_complete_nodes_nsw.exit, %if.end145.if.end162_crit_edge
  %brmerge314 = or i1 %tobool44.not, %tobool99.not.not
  br i1 %brmerge314, label %if.end162.if.end193_crit_edge, label %o2net_num_from_nn.exit362

if.end162.if.end193_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end193

o2net_num_from_nn.exit362:                        ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #12
  call void @o2quo_conn_up(i8 noundef zeroext %conv.i) #10
  %nn_connect_expired = getelementptr inbounds %struct.o2net_node, ptr %nn, i32 0, i32 10
  %call168 = call zeroext i1 @cancel_delayed_work(ptr noundef %nn_connect_expired) #10
  %call173 = call zeroext i8 @o2nm_this_node() #10
  %sc_node175 = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 2
  %57 = ptrtoint ptr %sc_node175 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sc_node175, align 8
  %nd_num176 = getelementptr inbounds %struct.o2nm_node, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %nd_num176 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %nd_num176, align 1
  %conv177 = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %call173, i8 %60)
  %cmp178 = icmp ugt i8 %call173, %60
  %cond180 = select i1 %cmp178, ptr @.str.50, ptr @.str.51
  %nd_name182 = getelementptr inbounds %struct.o2nm_node, ptr %58, i32 0, i32 2
  %nd_ipv4_address188 = getelementptr inbounds %struct.o2nm_node, ptr %58, i32 0, i32 4
  %nd_ipv4_port190 = getelementptr inbounds %struct.o2nm_node, ptr %58, i32 0, i32 5
  %61 = ptrtoint ptr %nd_ipv4_port190 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %nd_ipv4_port190, align 4
  %conv191 = zext i16 %62 to i32
  %call192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull %cond180, ptr noundef %nd_name182, i32 noundef %conv177, ptr noundef %nd_ipv4_address188, i32 noundef %conv191) #16
  br label %if.end193

if.end193:                                        ; preds = %o2net_num_from_nn.exit362, %if.end162.if.end193_crit_edge
  br i1 %tobool44.not, label %land.lhs.true195, label %if.end193.if.end221_crit_edge

if.end193.if.end221_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end221

land.lhs.true195:                                 ; preds = %if.end193
  %63 = load ptr, ptr @o2net_wq, align 4
  %tobool196.not = icmp eq ptr %63, null
  br i1 %tobool196.not, label %land.lhs.true195.if.end221_crit_edge, label %if.then197

land.lhs.true195.if.end221_crit_edge:             ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end221

if.then197:                                       ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #12
  %nn_last_connect_attempt = getelementptr inbounds %struct.o2net_node, ptr %nn, i32 0, i32 9
  %64 = ptrtoint ptr %nn_last_connect_attempt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nn_last_connect_attempt, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @o2nm_single_cluster to i32))
  %66 = load ptr, ptr @o2nm_single_cluster, align 4
  %cl_reconnect_delay_ms.i = getelementptr inbounds %struct.o2nm_cluster, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %cl_reconnect_delay_ms.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cl_reconnect_delay_ms.i, align 4
  %call2.i324 = call i32 @__msecs_to_jiffies(i32 noundef %68) #10
  %add200 = add i32 %call2.i324, %65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add200, %69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @o2nm_single_cluster to i32))
  %70 = load ptr, ptr @o2nm_single_cluster, align 4
  %cl_reconnect_delay_ms.i363 = getelementptr inbounds %struct.o2nm_cluster, ptr %70, i32 0, i32 8
  %71 = ptrtoint ptr %cl_reconnect_delay_ms.i363 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cl_reconnect_delay_ms.i363, align 4
  %call2.i333 = call i32 @__msecs_to_jiffies(i32 noundef %72) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %call2.i333)
  %cmp203 = icmp ugt i32 %sub, %call2.i333
  %spec.select315 = select i1 %cmp203, i32 0, i32 %sub
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m208) #10
  %73 = ptrtoint ptr %_m208 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 8193, ptr %_m208, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m208, ptr noundef nonnull @__func__.o2net_set_nn_state, i32 noundef 557, ptr noundef nonnull @.str.52, i32 noundef %spec.select315) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m208) #10
  %74 = load ptr, ptr @o2net_wq, align 4
  %nn_connect_work = getelementptr inbounds %struct.o2net_node, ptr %nn, i32 0, i32 8
  %call.i364 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %74, ptr noundef %nn_connect_work, i32 noundef %spec.select315) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @o2nm_single_cluster to i32))
  %75 = load ptr, ptr @o2nm_single_cluster, align 4
  %cl_idle_timeout_ms.i = getelementptr inbounds %struct.o2nm_cluster, ptr %75, i32 0, i32 6
  %76 = ptrtoint ptr %cl_idle_timeout_ms.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cl_idle_timeout_ms.i, align 4
  %call2.i342 = call i32 @__msecs_to_jiffies(i32 noundef %77) #10
  %add218 = add i32 %call2.i342, %spec.select315
  %78 = load ptr, ptr @o2net_wq, align 4
  %nn_connect_expired219 = getelementptr inbounds %struct.o2net_node, ptr %nn, i32 0, i32 10
  %call.i365 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %78, ptr noundef %nn_connect_expired219, i32 noundef %add218) #10
  br label %if.end221

if.end221:                                        ; preds = %if.then197, %land.lhs.true195.if.end221_crit_edge, %if.end193.if.end221_crit_edge
  %brmerge316 = or i1 %tobool11.not, %tobool10.not.not
  br i1 %brmerge316, label %if.end221.if.end227_crit_edge, label %if.then226

if.end221.if.end227_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end227

if.then226:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @sc_get(ptr noundef nonnull %sc)
  br label %if.end227

if.end227:                                        ; preds = %if.then226, %if.end221.if.end227_crit_edge
  %cmp230.not = icmp eq ptr %4, %sc
  %or.cond317 = or i1 %tobool10.not, %cmp230.not
  br i1 %or.cond317, label %if.end227.if.end233_crit_edge, label %if.then232

if.end227.if.end233_crit_edge:                    ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end233

if.then232:                                       ; preds = %if.end227
  %sc_shutdown_work = getelementptr inbounds %struct.o2net_sock_container, ptr %4, i32 0, i32 5
  call fastcc void @sc_get(ptr noundef nonnull %4) #10
  %79 = load ptr, ptr @o2net_wq, align 4
  %call.i.i366 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %79, ptr noundef %sc_shutdown_work) #10
  br i1 %call.i.i366, label %if.then232.o2net_sc_queue_work.exit_crit_edge, label %if.then.i367

if.then232.o2net_sc_queue_work.exit_crit_edge:    ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_sc_queue_work.exit

if.then.i367:                                     ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @sc_put(ptr noundef nonnull %4) #10
  br label %o2net_sc_queue_work.exit

o2net_sc_queue_work.exit:                         ; preds = %if.then.i367, %if.then232.o2net_sc_queue_work.exit_crit_edge
  call fastcc void @sc_put(ptr noundef nonnull %4)
  br label %if.end233

if.end233:                                        ; preds = %o2net_sc_queue_work.exit, %if.end227.if.end233_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @o2net_unregister_hb_callbacks() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @o2hb_unregister_callback(ptr noundef null, ptr noundef nonnull @o2net_hb_up) #10
  tail call void @o2hb_unregister_callback(ptr noundef null, ptr noundef nonnull @o2net_hb_down) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2hb_unregister_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @o2net_register_hb_callbacks() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @o2hb_setup_callback(ptr noundef nonnull @o2net_hb_down, i32 noundef 0, ptr noundef nonnull @o2net_hb_node_down_cb, ptr noundef null, i32 noundef 1) #10
  tail call void @o2hb_setup_callback(ptr noundef nonnull @o2net_hb_up, i32 noundef 1, ptr noundef nonnull @o2net_hb_node_up_cb, ptr noundef null, i32 noundef 1) #10
  %call = tail call i32 @o2hb_register_callback(ptr noundef null, ptr noundef nonnull @o2net_hb_up) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end, label %entry.if.then2_crit_edge

entry.if.then2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @o2hb_register_callback(ptr noundef null, ptr noundef nonnull @o2net_hb_down) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.end.if.then2_crit_edge

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end.if.then2_crit_edge, %entry.if.then2_crit_edge
  %ret.08 = phi i32 [ %call1, %if.end.if.then2_crit_edge ], [ %call, %entry.if.then2_crit_edge ]
  tail call void @o2hb_unregister_callback(ptr noundef null, ptr noundef nonnull @o2net_hb_up) #10
  tail call void @o2hb_unregister_callback(ptr noundef null, ptr noundef nonnull @o2net_hb_down) #10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %ret.09 = phi i32 [ %ret.08, %if.then2 ], [ 0, %if.end.if.end3_crit_edge ]
  ret i32 %ret.09
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2hb_setup_callback(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @o2net_hb_node_down_cb(ptr noundef readonly %node, i32 noundef %node_num, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %node_num to i8
  tail call void @o2quo_hb_down(i8 noundef zeroext %conv) #10
  %tobool.not = icmp eq ptr %node, null
  br i1 %tobool.not, label %entry.do.end15_crit_edge, label %if.end

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

if.end:                                           ; preds = %entry
  %call = tail call zeroext i8 @o2nm_this_node() #10
  %conv1 = zext i8 %call to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1, i32 %node_num)
  %cmp.not = icmp eq i32 %conv1, %node_num
  br i1 %cmp.not, label %if.end.do.body_crit_edge, label %if.then3

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @o2net_disconnect_node(ptr noundef nonnull %node)
  br label %do.body

do.body:                                          ; preds = %if.then3, %if.end.do.body_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @o2net_connected_peers, i32 noundef 4) #10
  %0 = load volatile i32, ptr @o2net_connected_peers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp6 = icmp slt i32 %0, 0
  br i1 %cmp6, label %do.body11, label %do.body.do.end15_crit_edge, !prof !300

do.body.do.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

do.body11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1718, 0\0A.popsection", ""() #10, !srcloc !315
  unreachable

do.end15:                                         ; preds = %do.body.do.end15_crit_edge, %entry.do.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @o2net_hb_node_up_cb(ptr noundef readnone %node, i32 noundef %node_num, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %node_num to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv)
  %cmp.i29 = icmp eq i8 %conv, -1
  br i1 %cmp.i29, label %do.body3.i, label %o2net_nn_from_num.exit, !prof !300

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 278, 0\0A.popsection", ""() #10, !srcloc !304
  unreachable

o2net_nn_from_num.exit:                           ; preds = %entry
  %conv.i = and i32 %node_num, 255
  %arrayidx.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i
  tail call void @o2quo_hb_up(i8 noundef zeroext %conv) #10
  %tobool.not = icmp eq ptr %node, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !300

do.body5:                                         ; preds = %o2net_nn_from_num.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1728, 0\0A.popsection", ""() #10, !srcloc !316
  unreachable

do.end10:                                         ; preds = %o2net_nn_from_num.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @o2nm_single_cluster to i32))
  %1 = load ptr, ptr @o2nm_single_cluster, align 4
  %cl_reconnect_delay_ms.i = getelementptr inbounds %struct.o2nm_cluster, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %cl_reconnect_delay_ms.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cl_reconnect_delay_ms.i, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %3) #10
  %add.neg = xor i32 %call2.i, -1
  %sub = add i32 %0, %add.neg
  %nn_last_connect_attempt = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i, i32 9
  %4 = ptrtoint ptr %nn_last_connect_attempt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %nn_last_connect_attempt, align 4
  %call13 = tail call zeroext i8 @o2nm_this_node() #10
  %conv14 = zext i8 %call13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv14, i32 %node_num)
  %cmp.not = icmp eq i32 %conv14, %node_num
  br i1 %cmp.not, label %do.end10.if.end21_crit_edge, label %if.then16

do.end10.if.end21_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then16:                                        ; preds = %do.end10
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.i) #10
  %nn_timeout = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nn_timeout, i32 noundef 4) #10
  %5 = ptrtoint ptr %nn_timeout to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %nn_timeout, align 4
  %nn_persistent_error = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i, i32 3
  %6 = ptrtoint ptr %nn_persistent_error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nn_persistent_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool17.not = icmp eq i32 %7, 0
  br i1 %tobool17.not, label %if.then16.if.end19_crit_edge, label %if.then18

if.then16.if.end19_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @o2net_set_nn_state(ptr noundef %arrayidx.i, ptr noundef null, i32 noundef 0, i32 noundef 0)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then16.if.end19_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i) #10
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %do.end10.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @o2hb_register_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @o2net_start_listening(ptr nocapture noundef readonly %node) local_unnamed_addr #0 align 64 {
entry:
  %addr.addr.i = alloca i32, align 4
  %sock.i = alloca ptr, align 4
  %sin.i = alloca %struct.sockaddr_in, align 4
  %_m = alloca i64, align 8
  %_m35 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @o2net_wq, align 4
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %do.body8, label %do.body2, !prof !298

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2026, 0\0A.popsection", ""() #10, !srcloc !317
  unreachable

do.body8:                                         ; preds = %entry
  %1 = load ptr, ptr @o2net_listen_sock, align 4
  %cmp9.not = icmp eq ptr %1, null
  br i1 %cmp9.not, label %do.body26, label %do.body17, !prof !298

do.body17:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2027, 0\0A.popsection", ""() #10, !srcloc !318
  unreachable

do.body26:                                        ; preds = %do.body8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 4611686018427387905, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.o2net_start_listening, i32 noundef 2029, ptr noundef nonnull @.str.16) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %call = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.17, i32 noundef 655370, i32 noundef 1) #10
  store ptr %call, ptr @o2net_wq, align 4
  %cmp32 = icmp eq ptr %call, null
  br i1 %cmp32, label %do.body34, label %if.end42

do.body34:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m35) #10
  %3 = ptrtoint ptr %_m35 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1152921504606846977, ptr %_m35, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m35, ptr noundef nonnull @__func__.o2net_start_listening, i32 noundef 2032, ptr noundef nonnull @.str.18) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m35) #10
  br label %cleanup

if.end42:                                         ; preds = %do.body26
  %nd_ipv4_address = getelementptr inbounds %struct.o2nm_node, ptr %node, i32 0, i32 4
  %4 = ptrtoint ptr %nd_ipv4_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nd_ipv4_address, align 4
  %nd_ipv4_port = getelementptr inbounds %struct.o2nm_node, ptr %node, i32 0, i32 5
  %6 = ptrtoint ptr %nd_ipv4_port to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nd_ipv4_port, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.addr.i)
  %8 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %addr.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock.i) #10
  %9 = ptrtoint ptr %sock.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %sock.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sin.i) #10
  %10 = getelementptr inbounds %struct.sockaddr_in, ptr %sin.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.sockaddr_in, ptr %sin.i, i32 0, i32 2
  %12 = getelementptr inbounds %struct.sockaddr_in, ptr %sin.i, i32 0, i32 3
  %13 = ptrtoint ptr %sin.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2, ptr %sin.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %7, ptr %10, align 2
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %5, ptr %11, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 0, ptr %12, align 4
  %call.i = call i32 @sock_create(i32 noundef 2, i32 noundef 1, i32 noundef 6, ptr noundef nonnull %sock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %call.i) #16
  br label %if.then34.i

if.end.i:                                         ; preds = %if.end42
  %17 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sock.i, align 4
  %sk.i = getelementptr inbounds %struct.socket, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sk.i, align 16
  %sk_allocation.i = getelementptr inbounds %struct.sock, ptr %20, i32 0, i32 41
  %21 = ptrtoint ptr %sk_allocation.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2592, ptr %sk_allocation.i, align 8
  %22 = load ptr, ptr %sk.i, align 16
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %22, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #10
  %23 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sock.i, align 4
  %sk3.i = getelementptr inbounds %struct.socket, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %sk3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sk3.i, align 16
  %sk_data_ready.i = getelementptr inbounds %struct.sock, ptr %26, i32 0, i32 77
  %27 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sk_data_ready.i, align 8
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %26, i32 0, i32 72
  %29 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %sk_user_data.i, align 4
  %30 = load ptr, ptr %sk3.i, align 16
  %sk_data_ready6.i = getelementptr inbounds %struct.sock, ptr %30, i32 0, i32 77
  %31 = ptrtoint ptr %sk_data_ready6.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @o2net_listen_data_ready, ptr %sk_data_ready6.i, align 8
  %32 = load ptr, ptr %sk3.i, align 16
  %sk_callback_lock8.i = getelementptr inbounds %struct.sock, ptr %32, i32 0, i32 50
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock8.i) #10
  %33 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sock.i, align 4
  store ptr %34, ptr @o2net_listen_sock, align 4
  call void @__init_work(ptr noundef nonnull @o2net_listen_work, i32 noundef 0) #10
  store i32 -64, ptr @o2net_listen_work, align 4
  call void @lockdep_init_map_type(ptr noundef getelementptr inbounds (%struct.work_struct, ptr @o2net_listen_work, i32 0, i32 3), ptr noundef nonnull @.str.57, ptr noundef nonnull @o2net_open_listening_sock.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  store volatile ptr getelementptr inbounds (%struct.work_struct, ptr @o2net_listen_work, i32 0, i32 1), ptr getelementptr inbounds (%struct.work_struct, ptr @o2net_listen_work, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.work_struct, ptr @o2net_listen_work, i32 0, i32 1), ptr getelementptr inbounds (%struct.work_struct, ptr @o2net_listen_work, i32 0, i32 1, i32 1), align 4
  store ptr @o2net_accept_many, ptr getelementptr inbounds (%struct.work_struct, ptr @o2net_listen_work, i32 0, i32 2), align 4
  %35 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sock.i, align 4
  %sk12.i = getelementptr inbounds %struct.socket, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %sk12.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sk12.i, align 16
  %skc_reuse.i = getelementptr inbounds %struct.sock_common, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %skc_reuse.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i = load i8, ptr %skc_reuse.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 15
  %bf.set.i = or i8 %bf.clear.i, 16
  store i8 %bf.set.i, ptr %skc_reuse.i, align 1
  %ops.i = getelementptr inbounds %struct.socket, ptr %36, i32 0, i32 5
  %40 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i, align 4
  %bind.i = getelementptr inbounds %struct.proto_ops, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %bind.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bind.i, align 4
  %call13.i = call i32 %43(ptr noundef %36, ptr noundef nonnull %sin.i, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %do.end18.i, label %if.end21.i

do.end18.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i16 %7 to i32
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %call13.i, ptr noundef nonnull %addr.addr.i, i32 noundef %conv.i) #16
  br label %if.then34.i

if.end21.i:                                       ; preds = %if.end.i
  %44 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sock.i, align 4
  %ops22.i = getelementptr inbounds %struct.socket, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %ops22.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops22.i, align 4
  %listen.i = getelementptr inbounds %struct.proto_ops, ptr %47, i32 0, i32 11
  %48 = ptrtoint ptr %listen.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %listen.i, align 4
  %call23.i = call i32 %49(ptr noundef %45, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %do.end29.i, label %out.i

do.end29.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv31.i = zext i16 %7 to i32
  %call32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %call23.i, ptr noundef nonnull %addr.addr.i, i32 noundef %conv31.i) #16
  br label %if.then34.i

out.i:                                            ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool.not.i, label %if.else, label %out.i.if.then34.i_crit_edge

out.i.if.then34.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34.i

if.then34.i:                                      ; preds = %out.i.if.then34.i_crit_edge, %do.end29.i, %do.end18.i, %do.end.i
  %ret.050.i = phi i32 [ %call23.i, %out.i.if.then34.i_crit_edge ], [ %call23.i, %do.end29.i ], [ %call13.i, %do.end18.i ], [ %call.i, %do.end.i ]
  store ptr null, ptr @o2net_listen_sock, align 4
  %50 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sock.i, align 4
  %tobool35.not.i = icmp eq ptr %51, null
  br i1 %tobool35.not.i, label %if.then34.i.if.then45_crit_edge, label %if.then36.i

if.then34.i.if.then45_crit_edge:                  ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

if.then36.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @sock_release(ptr noundef nonnull %51) #10
  br label %if.then45

if.then45:                                        ; preds = %if.then36.i, %if.then34.i.if.then45_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sin.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.addr.i)
  %52 = load ptr, ptr @o2net_wq, align 4
  call void @destroy_workqueue(ptr noundef %52) #10
  store ptr null, ptr @o2net_wq, align 4
  br label %cleanup

if.else:                                          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sin.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.addr.i)
  %nd_num = getelementptr inbounds %struct.o2nm_node, ptr %node, i32 0, i32 3
  %53 = ptrtoint ptr %nd_num to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %nd_num, align 1
  call void @o2quo_conn_up(i8 noundef zeroext %54) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then45, %do.body34
  %retval.0 = phi i32 [ -12, %do.body34 ], [ 0, %if.else ], [ %ret.050.i, %if.then45 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2quo_conn_up(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @o2net_stop_listening(ptr nocapture noundef readonly %node) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @o2net_listen_sock, align 4
  %1 = load ptr, ptr @o2net_wq, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.body2, label %do.body8, !prof !300

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2054, 0\0A.popsection", ""() #10, !srcloc !319
  unreachable

do.body8:                                         ; preds = %entry
  %cmp9 = icmp eq ptr %0, null
  br i1 %cmp9, label %do.body17, label %do.end25, !prof !300

do.body17:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2055, 0\0A.popsection", ""() #10, !srcloc !320
  unreachable

do.end25:                                         ; preds = %do.body8
  %sk = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 16
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock) #10
  %4 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk, align 16
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 72
  %6 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk_user_data, align 4
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 77
  %8 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %sk_data_ready, align 8
  %9 = load ptr, ptr %sk, align 16
  %sk_user_data29 = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 72
  %10 = ptrtoint ptr %sk_user_data29 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %sk_user_data29, align 4
  %11 = load ptr, ptr %sk, align 16
  %sk_callback_lock31 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 50
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock31) #10
  br label %for.body

for.body:                                         ; preds = %if.end36.for.body_crit_edge, %do.end25
  %i.051 = phi i32 [ 0, %do.end25 ], [ %inc, %if.end36.for.body_crit_edge ]
  %conv = trunc i32 %i.051 to i8
  %call = tail call ptr @o2nm_get_node_by_num(i8 noundef zeroext %conv) #10
  %tobool34.not = icmp eq ptr %call, null
  br i1 %tobool34.not, label %for.body.if.end36_crit_edge, label %if.then35

for.body.if.end36_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then35:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @o2net_disconnect_node(ptr noundef nonnull %call)
  tail call void @o2nm_node_put(ptr noundef nonnull %call) #10
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %for.body.if.end36_crit_edge
  %inc = add nuw nsw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, 255
  br i1 %exitcond.not, label %do.body37, label %if.end36.for.body_crit_edge

if.end36.for.body_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body37:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %12 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 4611686018427387905, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.o2net_stop_listening, i32 noundef 2072, ptr noundef nonnull @.str.19) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %13 = load ptr, ptr @o2net_wq, align 4
  call void @destroy_workqueue(ptr noundef %13) #10
  store ptr null, ptr @o2net_wq, align 4
  %14 = load ptr, ptr @o2net_listen_sock, align 4
  call void @sock_release(ptr noundef %14) #10
  store ptr null, ptr @o2net_listen_sock, align 4
  %nd_num = getelementptr inbounds %struct.o2nm_node, ptr %node, i32 0, i32 3
  %15 = ptrtoint ptr %nd_num to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nd_num, align 1
  call void @o2quo_conn_err(i8 noundef zeroext %16) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @o2nm_get_node_by_num(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2nm_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2quo_conn_err(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @o2net_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @o2quo_init() #10
  tail call void @o2net_debugfs_init() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #13
  store ptr %call7.i.i, ptr @o2net_hand, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i108 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 24) #13
  store ptr %call7.i.i108, ptr @o2net_keep_req, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i109 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 24) #13
  store ptr %call7.i.i109, ptr @o2net_keep_resp, align 4
  %3 = load ptr, ptr @o2net_hand, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr @o2net_keep_req, align 4
  %tobool3.not = icmp eq ptr %4, null
  %tobool5.not = icmp eq ptr %call7.i.i109, null
  %or.cond = select i1 %tobool3.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 11, ptr %3, align 8
  %connector_id = getelementptr inbounds %struct.o2net_handshake, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %connector_id to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 1, ptr %connector_id, align 8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1449, ptr %4, align 4
  %8 = ptrtoint ptr %call7.i.i109 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1448, ptr %call7.i.i109, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.0113 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %i.0113
  %nn_timeout = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %i.0113, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nn_timeout, i32 noundef 4) #10
  %9 = ptrtoint ptr %nn_timeout to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %nn_timeout, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @o2net_init.__key, i16 noundef signext 3) #10
  %nn_connect_work = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %i.0113, i32 8
  tail call void @__init_work(ptr noundef %nn_connect_work, i32 noundef 0) #10
  %10 = ptrtoint ptr %nn_connect_work to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %nn_connect_work, align 4
  %lockdep_map = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %i.0113, i32 8, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @o2net_init.__key.21, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry17 = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %i.0113, i32 8, i32 0, i32 1
  %11 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry17, ptr %entry17, align 4
  %prev.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %i.0113, i32 8, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry17, ptr %prev.i, align 4
  %func = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %i.0113, i32 8, i32 0, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @o2net_start_connect, ptr %func, align 4
  %timer = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %i.0113, i32 8, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.24, ptr noundef nonnull @o2net_init.__key.23) #10
  %nn_connect_expired = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %i.0113, i32 10
  tail call void @__init_work(ptr noundef %nn_connect_expired, i32 noundef 0) #10
  %14 = ptrtoint ptr %nn_connect_expired to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %nn_connect_expired, align 4
  %lockdep_map38 = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %i.0113, i32 10, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map38, ptr noundef nonnull @.str.26, ptr noundef nonnull @o2net_init.__key.25, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry41 = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %i.0113, i32 10, i32 0, i32 1
  %15 = ptrtoint ptr %entry41 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry41, ptr %entry41, align 4
  %prev.i110 = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %i.0113, i32 10, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i110 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry41, ptr %prev.i110, align 4
  %func44 = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %i.0113, i32 10, i32 0, i32 2
  %17 = ptrtoint ptr %func44 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @o2net_connect_expired, ptr %func44, align 4
  %timer49 = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %i.0113, i32 10, i32 1
  tail call void @init_timer_key(ptr noundef %timer49, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.28, ptr noundef nonnull @o2net_init.__key.27) #10
  %nn_still_up = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %i.0113, i32 11
  tail call void @__init_work(ptr noundef %nn_still_up, i32 noundef 0) #10
  %18 = ptrtoint ptr %nn_still_up to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %nn_still_up, align 4
  %lockdep_map64 = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %i.0113, i32 11, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map64, ptr noundef nonnull @.str.30, ptr noundef nonnull @o2net_init.__key.29, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry67 = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %i.0113, i32 11, i32 0, i32 1
  %19 = ptrtoint ptr %entry67 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry67, ptr %entry67, align 4
  %prev.i111 = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %i.0113, i32 11, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i111 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry67, ptr %prev.i111, align 4
  %func70 = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %i.0113, i32 11, i32 0, i32 2
  %21 = ptrtoint ptr %func70 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @o2net_still_up, ptr %func70, align 4
  %timer75 = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %i.0113, i32 11, i32 1
  tail call void @init_timer_key(ptr noundef %timer75, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.32, ptr noundef nonnull @o2net_init.__key.31) #10
  %nn_persistent_error = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %i.0113, i32 3
  %22 = ptrtoint ptr %nn_persistent_error to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -107, ptr %nn_persistent_error, align 4
  %nn_sc_wq = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %i.0113, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %nn_sc_wq, ptr noundef nonnull @.str.34, ptr noundef nonnull @o2net_init.__key.33) #10
  %nn_status_idr = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %i.0113, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %nn_status_idr, ptr noundef nonnull @.str.123, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #10
  %xa_flags.i.i.i = getelementptr inbounds %struct.xarray, ptr %nn_status_idr, i32 0, i32 1
  %23 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.xarray, ptr %nn_status_idr, i32 0, i32 2
  %24 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %i.0113, i32 6, i32 1
  %25 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %i.0113, i32 6, i32 2
  %26 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %idr_next.i.i, align 4
  %nn_status_list = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %i.0113, i32 7
  %27 = ptrtoint ptr %nn_status_list to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %nn_status_list, ptr %nn_status_list, align 4
  %prev.i112 = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %i.0113, i32 7, i32 1
  %28 = ptrtoint ptr %prev.i112 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %nn_status_list, ptr %prev.i112, align 4
  %inc = add nuw nsw i32 %i.0113, 1
  %exitcond.not = icmp eq i32 %inc, 255
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out:                                              ; preds = %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  tail call void @kfree(ptr noundef %3) #10
  %29 = load ptr, ptr @o2net_keep_req, align 4
  tail call void @kfree(ptr noundef %29) #10
  %30 = load ptr, ptr @o2net_keep_resp, align 4
  tail call void @kfree(ptr noundef %30) #10
  tail call void @o2net_debugfs_exit() #10
  tail call void @o2quo_exit() #10
  br label %cleanup

cleanup:                                          ; preds = %out, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %out ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2quo_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2net_debugfs_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @o2net_start_connect(ptr noundef %work) #0 align 64 {
entry:
  %sock = alloca ptr, align 4
  %myaddr = alloca %struct.sockaddr_in, align 4
  %remoteaddr = alloca %struct.sockaddr_in, align 4
  %_m = alloca i64, align 8
  %_m43 = alloca i64, align 8
  %_m55 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -180
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock) #10
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %sock, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %myaddr) #10
  %1 = call ptr @memset(ptr %myaddr, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %remoteaddr) #10
  %2 = call ptr @memset(ptr %remoteaddr, i32 0, i32 16)
  %3 = tail call i32 @llvm.read_register.i32(metadata !285) #10
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags1.i, align 4
  %or.i = or i32 %8, 262144
  store i32 %or.i, ptr %flags1.i, align 4
  %call1 = tail call zeroext i8 @o2nm_this_node() #10
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %do.body2.i, label %o2net_num_from_nn.exit, !prof !300

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 284, 0\0A.popsection", ""() #10, !srcloc !313
  unreachable

o2net_num_from_nn.exit:                           ; preds = %entry
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, ptrtoint (ptr @o2net_nodes to i32)
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 484
  %conv.i = trunc i32 %sub.ptr.div.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %call1, i8 %conv.i)
  %cmp.not = icmp ugt i8 %call1, %conv.i
  br i1 %cmp.not, label %o2net_num_from_nn.exit158, label %o2net_num_from_nn.exit.if.end108_crit_edge

o2net_num_from_nn.exit.if.end108_crit_edge:       ; preds = %o2net_num_from_nn.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

o2net_num_from_nn.exit158:                        ; preds = %o2net_num_from_nn.exit
  %call6 = tail call ptr @o2nm_get_node_by_num(i8 noundef zeroext %conv.i) #10
  %cmp7 = icmp eq ptr %call6, null
  br i1 %cmp7, label %o2net_num_from_nn.exit158.if.end108_crit_edge, label %if.end10

o2net_num_from_nn.exit158.if.end108_crit_edge:    ; preds = %o2net_num_from_nn.exit158
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.end10:                                         ; preds = %o2net_num_from_nn.exit158
  %call11 = tail call zeroext i8 @o2nm_this_node() #10
  %call12 = tail call ptr @o2nm_get_node_by_num(i8 noundef zeroext %call11) #10
  %cmp13 = icmp eq ptr %call12, null
  br i1 %cmp13, label %if.end105, label %if.end16

if.end16:                                         ; preds = %if.end10
  tail call void @_raw_spin_lock(ptr noundef nonnull %add.ptr) #10
  %nn_timeout = getelementptr i8, ptr %work, i32 -124
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nn_timeout, i32 noundef 4) #10
  %9 = ptrtoint ptr %nn_timeout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %nn_timeout, align 4
  %nn_sc = getelementptr i8, ptr %work, i32 -136
  %11 = ptrtoint ptr %nn_sc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nn_sc, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %lor.rhs, label %out.critedge

lor.rhs:                                          ; preds = %if.end16
  %nn_persistent_error = getelementptr i8, ptr %work, i32 -128
  %13 = ptrtoint ptr %nn_persistent_error to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nn_persistent_error, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %lor.end25.fold.split [
    i32 0, label %if.end29.critedge
    i32 -107, label %lor.rhs22
  ]

lor.rhs22:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp23 = icmp eq i32 %10, 0
  tail call void @_raw_spin_unlock(ptr noundef nonnull %add.ptr) #10
  br i1 %cmp23, label %lor.rhs22.if.then107_crit_edge, label %lor.rhs22.if.end29_crit_edge

lor.rhs22.if.end29_crit_edge:                     ; preds = %lor.rhs22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

lor.rhs22.if.then107_crit_edge:                   ; preds = %lor.rhs22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then107

lor.end25.fold.split:                             ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef nonnull %add.ptr) #10
  br label %if.then107

if.end29.critedge:                                ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef nonnull %add.ptr) #10
  br label %if.end29

if.end29:                                         ; preds = %if.end29.critedge, %lor.rhs22.if.end29_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %nn_last_connect_attempt = getelementptr i8, ptr %work, i32 100
  %17 = ptrtoint ptr %nn_last_connect_attempt to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %nn_last_connect_attempt, align 4
  %call30 = tail call fastcc ptr @sc_alloc(ptr noundef nonnull %call6)
  %cmp31 = icmp eq ptr %call30, null
  br i1 %cmp31, label %do.body, label %if.end37

do.body:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %18 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 1, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.o2net_start_connect, i32 noundef 1594, ptr noundef nonnull @.str.117) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %if.then107

if.end37:                                         ; preds = %if.end29
  %call38 = call i32 @sock_create(i32 noundef 2, i32 noundef 1, i32 noundef 6, ptr noundef nonnull %sock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.body42, label %if.end50

do.body42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m43) #10
  %19 = ptrtoint ptr %_m43 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 1, ptr %_m43, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m43, ptr noundef nonnull @__func__.o2net_start_connect, i32 noundef 1601, ptr noundef nonnull @.str.118, i32 noundef %call38) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m43) #10
  br label %do.end89

if.end50:                                         ; preds = %if.end37
  %20 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sock, align 4
  %sc_sock = getelementptr inbounds %struct.o2net_sock_container, ptr %call30, i32 0, i32 1
  %22 = ptrtoint ptr %sc_sock to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %sc_sock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %21, i32 0, i32 4
  %23 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sk, align 16
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %24, i32 0, i32 41
  %25 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2592, ptr %sk_allocation, align 8
  %26 = ptrtoint ptr %myaddr to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 2, ptr %myaddr, align 4
  %nd_ipv4_address = getelementptr inbounds %struct.o2nm_node, ptr %call12, i32 0, i32 4
  %27 = ptrtoint ptr %nd_ipv4_address to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nd_ipv4_address, align 4
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %myaddr, i32 0, i32 2
  %29 = ptrtoint ptr %sin_addr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %sin_addr, align 4
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %myaddr, i32 0, i32 1
  %30 = ptrtoint ptr %sin_port to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %sin_port, align 2
  %ops = getelementptr inbounds %struct.socket, ptr %21, i32 0, i32 5
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops, align 4
  %bind = getelementptr inbounds %struct.proto_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %bind to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bind, align 4
  %call51 = call i32 %34(ptr noundef %21, ptr noundef nonnull %myaddr, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end63, label %do.body54

do.body54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m55) #10
  %35 = ptrtoint ptr %_m55 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 1152921504606846977, ptr %_m55, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m55, ptr noundef nonnull @__func__.o2net_start_connect, i32 noundef 1616, ptr noundef nonnull @.str.119, i32 noundef %call51, ptr noundef %nd_ipv4_address) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m55) #10
  br label %do.end89

if.end63:                                         ; preds = %if.end50
  %36 = ptrtoint ptr %sc_sock to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sc_sock, align 4
  %sk65 = getelementptr inbounds %struct.socket, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %sk65 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sk65, align 16
  call void @tcp_sock_set_nodelay(ptr noundef %39) #10
  %40 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sock, align 4
  %sk66 = getelementptr inbounds %struct.socket, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %sk66 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sk66, align 16
  call void @tcp_sock_set_user_timeout(ptr noundef %43, i32 noundef 2147483647) #10
  %44 = ptrtoint ptr %sc_sock to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sc_sock, align 4
  %sk68 = getelementptr inbounds %struct.socket, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %sk68 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sk68, align 16
  call fastcc void @o2net_register_callbacks(ptr noundef %47, ptr noundef nonnull %call30)
  call void @_raw_spin_lock(ptr noundef nonnull %add.ptr) #10
  call fastcc void @o2net_set_nn_state(ptr noundef nonnull %add.ptr, ptr noundef nonnull %call30, i32 noundef 0, i32 noundef 0)
  call void @_raw_spin_unlock(ptr noundef nonnull %add.ptr) #10
  %48 = ptrtoint ptr %remoteaddr to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 2, ptr %remoteaddr, align 4
  %nd_ipv4_address72 = getelementptr inbounds %struct.o2nm_node, ptr %call6, i32 0, i32 4
  %49 = ptrtoint ptr %nd_ipv4_address72 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nd_ipv4_address72, align 4
  %sin_addr73 = getelementptr inbounds %struct.sockaddr_in, ptr %remoteaddr, i32 0, i32 2
  %51 = ptrtoint ptr %sin_addr73 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %sin_addr73, align 4
  %nd_ipv4_port = getelementptr inbounds %struct.o2nm_node, ptr %call6, i32 0, i32 5
  %52 = ptrtoint ptr %nd_ipv4_port to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %nd_ipv4_port, align 4
  %sin_port75 = getelementptr inbounds %struct.sockaddr_in, ptr %remoteaddr, i32 0, i32 1
  %54 = ptrtoint ptr %sin_port75 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %sin_port75, align 2
  %55 = ptrtoint ptr %sc_sock to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sc_sock, align 4
  %ops77 = getelementptr inbounds %struct.socket, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %ops77 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops77, align 4
  %connect = getelementptr inbounds %struct.proto_ops, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %connect to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %connect, align 4
  %call79 = call i32 %60(ptr noundef %56, ptr noundef nonnull %remoteaddr, i32 noundef 16, i32 noundef 2048) #10
  %61 = zext i32 %call79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %call79, label %if.end63.do.end89_crit_edge [
    i32 -115, label %if.end63.if.then101_crit_edge
    i32 0, label %if.end63.if.then101_crit_edge213
  ]

if.end63.if.then101_crit_edge213:                 ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then101

if.end63.if.then101_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then101

if.end63.do.end89_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end89

out.critedge:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef nonnull %add.ptr) #10
  br label %if.then107

do.end89:                                         ; preds = %if.end63.do.end89_crit_edge, %do.body54, %do.body42
  %ret.0209 = phi i32 [ %call51, %do.body54 ], [ %call38, %do.body42 ], [ %call79, %if.end63.do.end89_crit_edge ]
  %sc_node = getelementptr inbounds %struct.o2net_sock_container, ptr %call30, i32 0, i32 2
  %62 = ptrtoint ptr %sc_node to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sc_node, align 8
  %nd_name = getelementptr inbounds %struct.o2nm_node, ptr %63, i32 0, i32 2
  %nd_num = getelementptr inbounds %struct.o2nm_node, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %nd_num to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %nd_num, align 1
  %conv92 = zext i8 %65 to i32
  %nd_ipv4_address94 = getelementptr inbounds %struct.o2nm_node, ptr %63, i32 0, i32 4
  %nd_ipv4_port96 = getelementptr inbounds %struct.o2nm_node, ptr %63, i32 0, i32 5
  %66 = ptrtoint ptr %nd_ipv4_port96 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %nd_ipv4_port96, align 4
  %conv97 = zext i16 %67 to i32
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %nd_name, i32 noundef %conv92, ptr noundef %nd_ipv4_address94, i32 noundef %conv97, i32 noundef %ret.0209) #16
  call void @_raw_spin_lock(ptr noundef nonnull %add.ptr) #10
  %68 = ptrtoint ptr %nn_sc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %nn_sc, align 4
  %cmp.i159 = icmp eq ptr %69, %call30
  br i1 %cmp.i159, label %if.then.i, label %do.end89.o2net_ensure_shutdown.exit_crit_edge

do.end89.o2net_ensure_shutdown.exit_crit_edge:    ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_ensure_shutdown.exit

if.then.i:                                        ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @o2net_set_nn_state(ptr noundef nonnull %add.ptr, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  br label %o2net_ensure_shutdown.exit

o2net_ensure_shutdown.exit:                       ; preds = %if.then.i, %do.end89.o2net_ensure_shutdown.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull %add.ptr) #10
  br label %if.then101

if.then101:                                       ; preds = %o2net_ensure_shutdown.exit, %if.end63.if.then101_crit_edge, %if.end63.if.then101_crit_edge213
  call fastcc void @sc_put(ptr noundef nonnull %call30)
  br label %if.then107

if.end105:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @o2nm_node_put(ptr noundef nonnull %call6) #10
  br label %if.end108

if.then107:                                       ; preds = %if.then101, %out.critedge, %do.body, %lor.end25.fold.split, %lor.rhs22.if.then107_crit_edge
  call void @o2nm_node_put(ptr noundef nonnull %call6) #10
  call void @o2nm_node_put(ptr noundef nonnull %call12) #10
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %if.end105, %o2net_num_from_nn.exit158.if.end108_crit_edge, %o2net_num_from_nn.exit.if.end108_crit_edge
  %and.i = and i32 %8, 262144
  %70 = call i32 @llvm.read_register.i32(metadata !285) #10
  %and.i.i160 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i160 to ptr
  %task.i161 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %task.i161 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task.i161, align 8
  %flags1.i162 = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %flags1.i162 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags1.i162, align 4
  %and.i163 = and i32 %75, -262145
  %or.i164 = or i32 %and.i163, %and.i
  store i32 %or.i164, ptr %flags1.i162, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %remoteaddr) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %myaddr) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @o2net_connect_expired(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -284
  tail call void @_raw_spin_lock(ptr noundef %add.ptr) #10
  %nn_sc_valid = getelementptr i8, ptr %work, i32 -236
  %0 = ptrtoint ptr %nn_sc_valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %nn_sc_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %do.body2.i, label %o2net_num_from_nn.exit, !prof !300

do.body2.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 284, 0\0A.popsection", ""() #10, !srcloc !313
  unreachable

o2net_num_from_nn.exit:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, ptrtoint (ptr @o2net_nodes to i32)
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 484
  %conv = and i32 %sub.ptr.div.i, 255
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @o2nm_single_cluster to i32))
  %1 = load ptr, ptr @o2nm_single_cluster, align 4
  %cl_idle_timeout_ms.i = getelementptr inbounds %struct.o2nm_cluster, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %cl_idle_timeout_ms.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cl_idle_timeout_ms.i, align 4
  %.frozen = freeze i32 %3
  %div = udiv i32 %.frozen, 1000
  %4 = mul i32 %div, 1000
  %rem.decomposed = sub i32 %.frozen, %4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i32 noundef %conv, i32 noundef %div, i32 noundef %rem.decomposed) #16
  tail call fastcc void @o2net_set_nn_state(ptr noundef nonnull %add.ptr, ptr noundef null, i32 noundef 0, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %o2net_num_from_nn.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @o2net_still_up(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -384
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %do.body2.i, label %o2net_num_from_nn.exit, !prof !300

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 284, 0\0A.popsection", ""() #10, !srcloc !313
  unreachable

o2net_num_from_nn.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, ptrtoint (ptr @o2net_nodes to i32)
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 484
  %conv.i = trunc i32 %sub.ptr.div.i to i8
  tail call void @o2quo_hb_still_up(i8 noundef zeroext %conv.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2net_debugfs_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2quo_exit() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @o2net_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @o2quo_exit() #10
  %0 = load ptr, ptr @o2net_hand, align 4
  tail call void @kfree(ptr noundef %0) #10
  %1 = load ptr, ptr @o2net_keep_req, align 4
  tail call void @kfree(ptr noundef %1) #10
  %2 = load ptr, ptr @o2net_keep_resp, align 4
  tail call void @kfree(ptr noundef %2) #10
  tail call void @o2net_debugfs_exit() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2nm_undepend_item(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2net_debug_del_sc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sc_get(ptr noundef %sc) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 5, ptr %_m, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sc, i32 noundef 4) #10
  %1 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %sc, align 4
  %sc_sock = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 1
  %3 = ptrtoint ptr %sc_sock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sc_sock, align 4
  %sc_node = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 2
  %5 = ptrtoint ptr %sc_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sc_node, align 8
  %nd_num = getelementptr inbounds %struct.o2nm_node, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %nd_num to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nd_num, align 1
  %conv = zext i8 %8 to i32
  %sc_page = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 9
  %9 = ptrtoint ptr %sc_page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sc_page, align 8
  %sc_page_off = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 10
  %11 = ptrtoint ptr %sc_page_off to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sc_page_off, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.sc_get, i32 noundef 407, ptr noundef nonnull @.str.54, ptr noundef %sc, i32 noundef %2, ptr noundef %4, i32 noundef %conv, ptr noundef %10, i32 noundef %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sc, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %sc, i32 1, i32 3, i32 1) #10
  %13 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sc, ptr %sc, i32 1, ptr elementtype(i32) %sc) #10, !srcloc !302
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !300

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !298

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %sc, i32 noundef %.sink.i.i.i.i) #10
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @o2net_sc_queue_work(ptr noundef %sc, ptr noundef %work) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sc_get(ptr noundef %sc)
  %0 = load ptr, ptr @o2net_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work) #10
  br i1 %call.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @sc_put(ptr noundef %sc)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2quo_hb_down(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2quo_hb_up(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_create(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @o2net_listen_data_ready(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock) #10
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %out, label %if.end

if.end:                                           ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp1 = icmp eq i8 %3, 10
  br i1 %cmp1, label %out.thread19, label %out.thread

out.thread:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #10
  br label %if.end9

out.thread19:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = load ptr, ptr @o2net_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef nonnull @o2net_listen_work) #10
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #10
  br label %if.then8

out:                                              ; preds = %entry
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 77
  %5 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk_data_ready, align 8
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #10
  %cmp6.not = icmp eq ptr %6, null
  br i1 %cmp6.not, label %out.if.end9_crit_edge, label %out.if.then8_crit_edge

out.if.then8_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

out.if.end9_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %out.if.then8_crit_edge, %out.thread19
  %ready.022 = phi ptr [ %1, %out.thread19 ], [ %6, %out.if.then8_crit_edge ]
  tail call void %ready.022(ptr noundef %sk) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %out.if.end9_crit_edge, %out.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @o2net_accept_many(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  %sin.i = alloca %struct.sockaddr_in, align 4
  %new_sock.i = alloca ptr, align 4
  %_m.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @o2net_listen_sock, align 4
  %1 = getelementptr inbounds %struct.sockaddr_in, ptr %sin.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.sockaddr_in, ptr %sin.i, i32 0, i32 2
  %cmp.i = icmp eq ptr %0, null
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sin.i) #10
  %3 = call ptr @memset(ptr %sin.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_sock.i) #10
  %4 = ptrtoint ptr %new_sock.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %new_sock.i, align 4
  %5 = call i32 @llvm.read_register.i32(metadata !285) #10
  %and.i.i.i2 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i2 to ptr
  %task.i.i3 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i3, align 8
  %flags1.i.i4 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %flags1.i.i4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags1.i.i4, align 4
  %or.i.i5 = or i32 %10, 262144
  store i32 %or.i.i5, ptr %flags1.i.i4, align 4
  br i1 %cmp.i, label %do.body2.i, label %do.end7.i.lr.ph, !prof !300

do.end7.i.lr.ph:                                  ; preds = %entry
  %sk.i = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %type.i = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 1
  %ops.i = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 5
  br label %do.end7.i

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1791, 0\0A.popsection", ""() #10, !srcloc !321
  unreachable

do.end7.i:                                        ; preds = %if.end, %do.end7.i.lr.ph
  %11 = phi i32 [ %10, %do.end7.i.lr.ph ], [ %122, %if.end ]
  %12 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk.i, align 16
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %skc_family.i, align 8
  %conv.i = zext i16 %15 to i32
  %sk_type.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 45
  %16 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sk_type.i, align 2
  %conv9.i = zext i16 %17 to i32
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 46
  %18 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sk_protocol.i, align 4
  %conv11.i = zext i16 %19 to i32
  %call12.i = call i32 @sock_create_lite(i32 noundef %conv.i, i32 noundef %conv9.i, i32 noundef %conv11.i, ptr noundef nonnull %new_sock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %do.end7.i.out.i_crit_edge

do.end7.i.out.i_crit_edge:                        ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end15.i:                                       ; preds = %do.end7.i
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %type.i, align 4
  %22 = ptrtoint ptr %new_sock.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %new_sock.i, align 4
  %type16.i = getelementptr inbounds %struct.socket, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %type16.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %21, ptr %type16.i, align 4
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %ops17.i = getelementptr inbounds %struct.socket, ptr %23, i32 0, i32 5
  %27 = ptrtoint ptr %ops17.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %ops17.i, align 4
  %28 = load ptr, ptr %ops.i, align 4
  %accept.i = getelementptr inbounds %struct.proto_ops, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %accept.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %accept.i, align 4
  %call19.i = call i32 %30(ptr noundef nonnull %0, ptr noundef %23, i32 noundef 2048, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %if.end15.i.out.i_crit_edge, label %if.end23.i

if.end15.i.out.i_crit_edge:                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end23.i:                                       ; preds = %if.end15.i
  %31 = ptrtoint ptr %new_sock.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %new_sock.i, align 4
  %sk24.i = getelementptr inbounds %struct.socket, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %sk24.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sk24.i, align 16
  %sk_allocation.i = getelementptr inbounds %struct.sock, ptr %34, i32 0, i32 41
  %35 = ptrtoint ptr %sk_allocation.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2592, ptr %sk_allocation.i, align 8
  %36 = load ptr, ptr %sk24.i, align 16
  call void @tcp_sock_set_nodelay(ptr noundef %36) #10
  %37 = ptrtoint ptr %new_sock.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %new_sock.i, align 4
  %sk26.i = getelementptr inbounds %struct.socket, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %sk26.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sk26.i, align 16
  call void @tcp_sock_set_user_timeout(ptr noundef %40, i32 noundef 2147483647) #10
  %41 = ptrtoint ptr %new_sock.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %new_sock.i, align 4
  %ops27.i = getelementptr inbounds %struct.socket, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %ops27.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops27.i, align 4
  %getname.i = getelementptr inbounds %struct.proto_ops, ptr %44, i32 0, i32 7
  %45 = ptrtoint ptr %getname.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %getname.i, align 4
  %call28.i = call i32 %46(ptr noundef %42, ptr noundef nonnull %sin.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %if.end23.i.out.i_crit_edge, label %if.end32.i

if.end23.i.out.i_crit_edge:                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end32.i:                                       ; preds = %if.end23.i
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %2, align 4
  %call33.i = call ptr @o2nm_get_node_by_ip(i32 noundef %48) #10
  %cmp34.i = icmp eq ptr %call33.i, null
  br i1 %cmp34.i, label %do.end39.i, label %if.end44.i

do.end39.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %1, align 2
  %conv42.i = zext i16 %50 to i32
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %2, i32 noundef %conv42.i) #16
  br label %out.i

if.end44.i:                                       ; preds = %if.end32.i
  %call45.i = call zeroext i8 @o2nm_this_node() #10
  %nd_num.i = getelementptr inbounds %struct.o2nm_node, ptr %call33.i, i32 0, i32 3
  %51 = ptrtoint ptr %nd_num.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %nd_num.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %call45.i, i8 %52)
  %cmp48.not.i = icmp ult i8 %call45.i, %52
  br i1 %cmp48.not.i, label %if.end72.i, label %if.then50.i

if.then50.i:                                      ; preds = %if.end44.i
  %call51.i = call zeroext i8 @o2nm_this_node() #10
  %call52.i = call ptr @o2nm_get_node_by_num(i8 noundef zeroext %call51.i) #10
  %tobool53.not.i = icmp eq ptr %call52.i, null
  br i1 %tobool53.not.i, label %if.then50.i.out.i_crit_edge, label %do.end57.i

if.then50.i.out.i_crit_edge:                      ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

do.end57.i:                                       ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #12
  %nd_name.i = getelementptr inbounds %struct.o2nm_node, ptr %call52.i, i32 0, i32 2
  %nd_num59.i = getelementptr inbounds %struct.o2nm_node, ptr %call52.i, i32 0, i32 3
  %53 = ptrtoint ptr %nd_num59.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %nd_num59.i, align 1
  %conv60.i = zext i8 %54 to i32
  %nd_ipv4_address.i = getelementptr inbounds %struct.o2nm_node, ptr %call52.i, i32 0, i32 4
  %nd_ipv4_port.i = getelementptr inbounds %struct.o2nm_node, ptr %call52.i, i32 0, i32 5
  %55 = ptrtoint ptr %nd_ipv4_port.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %nd_ipv4_port.i, align 4
  %conv61.i = zext i16 %56 to i32
  %nd_name62.i = getelementptr inbounds %struct.o2nm_node, ptr %call33.i, i32 0, i32 2
  %57 = ptrtoint ptr %nd_num.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %nd_num.i, align 1
  %conv65.i = zext i8 %58 to i32
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %1, align 2
  %conv69.i = zext i16 %60 to i32
  %call70.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %nd_name.i, i32 noundef %conv60.i, ptr noundef %nd_ipv4_address.i, i32 noundef %conv61.i, ptr noundef %nd_name62.i, i32 noundef %conv65.i, ptr noundef %2, i32 noundef %conv69.i) #16
  br label %out.i

if.end72.i:                                       ; preds = %if.end44.i
  %call74.i = call i32 @o2hb_check_node_heartbeating_from_callback(i8 noundef zeroext %52) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i, label %do.body77.i, label %if.end89.i

do.body77.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %61 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 8193, ptr %_m.i, align 8
  %nd_name80.i = getelementptr inbounds %struct.o2nm_node, ptr %call33.i, i32 0, i32 2
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %1, align 2
  %conv85.i = zext i16 %63 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @.str.65, i32 noundef 1845, ptr noundef nonnull @.str.69, ptr noundef %nd_name80.i, ptr noundef %2, i32 noundef %conv85.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  br label %out.i

if.end89.i:                                       ; preds = %if.end72.i
  %64 = ptrtoint ptr %nd_num.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %nd_num.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %65)
  %cmp.i.i = icmp eq i8 %65, -1
  br i1 %cmp.i.i, label %do.body3.i.i, label %o2net_nn_from_num.exit.i, !prof !300

do.body3.i.i:                                     ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 278, 0\0A.popsection", ""() #10, !srcloc !304
  unreachable

o2net_nn_from_num.exit.i:                         ; preds = %if.end89.i
  %conv.i.i = zext i8 %65 to i32
  %arrayidx.i.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i.i
  call void @_raw_spin_lock(ptr noundef %arrayidx.i.i) #10
  %nn_sc.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i.i, i32 1
  %66 = ptrtoint ptr %nn_sc.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %nn_sc.i, align 4
  %tobool92.not.i = icmp eq ptr %67, null
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i) #10
  br i1 %tobool92.not.i, label %if.end109.i, label %do.end100.i

do.end100.i:                                      ; preds = %o2net_nn_from_num.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %nd_name102.i = getelementptr inbounds %struct.o2nm_node, ptr %call33.i, i32 0, i32 2
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %1, align 2
  %conv107.i = zext i16 %69 to i32
  %call108.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %nd_name102.i, ptr noundef %2, i32 noundef %conv107.i) #16
  br label %out.i

if.end109.i:                                      ; preds = %o2net_nn_from_num.exit.i
  %call110.i = call fastcc ptr @sc_alloc(ptr noundef nonnull %call33.i) #10
  %cmp111.i = icmp eq ptr %call110.i, null
  br i1 %cmp111.i, label %if.end109.i.out.i_crit_edge, label %if.end114.i

if.end109.i.out.i_crit_edge:                      ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end114.i:                                      ; preds = %if.end109.i
  %70 = ptrtoint ptr %new_sock.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %new_sock.i, align 4
  %sc_sock.i = getelementptr inbounds %struct.o2net_sock_container, ptr %call110.i, i32 0, i32 1
  %72 = ptrtoint ptr %sc_sock.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %sc_sock.i, align 4
  store ptr null, ptr %new_sock.i, align 4
  call void @_raw_spin_lock(ptr noundef %arrayidx.i.i) #10
  %nn_timeout.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i.i, i32 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nn_timeout.i, i32 noundef 4) #10
  %73 = ptrtoint ptr %nn_timeout.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 0, ptr %nn_timeout.i, align 4
  call fastcc void @o2net_set_nn_state(ptr noundef %arrayidx.i.i, ptr noundef nonnull %call110.i, i32 noundef 0, i32 noundef 0) #10
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i) #10
  %74 = ptrtoint ptr %sc_sock.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sc_sock.i, align 4
  %sk118.i = getelementptr inbounds %struct.socket, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %sk118.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sk118.i, align 16
  %sk_callback_lock.i.i = getelementptr inbounds %struct.sock, ptr %77, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i.i) #10
  %sk_data_ready.i.i = getelementptr inbounds %struct.sock, ptr %77, i32 0, i32 77
  %78 = ptrtoint ptr %sk_data_ready.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sk_data_ready.i.i, align 8
  %cmp.i1.i = icmp eq ptr %79, @o2net_listen_data_ready
  br i1 %cmp.i1.i, label %if.then.i.i, label %if.end114.i.do.body.i.i_crit_edge

if.end114.i.do.body.i.i_crit_edge:                ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

if.then.i.i:                                      ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #12
  %sk_user_data.i.i = getelementptr inbounds %struct.sock, ptr %77, i32 0, i32 72
  %80 = ptrtoint ptr %sk_user_data.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sk_user_data.i.i, align 4
  %82 = ptrtoint ptr %sk_data_ready.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %sk_data_ready.i.i, align 8
  store ptr null, ptr %sk_user_data.i.i, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then.i.i, %if.end114.i.do.body.i.i_crit_edge
  %sk_user_data3.i.i = getelementptr inbounds %struct.sock, ptr %77, i32 0, i32 72
  %83 = ptrtoint ptr %sk_user_data3.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sk_user_data3.i.i, align 4
  %cmp4.not.i.i = icmp eq ptr %84, null
  br i1 %cmp4.not.i.i, label %o2net_register_callbacks.exit.i, label %do.body7.i.i, !prof !298

do.body7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 656, 0\0A.popsection", ""() #10, !srcloc !322
  unreachable

o2net_register_callbacks.exit.i:                  ; preds = %do.body.i.i
  %85 = ptrtoint ptr %sk_user_data3.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call110.i, ptr %sk_user_data3.i.i, align 4
  call fastcc void @sc_get(ptr noundef nonnull %call110.i) #10
  %86 = ptrtoint ptr %sk_data_ready.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sk_data_ready.i.i, align 8
  %sc_data_ready.i.i = getelementptr inbounds %struct.o2net_sock_container, ptr %call110.i, i32 0, i32 12
  %88 = ptrtoint ptr %sc_data_ready.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %sc_data_ready.i.i, align 4
  %sk_state_change.i.i = getelementptr inbounds %struct.sock, ptr %77, i32 0, i32 76
  %89 = ptrtoint ptr %sk_state_change.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sk_state_change.i.i, align 4
  %sc_state_change.i.i = getelementptr inbounds %struct.o2net_sock_container, ptr %call110.i, i32 0, i32 11
  %91 = ptrtoint ptr %sc_state_change.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %90, ptr %sc_state_change.i.i, align 8
  store ptr @o2net_data_ready, ptr %sk_data_ready.i.i, align 8
  store ptr @o2net_state_change, ptr %sk_state_change.i.i, align 4
  %sc_send_lock.i.i = getelementptr inbounds %struct.o2net_sock_container, ptr %call110.i, i32 0, i32 28
  call void @__mutex_init(ptr noundef %sc_send_lock.i.i, ptr noundef nonnull @.str.111, ptr noundef nonnull @o2net_register_callbacks.__key) #10
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i.i) #10
  %sc_rx_work.i = getelementptr inbounds %struct.o2net_sock_container, ptr %call110.i, i32 0, i32 3
  call fastcc void @sc_get(ptr noundef nonnull %call110.i) #10
  %92 = load ptr, ptr @o2net_wq, align 4
  %call.i.i2.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %92, ptr noundef %sc_rx_work.i) #10
  br i1 %call.i.i2.i, label %o2net_register_callbacks.exit.i.o2net_sc_queue_work.exit.i_crit_edge, label %if.then.i3.i

o2net_register_callbacks.exit.i.o2net_sc_queue_work.exit.i_crit_edge: ; preds = %o2net_register_callbacks.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_sc_queue_work.exit.i

if.then.i3.i:                                     ; preds = %o2net_register_callbacks.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @sc_put(ptr noundef nonnull %call110.i) #10
  br label %o2net_sc_queue_work.exit.i

o2net_sc_queue_work.exit.i:                       ; preds = %if.then.i3.i, %o2net_register_callbacks.exit.i.o2net_sc_queue_work.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @o2hb_dead_threshold to i32))
  %93 = load i32, ptr @o2hb_dead_threshold, align 4
  %94 = mul i32 %93, 2000
  %mul.i.i = add i32 %94, -2000
  %95 = load ptr, ptr @o2net_hand, align 4
  %o2hb_heartbeat_timeout_ms.i.i = getelementptr inbounds %struct.o2net_handshake, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %o2hb_heartbeat_timeout_ms.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %mul.i.i, ptr %o2hb_heartbeat_timeout_ms.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @o2nm_single_cluster to i32))
  %97 = load ptr, ptr @o2nm_single_cluster, align 4
  %cl_idle_timeout_ms.i.i.i = getelementptr inbounds %struct.o2nm_cluster, ptr %97, i32 0, i32 6
  %98 = ptrtoint ptr %cl_idle_timeout_ms.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cl_idle_timeout_ms.i.i.i, align 4
  %o2net_idle_timeout_ms.i.i = getelementptr inbounds %struct.o2net_handshake, ptr %95, i32 0, i32 3
  %100 = ptrtoint ptr %o2net_idle_timeout_ms.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %o2net_idle_timeout_ms.i.i, align 4
  %cl_keepalive_delay_ms.i.i.i = getelementptr inbounds %struct.o2nm_cluster, ptr %97, i32 0, i32 7
  %101 = ptrtoint ptr %cl_keepalive_delay_ms.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %cl_keepalive_delay_ms.i.i.i, align 4
  %o2net_keepalive_delay_ms.i.i = getelementptr inbounds %struct.o2net_handshake, ptr %95, i32 0, i32 4
  %103 = ptrtoint ptr %o2net_keepalive_delay_ms.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %o2net_keepalive_delay_ms.i.i, align 8
  %cl_reconnect_delay_ms.i.i.i = getelementptr inbounds %struct.o2nm_cluster, ptr %97, i32 0, i32 8
  %104 = ptrtoint ptr %cl_reconnect_delay_ms.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %cl_reconnect_delay_ms.i.i.i, align 4
  %o2net_reconnect_delay_ms.i.i = getelementptr inbounds %struct.o2net_handshake, ptr %95, i32 0, i32 5
  %106 = ptrtoint ptr %o2net_reconnect_delay_ms.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %o2net_reconnect_delay_ms.i.i, align 4
  call fastcc void @o2net_sendpage(ptr noundef nonnull %call110.i, ptr noundef %95, i32 noundef 32) #10
  br label %out.i

out.i:                                            ; preds = %o2net_sc_queue_work.exit.i, %if.end109.i.out.i_crit_edge, %do.end100.i, %do.body77.i, %do.end57.i, %if.then50.i.out.i_crit_edge, %do.end39.i, %if.end23.i.out.i_crit_edge, %if.end15.i.out.i_crit_edge, %do.end7.i.out.i_crit_edge
  %tobool.not = phi i1 [ false, %o2net_sc_queue_work.exit.i ], [ false, %if.end109.i.out.i_crit_edge ], [ false, %do.end100.i ], [ false, %do.body77.i ], [ false, %do.end57.i ], [ false, %if.then50.i.out.i_crit_edge ], [ false, %do.end39.i ], [ false, %if.end23.i.out.i_crit_edge ], [ true, %if.end15.i.out.i_crit_edge ], [ true, %do.end7.i.out.i_crit_edge ]
  %sc.0.i = phi ptr [ %call110.i, %o2net_sc_queue_work.exit.i ], [ null, %if.end109.i.out.i_crit_edge ], [ null, %do.end100.i ], [ null, %do.body77.i ], [ null, %do.end57.i ], [ null, %if.then50.i.out.i_crit_edge ], [ null, %do.end39.i ], [ null, %if.end23.i.out.i_crit_edge ], [ null, %if.end15.i.out.i_crit_edge ], [ null, %do.end7.i.out.i_crit_edge ]
  %local_node.0.i = phi ptr [ null, %o2net_sc_queue_work.exit.i ], [ null, %if.end109.i.out.i_crit_edge ], [ null, %do.end100.i ], [ null, %do.body77.i ], [ %call52.i, %do.end57.i ], [ null, %if.then50.i.out.i_crit_edge ], [ null, %do.end39.i ], [ null, %if.end23.i.out.i_crit_edge ], [ null, %if.end15.i.out.i_crit_edge ], [ null, %do.end7.i.out.i_crit_edge ]
  %node.0.i = phi ptr [ %call33.i, %o2net_sc_queue_work.exit.i ], [ %call33.i, %if.end109.i.out.i_crit_edge ], [ %call33.i, %do.end100.i ], [ %call33.i, %do.body77.i ], [ %call33.i, %do.end57.i ], [ %call33.i, %if.then50.i.out.i_crit_edge ], [ null, %do.end39.i ], [ null, %if.end23.i.out.i_crit_edge ], [ null, %if.end15.i.out.i_crit_edge ], [ null, %do.end7.i.out.i_crit_edge ]
  %107 = ptrtoint ptr %new_sock.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %new_sock.i, align 4
  %tobool119.not.i = icmp eq ptr %108, null
  br i1 %tobool119.not.i, label %out.i.if.end121.i_crit_edge, label %if.then120.i

out.i.if.end121.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121.i

if.then120.i:                                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @sock_release(ptr noundef nonnull %108) #10
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.then120.i, %out.i.if.end121.i_crit_edge
  %tobool122.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool122.not.i, label %if.end121.i.if.end124.i_crit_edge, label %if.then123.i

if.end121.i.if.end124.i_crit_edge:                ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124.i

if.then123.i:                                     ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @o2nm_node_put(ptr noundef nonnull %node.0.i) #10
  br label %if.end124.i

if.end124.i:                                      ; preds = %if.then123.i, %if.end121.i.if.end124.i_crit_edge
  %tobool125.not.i = icmp eq ptr %local_node.0.i, null
  br i1 %tobool125.not.i, label %if.end124.i.if.end127.i_crit_edge, label %if.then126.i

if.end124.i.if.end127.i_crit_edge:                ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127.i

if.then126.i:                                     ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @o2nm_node_put(ptr noundef nonnull %local_node.0.i) #10
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.then126.i, %if.end124.i.if.end127.i_crit_edge
  %tobool128.not.i = icmp eq ptr %sc.0.i, null
  br i1 %tobool128.not.i, label %if.end127.i.o2net_accept_one.exit_crit_edge, label %if.then129.i

if.end127.i.o2net_accept_one.exit_crit_edge:      ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_accept_one.exit

if.then129.i:                                     ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @sc_put(ptr noundef nonnull %sc.0.i) #10
  br label %o2net_accept_one.exit

o2net_accept_one.exit:                            ; preds = %if.then129.i, %if.end127.i.o2net_accept_one.exit_crit_edge
  %and.i.i = and i32 %11, 262144
  %109 = call i32 @llvm.read_register.i32(metadata !285) #10
  %and.i.i4.i = and i32 %109, -16384
  %110 = inttoptr i32 %and.i.i4.i to ptr
  %task.i5.i = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %task.i5.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %task.i5.i, align 8
  %flags1.i6.i = getelementptr inbounds %struct.task_struct, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %flags1.i6.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %flags1.i6.i, align 4
  %and.i7.i = and i32 %114, -262145
  %or.i8.i = or i32 %and.i7.i, %and.i.i
  store i32 %or.i8.i, ptr %flags1.i6.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_sock.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sin.i) #10
  br i1 %tobool.not, label %for.end, label %if.end

if.end:                                           ; preds = %o2net_accept_one.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__might_resched(ptr noundef nonnull @.str.10, i32 noundef 1927, i32 noundef 0) #10
  %call.i = call i32 @__cond_resched() #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sin.i) #10
  %115 = call ptr @memset(ptr %sin.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_sock.i) #10
  %116 = ptrtoint ptr %new_sock.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %new_sock.i, align 4
  %117 = call i32 @llvm.read_register.i32(metadata !285) #10
  %and.i.i.i = and i32 %117, -16384
  %118 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %task.i.i, align 8
  %flags1.i.i = getelementptr inbounds %struct.task_struct, ptr %120, i32 0, i32 3
  %121 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %flags1.i.i, align 4
  %or.i.i = or i32 %122, 262144
  store i32 %or.i.i, ptr %flags1.i.i, align 4
  br label %do.end7.i

for.end:                                          ; preds = %o2net_accept_one.exit
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_create_lite(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_sock_set_nodelay(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_sock_set_user_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @o2nm_get_node_by_ip(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @o2hb_check_node_heartbeating_from_callback(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sc_alloc(ptr noundef %node) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m82 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3136, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 512) #13
  %cmp = icmp eq ptr %call7.i.i, null
  %tobool96.not = icmp eq ptr %call38.i.i.i, null
  br i1 %cmp, label %out, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  br i1 %tobool96.not, label %lor.lhs.false.if.end98_crit_edge, label %if.end

lor.lhs.false.if.end98_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.end:                                           ; preds = %lor.lhs.false
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #10
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %call7.i.i, align 8
  tail call void @o2nm_node_get(ptr noundef %node) #10
  %sc_node = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %sc_node to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %node, ptr %sc_node, align 8
  %nd_item = getelementptr inbounds %struct.o2nm_node, ptr %node, i32 0, i32 1
  %call3 = tail call i32 @o2nm_depend_item(ptr noundef %nd_item) #10
  %3 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %call3, label %do.body [
    i32 0, label %do.body19
    i32 -512, label %if.end.out.thread156_crit_edge
    i32 -4, label %if.end.out.thread156_crit_edge164
    i32 524289, label %if.end.out.thread156_crit_edge165
    i32 -28, label %if.end.out.thread156_crit_edge166
    i32 -122, label %if.end.out.thread156_crit_edge167
  ]

if.end.out.thread156_crit_edge167:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread156

if.end.out.thread156_crit_edge166:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread156

if.end.out.thread156_crit_edge165:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread156

if.end.out.thread156_crit_edge164:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread156

if.end.out.thread156_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread156

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %4 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1152921504606846977, ptr %_m, align 8
  %conv = sext i32 %call3 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.sc_alloc, i32 noundef 428, ptr noundef nonnull @.str.73, i64 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %out.thread156

out.thread156:                                    ; preds = %do.body, %if.end.out.thread156_crit_edge, %if.end.out.thread156_crit_edge164, %if.end.out.thread156_crit_edge165, %if.end.out.thread156_crit_edge166, %if.end.out.thread156_crit_edge167
  call void @o2nm_node_put(ptr noundef %node) #10
  br label %if.then97

do.body19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sc_connect_work = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %sc_connect_work, i32 noundef 0) #10
  %5 = ptrtoint ptr %sc_connect_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %sc_connect_work, align 8
  %lockdep_map = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.74, ptr noundef nonnull @sc_alloc.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry23 = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %entry23 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry23, ptr %entry23, align 4
  %prev.i = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry23, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @o2net_sc_connect_completed, ptr %func, align 4
  %sc_rx_work = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %sc_rx_work, i32 noundef 0) #10
  %9 = ptrtoint ptr %sc_rx_work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %sc_rx_work, align 4
  %lockdep_map33 = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map33, ptr noundef nonnull @.str.76, ptr noundef nonnull @sc_alloc.__key.75, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry35 = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %entry35 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry35, ptr %entry35, align 8
  %prev.i146 = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i146 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry35, ptr %prev.i146, align 4
  %func37 = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %func37 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @o2net_rx_until_empty, ptr %func37, align 8
  %sc_shutdown_work = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %sc_shutdown_work, i32 noundef 0) #10
  %13 = ptrtoint ptr %sc_shutdown_work to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %sc_shutdown_work, align 4
  %lockdep_map46 = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map46, ptr noundef nonnull @.str.78, ptr noundef nonnull @sc_alloc.__key.77, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry48 = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %entry48 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry48, ptr %entry48, align 8
  %prev.i147 = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 5, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i147 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry48, ptr %prev.i147, align 4
  %func50 = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 5, i32 2
  %16 = ptrtoint ptr %func50 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @o2net_shutdown_sc, ptr %func50, align 8
  %sc_keepalive_work = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %sc_keepalive_work, i32 noundef 0) #10
  %17 = ptrtoint ptr %sc_keepalive_work to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -64, ptr %sc_keepalive_work, align 8
  %lockdep_map62 = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map62, ptr noundef nonnull @.str.80, ptr noundef nonnull @sc_alloc.__key.79, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry65 = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 1
  %18 = ptrtoint ptr %entry65 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %entry65, ptr %entry65, align 4
  %prev.i148 = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i148 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %entry65, ptr %prev.i148, align 8
  %func68 = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 2
  %20 = ptrtoint ptr %func68 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @o2net_sc_send_keep_req, ptr %func68, align 4
  %timer = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 7, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.82, ptr noundef nonnull @sc_alloc.__key.81) #10
  %sc_idle_timeout = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 6
  tail call void @init_timer_key(ptr noundef %sc_idle_timeout, ptr noundef nonnull @o2net_idle_timer, i32 noundef 0, ptr noundef nonnull @.str.84, ptr noundef nonnull @sc_alloc.__key.83) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m82) #10
  %21 = ptrtoint ptr %_m82 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 5, ptr %_m82, align 8
  %call.i.i.i.i149 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i.i, i32 noundef 4) #10
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %call7.i.i, align 8
  %sc_sock = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %sc_sock to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sc_sock, align 4
  %26 = ptrtoint ptr %sc_node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sc_node, align 8
  %nd_num = getelementptr inbounds %struct.o2nm_node, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %nd_num to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nd_num, align 1
  %conv89 = zext i8 %29 to i32
  %sc_page = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 9
  %30 = ptrtoint ptr %sc_page to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sc_page, align 8
  %sc_page_off = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 10
  %32 = ptrtoint ptr %sc_page_off to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sc_page_off, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m82, ptr noundef nonnull @__func__.sc_alloc, i32 noundef 439, ptr noundef nonnull @.str.85, ptr noundef nonnull %call7.i.i, i32 noundef %23, ptr noundef %25, i32 noundef %conv89, ptr noundef %31, i32 noundef %33) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m82) #10
  %34 = ptrtoint ptr %sc_page to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call38.i.i.i, ptr %sc_page, align 8
  call void @o2net_debug_add_sc(ptr noundef nonnull %call7.i.i) #10
  br label %if.end98

out:                                              ; preds = %entry
  br i1 %tobool96.not, label %out.if.end98_crit_edge, label %out.if.then97_crit_edge

out.if.then97_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then97

out.if.end98_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then97:                                        ; preds = %out.if.then97_crit_edge, %out.thread156
  call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #10
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %out.if.end98_crit_edge, %do.body19, %lor.lhs.false.if.end98_crit_edge
  %sc.0155 = phi ptr [ %call7.i.i, %if.then97 ], [ null, %out.if.end98_crit_edge ], [ null, %do.body19 ], [ %call7.i.i, %lor.lhs.false.if.end98_crit_edge ]
  %ret.0154 = phi ptr [ null, %if.then97 ], [ null, %out.if.end98_crit_edge ], [ %call7.i.i, %do.body19 ], [ null, %lor.lhs.false.if.end98_crit_edge ]
  call void @kfree(ptr noundef %sc.0155) #10
  ret ptr %ret.0154
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @o2net_register_callbacks(ptr noundef %sk, ptr noundef %sc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock) #10
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 77
  %0 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_data_ready, align 8
  %cmp = icmp eq ptr %1, @o2net_listen_data_ready
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %2 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_user_data, align 4
  %4 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %sk_data_ready, align 8
  store ptr null, ptr %sk_user_data, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %sk_user_data3 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %5 = ptrtoint ptr %sk_user_data3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk_user_data3, align 4
  %cmp4.not = icmp eq ptr %6, null
  br i1 %cmp4.not, label %do.end11, label %do.body7, !prof !298

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 656, 0\0A.popsection", ""() #10, !srcloc !322
  unreachable

do.end11:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %sk_user_data3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sc, ptr %sk_user_data3, align 4
  tail call fastcc void @sc_get(ptr noundef %sc)
  %8 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk_data_ready, align 8
  %sc_data_ready = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 12
  %10 = ptrtoint ptr %sc_data_ready to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %sc_data_ready, align 4
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %11 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk_state_change, align 4
  %sc_state_change = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 11
  %13 = ptrtoint ptr %sc_state_change to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %sc_state_change, align 8
  store ptr @o2net_data_ready, ptr %sk_data_ready, align 8
  store ptr @o2net_state_change, ptr %sk_state_change, align 4
  %sc_send_lock = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 28
  tail call void @__mutex_init(ptr noundef %sc_send_lock, ptr noundef nonnull @.str.111, ptr noundef nonnull @o2net_register_callbacks.__key) #10
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @o2net_sendpage(ptr noundef %sc, ptr noundef %kmalloced_virt, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m19 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_node = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 2
  %0 = ptrtoint ptr %sc_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_node, align 8
  %nd_num = getelementptr inbounds %struct.o2nm_node, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %nd_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nd_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.i = icmp eq i8 %3, -1
  br i1 %cmp.i, label %do.body3.i, label %o2net_nn_from_num.exit, !prof !300

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 278, 0\0A.popsection", ""() #10, !srcloc !304
  unreachable

o2net_nn_from_num.exit:                           ; preds = %entry
  %conv.i = zext i8 %3 to i32
  %arrayidx.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i
  %sc_send_lock = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 28
  %sc_sock = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 1
  %4 = ptrtoint ptr %kmalloced_virt to i32
  %sub = add i32 %4, 1073741824
  %shr = lshr i32 %sub, 12
  %and = and i32 %4, 4095
  br label %while.cond

while.cond:                                       ; preds = %do.body, %o2net_nn_from_num.exit
  call void @mutex_lock_nested(ptr noundef %sc_send_lock, i32 noundef 0) #10
  %5 = ptrtoint ptr %sc_sock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sc_sock, align 4
  %ops = getelementptr inbounds %struct.socket, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %sendpage = getelementptr inbounds %struct.proto_ops, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %sendpage to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sendpage, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %11 = load ptr, ptr @mem_map, align 4
  %add.ptr = getelementptr %struct.page, ptr %11, i32 %shr
  %call3 = call i32 %10(ptr noundef %6, ptr noundef %add.ptr, i32 noundef %and, i32 noundef %size, i32 noundef 64) #10
  call void @mutex_unlock(ptr noundef %sc_send_lock) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %size)
  %cmp = icmp eq i32 %call3, %size
  br i1 %cmp, label %while.cond.while.end_crit_edge, label %if.end

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end:                                           ; preds = %while.cond
  %cmp5 = icmp eq i32 %call3, -11
  br i1 %cmp5, label %do.body, label %do.body18

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %12 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1, ptr %_m, align 8
  %13 = ptrtoint ptr %sc_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sc_node, align 8
  %nd_name = getelementptr inbounds %struct.o2nm_node, ptr %14, i32 0, i32 2
  %nd_num11 = getelementptr inbounds %struct.o2nm_node, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %nd_num11 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nd_num11, align 1
  %conv = zext i8 %16 to i32
  %nd_ipv4_address = getelementptr inbounds %struct.o2nm_node, ptr %14, i32 0, i32 4
  %nd_ipv4_port = getelementptr inbounds %struct.o2nm_node, ptr %14, i32 0, i32 5
  %17 = ptrtoint ptr %nd_ipv4_port to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %nd_ipv4_port, align 4
  %conv14 = zext i16 %18 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.o2net_sendpage, i32 noundef 947, ptr noundef nonnull @.str.115, i32 noundef %size, ptr noundef %nd_name, i32 noundef %conv, ptr noundef %nd_ipv4_address, i32 noundef %conv14) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  call void @__might_resched(ptr noundef nonnull @.str.10, i32 noundef 948, i32 noundef 0) #10
  %call.i = call i32 @__cond_resched() #10
  br label %while.cond

do.body18:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m19) #10
  %19 = ptrtoint ptr %_m19 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 1152921504606846977, ptr %_m19, align 8
  %20 = ptrtoint ptr %sc_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sc_node, align 8
  %nd_name24 = getelementptr inbounds %struct.o2nm_node, ptr %21, i32 0, i32 2
  %nd_num27 = getelementptr inbounds %struct.o2nm_node, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %nd_num27 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %nd_num27, align 1
  %conv28 = zext i8 %23 to i32
  %nd_ipv4_address30 = getelementptr inbounds %struct.o2nm_node, ptr %21, i32 0, i32 4
  %nd_ipv4_port32 = getelementptr inbounds %struct.o2nm_node, ptr %21, i32 0, i32 5
  %24 = ptrtoint ptr %nd_ipv4_port32 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %nd_ipv4_port32, align 4
  %conv33 = zext i16 %25 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m19, ptr noundef nonnull @__func__.o2net_sendpage, i32 noundef 952, ptr noundef nonnull @.str.116, i32 noundef %size, ptr noundef %nd_name24, i32 noundef %conv28, ptr noundef %nd_ipv4_address30, i32 noundef %conv33, i32 noundef %call3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m19) #10
  call void @_raw_spin_lock(ptr noundef %arrayidx.i) #10
  %nn_sc.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i, i32 1
  %26 = ptrtoint ptr %nn_sc.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nn_sc.i, align 4
  %cmp.i56 = icmp eq ptr %27, %sc
  br i1 %cmp.i56, label %if.then.i, label %do.body18.o2net_ensure_shutdown.exit_crit_edge

do.body18.o2net_ensure_shutdown.exit_crit_edge:   ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_ensure_shutdown.exit

if.then.i:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @o2net_set_nn_state(ptr noundef %arrayidx.i, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  br label %o2net_ensure_shutdown.exit

o2net_ensure_shutdown.exit:                       ; preds = %if.then.i, %do.body18.o2net_ensure_shutdown.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i) #10
  br label %while.end

while.end:                                        ; preds = %o2net_ensure_shutdown.exit, %while.cond.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2nm_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @o2nm_depend_item(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @o2net_sc_connect_completed(ptr noundef %work) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 3, ptr %_m, align 8
  %1 = load ptr, ptr @o2net_hand, align 4
  %connector_id = getelementptr inbounds %struct.o2net_handshake, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %connector_id to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %connector_id, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.o2net_sc_connect_completed, i32 noundef 1464, ptr noundef nonnull @.str.87, i64 noundef 11, i64 noundef %3) #10
  %add.ptr = getelementptr i8, ptr %work, i32 -56
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @o2hb_dead_threshold to i32))
  %4 = load i32, ptr @o2hb_dead_threshold, align 4
  %5 = mul i32 %4, 2000
  %mul.i = add i32 %5, -2000
  %6 = load ptr, ptr @o2net_hand, align 4
  %o2hb_heartbeat_timeout_ms.i = getelementptr inbounds %struct.o2net_handshake, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %o2hb_heartbeat_timeout_ms.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul.i, ptr %o2hb_heartbeat_timeout_ms.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @o2nm_single_cluster to i32))
  %8 = load ptr, ptr @o2nm_single_cluster, align 4
  %cl_idle_timeout_ms.i.i = getelementptr inbounds %struct.o2nm_cluster, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %cl_idle_timeout_ms.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cl_idle_timeout_ms.i.i, align 4
  %o2net_idle_timeout_ms.i = getelementptr inbounds %struct.o2net_handshake, ptr %6, i32 0, i32 3
  %11 = ptrtoint ptr %o2net_idle_timeout_ms.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %o2net_idle_timeout_ms.i, align 4
  %cl_keepalive_delay_ms.i.i = getelementptr inbounds %struct.o2nm_cluster, ptr %8, i32 0, i32 7
  %12 = ptrtoint ptr %cl_keepalive_delay_ms.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cl_keepalive_delay_ms.i.i, align 4
  %o2net_keepalive_delay_ms.i = getelementptr inbounds %struct.o2net_handshake, ptr %6, i32 0, i32 4
  %14 = ptrtoint ptr %o2net_keepalive_delay_ms.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %o2net_keepalive_delay_ms.i, align 8
  %cl_reconnect_delay_ms.i.i = getelementptr inbounds %struct.o2nm_cluster, ptr %8, i32 0, i32 8
  %15 = ptrtoint ptr %cl_reconnect_delay_ms.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cl_reconnect_delay_ms.i.i, align 4
  %o2net_reconnect_delay_ms.i = getelementptr inbounds %struct.o2net_handshake, ptr %6, i32 0, i32 5
  %17 = ptrtoint ptr %o2net_reconnect_delay_ms.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %o2net_reconnect_delay_ms.i, align 4
  call fastcc void @o2net_sendpage(ptr noundef %add.ptr, ptr noundef %6, i32 noundef 32)
  call fastcc void @sc_put(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @o2net_rx_until_empty(ptr noundef %work) #0 align 64 {
entry:
  %vec.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  %msg.i.i.i.i = alloca %struct.msghdr, align 8
  %_m.i.i.i.i = alloca i64, align 8
  %_m12.i.i.i.i = alloca i64, align 8
  %vec.i.i.i = alloca %struct.kvec, align 4
  %_m.i.i.i = alloca i64, align 8
  %msg_type.addr.i.i.i.i.i = alloca i32, align 4
  %key.addr.i.i.i.i.i = alloca i32, align 4
  %ret_data.i.i = alloca ptr, align 4
  %_m.i.i = alloca i64, align 8
  %_m17.i.i = alloca i64, align 8
  %_m43.i.i = alloca i64, align 8
  %_m71.i.i = alloca i64, align 8
  %vec.i235.i = alloca %struct.kvec, align 4
  %msg.i236.i = alloca %struct.msghdr, align 8
  %vec.i.i = alloca %struct.kvec, align 4
  %msg.i.i = alloca %struct.msghdr, align 8
  %_m.i = alloca i64, align 8
  %_m89.i = alloca i64, align 8
  %_m149.i = alloca i64, align 8
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -12
  %sc_sock.i = getelementptr i8, ptr %work, i32 -8
  %sc_node.i = getelementptr i8, ptr %work, i32 -4
  %sc_page.i = getelementptr i8, ptr %work, i32 284
  %sc_page_off.i = getelementptr i8, ptr %work, i32 288
  %sc_tv_advance_start.i.i = getelementptr i8, ptr %work, i32 332
  %sc_handshake_ok.i = getelementptr i8, ptr %work, i32 280
  %0 = getelementptr inbounds %struct.kvec, ptr %vec.i.i, i32 0, i32 1
  %1 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.44, %union.anon.45 }, %union.anon.47, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg.i.i, i32 0, i32 7
  %msg_iter.i.i = getelementptr inbounds %struct.msghdr, ptr %msg.i.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.kvec, ptr %vec.i235.i, i32 0, i32 1
  %3 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.44, %union.anon.45 }, %union.anon.47, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg.i236.i, i32 0, i32 7
  %msg_iter.i237.i = getelementptr inbounds %struct.msghdr, ptr %msg.i236.i, i32 0, i32 2
  %pprev.i.i.i.i.i = getelementptr i8, ptr %work, i32 136
  %sc_tv_func_start.i.i.i = getelementptr i8, ptr %work, i32 348
  %sc_msg_key.i.i = getelementptr i8, ptr %work, i32 300
  %sc_msg_type.i.i = getelementptr i8, ptr %work, i32 304
  %sc_tv_func_stop.i.i.i = getelementptr i8, ptr %work, i32 356
  %sc_tv_process_total.i.i.i = getelementptr i8, ptr %work, i32 396
  %sc_recv_count.i.i.i = getelementptr i8, ptr %work, i32 392
  %sc_send_lock.i.i = getelementptr i8, ptr %work, i32 404
  %4 = getelementptr inbounds %struct.kvec, ptr %vec.i.i.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.kvec, ptr %vec.i, i32 0, i32 1
  %6 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.44, %union.anon.45 }, %union.anon.47, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg.i, i32 0, i32 7
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 2
  %sc_tv_advance_stop.i.i = getelementptr i8, ptr %work, i32 340
  br label %do.body

do.body:                                          ; preds = %o2net_advance_rx.exit.do.body_crit_edge, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %7 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 5, ptr %_m.i, align 8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef 4) #10
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %add.ptr, align 4
  %10 = ptrtoint ptr %sc_sock.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sc_sock.i, align 4
  %12 = ptrtoint ptr %sc_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sc_node.i, align 8
  %nd_num.i = getelementptr inbounds %struct.o2nm_node, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %nd_num.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %nd_num.i, align 1
  %conv.i = zext i8 %15 to i32
  %16 = ptrtoint ptr %sc_page.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sc_page.i, align 8
  %18 = ptrtoint ptr %sc_page_off.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sc_page_off.i, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.o2net_advance_rx, i32 noundef 1338, ptr noundef nonnull @.str.89, ptr noundef %add.ptr, i32 noundef %9, ptr noundef %11, i32 noundef %conv.i, ptr noundef %17, i32 noundef %19) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  %call.i.i = call i64 @ktime_get() #10
  %20 = ptrtoint ptr %sc_tv_advance_start.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %call.i.i, ptr %sc_tv_advance_start.i.i, align 8
  %21 = ptrtoint ptr %sc_handshake_ok.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i = load i8, ptr %sc_handshake_ok.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %cmp.i = icmp sgt i8 %bf.load.i, -1
  %22 = ptrtoint ptr %sc_page_off.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sc_page_off.i, align 4
  br i1 %cmp.i, label %if.then7.i, label %if.end44.i, !prof !300

if.then7.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %23)
  %cmp9.i = icmp ult i32 %23, 32
  br i1 %cmp9.i, label %if.then11.i, label %if.then7.i.if.end23.i_crit_edge

if.then7.i.if.end23.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.then11.i:                                      ; preds = %if.then7.i
  %24 = ptrtoint ptr %sc_page.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sc_page.i, align 8
  %call13.i = call ptr @page_address(ptr noundef %25) #10
  %26 = ptrtoint ptr %sc_page_off.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sc_page_off.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call13.i, i32 %27
  %sub.i = sub i32 32, %27
  %28 = ptrtoint ptr %sc_sock.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sc_sock.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vec.i) #10
  %30 = ptrtoint ptr %vec.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i, ptr %vec.i, align 4
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.i, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #10
  %32 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 64, ptr %6, align 4
  call void @iov_iter_kvec(ptr noundef %msg_iter.i, i32 noundef 0, ptr noundef nonnull %vec.i, i32 noundef 1, i32 noundef %sub.i) #10
  %call.i42 = call i32 @sock_recvmsg(ptr noundef %29, ptr noundef nonnull %msg.i, i32 noundef 64) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vec.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %cmp18.i = icmp sgt i32 %call.i42, 0
  %34 = ptrtoint ptr %sc_page_off.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sc_page_off.i, align 4
  br i1 %cmp18.i, label %if.then20.i, label %if.then11.i.if.end23.i_crit_edge

if.then11.i.if.end23.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add i32 %35, %call.i42
  %36 = ptrtoint ptr %sc_page_off.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add.i, ptr %sc_page_off.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.then11.i.if.end23.i_crit_edge, %if.then7.i.if.end23.i_crit_edge
  %37 = phi i32 [ %add.i, %if.then20.i ], [ %23, %if.then7.i.if.end23.i_crit_edge ], [ %35, %if.then11.i.if.end23.i_crit_edge ]
  %ret.0.i = phi i32 [ %call.i42, %if.then20.i ], [ 0, %if.then7.i.if.end23.i_crit_edge ], [ %call.i42, %if.then11.i.if.end23.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %37)
  %cmp25.i = icmp eq i32 %37, 32
  br i1 %cmp25.i, label %if.then27.i, label %if.end23.i.o2net_advance_rx.exit_crit_edge

if.end23.i.o2net_advance_rx.exit_crit_edge:       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_advance_rx.exit

if.then27.i:                                      ; preds = %if.end23.i
  %38 = ptrtoint ptr %sc_page.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sc_page.i, align 8
  %call.i = call ptr @page_address(ptr noundef %39) #10
  %40 = ptrtoint ptr %sc_node.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sc_node.i, align 8
  %nd_num.i33 = getelementptr inbounds %struct.o2nm_node, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %nd_num.i33 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %nd_num.i33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %43)
  %cmp.i.i34 = icmp eq i8 %43, -1
  br i1 %cmp.i.i34, label %do.body3.i.i, label %o2net_nn_from_num.exit.i, !prof !300

do.body3.i.i:                                     ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 278, 0\0A.popsection", ""() #10, !srcloc !304
  unreachable

o2net_nn_from_num.exit.i:                         ; preds = %if.then27.i
  %conv.i.i35 = zext i8 %43 to i32
  %arrayidx.i.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i.i35
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %call.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 11, i64 %45)
  %cmp.not.i = icmp eq i64 %45, 11
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %o2net_nn_from_num.exit.i
  %nd_name.i = getelementptr inbounds %struct.o2nm_node, ptr %41, i32 0, i32 2
  %nd_ipv4_address.i = getelementptr inbounds %struct.o2nm_node, ptr %41, i32 0, i32 4
  %nd_ipv4_port.i = getelementptr inbounds %struct.o2nm_node, ptr %41, i32 0, i32 5
  %46 = ptrtoint ptr %nd_ipv4_port.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %nd_ipv4_port.i, align 4
  %conv7.i = zext i16 %47 to i32
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %nd_name.i, i32 noundef %conv.i.i35, ptr noundef %nd_ipv4_address.i, i32 noundef %conv7.i, i64 noundef %45, i64 noundef 11) #16
  call void @_raw_spin_lock(ptr noundef %arrayidx.i.i) #10
  %nn_sc.i.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i.i35, i32 1
  %48 = ptrtoint ptr %nn_sc.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %nn_sc.i.i, align 4
  %cmp.i1.i = icmp eq ptr %49, %add.ptr
  br i1 %cmp.i1.i, label %if.then.i.i, label %do.end.i.o2net_ensure_shutdown.exit.i_crit_edge

do.end.i.o2net_ensure_shutdown.exit.i_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_ensure_shutdown.exit.i

if.then.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @o2net_set_nn_state(ptr noundef %arrayidx.i.i, ptr noundef null, i32 noundef 0, i32 noundef -107) #10
  br label %o2net_ensure_shutdown.exit.i

o2net_ensure_shutdown.exit.i:                     ; preds = %if.then.i.i, %do.end.i.o2net_ensure_shutdown.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i) #10
  br label %o2net_check_handshake.exit

if.end.i:                                         ; preds = %o2net_nn_from_num.exit.i
  %o2net_idle_timeout_ms.i = getelementptr inbounds %struct.o2net_handshake, ptr %call.i, i32 0, i32 3
  %50 = ptrtoint ptr %o2net_idle_timeout_ms.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %o2net_idle_timeout_ms.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @o2nm_single_cluster to i32))
  %52 = load ptr, ptr @o2nm_single_cluster, align 4
  %cl_idle_timeout_ms.i.i = getelementptr inbounds %struct.o2nm_cluster, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %cl_idle_timeout_ms.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cl_idle_timeout_ms.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %54)
  %cmp11.not.i = icmp eq i32 %51, %54
  br i1 %cmp11.not.i, label %if.end32.i, label %do.end16.i

do.end16.i:                                       ; preds = %if.end.i
  %nd_name19.i = getelementptr inbounds %struct.o2nm_node, ptr %41, i32 0, i32 2
  %nd_ipv4_address25.i = getelementptr inbounds %struct.o2nm_node, ptr %41, i32 0, i32 4
  %nd_ipv4_port27.i = getelementptr inbounds %struct.o2nm_node, ptr %41, i32 0, i32 5
  %55 = ptrtoint ptr %nd_ipv4_port27.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %nd_ipv4_port27.i, align 4
  %conv28.i = zext i16 %56 to i32
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %nd_name19.i, i32 noundef %conv.i.i35, ptr noundef %nd_ipv4_address25.i, i32 noundef %conv28.i, i32 noundef %51, i32 noundef %54) #16
  call void @_raw_spin_lock(ptr noundef %arrayidx.i.i) #10
  %nn_sc.i3.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i.i35, i32 1
  %57 = ptrtoint ptr %nn_sc.i3.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %nn_sc.i3.i, align 4
  %cmp.i4.i = icmp eq ptr %58, %add.ptr
  br i1 %cmp.i4.i, label %if.then.i5.i, label %do.end16.i.o2net_ensure_shutdown.exit6.i_crit_edge

do.end16.i.o2net_ensure_shutdown.exit6.i_crit_edge: ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_ensure_shutdown.exit6.i

if.then.i5.i:                                     ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @o2net_set_nn_state(ptr noundef %arrayidx.i.i, ptr noundef null, i32 noundef 0, i32 noundef -107) #10
  br label %o2net_ensure_shutdown.exit6.i

o2net_ensure_shutdown.exit6.i:                    ; preds = %if.then.i5.i, %do.end16.i.o2net_ensure_shutdown.exit6.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i) #10
  br label %o2net_check_handshake.exit

if.end32.i:                                       ; preds = %if.end.i
  %o2net_keepalive_delay_ms.i = getelementptr inbounds %struct.o2net_handshake, ptr %call.i, i32 0, i32 4
  %59 = ptrtoint ptr %o2net_keepalive_delay_ms.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %o2net_keepalive_delay_ms.i, align 8
  %cl_keepalive_delay_ms.i.i = getelementptr inbounds %struct.o2nm_cluster, ptr %52, i32 0, i32 7
  %61 = ptrtoint ptr %cl_keepalive_delay_ms.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cl_keepalive_delay_ms.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp34.not.i = icmp eq i32 %60, %62
  br i1 %cmp34.not.i, label %if.end55.i, label %do.end39.i

do.end39.i:                                       ; preds = %if.end32.i
  %nd_name42.i = getelementptr inbounds %struct.o2nm_node, ptr %41, i32 0, i32 2
  %nd_ipv4_address48.i = getelementptr inbounds %struct.o2nm_node, ptr %41, i32 0, i32 4
  %nd_ipv4_port50.i = getelementptr inbounds %struct.o2nm_node, ptr %41, i32 0, i32 5
  %63 = ptrtoint ptr %nd_ipv4_port50.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %nd_ipv4_port50.i, align 4
  %conv51.i = zext i16 %64 to i32
  %call54.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %nd_name42.i, i32 noundef %conv.i.i35, ptr noundef %nd_ipv4_address48.i, i32 noundef %conv51.i, i32 noundef %60, i32 noundef %62) #16
  call void @_raw_spin_lock(ptr noundef %arrayidx.i.i) #10
  %nn_sc.i8.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i.i35, i32 1
  %65 = ptrtoint ptr %nn_sc.i8.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %nn_sc.i8.i, align 4
  %cmp.i9.i = icmp eq ptr %66, %add.ptr
  br i1 %cmp.i9.i, label %if.then.i10.i, label %do.end39.i.o2net_ensure_shutdown.exit11.i_crit_edge

do.end39.i.o2net_ensure_shutdown.exit11.i_crit_edge: ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_ensure_shutdown.exit11.i

if.then.i10.i:                                    ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @o2net_set_nn_state(ptr noundef %arrayidx.i.i, ptr noundef null, i32 noundef 0, i32 noundef -107) #10
  br label %o2net_ensure_shutdown.exit11.i

o2net_ensure_shutdown.exit11.i:                   ; preds = %if.then.i10.i, %do.end39.i.o2net_ensure_shutdown.exit11.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i) #10
  br label %o2net_check_handshake.exit

if.end55.i:                                       ; preds = %if.end32.i
  %o2hb_heartbeat_timeout_ms.i = getelementptr inbounds %struct.o2net_handshake, ptr %call.i, i32 0, i32 2
  %67 = ptrtoint ptr %o2hb_heartbeat_timeout_ms.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %o2hb_heartbeat_timeout_ms.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @o2hb_dead_threshold to i32))
  %69 = load i32, ptr @o2hb_dead_threshold, align 4
  %70 = mul i32 %69, 2000
  %mul.i = add i32 %70, -2000
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %mul.i)
  %cmp56.not.i = icmp eq i32 %68, %mul.i
  br i1 %cmp56.not.i, label %if.end78.i, label %do.end61.i

do.end61.i:                                       ; preds = %if.end55.i
  %nd_name64.i = getelementptr inbounds %struct.o2nm_node, ptr %41, i32 0, i32 2
  %nd_ipv4_address70.i = getelementptr inbounds %struct.o2nm_node, ptr %41, i32 0, i32 4
  %nd_ipv4_port72.i = getelementptr inbounds %struct.o2nm_node, ptr %41, i32 0, i32 5
  %71 = ptrtoint ptr %nd_ipv4_port72.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %nd_ipv4_port72.i, align 4
  %conv73.i = zext i16 %72 to i32
  %call77.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %nd_name64.i, i32 noundef %conv.i.i35, ptr noundef %nd_ipv4_address70.i, i32 noundef %conv73.i, i32 noundef %68, i32 noundef %mul.i) #16
  call void @_raw_spin_lock(ptr noundef %arrayidx.i.i) #10
  %nn_sc.i12.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i.i35, i32 1
  %73 = ptrtoint ptr %nn_sc.i12.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %nn_sc.i12.i, align 4
  %cmp.i13.i = icmp eq ptr %74, %add.ptr
  br i1 %cmp.i13.i, label %if.then.i14.i, label %do.end61.i.o2net_ensure_shutdown.exit15.i_crit_edge

do.end61.i.o2net_ensure_shutdown.exit15.i_crit_edge: ; preds = %do.end61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_ensure_shutdown.exit15.i

if.then.i14.i:                                    ; preds = %do.end61.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @o2net_set_nn_state(ptr noundef %arrayidx.i.i, ptr noundef null, i32 noundef 0, i32 noundef -107) #10
  br label %o2net_ensure_shutdown.exit15.i

o2net_ensure_shutdown.exit15.i:                   ; preds = %if.then.i14.i, %do.end61.i.o2net_ensure_shutdown.exit15.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i) #10
  br label %o2net_check_handshake.exit

if.end78.i:                                       ; preds = %if.end55.i
  %75 = ptrtoint ptr %sc_handshake_ok.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load.i37 = load i8, ptr %sc_handshake_ok.i, align 4
  %bf.set.i = or i8 %bf.load.i37, -128
  store i8 %bf.set.i, ptr %sc_handshake_ok.i, align 4
  call void @_raw_spin_lock(ptr noundef %arrayidx.i.i) #10
  %nn_sc.i38 = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i.i35, i32 1
  %76 = ptrtoint ptr %nn_sc.i38 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %nn_sc.i38, align 4
  %cmp79.i = icmp eq ptr %77, %add.ptr
  br i1 %cmp79.i, label %if.then81.i, label %if.end78.i.if.end82.i_crit_edge

if.end78.i.if.end82.i_crit_edge:                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82.i

if.then81.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @o2net_sc_reset_idle_timer(ptr noundef %add.ptr) #10
  %nn_timeout.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i.i35, i32 4
  %call.i.i.i39 = call zeroext i1 @__kasan_check_write(ptr noundef %nn_timeout.i, i32 noundef 4) #10
  %78 = ptrtoint ptr %nn_timeout.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile i32 0, ptr %nn_timeout.i, align 4
  call fastcc void @o2net_set_nn_state(ptr noundef %arrayidx.i.i, ptr noundef %add.ptr, i32 noundef 1, i32 noundef 0) #10
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then81.i, %if.end78.i.if.end82.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i) #10
  %79 = ptrtoint ptr %sc_page_off.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sc_page_off.i, align 4
  %sub84.i = add i32 %80, -32
  store i32 %sub84.i, ptr %sc_page_off.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub84.i)
  %tobool.not.i = icmp eq i32 %sub84.i, 0
  br i1 %tobool.not.i, label %if.end82.i.o2net_check_handshake.exit_crit_edge, label %if.then86.i

if.end82.i.o2net_check_handshake.exit_crit_edge:  ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_check_handshake.exit

if.then86.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i41 = getelementptr %struct.o2net_handshake, ptr %call.i, i32 1
  %81 = call ptr @memmove(ptr %call.i, ptr %add.ptr.i41, i32 %sub84.i)
  br label %o2net_check_handshake.exit

o2net_check_handshake.exit:                       ; preds = %if.then86.i, %if.end82.i.o2net_check_handshake.exit_crit_edge, %o2net_ensure_shutdown.exit15.i, %o2net_ensure_shutdown.exit11.i, %o2net_ensure_shutdown.exit6.i, %o2net_ensure_shutdown.exit.i
  %82 = ptrtoint ptr %sc_handshake_ok.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load30.i = load i8, ptr %sc_handshake_ok.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load30.i)
  %cmp33.i = icmp sgt i8 %bf.load30.i, -1
  br i1 %cmp33.i, label %if.then41.i, label %o2net_check_handshake.exit.o2net_advance_rx.exit_crit_edge, !prof !300

o2net_check_handshake.exit.o2net_advance_rx.exit_crit_edge: ; preds = %o2net_check_handshake.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_advance_rx.exit

if.then41.i:                                      ; preds = %o2net_check_handshake.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_advance_rx.exit

if.end44.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %23)
  %cmp46.i = icmp ult i32 %23, 24
  br i1 %cmp46.i, label %if.then48.i, label %if.end44.i.if.end84.i_crit_edge

if.end44.i.if.end84.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84.i

if.then48.i:                                      ; preds = %if.end44.i
  %83 = ptrtoint ptr %sc_page.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sc_page.i, align 8
  %call50.i = call ptr @page_address(ptr noundef %84) #10
  %85 = ptrtoint ptr %sc_page_off.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sc_page_off.i, align 4
  %add.ptr52.i = getelementptr i8, ptr %call50.i, i32 %86
  %sub54.i = sub i32 24, %86
  %87 = ptrtoint ptr %sc_sock.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sc_sock.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vec.i.i) #10
  %89 = ptrtoint ptr %vec.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %add.ptr52.i, ptr %vec.i.i, align 4
  %90 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %sub54.i, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #10
  %91 = call ptr @memset(ptr %msg.i.i, i32 0, i32 56)
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 64, ptr %1, align 4
  call void @iov_iter_kvec(ptr noundef %msg_iter.i.i, i32 noundef 0, ptr noundef nonnull %vec.i.i, i32 noundef 1, i32 noundef %sub54.i) #10
  %call.i234.i = call i32 @sock_recvmsg(ptr noundef %88, ptr noundef nonnull %msg.i.i, i32 noundef 64) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vec.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234.i)
  %cmp57.i = icmp sgt i32 %call.i234.i, 0
  br i1 %cmp57.i, label %if.then59.i, label %if.then48.i.o2net_advance_rx.exit_crit_edge

if.then48.i.o2net_advance_rx.exit_crit_edge:      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_advance_rx.exit

if.then59.i:                                      ; preds = %if.then48.i
  %93 = ptrtoint ptr %sc_page_off.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sc_page_off.i, align 4
  %add61.i = add i32 %94, %call.i234.i
  store i32 %add61.i, ptr %sc_page_off.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %add61.i)
  %cmp63.i = icmp eq i32 %add61.i, 24
  br i1 %cmp63.i, label %if.then65.i, label %if.then59.i.if.end79.i_crit_edge

if.then59.i.if.end79.i_crit_edge:                 ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79.i

if.then65.i:                                      ; preds = %if.then59.i
  %95 = ptrtoint ptr %sc_page.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %sc_page.i, align 8
  %call67.i = call ptr @page_address(ptr noundef %96) #10
  %data_len.i = getelementptr inbounds %struct.o2net_msg, ptr %call67.i, i32 0, i32 1
  %97 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %data_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4072, i16 %98)
  %cmp69.i = icmp ugt i16 %98, 4072
  br i1 %cmp69.i, label %if.then65.i.o2net_advance_rx.exit_crit_edge, label %if.end79thread-pre-split.i

if.then65.i.o2net_advance_rx.exit_crit_edge:      ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_advance_rx.exit

if.end79thread-pre-split.i:                       ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %sc_page_off.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pr244.i = load i32, ptr %sc_page_off.i, align 4
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.end79thread-pre-split.i, %if.then59.i.if.end79.i_crit_edge
  %100 = phi i32 [ %.pr244.i, %if.end79thread-pre-split.i ], [ %add61.i, %if.then59.i.if.end79.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %100)
  %cmp81.i = icmp ult i32 %100, 24
  br i1 %cmp81.i, label %if.end79.i.o2net_advance_rx.exit_crit_edge, label %if.end79.i.if.end84.i_crit_edge

if.end79.i.if.end84.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84.i

if.end79.i.o2net_advance_rx.exit_crit_edge:       ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_advance_rx.exit

if.end84.i:                                       ; preds = %if.end79.i.if.end84.i_crit_edge, %if.end44.i.if.end84.i_crit_edge
  %ret.2247.i = phi i32 [ %call.i234.i, %if.end79.i.if.end84.i_crit_edge ], [ 0, %if.end44.i.if.end84.i_crit_edge ]
  %101 = ptrtoint ptr %sc_page.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sc_page.i, align 8
  %call86.i = call ptr @page_address(ptr noundef %102) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m89.i) #10
  %103 = ptrtoint ptr %_m89.i to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 3, ptr %_m89.i, align 8
  %104 = ptrtoint ptr %call86.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %call86.i, align 4
  %conv93.i = zext i16 %105 to i32
  %data_len94.i = getelementptr inbounds %struct.o2net_msg, ptr %call86.i, i32 0, i32 1
  %106 = ptrtoint ptr %data_len94.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %data_len94.i, align 2
  %conv95.i = zext i16 %107 to i32
  %msg_type.i = getelementptr inbounds %struct.o2net_msg, ptr %call86.i, i32 0, i32 2
  %108 = ptrtoint ptr %msg_type.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %msg_type.i, align 4
  %conv96.i = zext i16 %109 to i32
  %status.i = getelementptr inbounds %struct.o2net_msg, ptr %call86.i, i32 0, i32 5
  %110 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %status.i, align 4
  %sys_status.i = getelementptr inbounds %struct.o2net_msg, ptr %call86.i, i32 0, i32 4
  %112 = ptrtoint ptr %sys_status.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %sys_status.i, align 4
  %key.i = getelementptr inbounds %struct.o2net_msg, ptr %call86.i, i32 0, i32 6
  %114 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %key.i, align 4
  %msg_num.i = getelementptr inbounds %struct.o2net_msg, ptr %call86.i, i32 0, i32 7
  %116 = ptrtoint ptr %msg_num.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %msg_num.i, align 4
  %118 = ptrtoint ptr %sc_page_off.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %sc_page_off.i, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m89.i, ptr noundef nonnull @__func__.o2net_advance_rx, i32 noundef 1387, ptr noundef nonnull @.str.90, i32 noundef %conv93.i, i32 noundef %conv95.i, i32 noundef %conv96.i, i32 noundef %111, i32 noundef %113, i32 noundef %115, i32 noundef %117, i32 noundef %119) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m89.i) #10
  %120 = ptrtoint ptr %sc_page_off.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %sc_page_off.i, align 4
  %sub104.i = add i32 %121, -24
  %122 = ptrtoint ptr %data_len94.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %data_len94.i, align 2
  %conv106.i = zext i16 %123 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub104.i, i32 %conv106.i)
  %cmp107.i = icmp ult i32 %sub104.i, %conv106.i
  br i1 %cmp107.i, label %if.then109.i, label %if.end84.i.if.end131.i_crit_edge

if.end84.i.if.end131.i_crit_edge:                 ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131.i

if.then109.i:                                     ; preds = %if.end84.i
  %124 = ptrtoint ptr %sc_page.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %sc_page.i, align 8
  %call111.i = call ptr @page_address(ptr noundef %125) #10
  %126 = ptrtoint ptr %sc_page_off.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %sc_page_off.i, align 4
  %add.ptr113.i = getelementptr i8, ptr %call111.i, i32 %127
  %128 = ptrtoint ptr %data_len94.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %data_len94.i, align 2
  %conv115.i = zext i16 %129 to i32
  %add116.i = sub i32 24, %127
  %sub118.i = add i32 %add116.i, %conv115.i
  %130 = ptrtoint ptr %sc_sock.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %sc_sock.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vec.i235.i) #10
  %132 = ptrtoint ptr %vec.i235.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %add.ptr113.i, ptr %vec.i235.i, align 4
  %133 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %sub118.i, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i236.i) #10
  %134 = call ptr @memset(ptr %msg.i236.i, i32 0, i32 56)
  %135 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 64, ptr %3, align 4
  call void @iov_iter_kvec(ptr noundef %msg_iter.i237.i, i32 noundef 0, ptr noundef nonnull %vec.i235.i, i32 noundef 1, i32 noundef %sub118.i) #10
  %call.i238.i = call i32 @sock_recvmsg(ptr noundef %131, ptr noundef nonnull %msg.i236.i, i32 noundef 64) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i236.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vec.i235.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238.i)
  %cmp121.i = icmp sgt i32 %call.i238.i, 0
  br i1 %cmp121.i, label %if.end126.i, label %if.then109.i.o2net_advance_rx.exit_crit_edge

if.then109.i.o2net_advance_rx.exit_crit_edge:     ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_advance_rx.exit

if.end126.i:                                      ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #12
  %136 = ptrtoint ptr %sc_page_off.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %sc_page_off.i, align 4
  %add125.i = add i32 %137, %call.i238.i
  store i32 %add125.i, ptr %sc_page_off.i, align 4
  br label %if.end131.i

if.end131.i:                                      ; preds = %if.end126.i, %if.end84.i.if.end131.i_crit_edge
  %ret.3.i = phi i32 [ %call.i238.i, %if.end126.i ], [ %ret.2247.i, %if.end84.i.if.end131.i_crit_edge ]
  %138 = ptrtoint ptr %sc_page_off.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %sc_page_off.i, align 4
  %sub133.i = add i32 %139, -24
  %140 = ptrtoint ptr %data_len94.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %data_len94.i, align 2
  %conv135.i = zext i16 %141 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub133.i, i32 %conv135.i)
  %cmp136.i = icmp eq i32 %sub133.i, %conv135.i
  br i1 %cmp136.i, label %if.then138.i, label %if.end131.i.o2net_advance_rx.exit_crit_edge

if.end131.i.o2net_advance_rx.exit_crit_edge:      ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_advance_rx.exit

if.then138.i:                                     ; preds = %if.end131.i
  %142 = ptrtoint ptr %sc_node.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %sc_node.i, align 8
  %nd_num.i.i = getelementptr inbounds %struct.o2nm_node, ptr %143, i32 0, i32 3
  %144 = ptrtoint ptr %nd_num.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %nd_num.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %145)
  %cmp.i.i.i = icmp eq i8 %145, -1
  br i1 %cmp.i.i.i, label %do.body3.i.i.i, label %o2net_nn_from_num.exit.i.i, !prof !300

do.body3.i.i.i:                                   ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 278, 0\0A.popsection", ""() #10, !srcloc !304
  unreachable

o2net_nn_from_num.exit.i.i:                       ; preds = %if.then138.i
  %conv.i.i.i = zext i8 %145 to i32
  %arrayidx.i.i.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret_data.i.i) #10
  %146 = ptrtoint ptr %ret_data.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %ret_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i) #10
  %147 = ptrtoint ptr %_m.i.i to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 3, ptr %_m.i.i, align 8
  %148 = ptrtoint ptr %call86.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %call86.i, align 4
  %conv.i.i = zext i16 %149 to i32
  %150 = ptrtoint ptr %data_len94.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %data_len94.i, align 2
  %conv2.i.i = zext i16 %151 to i32
  %152 = ptrtoint ptr %msg_type.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %msg_type.i, align 4
  %conv3.i.i = zext i16 %153 to i32
  %154 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %status.i, align 4
  %156 = ptrtoint ptr %sys_status.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %sys_status.i, align 4
  %158 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %key.i, align 4
  %160 = ptrtoint ptr %msg_num.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %msg_num.i, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i, ptr noundef nonnull @__func__.o2net_process_message, i32 noundef 1175, ptr noundef nonnull @.str.103, i32 noundef %conv.i.i, i32 noundef %conv2.i.i, i32 noundef %conv3.i.i, i32 noundef %155, i32 noundef %157, i32 noundef %159, i32 noundef %161) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i) #10
  %162 = ptrtoint ptr %sc_node.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %sc_node.i, align 8
  %nd_num.i.i.i = getelementptr inbounds %struct.o2nm_node, ptr %163, i32 0, i32 3
  %164 = ptrtoint ptr %nd_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %nd_num.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %165)
  %cmp.i.i.i.i = icmp eq i8 %165, -1
  br i1 %cmp.i.i.i.i, label %do.body3.i.i.i.i, label %o2net_nn_from_num.exit.i.i.i, !prof !300

do.body3.i.i.i.i:                                 ; preds = %o2net_nn_from_num.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 278, 0\0A.popsection", ""() #10, !srcloc !304
  unreachable

o2net_nn_from_num.exit.i.i.i:                     ; preds = %o2net_nn_from_num.exit.i.i
  %conv.i.i.i.i = zext i8 %165 to i32
  %nn_timeout.i.i.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i.i.i.i, i32 4
  %call.i.i.i.i239.i = call zeroext i1 @__kasan_check_read(ptr noundef %nn_timeout.i.i.i, i32 noundef 4) #10
  %166 = ptrtoint ptr %nn_timeout.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load volatile i32, ptr %nn_timeout.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool.not.i.i.i = icmp eq i32 %167, 0
  br i1 %tobool.not.i.i.i, label %o2net_nn_from_num.exit.i.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

o2net_nn_from_num.exit.i.i.i.if.end.i.i.i_crit_edge: ; preds = %o2net_nn_from_num.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %o2net_nn_from_num.exit.i.i.i
  %arrayidx.i.i.i.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i.i.i.i
  %cmp.i15.i.i.i = icmp eq ptr %arrayidx.i.i.i.i, null
  br i1 %cmp.i15.i.i.i, label %do.body2.i.i.i.i, label %o2net_num_from_nn.exit.i.i.i, !prof !300

do.body2.i.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 284, 0\0A.popsection", ""() #10, !srcloc !313
  unreachable

o2net_num_from_nn.exit.i.i.i:                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @o2quo_conn_up(i8 noundef zeroext %165) #10
  %nn_still_up.i.i.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i.i.i.i, i32 11
  %call3.i.i.i = call zeroext i1 @cancel_delayed_work(ptr noundef %nn_still_up.i.i.i) #10
  %call.i.i14.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nn_timeout.i.i.i, i32 noundef 4) #10
  %168 = ptrtoint ptr %nn_timeout.i.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store volatile i32 0, ptr %nn_timeout.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %o2net_num_from_nn.exit.i.i.i, %o2net_nn_from_num.exit.i.i.i.if.end.i.i.i_crit_edge
  %169 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.i.not.i.i.i = icmp eq ptr %170, null
  br i1 %tobool.not.i.i.not.i.i.i, label %if.end.i.i.i.o2net_sc_postpone_idle.exit.i.i_crit_edge, label %if.then7.i.i.i

if.end.i.i.i.o2net_sc_postpone_idle.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_sc_postpone_idle.exit.i.i

if.then7.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @o2net_sc_reset_idle_timer(ptr noundef %add.ptr) #10
  br label %o2net_sc_postpone_idle.exit.i.i

o2net_sc_postpone_idle.exit.i.i:                  ; preds = %if.then7.i.i.i, %if.end.i.i.i.o2net_sc_postpone_idle.exit.i.i_crit_edge
  %171 = ptrtoint ptr %call86.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %call86.i, align 4
  %173 = zext i16 %172 to i64
  call void @__sanitizer_cov_trace_switch(i64 %173, ptr @__sancov_gen_cov_switch_values.126)
  switch i16 %172, label %o2net_process_message.exit.thread251.i [
    i16 -1450, label %sw.bb.i.i
    i16 -1449, label %sw.bb12.i.i
    i16 -1448, label %o2net_sc_postpone_idle.exit.i.i.o2net_process_message.exit.thread.i_crit_edge
    i16 -1451, label %sw.epilog.i.i
  ]

o2net_sc_postpone_idle.exit.i.i.o2net_process_message.exit.thread.i_crit_edge: ; preds = %o2net_sc_postpone_idle.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_process_message.exit.thread.i

sw.bb.i.i:                                        ; preds = %o2net_sc_postpone_idle.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %174 = ptrtoint ptr %msg_num.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %msg_num.i, align 4
  %conv9.i.i = zext i32 %175 to i64
  %176 = ptrtoint ptr %sys_status.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %sys_status.i, align 4
  %178 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %status.i, align 4
  call fastcc void @o2net_complete_nsw(ptr noundef %arrayidx.i.i.i, ptr noundef null, i64 noundef %conv9.i.i, i32 noundef %177, i32 noundef %179) #10
  br label %o2net_process_message.exit.thread.i

sw.bb12.i.i:                                      ; preds = %o2net_sc_postpone_idle.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %180 = load ptr, ptr @o2net_keep_resp, align 4
  call fastcc void @o2net_sendpage(ptr noundef %add.ptr, ptr noundef %180, i32 noundef 24) #10
  br label %o2net_process_message.exit.thread.i

o2net_process_message.exit.thread251.i:           ; preds = %o2net_sc_postpone_idle.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m17.i.i) #10
  %181 = ptrtoint ptr %_m17.i.i to i32
  call void @__asan_store8_noabort(i32 %181)
  store i64 3, ptr %_m17.i.i, align 8
  %conv22.i.i = zext i16 %172 to i32
  %182 = ptrtoint ptr %data_len94.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %data_len94.i, align 2
  %conv24.i.i = zext i16 %183 to i32
  %184 = ptrtoint ptr %msg_type.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %msg_type.i, align 4
  %conv26.i.i = zext i16 %185 to i32
  %186 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %status.i, align 4
  %188 = ptrtoint ptr %sys_status.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %sys_status.i, align 4
  %190 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %key.i, align 4
  %192 = ptrtoint ptr %msg_num.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %msg_num.i, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m17.i.i, ptr noundef nonnull @__func__.o2net_process_message, i32 noundef 1196, ptr noundef nonnull @.str.104, i32 noundef %conv22.i.i, i32 noundef %conv24.i.i, i32 noundef %conv26.i.i, i32 noundef %187, i32 noundef %189, i32 noundef %191, i32 noundef %193) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m17.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret_data.i.i) #10
  br label %268

sw.epilog.i.i:                                    ; preds = %o2net_sc_postpone_idle.exit.i.i
  %194 = ptrtoint ptr %msg_type.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %msg_type.i, align 4
  %conv37.i.i = zext i16 %195 to i32
  %196 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %key.i, align 4
  call void @_raw_read_lock(ptr noundef nonnull @o2net_handler_lock) #10
  %198 = load ptr, ptr @o2net_handler_tree, align 4
  %tobool.not21.i.i.i.i = icmp eq ptr %198, null
  br i1 %tobool.not21.i.i.i.i, label %sw.epilog.i.i.do.body42.i.i_crit_edge, label %sw.epilog.i.i.while.body.i.i.i.i_crit_edge

sw.epilog.i.i.while.body.i.i.i.i_crit_edge:       ; preds = %sw.epilog.i.i
  br label %while.body.i.i.i.i

sw.epilog.i.i.do.body42.i.i_crit_edge:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body42.i.i

while.body.i.i.i.i:                               ; preds = %if.end5.i.i.i.i.while.body.i.i.i.i_crit_edge, %sw.epilog.i.i.while.body.i.i.i.i_crit_edge
  %199 = phi ptr [ %207, %if.end5.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ %198, %sw.epilog.i.i.while.body.i.i.i.i_crit_edge ]
  %p.022.i.i.i.i = phi ptr [ %p.1.i.i.i.i, %if.end5.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ @o2net_handler_tree, %sw.epilog.i.i.while.body.i.i.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg_type.addr.i.i.i.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.addr.i.i.i.i.i) #10
  %200 = ptrtoint ptr %msg_type.addr.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %conv37.i.i, ptr %msg_type.addr.i.i.i.i.i, align 4
  %201 = ptrtoint ptr %key.addr.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %197, ptr %key.addr.i.i.i.i.i, align 4
  %nh_key.i.i.i.i.i = getelementptr inbounds %struct.o2net_msg_handler, ptr %199, i32 0, i32 3
  %call.i.i.i159.i.i = call i32 @memcmp(ptr noundef dereferenceable(4) %nh_key.i.i.i.i.i, ptr noundef nonnull dereferenceable(4) %key.addr.i.i.i.i.i, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i159.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %call.i.i.i159.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %while.body.i.i.i.i.o2net_handler_cmp.exit.i.i.i.i_crit_edge

while.body.i.i.i.i.o2net_handler_cmp.exit.i.i.i.i_crit_edge: ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_handler_cmp.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %nh_msg_type.i.i.i.i.i = getelementptr inbounds %struct.o2net_msg_handler, ptr %199, i32 0, i32 2
  %call1.i.i.i.i.i = call i32 @memcmp(ptr noundef dereferenceable(4) %nh_msg_type.i.i.i.i.i, ptr noundef nonnull dereferenceable(4) %msg_type.addr.i.i.i.i.i, i32 noundef 4) #14
  br label %o2net_handler_cmp.exit.i.i.i.i

o2net_handler_cmp.exit.i.i.i.i:                   ; preds = %if.then.i.i.i.i.i, %while.body.i.i.i.i.o2net_handler_cmp.exit.i.i.i.i_crit_edge
  %ret.0.i.i.i.i.i = phi i32 [ %call1.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %call.i.i.i159.i.i, %while.body.i.i.i.i.o2net_handler_cmp.exit.i.i.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_type.addr.i.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.addr.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i.i.i.i)
  %cmp1.i.i.i.i = icmp slt i32 %ret.0.i.i.i.i.i, 0
  br i1 %cmp1.i.i.i.i, label %if.then.i.i.i.i, label %if.else.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %o2net_handler_cmp.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %202 = ptrtoint ptr %p.022.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %p.022.i.i.i.i, align 4
  %rb_left.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %203, i32 0, i32 2
  br label %if.end5.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %o2net_handler_cmp.exit.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i.i.i.i)
  %cmp2.not.i.i.i.i = icmp eq i32 %ret.0.i.i.i.i.i, 0
  br i1 %cmp2.not.i.i.i.i, label %if.then.i160.i.i, label %if.then3.i.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %204 = ptrtoint ptr %p.022.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %p.022.i.i.i.i, align 4
  %rb_right.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %205, i32 0, i32 1
  br label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then3.i.i.i.i, %if.then.i.i.i.i
  %p.1.i.i.i.i = phi ptr [ %rb_left.i.i.i.i, %if.then.i.i.i.i ], [ %rb_right.i.i.i.i, %if.then3.i.i.i.i ]
  %206 = ptrtoint ptr %p.1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %p.1.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %207, null
  br i1 %tobool.not.i.i.i.i, label %if.end5.i.i.i.i.do.body42.i.i_crit_edge, label %if.end5.i.i.i.i.while.body.i.i.i.i_crit_edge

if.end5.i.i.i.i.while.body.i.i.i.i_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i.i

if.end5.i.i.i.i.do.body42.i.i_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body42.i.i

if.then.i160.i.i:                                 ; preds = %if.else.i.i.i.i
  %nh_kref.i.i.i = getelementptr inbounds %struct.o2net_msg_handler, ptr %199, i32 0, i32 7
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nh_kref.i.i.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %nh_kref.i.i.i, i32 1, i32 3, i32 1) #10
  %208 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nh_kref.i.i.i, ptr %nh_kref.i.i.i, i32 1, ptr elementtype(i32) %nh_kref.i.i.i) #10, !srcloc !302
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %208, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.then.i160.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !300

if.then.i160.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i160.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.then.i160.i.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %209 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %209)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %209, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.if.end53.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !298

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.if.end53.i.i_crit_edge:     ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.i.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.then.i160.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.then.i160.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %nh_kref.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #10
  br label %if.end53.i.i

do.body42.i.i:                                    ; preds = %if.end5.i.i.i.i.do.body42.i.i_crit_edge, %sw.epilog.i.i.do.body42.i.i_crit_edge
  call void @_raw_read_unlock(ptr noundef nonnull @o2net_handler_lock) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m43.i.i) #10
  %210 = ptrtoint ptr %_m43.i.i to i32
  call void @__asan_store8_noabort(i32 %210)
  store i64 1, ptr %_m43.i.i, align 8
  %211 = ptrtoint ptr %msg_type.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %msg_type.i, align 4
  %conv48.i.i = zext i16 %212 to i32
  %213 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %key.i, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m43.i.i, ptr noundef nonnull @__func__.o2net_process_message, i32 noundef 1207, ptr noundef nonnull @.str.105, i32 noundef %conv48.i.i, i32 noundef %214) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m43.i.i) #10
  br label %out_respond.i.i

if.end53.i.i:                                     ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.if.end53.i.i_crit_edge
  call void @_raw_read_unlock(ptr noundef nonnull @o2net_handler_lock) #10
  %215 = ptrtoint ptr %data_len94.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %data_len94.i, align 2
  %conv55.i.i = zext i16 %216 to i32
  %nh_max_len.i.i = getelementptr inbounds %struct.o2net_msg_handler, ptr %199, i32 0, i32 1
  %217 = ptrtoint ptr %nh_max_len.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %nh_max_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %218, i32 %conv55.i.i)
  %cmp.i.i = icmp ult i32 %218, %conv55.i.i
  br i1 %cmp.i.i, label %if.end53.i.i.out_respond.i.i_crit_edge, label %if.end62.i.i

if.end53.i.i.out_respond.i.i_crit_edge:           ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_respond.i.i

if.end62.i.i:                                     ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call i64 @ktime_get() #10
  %219 = ptrtoint ptr %sc_tv_func_start.i.i.i to i32
  call void @__asan_store8_noabort(i32 %219)
  store i64 %call.i.i.i, ptr %sc_tv_func_start.i.i.i, align 8
  %220 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %key.i, align 4
  %222 = ptrtoint ptr %sc_msg_key.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %sc_msg_key.i.i, align 8
  %223 = ptrtoint ptr %msg_type.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %msg_type.i, align 4
  %225 = ptrtoint ptr %sc_msg_type.i.i to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 %224, ptr %sc_msg_type.i.i, align 4
  %nh_func.i.i = getelementptr inbounds %struct.o2net_msg_handler, ptr %199, i32 0, i32 4
  %226 = ptrtoint ptr %nh_func.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %nh_func.i.i, align 4
  %228 = ptrtoint ptr %data_len94.i to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %data_len94.i, align 2
  %conv66.i.i = zext i16 %229 to i32
  %add.i.i = add nuw nsw i32 %conv66.i.i, 24
  %nh_func_data.i.i = getelementptr inbounds %struct.o2net_msg_handler, ptr %199, i32 0, i32 5
  %230 = ptrtoint ptr %nh_func_data.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %nh_func_data.i.i, align 4
  %call67.i.i = call i32 %227(ptr noundef %call86.i, i32 noundef %add.i.i, ptr noundef %231, ptr noundef nonnull %ret_data.i.i) #10
  %call.i162.i.i = call i64 @ktime_get() #10
  %232 = ptrtoint ptr %sc_tv_func_stop.i.i.i to i32
  call void @__asan_store8_noabort(i32 %232)
  store i64 %call.i162.i.i, ptr %sc_tv_func_stop.i.i.i, align 8
  %233 = ptrtoint ptr %sc_tv_process_total.i.i.i to i32
  call void @__asan_load8_noabort(i32 %233)
  %234 = load i64, ptr %sc_tv_process_total.i.i.i, align 8
  %235 = ptrtoint ptr %sc_tv_func_start.i.i.i to i32
  call void @__asan_load8_noabort(i32 %235)
  %236 = load i64, ptr %sc_tv_func_start.i.i.i, align 8
  %sub.i.i.i.i = add i64 %234, %call.i162.i.i
  %add.i.i.i = sub i64 %sub.i.i.i.i, %236
  store i64 %add.i.i.i, ptr %sc_tv_process_total.i.i.i, align 8
  %237 = ptrtoint ptr %sc_recv_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %sc_recv_count.i.i.i, align 4
  %inc.i.i.i = add i32 %238, 1
  store i32 %inc.i.i.i, ptr %sc_recv_count.i.i.i, align 4
  br label %out_respond.i.i

out_respond.i.i:                                  ; preds = %if.end62.i.i, %if.end53.i.i.out_respond.i.i_crit_edge, %do.body42.i.i
  %tobool40.not174.i.i = phi i1 [ false, %if.end53.i.i.out_respond.i.i_crit_edge ], [ false, %if.end62.i.i ], [ true, %do.body42.i.i ]
  %.lcssa.i5.i171.i.i = phi ptr [ %199, %if.end53.i.i.out_respond.i.i_crit_edge ], [ %199, %if.end62.i.i ], [ null, %do.body42.i.i ]
  %handler_status.0.i.i = phi i32 [ 0, %if.end53.i.i.out_respond.i.i_crit_edge ], [ %call67.i.i, %if.end62.i.i ], [ 0, %do.body42.i.i ]
  %syserr.1.i.i = phi i32 [ 2, %if.end53.i.i.out_respond.i.i_crit_edge ], [ 0, %if.end62.i.i ], [ 1, %do.body42.i.i ]
  call void @mutex_lock_nested(ptr noundef %sc_send_lock.i.i, i32 noundef 0) #10
  %239 = ptrtoint ptr %sc_sock.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %sc_sock.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vec.i.i.i) #10
  %241 = ptrtoint ptr %vec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %call86.i, ptr %vec.i.i.i, align 4
  %242 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 24, ptr %4, align 4
  %243 = ptrtoint ptr %sys_status.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %syserr.1.i.i, ptr %sys_status.i, align 4
  %244 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %handler_status.0.i.i, ptr %status.i, align 4
  %245 = ptrtoint ptr %call86.i to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 -1450, ptr %call86.i, align 4
  %246 = ptrtoint ptr %data_len94.i to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 0, ptr %data_len94.i, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i.i) #10
  %247 = ptrtoint ptr %_m.i.i.i to i32
  call void @__asan_store8_noabort(i32 %247)
  store i64 3, ptr %_m.i.i.i, align 8
  %248 = ptrtoint ptr %msg_type.i to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %msg_type.i, align 4
  %conv15.i.i.i = zext i16 %249 to i32
  %250 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %key.i, align 4
  %252 = ptrtoint ptr %msg_num.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %msg_num.i, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i.i, ptr noundef nonnull @__func__.o2net_send_status_magic, i32 noundef 1159, ptr noundef nonnull @.str.107, i32 noundef 64086, i32 noundef 0, i32 noundef %conv15.i.i.i, i32 noundef %handler_status.0.i.i, i32 noundef %syserr.1.i.i, i32 noundef %251, i32 noundef %253, i32 noundef %handler_status.0.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #10
  %254 = call ptr @memset(ptr %msg.i.i.i.i, i32 0, i32 56)
  %cmp.i.i163.i.i = icmp eq ptr %240, null
  br i1 %cmp.i.i163.i.i, label %out_respond.i.i.do.body11.i.i.i.i_crit_edge, label %if.end.i.i.i.i

out_respond.i.i.do.body11.i.i.i.i_crit_edge:      ; preds = %out_respond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %out_respond.i.i
  %call.i.i.i.i = call i32 @kernel_sendmsg(ptr noundef nonnull %240, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %vec.i.i.i, i32 noundef 1, i32 noundef 24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call.i.i.i.i)
  %cmp1.i.i164.i.i = icmp eq i32 %call.i.i.i.i, 24
  br i1 %cmp1.i.i164.i.i, label %if.end.i.i.i.i.o2net_send_status_magic.exit.i.i_crit_edge, label %do.body.i.i.i.i, !prof !298

if.end.i.i.i.i.o2net_send_status_magic.exit.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_send_status_magic.exit.i.i

do.body.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i.i.i) #10
  %255 = ptrtoint ptr %_m.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %255)
  store i64 1152921504606846977, ptr %_m.i.i.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i.i.i, ptr noundef nonnull @__func__.o2net_send_tcp_msg, i32 noundef 921, ptr noundef nonnull @.str.39, i32 noundef %call.i.i.i.i, i32 noundef 24) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %cmp8.i.i.i.i = icmp sgt i32 %call.i.i.i.i, -1
  %spec.store.select.i.i.i.i = select i1 %cmp8.i.i.i.i, i32 -32, i32 %call.i.i.i.i
  br label %do.body11.i.i.i.i

do.body11.i.i.i.i:                                ; preds = %do.body.i.i.i.i, %out_respond.i.i.do.body11.i.i.i.i_crit_edge
  %ret.0.i.i.i.i = phi i32 [ %spec.store.select.i.i.i.i, %do.body.i.i.i.i ], [ -22, %out_respond.i.i.do.body11.i.i.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m12.i.i.i.i) #10
  %256 = ptrtoint ptr %_m12.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %256)
  store i64 1, ptr %_m12.i.i.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m12.i.i.i.i, ptr noundef nonnull @__func__.o2net_send_tcp_msg, i32 noundef 925, ptr noundef nonnull @.str.40, i32 noundef %ret.0.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m12.i.i.i.i) #10
  br label %o2net_send_status_magic.exit.i.i

o2net_send_status_magic.exit.i.i:                 ; preds = %do.body11.i.i.i.i, %if.end.i.i.i.i.o2net_send_status_magic.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %ret.0.i.i.i.i, %do.body11.i.i.i.i ], [ 0, %if.end.i.i.i.i.o2net_send_status_magic.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vec.i.i.i) #10
  call void @mutex_unlock(ptr noundef %sc_send_lock.i.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m71.i.i) #10
  %257 = ptrtoint ptr %_m71.i.i to i32
  call void @__asan_store8_noabort(i32 %257)
  store i64 1, ptr %_m71.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m71.i.i, ptr noundef nonnull @__func__.o2net_process_message, i32 noundef 1238, ptr noundef nonnull @.str.106, i32 noundef %handler_status.0.i.i, i32 noundef %syserr.1.i.i, i32 noundef %retval.0.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m71.i.i) #10
  br i1 %tobool40.not174.i.i, label %o2net_send_status_magic.exit.i.i.o2net_process_message.exit.i_crit_edge, label %do.body80.i.i

o2net_send_status_magic.exit.i.i.o2net_process_message.exit.i_crit_edge: ; preds = %o2net_send_status_magic.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_process_message.exit.i

do.body80.i.i:                                    ; preds = %o2net_send_status_magic.exit.i.i
  %258 = ptrtoint ptr %ret_data.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %ret_data.i.i, align 4
  %cmp81.not.i.i = icmp eq ptr %259, null
  br i1 %cmp81.not.i.i, label %do.body80.i.i.do.end96.i.i_crit_edge, label %land.rhs.i.i

do.body80.i.i.do.end96.i.i_crit_edge:             ; preds = %do.body80.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end96.i.i

land.rhs.i.i:                                     ; preds = %do.body80.i.i
  %nh_post_func.i.i = getelementptr inbounds %struct.o2net_msg_handler, ptr %.lcssa.i5.i171.i.i, i32 0, i32 6
  %260 = ptrtoint ptr %nh_post_func.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %nh_post_func.i.i, align 4
  %cmp83.i.i = icmp eq ptr %261, null
  br i1 %cmp83.i.i, label %do.body88.i.i, label %land.rhs.i.i.do.end96.i.i_crit_edge, !prof !300

land.rhs.i.i.do.end96.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end96.i.i

do.body88.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1241, 0\0A.popsection", ""() #10, !srcloc !323
  unreachable

do.end96.i.i:                                     ; preds = %land.rhs.i.i.do.end96.i.i_crit_edge, %do.body80.i.i.do.end96.i.i_crit_edge
  %nh_post_func97.i.i = getelementptr inbounds %struct.o2net_msg_handler, ptr %.lcssa.i5.i171.i.i, i32 0, i32 6
  %262 = ptrtoint ptr %nh_post_func97.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %nh_post_func97.i.i, align 4
  %tobool98.not.i.i = icmp eq ptr %263, null
  br i1 %tobool98.not.i.i, label %do.end96.i.i.out.i.i_crit_edge, label %if.then99.i.i

do.end96.i.i.out.i.i_crit_edge:                   ; preds = %do.end96.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

if.then99.i.i:                                    ; preds = %do.end96.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %nh_func_data101.i.i = getelementptr inbounds %struct.o2net_msg_handler, ptr %.lcssa.i5.i171.i.i, i32 0, i32 5
  %264 = ptrtoint ptr %nh_func_data101.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %nh_func_data101.i.i, align 4
  call void %263(i32 noundef %handler_status.0.i.i, ptr noundef %265, ptr noundef %259) #10
  br label %out.i.i

out.i.i:                                          ; preds = %if.then99.i.i, %do.end96.i.i.out.i.i_crit_edge
  %tobool104.not.i.i = icmp eq ptr %.lcssa.i5.i171.i.i, null
  br i1 %tobool104.not.i.i, label %out.i.i.o2net_process_message.exit.i_crit_edge, label %if.then105.i.i

out.i.i.o2net_process_message.exit.i_crit_edge:   ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_process_message.exit.i

if.then105.i.i:                                   ; preds = %out.i.i
  %nh_kref.i165.i.i = getelementptr inbounds %struct.o2net_msg_handler, ptr %.lcssa.i5.i171.i.i, i32 0, i32 7
  %call.i.i.i.i.i.i.i166.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nh_kref.i165.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !296
  call void @llvm.prefetch.p0(ptr %nh_kref.i165.i.i, i32 1, i32 3, i32 1) #10
  %266 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nh_kref.i165.i.i, ptr %nh_kref.i165.i.i, i32 1, ptr elementtype(i32) %nh_kref.i165.i.i) #10, !srcloc !297
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %266, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i168.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then105.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i167.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i167.i.i, label %if.end5.i.i.i.i.i.i.i.o2net_process_message.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !298

if.end5.i.i.i.i.i.i.i.o2net_process_message.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_process_message.exit.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %nh_kref.i165.i.i, i32 noundef 3) #10
  br label %o2net_process_message.exit.i

if.then.i.i168.i.i:                               ; preds = %if.then105.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !299
  call void @kfree(ptr noundef nonnull %.lcssa.i5.i171.i.i) #10
  br label %o2net_process_message.exit.i

o2net_process_message.exit.thread.i:              ; preds = %sw.bb12.i.i, %sw.bb.i.i, %o2net_sc_postpone_idle.exit.i.i.o2net_process_message.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret_data.i.i) #10
  br label %267

o2net_process_message.exit.i:                     ; preds = %if.then.i.i168.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.o2net_process_message.exit.i_crit_edge, %out.i.i.o2net_process_message.exit.i_crit_edge, %o2net_send_status_magic.exit.i.i.o2net_process_message.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret_data.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i.i)
  %cmp140.i = icmp eq i32 %retval.0.i.i.i.i, 0
  br i1 %cmp140.i, label %o2net_process_message.exit.i._crit_edge, label %o2net_process_message.exit.i._crit_edge49

o2net_process_message.exit.i._crit_edge49:        ; preds = %o2net_process_message.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %268

o2net_process_message.exit.i._crit_edge:          ; preds = %o2net_process_message.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %267

267:                                              ; preds = %o2net_process_message.exit.i._crit_edge, %o2net_process_message.exit.thread.i
  br label %268

268:                                              ; preds = %267, %o2net_process_message.exit.i._crit_edge49, %o2net_process_message.exit.thread251.i
  %269 = phi i32 [ 1, %267 ], [ %retval.0.i.i.i.i, %o2net_process_message.exit.i._crit_edge49 ], [ -22, %o2net_process_message.exit.thread251.i ]
  %270 = ptrtoint ptr %sc_page_off.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 0, ptr %sc_page_off.i, align 4
  br label %o2net_advance_rx.exit

o2net_advance_rx.exit:                            ; preds = %268, %if.end131.i.o2net_advance_rx.exit_crit_edge, %if.then109.i.o2net_advance_rx.exit_crit_edge, %if.end79.i.o2net_advance_rx.exit_crit_edge, %if.then65.i.o2net_advance_rx.exit_crit_edge, %if.then48.i.o2net_advance_rx.exit_crit_edge, %if.then41.i, %o2net_check_handshake.exit.o2net_advance_rx.exit_crit_edge, %if.end23.i.o2net_advance_rx.exit_crit_edge
  %ret.4.i = phi i32 [ -71, %if.then41.i ], [ %ret.0.i, %o2net_check_handshake.exit.o2net_advance_rx.exit_crit_edge ], [ %ret.0.i, %if.end23.i.o2net_advance_rx.exit_crit_edge ], [ %call.i234.i, %if.end79.i.o2net_advance_rx.exit_crit_edge ], [ %269, %268 ], [ %ret.3.i, %if.end131.i.o2net_advance_rx.exit_crit_edge ], [ %call.i234.i, %if.then48.i.o2net_advance_rx.exit_crit_edge ], [ -75, %if.then65.i.o2net_advance_rx.exit_crit_edge ], [ %call.i238.i, %if.then109.i.o2net_advance_rx.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m149.i) #10
  %271 = ptrtoint ptr %_m149.i to i32
  call void @__asan_store8_noabort(i32 %271)
  store i64 5, ptr %_m149.i, align 8
  %call.i.i.i.i240.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef 4) #10
  %272 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load volatile i32, ptr %add.ptr, align 4
  %274 = ptrtoint ptr %sc_sock.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %sc_sock.i, align 4
  %276 = ptrtoint ptr %sc_node.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %sc_node.i, align 8
  %nd_num157.i = getelementptr inbounds %struct.o2nm_node, ptr %277, i32 0, i32 3
  %278 = ptrtoint ptr %nd_num157.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %nd_num157.i, align 1
  %conv158.i = zext i8 %279 to i32
  %280 = ptrtoint ptr %sc_page.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %sc_page.i, align 8
  %282 = ptrtoint ptr %sc_page_off.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %sc_page_off.i, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m149.i, ptr noundef nonnull @__func__.o2net_advance_rx, i32 noundef 1413, ptr noundef nonnull @.str.91, ptr noundef %add.ptr, i32 noundef %273, ptr noundef %275, i32 noundef %conv158.i, ptr noundef %281, i32 noundef %283, i32 noundef %ret.4.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m149.i) #10
  %call.i241.i = call i64 @ktime_get() #10
  %284 = ptrtoint ptr %sc_tv_advance_stop.i.i to i32
  call void @__asan_store8_noabort(i32 %284)
  store i64 %call.i241.i, ptr %sc_tv_advance_stop.i.i, align 8
  %cmp = icmp sgt i32 %ret.4.i, 0
  br i1 %cmp, label %o2net_advance_rx.exit.do.body_crit_edge, label %land.lhs.true

o2net_advance_rx.exit.do.body_crit_edge:          ; preds = %o2net_advance_rx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true:                                    ; preds = %o2net_advance_rx.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %ret.4.i)
  %cmp2.not = icmp eq i32 %ret.4.i, -11
  br i1 %cmp2.not, label %land.lhs.true.if.end14_crit_edge, label %if.then

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then:                                          ; preds = %land.lhs.true
  %285 = ptrtoint ptr %sc_node.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %sc_node.i, align 8
  %nd_num = getelementptr inbounds %struct.o2nm_node, ptr %286, i32 0, i32 3
  %287 = ptrtoint ptr %nd_num to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %nd_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %288)
  %cmp.i27 = icmp eq i8 %288, -1
  br i1 %cmp.i27, label %do.body3.i, label %o2net_nn_from_num.exit, !prof !300

do.body3.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 278, 0\0A.popsection", ""() #10, !srcloc !304
  unreachable

o2net_nn_from_num.exit:                           ; preds = %if.then
  %conv.i28 = zext i8 %288 to i32
  %arrayidx.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %289 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %289)
  store i64 5, ptr %_m, align 8
  %call.i.i.i.i29 = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef 4) #10
  %290 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load volatile i32, ptr %add.ptr, align 4
  %292 = ptrtoint ptr %sc_sock.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %sc_sock.i, align 4
  %294 = ptrtoint ptr %sc_node.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %sc_node.i, align 8
  %nd_num9 = getelementptr inbounds %struct.o2nm_node, ptr %295, i32 0, i32 3
  %296 = ptrtoint ptr %nd_num9 to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %nd_num9, align 1
  %conv = zext i8 %297 to i32
  %298 = ptrtoint ptr %sc_page.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %sc_page.i, align 8
  %300 = ptrtoint ptr %sc_page_off.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %sc_page_off.i, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.o2net_rx_until_empty, i32 noundef 1433, ptr noundef nonnull @.str.88, ptr noundef %add.ptr, i32 noundef %291, ptr noundef %293, i32 noundef %conv, ptr noundef %299, i32 noundef %301, i32 noundef %ret.4.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  call void @_raw_spin_lock(ptr noundef %arrayidx.i) #10
  %nn_sc.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i28, i32 1
  %302 = ptrtoint ptr %nn_sc.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %nn_sc.i, align 4
  %cmp.i30 = icmp eq ptr %303, %add.ptr
  br i1 %cmp.i30, label %if.then.i, label %o2net_nn_from_num.exit.o2net_ensure_shutdown.exit_crit_edge

o2net_nn_from_num.exit.o2net_ensure_shutdown.exit_crit_edge: ; preds = %o2net_nn_from_num.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_ensure_shutdown.exit

if.then.i:                                        ; preds = %o2net_nn_from_num.exit
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @o2net_set_nn_state(ptr noundef %arrayidx.i, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  br label %o2net_ensure_shutdown.exit

o2net_ensure_shutdown.exit:                       ; preds = %if.then.i, %o2net_nn_from_num.exit.o2net_ensure_shutdown.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i) #10
  br label %if.end14

if.end14:                                         ; preds = %o2net_ensure_shutdown.exit, %land.lhs.true.if.end14_crit_edge
  call fastcc void @sc_put(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @o2net_shutdown_sc(ptr noundef %work) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -100
  %sc_node = getelementptr i8, ptr %work, i32 -92
  %0 = ptrtoint ptr %sc_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_node, align 8
  %nd_num = getelementptr inbounds %struct.o2nm_node, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %nd_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nd_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.i = icmp eq i8 %3, -1
  br i1 %cmp.i, label %do.body3.i, label %o2net_nn_from_num.exit, !prof !300

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 278, 0\0A.popsection", ""() #10, !srcloc !304
  unreachable

o2net_nn_from_num.exit:                           ; preds = %entry
  %conv.i = zext i8 %3 to i32
  %arrayidx.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %4 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 5, ptr %_m, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef 4) #10
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %add.ptr, align 4
  %sc_sock = getelementptr i8, ptr %work, i32 -96
  %7 = ptrtoint ptr %sc_sock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sc_sock, align 4
  %9 = ptrtoint ptr %sc_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sc_node, align 8
  %nd_num4 = getelementptr inbounds %struct.o2nm_node, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %nd_num4 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %nd_num4, align 1
  %conv = zext i8 %12 to i32
  %sc_page = getelementptr i8, ptr %work, i32 196
  %13 = ptrtoint ptr %sc_page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sc_page, align 8
  %sc_page_off = getelementptr i8, ptr %work, i32 200
  %15 = ptrtoint ptr %sc_page_off to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sc_page_off, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.o2net_shutdown_sc, i32 noundef 718, ptr noundef nonnull @.str.108, ptr noundef %add.ptr, i32 noundef %6, ptr noundef %8, i32 noundef %conv, ptr noundef %14, i32 noundef %16) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %17 = ptrtoint ptr %sc_sock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sc_sock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sk, align 16
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %20, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #10
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %20, i32 0, i32 72
  %21 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sk_user_data.i, align 4
  %cmp.i30 = icmp eq ptr %22, %add.ptr
  br i1 %cmp.i30, label %if.then10, label %o2net_unregister_callbacks.exit.thread

o2net_unregister_callbacks.exit.thread:           ; preds = %o2net_nn_from_num.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #10
  br label %if.end14

if.then10:                                        ; preds = %o2net_nn_from_num.exit
  %23 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %sk_user_data.i, align 4
  %sc_data_ready.i = getelementptr i8, ptr %work, i32 208
  %24 = ptrtoint ptr %sc_data_ready.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sc_data_ready.i, align 4
  %sk_data_ready.i = getelementptr inbounds %struct.sock, ptr %20, i32 0, i32 77
  %26 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %sk_data_ready.i, align 8
  %sc_state_change.i = getelementptr i8, ptr %work, i32 204
  %27 = ptrtoint ptr %sc_state_change.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sc_state_change.i, align 8
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %20, i32 0, i32 76
  %29 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %sk_state_change.i, align 4
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #10
  %sc_idle_timeout = getelementptr i8, ptr %work, i32 44
  %call11 = call i32 @del_timer_sync(ptr noundef %sc_idle_timeout) #10
  %sc_keepalive_work = getelementptr i8, ptr %work, i32 92
  %call.i = call zeroext i1 @cancel_delayed_work(ptr noundef %sc_keepalive_work) #10
  br i1 %call.i, label %if.then.i31, label %if.then10.o2net_sc_cancel_delayed_work.exit_crit_edge

if.then10.o2net_sc_cancel_delayed_work.exit_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_sc_cancel_delayed_work.exit

if.then.i31:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @sc_put(ptr noundef %add.ptr) #10
  br label %o2net_sc_cancel_delayed_work.exit

o2net_sc_cancel_delayed_work.exit:                ; preds = %if.then.i31, %if.then10.o2net_sc_cancel_delayed_work.exit_crit_edge
  call fastcc void @sc_put(ptr noundef %add.ptr)
  %30 = ptrtoint ptr %sc_sock to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sc_sock, align 4
  %call13 = call i32 @kernel_sock_shutdown(ptr noundef %31, i32 noundef 2) #10
  br label %if.end14

if.end14:                                         ; preds = %o2net_sc_cancel_delayed_work.exit, %o2net_unregister_callbacks.exit.thread
  call void @_raw_spin_lock(ptr noundef %arrayidx.i) #10
  %nn_sc.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i, i32 1
  %32 = ptrtoint ptr %nn_sc.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nn_sc.i, align 4
  %cmp.i32 = icmp eq ptr %33, %add.ptr
  br i1 %cmp.i32, label %if.then.i33, label %if.end14.o2net_ensure_shutdown.exit_crit_edge

if.end14.o2net_ensure_shutdown.exit_crit_edge:    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_ensure_shutdown.exit

if.then.i33:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @o2net_set_nn_state(ptr noundef %arrayidx.i, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  br label %o2net_ensure_shutdown.exit

o2net_ensure_shutdown.exit:                       ; preds = %if.then.i33, %if.end14.o2net_ensure_shutdown.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i) #10
  call fastcc void @sc_put(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @o2net_sc_send_keep_req(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -192
  %0 = load ptr, ptr @o2net_keep_req, align 4
  tail call fastcc void @o2net_sendpage(ptr noundef %add.ptr, ptr noundef %0, i32 noundef 24)
  tail call fastcc void @sc_put(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @o2net_idle_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_node = getelementptr i8, ptr %t, i32 -136
  %0 = ptrtoint ptr %sc_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_node, align 8
  %nd_num = getelementptr inbounds %struct.o2nm_node, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %nd_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nd_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.i25 = icmp eq i8 %3, -1
  br i1 %cmp.i25, label %do.body3.i, label %o2net_nn_from_num.exit, !prof !300

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 278, 0\0A.popsection", ""() #10, !srcloc !304
  unreachable

o2net_nn_from_num.exit:                           ; preds = %entry
  %conv.i = zext i8 %3 to i32
  %arrayidx.i = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i
  %call1 = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call1)
  %cmp8.i.i = icmp slt i64 %call1, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %call1, i1 false) #10
  %5 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %4) #17, !srcloc !324
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %4, i64 %5, i32 0) #17, !srcloc !325
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 18
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %sc_tv_timer = getelementptr i8, ptr %t, i32 184
  %7 = ptrtoint ptr %sc_tv_timer to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %sc_tv_timer, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp8.i.i26 = icmp slt i64 %8, 0
  %9 = tail call i64 @llvm.abs.i64(i64 %8, i1 false) #10
  %10 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %9) #17, !srcloc !324
  %11 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %9, i64 %10, i32 0) #17, !srcloc !325
  %asmresult10.i.i.i27 = extractvalue { i64, i32 } %11, 0
  %div1811.i.i28 = lshr i64 %asmresult10.i.i.i27, 18
  %sub210.i.i29 = sub nsw i64 0, %div1811.i.i28
  %12 = select i1 %cmp8.i.i26, i64 %div1811.i.i28, i64 %sub210.i.i29
  %sub = add nsw i64 %12, %cond213.i.i
  %conv = trunc i64 %sub to i32
  %13 = ptrtoint ptr %sc_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sc_node, align 8
  %nd_name = getelementptr inbounds %struct.o2nm_node, ptr %14, i32 0, i32 2
  %nd_num7 = getelementptr inbounds %struct.o2nm_node, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %nd_num7 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nd_num7, align 1
  %conv8 = zext i8 %16 to i32
  %nd_ipv4_address = getelementptr inbounds %struct.o2nm_node, ptr %14, i32 0, i32 4
  %nd_ipv4_port = getelementptr inbounds %struct.o2nm_node, ptr %14, i32 0, i32 5
  %17 = ptrtoint ptr %nd_ipv4_port to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %nd_ipv4_port, align 4
  %conv11 = zext i16 %18 to i32
  %conv.frozen = freeze i32 %conv
  %div = udiv i32 %conv.frozen, 1000
  %19 = mul i32 %div, 1000
  %rem.decomposed = sub i32 %conv.frozen, %19
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %nd_name, i32 noundef %conv8, ptr noundef %nd_ipv4_address, i32 noundef %conv11, i32 noundef %div, i32 noundef %rem.decomposed) #16
  %nn_timeout = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nn_timeout, i32 noundef 4) #10
  %20 = ptrtoint ptr %nn_timeout to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %nn_timeout, align 4
  %cmp.i31 = icmp eq ptr %arrayidx.i, null
  br i1 %cmp.i31, label %do.body2.i, label %o2net_num_from_nn.exit, !prof !300

do.body2.i:                                       ; preds = %o2net_nn_from_num.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/tcp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 284, 0\0A.popsection", ""() #10, !srcloc !313
  unreachable

o2net_num_from_nn.exit:                           ; preds = %o2net_nn_from_num.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @o2quo_conn_err(i8 noundef zeroext %3) #10
  %21 = load ptr, ptr @o2net_wq, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @o2hb_dead_threshold to i32))
  %22 = load i32, ptr @o2hb_dead_threshold, align 4
  %23 = mul i32 %22, 2000
  %mul = add i32 %23, 4000
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #10
  %nn_still_up = getelementptr [255 x %struct.o2net_node], ptr @o2net_nodes, i32 0, i32 %conv.i, i32 11
  %add.ptr = getelementptr i8, ptr %t, i32 -144
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %nn_still_up, i32 noundef %call2.i) #10
  tail call fastcc void @o2net_sc_reset_idle_timer(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2net_debug_add_sc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_recvmsg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @o2net_sc_reset_idle_timer(ptr noundef %sc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_keepalive_work = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 7
  %call.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %sc_keepalive_work) #10
  br i1 %call.i, label %if.then.i20, label %entry.if.else.i_crit_edge

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i20:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @sc_put(ptr noundef %sc) #10
  br label %if.else.i

if.else.i:                                        ; preds = %if.then.i20, %entry.if.else.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @o2nm_single_cluster to i32))
  %0 = load ptr, ptr @o2nm_single_cluster, align 4
  %cl_keepalive_delay_ms.i = getelementptr inbounds %struct.o2nm_cluster, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %cl_keepalive_delay_ms.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cl_keepalive_delay_ms.i, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %2) #10
  tail call fastcc void @sc_get(ptr noundef %sc) #10
  %3 = load ptr, ptr @o2net_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %sc_keepalive_work, i32 noundef %call2.i) #10
  br i1 %call.i.i, label %if.else.i.o2net_sc_queue_delayed_work.exit_crit_edge, label %if.then.i22

if.else.i.o2net_sc_queue_delayed_work.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_sc_queue_delayed_work.exit

if.then.i22:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @sc_put(ptr noundef %sc) #10
  br label %o2net_sc_queue_delayed_work.exit

o2net_sc_queue_delayed_work.exit:                 ; preds = %if.then.i22, %if.else.i.o2net_sc_queue_delayed_work.exit_crit_edge
  %call.i24 = tail call i64 @ktime_get() #10
  %sc_tv_timer.i = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 16
  %4 = ptrtoint ptr %sc_tv_timer.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call.i24, ptr %sc_tv_timer.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @o2nm_single_cluster to i32))
  %6 = load ptr, ptr @o2nm_single_cluster, align 4
  %cl_idle_timeout_ms.i = getelementptr inbounds %struct.o2nm_cluster, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %cl_idle_timeout_ms.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cl_idle_timeout_ms.i, align 4
  %call2.i16 = tail call i32 @__msecs_to_jiffies(i32 noundef %8) #10
  %sc_idle_timeout = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 6
  %add = add i32 %call2.i16, %5
  %call5 = tail call i32 @mod_timer(ptr noundef %sc_idle_timeout, i32 noundef %add) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sock_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @o2net_data_ready(ptr noundef %sk) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock) #10
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 5, ptr %_m, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %1, i32 noundef 4) #10
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %1, align 4
  %sc_sock = getelementptr inbounds %struct.o2net_sock_container, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %sc_sock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sc_sock, align 4
  %sc_node = getelementptr inbounds %struct.o2net_sock_container, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %sc_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sc_node, align 8
  %nd_num = getelementptr inbounds %struct.o2nm_node, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %nd_num to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nd_num, align 1
  %conv = zext i8 %10 to i32
  %sc_page = getelementptr inbounds %struct.o2net_sock_container, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %sc_page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sc_page, align 8
  %sc_page_off = getelementptr inbounds %struct.o2net_sock_container, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %sc_page_off to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sc_page_off, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.o2net_data_ready, i32 noundef 591, ptr noundef nonnull @.str.112, ptr noundef nonnull %1, i32 noundef %4, ptr noundef %6, i32 noundef %conv, ptr noundef %12, i32 noundef %14) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %call.i = call i64 @ktime_get() #10
  %sc_tv_data_ready.i = getelementptr inbounds %struct.o2net_sock_container, ptr %1, i32 0, i32 17
  %15 = ptrtoint ptr %sc_tv_data_ready.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %call.i, ptr %sc_tv_data_ready.i, align 8
  %sc_rx_work = getelementptr inbounds %struct.o2net_sock_container, ptr %1, i32 0, i32 3
  call fastcc void @sc_get(ptr noundef nonnull %1) #10
  %16 = load ptr, ptr @o2net_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %sc_rx_work) #10
  br i1 %call.i.i, label %do.body.o2net_sc_queue_work.exit_crit_edge, label %if.then.i

do.body.o2net_sc_queue_work.exit_crit_edge:       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %o2net_sc_queue_work.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @sc_put(ptr noundef nonnull %1) #10
  br label %o2net_sc_queue_work.exit

o2net_sc_queue_work.exit:                         ; preds = %if.then.i, %do.body.o2net_sc_queue_work.exit_crit_edge
  %sc_data_ready = getelementptr inbounds %struct.o2net_sock_container, ptr %1, i32 0, i32 12
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 77
  br label %if.end6

if.end6:                                          ; preds = %if.else, %o2net_sc_queue_work.exit
  %ready.0.in = phi ptr [ %sc_data_ready, %o2net_sc_queue_work.exit ], [ %sk_data_ready, %if.else ]
  %17 = ptrtoint ptr %ready.0.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %ready.0 = load ptr, ptr %ready.0.in, align 4
  call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #10
  call void %ready.0(ptr noundef %sk) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @o2net_state_change(ptr noundef %sk) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock) #10
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %2 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_state_change, align 4
  br label %out

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %4 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 5, ptr %_m, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %1, i32 noundef 4) #10
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %1, align 4
  %sc_sock = getelementptr inbounds %struct.o2net_sock_container, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %sc_sock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sc_sock, align 4
  %sc_node = getelementptr inbounds %struct.o2net_sock_container, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %sc_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sc_node, align 8
  %nd_num = getelementptr inbounds %struct.o2nm_node, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %nd_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %nd_num, align 1
  %conv = zext i8 %12 to i32
  %sc_page = getelementptr inbounds %struct.o2net_sock_container, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %sc_page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sc_page, align 8
  %sc_page_off = getelementptr inbounds %struct.o2net_sock_container, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %sc_page_off to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sc_page_off, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %17 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load volatile i8, ptr %skc_state, align 2
  %conv3 = zext i8 %18 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.o2net_state_change, i32 noundef 616, ptr noundef nonnull @.str.113, ptr noundef nonnull %1, i32 noundef %6, ptr noundef %8, i32 noundef %conv, ptr noundef %14, i32 noundef %16, i32 noundef %conv3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %sc_state_change = getelementptr inbounds %struct.o2net_sock_container, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %sc_state_change to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sc_state_change, align 8
  %21 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load volatile i8, ptr %skc_state, align 2
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.127)
  switch i8 %22, label %do.end13 [
    i8 2, label %do.body.out_crit_edge
    i8 3, label %do.body.out_crit_edge48
    i8 1, label %sw.bb10
  ]

do.body.out_crit_edge48:                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

sw.bb10:                                          ; preds = %do.body
  %sc_connect_work = getelementptr inbounds %struct.o2net_sock_container, ptr %1, i32 0, i32 4
  call fastcc void @sc_get(ptr noundef nonnull %1) #10
  %24 = load ptr, ptr @o2net_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %sc_connect_work) #10
  br i1 %call.i.i, label %sw.bb10.out_crit_edge, label %if.then.i

sw.bb10.out_crit_edge:                            ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.i:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @sc_put(ptr noundef nonnull %1) #10
  br label %out

do.end13:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %sc_node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sc_node, align 8
  %nd_name = getelementptr inbounds %struct.o2nm_node, ptr %26, i32 0, i32 2
  %nd_num16 = getelementptr inbounds %struct.o2nm_node, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %nd_num16 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %nd_num16, align 1
  %conv17 = zext i8 %28 to i32
  %nd_ipv4_address = getelementptr inbounds %struct.o2nm_node, ptr %26, i32 0, i32 4
  %nd_ipv4_port = getelementptr inbounds %struct.o2nm_node, ptr %26, i32 0, i32 5
  %29 = ptrtoint ptr %nd_ipv4_port to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %nd_ipv4_port, align 4
  %conv20 = zext i16 %30 to i32
  %31 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load volatile i8, ptr %skc_state, align 2
  %conv23 = zext i8 %32 to i32
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %nd_name, i32 noundef %conv17, ptr noundef %nd_ipv4_address, i32 noundef %conv20, i32 noundef %conv23) #16
  %sc_shutdown_work = getelementptr inbounds %struct.o2net_sock_container, ptr %1, i32 0, i32 5
  call fastcc void @o2net_sc_queue_work(ptr noundef nonnull %1, ptr noundef %sc_shutdown_work)
  br label %out

out:                                              ; preds = %do.end13, %if.then.i, %sw.bb10.out_crit_edge, %do.body.out_crit_edge, %do.body.out_crit_edge48, %if.then
  %state_change.0 = phi ptr [ %3, %if.then ], [ %20, %do.end13 ], [ %20, %do.body.out_crit_edge ], [ %20, %do.body.out_crit_edge48 ], [ %20, %sw.bb10.out_crit_edge ], [ %20, %if.then.i ]
  call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #10
  call void %state_change.0(ptr noundef %sk) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2quo_hb_still_up(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !17, !19, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !49, !51, !53, !54, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !94, !96, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !114, !116, !117, !118, !120, !121, !123, !125, !126, !127, !129, !130, !131, !132, !133, !135, !137, !138, !140, !141, !143, !144, !145, !146, !148, !149, !151, !152, !153, !155, !156, !157, !159, !161, !162, !163, !164, !166, !167, !168, !170, !172, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !190, !191, !193, !194, !196, !198, !200, !201, !203, !204, !206, !207, !209, !211, !213, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !233, !235, !237, !239, !240, !242, !243, !245, !246, !247, !248, !250, !251, !253, !254, !256, !257, !259, !260, !261, !263, !264, !266, !268, !269, !271, !273, !275, !276, !277, !279, !280, !281, !282, !284}
!llvm.named.register.sp = !{!285}
!llvm.module.flags = !{!286, !287, !288, !289, !290, !291, !292, !293}
!llvm.ident = !{!294}

!0 = !{ptr @__func__.o2net_register_handler, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/cluster/tcp.c", i32 806, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ocfs2/cluster/tcp.c", i32 813, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ocfs2/cluster/tcp.c", i32 819, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ocfs2/cluster/tcp.c", i32 850, i32 3}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ocfs2/cluster/tcp.c", i32 853, i32 3}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__ksymtab_o2net_register_handler, !13, !"__ksymtab_o2net_register_handler", i1 false, i1 false}
!13 = !{!"../fs/ocfs2/cluster/tcp.c", i32 866, i32 1}
!14 = !{ptr @__func__.o2net_unregister_handler_list, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ocfs2/cluster/tcp.c", i32 874, i32 3}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__ksymtab_o2net_unregister_handler_list, !18, !"__ksymtab_o2net_unregister_handler_list", i1 false, i1 false}
!18 = !{!"../fs/ocfs2/cluster/tcp.c", i32 882, i32 1}
!19 = !{ptr @__ksymtab_o2net_fill_node_map, !20, !"__ksymtab_o2net_fill_node_map", i1 false, i1 false}
!20 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1010, i32 1}
!21 = !{ptr @__func__.o2net_send_message_vec, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1029, i32 3}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1035, i32 3}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1042, i32 3}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1056, i32 2}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1065, i32 3}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1072, i32 3}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1098, i32 2}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1100, i32 3}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1117, i32 2}
!40 = !{ptr @__ksymtab_o2net_send_message_vec, !41, !"__ksymtab_o2net_send_message_vec", i1 false, i1 false}
!41 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1128, i32 1}
!42 = !{ptr @__ksymtab_o2net_send_message, !43, !"__ksymtab_o2net_send_message", i1 false, i1 false}
!43 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1140, i32 1}
!44 = !{ptr @__func__.o2net_start_listening, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ocfs2/cluster/tcp.c", i32 2029, i32 2}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ocfs2/cluster/tcp.c", i32 2030, i32 13}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ocfs2/cluster/tcp.c", i32 2032, i32 3}
!51 = !{ptr @__func__.o2net_stop_listening, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ocfs2/cluster/tcp.c", i32 2072, i32 2}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @o2net_init.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../fs/ocfs2/cluster/tcp.c", i32 2108, i32 3}
!56 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @o2net_init.__key.21, !58, !"__key", i1 false, i1 false}
!58 = !{!"../fs/ocfs2/cluster/tcp.c", i32 2109, i32 3}
!59 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @o2net_init.__key.23, !58, !"__key", i1 false, i1 false}
!61 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @o2net_init.__key.25, !63, !"__key", i1 false, i1 false}
!63 = !{!"../fs/ocfs2/cluster/tcp.c", i32 2110, i32 3}
!64 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @o2net_init.__key.27, !63, !"__key", i1 false, i1 false}
!66 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @o2net_init.__key.29, !68, !"__key", i1 false, i1 false}
!68 = !{!"../fs/ocfs2/cluster/tcp.c", i32 2112, i32 3}
!69 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @o2net_init.__key.31, !68, !"__key", i1 false, i1 false}
!71 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @o2net_init.__key.33, !73, !"__key", i1 false, i1 false}
!73 = !{!"../fs/ocfs2/cluster/tcp.c", i32 2115, i32 3}
!74 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @o2net_listen_sock, !76, !"o2net_listen_sock", i1 false, i1 false}
!76 = !{!"../fs/ocfs2/cluster/tcp.c", i32 96, i32 23}
!77 = !{ptr @o2net_wq, !78, !"o2net_wq", i1 false, i1 false}
!78 = !{!"../fs/ocfs2/cluster/tcp.c", i32 106, i32 33}
!79 = !{ptr @o2net_hb_up, !80, !"o2net_hb_up", i1 false, i1 false}
!80 = !{!"../fs/ocfs2/cluster/tcp.c", i32 109, i32 34}
!81 = !{ptr @o2net_hb_down, !82, !"o2net_hb_down", i1 false, i1 false}
!82 = !{!"../fs/ocfs2/cluster/tcp.c", i32 109, i32 47}
!83 = !{ptr @o2net_hand, !84, !"o2net_hand", i1 false, i1 false}
!84 = !{!"../fs/ocfs2/cluster/tcp.c", i32 112, i32 32}
!85 = !{ptr @o2net_keep_req, !86, !"o2net_keep_req", i1 false, i1 false}
!86 = !{!"../fs/ocfs2/cluster/tcp.c", i32 113, i32 26}
!87 = !{ptr @o2net_keep_resp, !88, !"o2net_keep_resp", i1 false, i1 false}
!88 = !{!"../fs/ocfs2/cluster/tcp.c", i32 113, i32 43}
!89 = !{ptr @o2net_connected_peers, !90, !"o2net_connected_peers", i1 false, i1 false}
!90 = !{!"../fs/ocfs2/cluster/tcp.c", i32 479, i32 17}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/ocfs2/cluster/tcp.c", i32 90, i32 8}
!93 = !{ptr @o2net_handler_lock, !92, !"o2net_handler_lock", i1 false, i1 false}
!94 = !{ptr @o2net_handler_tree, !95, !"o2net_handler_tree", i1 false, i1 false}
!95 = !{!"../fs/ocfs2/cluster/tcp.c", i32 91, i32 23}
!96 = !{ptr @o2net_nodes, !97, !"o2net_nodes", i1 false, i1 false}
!97 = !{!"../fs/ocfs2/cluster/tcp.c", i32 93, i32 26}
!98 = !{ptr @__func__.sc_put, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/ocfs2/cluster/tcp.c", i32 402, i32 2}
!100 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @__func__.sc_kref_release, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/ocfs2/cluster/tcp.c", i32 382, i32 2}
!103 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @o2net_prep_nsw.__key, !105, !"__key", i1 false, i1 false}
!105 = !{!"../fs/ocfs2/cluster/tcp.c", i32 304, i32 2}
!106 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @__func__.o2net_send_tcp_msg, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/ocfs2/cluster/tcp.c", i32 921, i32 2}
!109 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.40, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/ocfs2/cluster/tcp.c", i32 925, i32 2}
!112 = !{ptr @o2net_sys_err_translations, !113, !"o2net_sys_err_translations", i1 false, i1 false}
!113 = !{!"../fs/ocfs2/cluster/tcp.c", i32 115, i32 12}
!114 = !{ptr @__func__.o2net_set_nn_state, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/ocfs2/cluster/tcp.c", i32 504, i32 2}
!116 = !{ptr @.str.41, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.42, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.43, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/ocfs2/cluster/tcp.c", i32 505, i32 2}
!120 = !{ptr @.str.44, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.45, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/ocfs2/cluster/tcp.c", i32 510, i32 2}
!123 = !{ptr @.str.46, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/ocfs2/cluster/tcp.c", i32 530, i32 4}
!125 = !{ptr @o2net_set_nn_state._entry, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @o2net_set_nn_state._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.48, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/ocfs2/cluster/tcp.c", i32 538, i32 3}
!129 = !{ptr @o2net_set_nn_state._entry.47, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @o2net_set_nn_state._entry_ptr.49, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.50, !128, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.51, !128, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/ocfs2/cluster/tcp.c", i32 557, i32 3}
!135 = !{ptr @__func__.o2net_complete_nodes_nsw, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/ocfs2/cluster/tcp.c", i32 360, i32 2}
!137 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @__func__.sc_get, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/ocfs2/cluster/tcp.c", i32 407, i32 2}
!140 = !{ptr @.str.54, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.55, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1979, i32 3}
!143 = !{ptr @.str.56, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @o2net_open_listening_sock._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @o2net_open_listening_sock._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @o2net_open_listening_sock.__key, !147, !"__key", i1 false, i1 false}
!147 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1991, i32 2}
!148 = !{ptr @.str.57, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1996, i32 3}
!151 = !{ptr @o2net_open_listening_sock._entry.58, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @o2net_open_listening_sock._entry_ptr.60, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.62, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/ocfs2/cluster/tcp.c", i32 2003, i32 3}
!155 = !{ptr @o2net_open_listening_sock._entry.61, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @o2net_open_listening_sock._entry_ptr.63, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @o2net_listen_work, !158, !"o2net_listen_work", i1 false, i1 false}
!158 = !{!"../fs/ocfs2/cluster/tcp.c", i32 107, i32 27}
!159 = !{ptr @.str.64, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1816, i32 3}
!161 = !{ptr @.str.65, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @o2net_accept_one._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @o2net_accept_one._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.67, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1826, i32 4}
!166 = !{ptr @o2net_accept_one._entry.66, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @o2net_accept_one._entry_ptr.68, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.69, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1842, i32 3}
!170 = !{ptr @.str.71, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1859, i32 3}
!172 = !{ptr @o2net_accept_one._entry.70, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @o2net_accept_one._entry_ptr.72, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @__func__.sc_alloc, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/ocfs2/cluster/tcp.c", i32 428, i32 3}
!176 = !{ptr @.str.73, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @sc_alloc.__key, !178, !"__key", i1 false, i1 false}
!178 = !{!"../fs/ocfs2/cluster/tcp.c", i32 432, i32 2}
!179 = !{ptr @.str.74, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @sc_alloc.__key.75, !181, !"__key", i1 false, i1 false}
!181 = !{!"../fs/ocfs2/cluster/tcp.c", i32 433, i32 2}
!182 = !{ptr @.str.76, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @sc_alloc.__key.77, !184, !"__key", i1 false, i1 false}
!184 = !{!"../fs/ocfs2/cluster/tcp.c", i32 434, i32 2}
!185 = !{ptr @.str.78, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @sc_alloc.__key.79, !187, !"__key", i1 false, i1 false}
!187 = !{!"../fs/ocfs2/cluster/tcp.c", i32 435, i32 2}
!188 = !{ptr @.str.80, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @sc_alloc.__key.81, !187, !"__key", i1 false, i1 false}
!190 = !{ptr @.str.82, !187, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @sc_alloc.__key.83, !192, !"__key", i1 false, i1 false}
!192 = !{!"../fs/ocfs2/cluster/tcp.c", i32 437, i32 2}
!193 = !{ptr @.str.84, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.85, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../fs/ocfs2/cluster/tcp.c", i32 439, i32 2}
!196 = distinct !{null, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!198 = !{ptr @__func__.o2net_sc_connect_completed, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1462, i32 2}
!200 = !{ptr @.str.87, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @__func__.o2net_rx_until_empty, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1433, i32 3}
!203 = !{ptr @.str.88, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @__func__.o2net_advance_rx, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1338, i32 2}
!206 = !{ptr @.str.89, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.90, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1387, i32 2}
!209 = !{ptr @.str.91, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1413, i32 2}
!211 = !{ptr @.str.92, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1259, i32 3}
!213 = !{ptr @.str.93, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @o2net_check_handshake._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @o2net_check_handshake._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.95, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1277, i32 3}
!218 = !{ptr @o2net_check_handshake._entry.94, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @o2net_check_handshake._entry_ptr.96, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.98, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1288, i32 3}
!222 = !{ptr @o2net_check_handshake._entry.97, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @o2net_check_handshake._entry_ptr.99, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.101, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1299, i32 3}
!226 = !{ptr @o2net_check_handshake._entry.100, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @o2net_check_handshake._entry_ptr.102, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @__func__.o2net_process_message, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1175, i32 2}
!230 = !{ptr @.str.103, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.104, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1196, i32 4}
!233 = !{ptr @.str.105, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1206, i32 3}
!235 = !{ptr @.str.106, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1237, i32 2}
!237 = !{ptr @__func__.o2net_send_status_magic, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1159, i32 2}
!239 = !{ptr @.str.107, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @__func__.o2net_shutdown_sc, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../fs/ocfs2/cluster/tcp.c", i32 718, i32 2}
!242 = !{ptr @.str.108, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.109, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1496, i32 2}
!245 = !{ptr @.str.110, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @o2net_idle_timer._entry, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @o2net_idle_timer._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @o2net_register_callbacks.__key, !249, !"__key", i1 false, i1 false}
!249 = !{!"../fs/ocfs2/cluster/tcp.c", i32 665, i32 2}
!250 = !{ptr @.str.111, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @__func__.o2net_data_ready, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../fs/ocfs2/cluster/tcp.c", i32 591, i32 3}
!253 = !{ptr @.str.112, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @__func__.o2net_state_change, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../fs/ocfs2/cluster/tcp.c", i32 616, i32 2}
!256 = !{ptr @.str.113, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.114, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../fs/ocfs2/cluster/tcp.c", i32 629, i32 3}
!259 = !{ptr @o2net_state_change._entry, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @o2net_state_change._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @__func__.o2net_sendpage, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../fs/ocfs2/cluster/tcp.c", i32 946, i32 4}
!263 = !{ptr @.str.115, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.116, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../fs/ocfs2/cluster/tcp.c", i32 951, i32 3}
!266 = !{ptr @__func__.o2net_start_connect, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1594, i32 3}
!268 = !{ptr @.str.117, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.118, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1601, i32 3}
!271 = !{ptr @.str.119, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1615, i32 3}
!273 = !{ptr @.str.120, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1643, i32 3}
!275 = !{ptr @o2net_start_connect._entry, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @o2net_start_connect._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.121, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../fs/ocfs2/cluster/tcp.c", i32 1667, i32 3}
!279 = !{ptr @.str.122, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @o2net_connect_expired._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @o2net_connect_expired._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @xa_init_flags.__key, !283, !"__key", i1 false, i1 false}
!283 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!284 = !{ptr @.str.123, !283, !"<string literal>", i1 false, i1 false}
!285 = !{!"sp"}
!286 = !{i32 1, !"wchar_size", i32 2}
!287 = !{i32 1, !"min_enum_size", i32 4}
!288 = !{i32 8, !"branch-target-enforcement", i32 0}
!289 = !{i32 8, !"sign-return-address", i32 0}
!290 = !{i32 8, !"sign-return-address-all", i32 0}
!291 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!292 = !{i32 7, !"uwtable", i32 1}
!293 = !{i32 7, !"frame-pointer", i32 2}
!294 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!295 = !{i64 2158730464, i64 2158730951, i64 2158730501, i64 2158730557, i64 2158730591, i64 2158730615, i64 2158730656, i64 2158730677, i64 2158730705, i64 2158730739}
!296 = !{i64 2148356990}
!297 = !{i64 2148271454, i64 2148271486, i64 2148271515, i64 2148271549, i64 2148271580, i64 2148271603}
!298 = !{!"branch_weights", i32 2000, i32 1}
!299 = !{i64 2149625422}
!300 = !{!"branch_weights", i32 1, i32 2000}
!301 = !{i64 2158748820, i64 2158749307, i64 2158748857, i64 2158748913, i64 2158748947, i64 2158748971, i64 2158749012, i64 2158749033, i64 2158749061, i64 2158749095}
!302 = !{i64 2148268989, i64 2148269021, i64 2148269050, i64 2148269084, i64 2148269115, i64 2148269138}
!303 = !{i64 2158694572, i64 2158695059, i64 2158694609, i64 2158694665, i64 2158694699, i64 2158694723, i64 2158694764, i64 2158694785, i64 2158694813, i64 2158694847}
!304 = !{i64 2158676165, i64 2158676652, i64 2158676202, i64 2158676258, i64 2158676292, i64 2158676316, i64 2158676357, i64 2158676378, i64 2158676406, i64 2158676440}
!305 = !{i64 2158672196, i64 2158672683, i64 2158672233, i64 2158672289, i64 2158672323, i64 2158672347, i64 2158672388, i64 2158672409, i64 2158672437, i64 2158672471}
!306 = !{i64 2158679969, i64 2158680456, i64 2158680006, i64 2158680062, i64 2158680096, i64 2158680120, i64 2158680161, i64 2158680182, i64 2158680210, i64 2158680244}
!307 = !{i64 2158704462, i64 2158704949, i64 2158704499, i64 2158704555, i64 2158704589, i64 2158704613, i64 2158704654, i64 2158704675, i64 2158704703, i64 2158704737}
!308 = !{i64 2148269924, i64 2148269950, i64 2148269979, i64 2148270013, i64 2148270044, i64 2148270067}
!309 = !{i64 2148267459, i64 2148267485, i64 2148267514, i64 2148267548, i64 2148267579, i64 2148267602}
!310 = !{i64 2158706095, i64 2158706582, i64 2158706132, i64 2158706188, i64 2158706222, i64 2158706246, i64 2158706287, i64 2158706308, i64 2158706336, i64 2158706370}
!311 = !{i64 2158708396, i64 2158708883, i64 2158708433, i64 2158708489, i64 2158708523, i64 2158708547, i64 2158708588, i64 2158708609, i64 2158708637, i64 2158708671}
!312 = !{i64 2158710693, i64 2158711180, i64 2158710730, i64 2158710786, i64 2158710820, i64 2158710844, i64 2158710885, i64 2158710906, i64 2158710934, i64 2158710968}
!313 = !{i64 2158677776, i64 2158678263, i64 2158677813, i64 2158677869, i64 2158677903, i64 2158677927, i64 2158677968, i64 2158677989, i64 2158678017, i64 2158678051}
!314 = !{i64 2158681989, i64 2158682476, i64 2158682026, i64 2158682082, i64 2158682116, i64 2158682140, i64 2158682181, i64 2158682202, i64 2158682230, i64 2158682264}
!315 = !{i64 2158804064, i64 2158804552, i64 2158804101, i64 2158804157, i64 2158804191, i64 2158804215, i64 2158804256, i64 2158804277, i64 2158804305, i64 2158804339}
!316 = !{i64 2158805642, i64 2158806130, i64 2158805679, i64 2158805735, i64 2158805769, i64 2158805793, i64 2158805834, i64 2158805855, i64 2158805883, i64 2158805917}
!317 = !{i64 2158822408, i64 2158822896, i64 2158822445, i64 2158822501, i64 2158822535, i64 2158822559, i64 2158822600, i64 2158822621, i64 2158822649, i64 2158822683}
!318 = !{i64 2158828113, i64 2158828601, i64 2158828150, i64 2158828206, i64 2158828240, i64 2158828264, i64 2158828305, i64 2158828326, i64 2158828354, i64 2158828388}
!319 = !{i64 2158830479, i64 2158830967, i64 2158830516, i64 2158830572, i64 2158830606, i64 2158830630, i64 2158830671, i64 2158830692, i64 2158830720, i64 2158830754}
!320 = !{i64 2158832123, i64 2158832611, i64 2158832160, i64 2158832216, i64 2158832250, i64 2158832274, i64 2158832315, i64 2158832336, i64 2158832364, i64 2158832398}
!321 = !{i64 2158807400, i64 2158807888, i64 2158807437, i64 2158807493, i64 2158807527, i64 2158807551, i64 2158807592, i64 2158807613, i64 2158807641, i64 2158807675}
!322 = !{i64 2158721371, i64 2158721858, i64 2158721408, i64 2158721464, i64 2158721498, i64 2158721522, i64 2158721563, i64 2158721584, i64 2158721612, i64 2158721646}
!323 = !{i64 2158769413, i64 2158769901, i64 2158769450, i64 2158769506, i64 2158769540, i64 2158769564, i64 2158769605, i64 2158769626, i64 2158769654, i64 2158769688}
!324 = !{i64 1172162, i64 1172189}
!325 = !{i64 1172857, i64 1172884, i64 1172917, i64 1172938, i64 1172965, i64 1172991}
