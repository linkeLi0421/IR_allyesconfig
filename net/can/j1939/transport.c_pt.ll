; ModuleID = '/llk/IR_all_yes/net/can/j1939/transport.c_pt.bc'
source_filename = "../net/can/j1939/transport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.j1939_session = type { ptr, %struct.list_head, %struct.list_head, %struct.kref, ptr, %struct.j1939_sk_buff_cb, %struct.sk_buff_head, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.anon.140, %struct.hrtimer, %struct.hrtimer }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.j1939_sk_buff_cb = type { i32, i32, i32, %struct.j1939_addr, i8, i8 }
%struct.j1939_addr = type { i64, i64, i32, i8, i8, i8 }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.14 }
%union.anon.14 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.140 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sk_buff = type { %union.anon.0, %union.anon.3, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.j1939_priv = type { %struct.list_head, %struct.rwlock_t, ptr, [256 x %struct.j1939_addr_ent], %struct.kref, %struct.list_head, %struct.spinlock, i32, %struct.spinlock, %struct.list_head, %struct.kref, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.j1939_addr_ent = type { ptr, i32 }
%struct.sock_common = type { %union.anon.4, %union.anon.6, %union.anon.7, i16, i8, i8, i32, %union.anon.9, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.100, [0 x i32], %union.anon.101, i16, i16, %union.anon.102, %struct.refcount_struct, [0 x i32], %union.anon.103 }
%union.anon.4 = type { i64 }
%union.anon.6 = type { i32 }
%union.anon.7 = type { i32 }
%union.anon.9 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { %struct.hlist_node }
%union.anon.102 = type { i32 }
%union.anon.103 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.104, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.105, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.106, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.104 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.105 = type { ptr }
%union.anon.106 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.139 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.can_frame = type { i32, %union.anon.147, i8, i8, i8, [8 x i8] }
%union.anon.147 = type { i8 }

@j1939_session_activate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/can/j1939/transport.c\00", [38 x i8] zeroinitializer }, align 32
@j1939_session_activate.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 1, i8 -120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"can_j1939\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"j1939_session_activate\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: 0x%p\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Received already invalidated message\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.j1939_simple_recv = private unnamed_addr constant [18 x i8] c"j1939_simple_recv\00", align 1
@j1939_cancel_active_session.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str, ptr @.str.6, i8 2, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"j1939_cancel_active_session\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s, sk: %p\0A\00", [20 x i8] zeroinitializer }, align 32
@j1939_tp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&priv->active_session_list_lock\00", [32 x i8] zeroinitializer }, align 32
@j1939_session_destroy.__UNIQUE_ID_ddebug458 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str, ptr @.str.3, i8 0, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"j1939_session_destroy\00", [42 x i8] zeroinitializer }, align 32
@j1939_session_destroy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@j1939_session_destroy.__already_done.9 = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@j1939_session_new.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str, ptr @.str.11, i8 1, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"j1939_session_new\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: 0x%p: sa: %02x, da: %02x\0A\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: 0x%p: tx retry count reached\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.j1939_tp_txtimer = private unnamed_addr constant [17 x i8] c"j1939_tp_txtimer\00", align 1
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: 0x%p: tx aborted with unknown reason: %i\0A\00", [50 x i8] zeroinitializer }, align 32
@j1939_session_skb_get_by_offset.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str, ptr @.str.16, i8 0, i8 97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"j1939_session_skb_get_by_offset\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: 0x%p: no skb found for start: %i, queue size: %i\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: 0x%p: called by not transmitter!\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.j1939_xtp_txnext_transmiter = private unnamed_addr constant [28 x i8] c"j1939_xtp_txnext_transmiter\00", align 1
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: 0x%p: unexpected last_cmd: %x\0A\00", [61 x i8] zeroinitializer }, align 32
@j1939_session_tx_rts.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str, ptr @.str.3, i8 0, i8 -70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"j1939_session_tx_rts\00", [43 x i8] zeroinitializer }, align 32
@j1939_session_tx_dpo.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str, ptr @.str.3, i8 0, i8 -63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"j1939_session_tx_dpo\00", [43 x i8] zeroinitializer }, align 32
@j1939_session_tx_dat.__print_once = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"%s: 0x%p: requested data outside of queued buffer: offset %i, len %i, pkt.tx: %i\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.j1939_session_tx_dat = private unnamed_addr constant [21 x i8] c"j1939_session_tx_dat\00", align 1
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: 0x%p: queue data error: %i\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: 0x%p: called by not receiver!\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.j1939_xtp_txnext_receiver = private unnamed_addr constant [26 x i8] c"j1939_xtp_txnext_receiver\00", align 1
@j1939_session_tx_cts.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str, ptr @.str.3, i8 0, i8 -21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"j1939_session_tx_cts\00", [43 x i8] zeroinitializer }, align 32
@j1939_session_tx_eoma.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str, ptr @.str.27, i8 0, i8 -11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"j1939_session_tx_eoma\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%p: 0x%p\0A\00", [22 x i8] zeroinitializer }, align 32
@j1939_xtp_abort_to_errno.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown abort code %i\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: 0x%p: abort rx timeout. Force session deactivation\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.j1939_tp_rxtimer = private unnamed_addr constant [17 x i8] c"j1939_tp_rxtimer\00", align 1
@.str.30 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: 0x%p: Timeout. Failed to send simple message.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: 0x%p: rx timeout, send abort\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: no tx connection found\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.j1939_xtp_rx_dat = private unnamed_addr constant [17 x i8] c"j1939_xtp_rx_dat\00", align 1
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: no rx connection found\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: 0x%p: last %02x\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.j1939_xtp_rx_dat_one = private unnamed_addr constant [21 x i8] c"j1939_xtp_rx_dat_one\00", align 1
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: 0x%p: should have been completed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: 0x%p: no skb found\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: 0x%p: nbytes %i, len %i\0A\00", [35 x i8] zeroinitializer }, align 32
@j1939_xtp_rx_dat_one.__print_once = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s: 0x%p: Data of RX-looped back packet (%*ph) doesn't match TX data (%*ph)!\0A\00", [50 x i8] zeroinitializer }, align 32
@j1939_tp_cmd_recv.__print_once = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: BAM to unicast (%02x), ignoring!\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.j1939_tp_cmd_recv = private unnamed_addr constant [18 x i8] c"j1939_tp_cmd_recv\00", align 1
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: rts without destination (%02x)\0A\00", [60 x i8] zeroinitializer }, align 32
@j1939_tp_cmd_recv.__print_once.41 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: abort to broadcast (%02x), ignoring!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: failed to create TP BAM session\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.j1939_xtp_rx_rts = private unnamed_addr constant [17 x i8] c"j1939_xtp_rx_rts\00", align 1
@j1939_xtp_rx_rts_session_new.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str, ptr @.str.45, i8 1, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"j1939_xtp_rx_rts_session_new\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: 0x%p: strange total, %u != %u\0A\00", [61 x i8] zeroinitializer }, align 32
@j1939_xtp_rx_rts_session_new.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.47 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: 0x%p: connection exists (%02x %02x). last cmd: %x\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.j1939_xtp_rx_rts_session_active = private unnamed_addr constant [32 x i8] c"j1939_xtp_rx_rts_session_active\00", align 1
@.str.48 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"%s: 0x%p: session->skcb.addr.sa=0x%02x skcb->addr.sa=0x%02x session->skcb.addr.da=0x%02x skcb->addr.da=0x%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@j1939_xtp_rx_rts_session_active.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.j1939_xtp_rx_rts_session_active, ptr @.str, ptr @.str.3, i8 1, i8 -90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@j1939_xtp_rx_cmd_bad_pgn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.49 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"%s: 0x%p: CMD 0x%02x with PGN 0x%05x for running session with different PGN 0x%05x.\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.j1939_xtp_rx_cmd_bad_pgn = private unnamed_addr constant [25 x i8] c"j1939_xtp_rx_cmd_bad_pgn\00", align 1
@j1939_xtp_rx_cts_one.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str, ptr @.str.3, i8 1, i8 97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"j1939_xtp_rx_cts_one\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: no connection found\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.j1939_xtp_rx_dpo = private unnamed_addr constant [17 x i8] c"j1939_xtp_rx_dpo\00", align 1
@j1939_xtp_rx_dpo_one.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.52, ptr @.str, ptr @.str.3, i8 1, i8 -72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"j1939_xtp_rx_dpo_one\00", [43 x i8] zeroinitializer }, align 32
@j1939_xtp_rx_eoma_one.__print_once = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: 0x%p: Incorrect size. Expected: %i; got: %i.\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.j1939_xtp_rx_eoma_one = private unnamed_addr constant [22 x i8] c"j1939_xtp_rx_eoma_one\00", align 1
@j1939_xtp_rx_eoma_one.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.j1939_xtp_rx_eoma_one, ptr @.str, ptr @.str.3, i8 1, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: 0x%p: 0x%05x: (%u) %s\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.j1939_xtp_rx_abort_one = private unnamed_addr constant [23 x i8] c"j1939_xtp_rx_abort_one\00", align 1
@.str.56 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Already in one or more connection managed sessions and cannot support another.\00", [49 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"System resources were needed for another task so this connection managed session was terminated.\00", [63 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"A timeout occurred and this is the connection abort to close the session.\00", [54 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"CTS messages received when data transfer is in progress\00", [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Maximal retransmit request limit reached\00", [55 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unexpected data transfer packet\00", [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Bad sequence number (and software is not able to recover)\00", [38 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Duplicate sequence number (and software is not able to recover)\00", [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Unexpected EDPO packet (ETP) or Message size > 1785 bytes (TP)\00", [33 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unexpected EDPO PGN (PGN in EDPO is bad)\00", [55 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"EDPO number of packets is greater than CTS\00", [53 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Bad EDPO offset\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Deprecated. Use 250 instead (Any other reason)\00", [49 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unexpected ECTS PGN (PGN in ECTS is bad)\00", [55 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ECTS requested packets exceeds message size\00", [52 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"Any other reason (if a Connection Abort reason is identified that is not listed in the table use code 250)\00", [53 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<unknown>\00", [22 x i8] zeroinitializer }, align 32
@j1939_session_deactivate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@switch.table.j1939_xtp_rx_abort_one = internal constant { [22 x ptr], [40 x i8] } { [22 x ptr] [ptr @.str.71, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 50944, i64 51200, i64 60160, i64 60416]
@__sancov_gen_cov_switch_values.73 = internal global [6 x i64] [i64 4, i64 32, i64 50944, i64 51200, i64 60160, i64 60416]
@__sancov_gen_cov_switch_values.74 = internal global [11 x i64] [i64 9, i64 8, i64 16, i64 17, i64 19, i64 20, i64 21, i64 22, i64 23, i64 32, i64 255]
@__sancov_gen_cov_switch_values.75 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 17, i64 21, i64 22, i64 32, i64 255]
@__sancov_gen_cov_switch_values.76 = internal global [8 x i64] [i64 6, i64 8, i64 16, i64 17, i64 20, i64 21, i64 22, i64 255]
@__sancov_gen_cov_switch_values.77 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967191, i64 4294967196, i64 4294967221]
@__sancov_gen_cov_switch_values.78 = internal global [19 x i64] [i64 17, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 250]
@__sancov_gen_cov_switch_values.79 = internal global [6 x i64] [i64 4, i64 8, i64 17, i64 22, i64 32, i64 255]
@__sancov_gen_cov_switch_values.80 = internal global [11 x i64] [i64 9, i64 8, i64 16, i64 17, i64 19, i64 20, i64 21, i64 22, i64 23, i64 32, i64 255]
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1563, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1569, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 2157, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 2171, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 2192, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 272, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1509, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1984, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1165, i32 29 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1187, i32 28 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 389, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 867, i32 28 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 893, i32 28 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 746, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 775, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 813, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 832, i32 11 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 993, i32 28 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 940, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 982, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 229, i32 27 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1225, i32 28 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1231, i32 28 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1243, i32 29 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1926, i32 28 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1936, i32 28 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1828, i32 27 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1836, i32 27 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1843, i32 27 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1854, i32 27 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1867, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 2027, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 2037, i32 29 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 2094, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1727, i32 29 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1588, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1632, i32 29 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1667, i32 28 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1679, i32 27 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1307, i32 26 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1415, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1782, i32 8 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1761, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1373, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1330, i32 26 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 134, i32 10 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 136, i32 10 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 138, i32 10 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 140, i32 10 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 142, i32 10 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 144, i32 10 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 146, i32 10 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 148, i32 10 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 150, i32 10 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 152, i32 10 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 154, i32 10 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 156, i32 10 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 158, i32 10 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 160, i32 10 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 162, i32 10 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 164, i32 10 }
@___asan_gen_.297 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.298 = private constant [29 x i8] c"../net/can/j1939/transport.c\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 166, i32 10 }
@___asan_gen_.300 = private unnamed_addr constant [36 x i8] c"switch.table.j1939_xtp_rx_abort_one\00", align 1
@llvm.compiler.used = appending global [74 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @j1939_tp_init.__key, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @skb_queue_head_init.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @switch.table.j1939_xtp_rx_abort_one], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j1939_tp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.j1939_xtp_rx_abort_one to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @j1939_session_get(ptr noundef %session) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %kref = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !214
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !215

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !216

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #10
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @j1939_session_put(ptr noundef %session) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %kref = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !218
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !216

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call fastcc void @j1939_session_destroy(ptr noundef %session) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @j1939_session_timers_cancel(ptr noundef %session) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %txtimer.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 18
  %call.i = tail call i32 @hrtimer_cancel(ptr noundef %txtimer.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.j1939_session_txtimer_cancel.exit_crit_edge, label %if.then.i

entry.j1939_session_txtimer_cancel.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_txtimer_cancel.exit

if.then.i:                                        ; preds = %entry
  %kref.i.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #10, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.j1939_session_txtimer_cancel.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !216

if.end5.i.i.i.i.i.i.j1939_session_txtimer_cancel.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_txtimer_cancel.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef 3) #10
  br label %j1939_session_txtimer_cancel.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call fastcc void @j1939_session_destroy(ptr noundef %session) #10
  br label %j1939_session_txtimer_cancel.exit

j1939_session_txtimer_cancel.exit:                ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.j1939_session_txtimer_cancel.exit_crit_edge, %entry.j1939_session_txtimer_cancel.exit_crit_edge
  %rxtimer.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 19
  %call.i2 = tail call i32 @hrtimer_cancel(ptr noundef %rxtimer.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool.not.i3 = icmp eq i32 %call.i2, 0
  br i1 %tobool.not.i3, label %j1939_session_txtimer_cancel.exit.j1939_session_rxtimer_cancel.exit_crit_edge, label %if.then.i8

j1939_session_txtimer_cancel.exit.j1939_session_rxtimer_cancel.exit_crit_edge: ; preds = %j1939_session_txtimer_cancel.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_rxtimer_cancel.exit

if.then.i8:                                       ; preds = %j1939_session_txtimer_cancel.exit
  %kref.i.i4 = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i4, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %kref.i.i4, i32 1, i32 3, i32 1) #10
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i4, ptr %kref.i.i4, i32 1, ptr elementtype(i32) %kref.i.i4) #10, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i.i6 = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i6)
  %cmp.i.i.i.i.i.i7 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i6, 1
  br i1 %cmp.i.i.i.i.i.i7, label %if.then.i.i.i12, label %if.end5.i.i.i.i.i.i10

if.end5.i.i.i.i.i.i10:                            ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i6)
  %.not.i.i.i.i.i.i9 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i6, 0
  br i1 %.not.i.i.i.i.i.i9, label %if.end5.i.i.i.i.i.i10.j1939_session_rxtimer_cancel.exit_crit_edge, label %if.then10.i.i.i.i.i.i11, !prof !216

if.end5.i.i.i.i.i.i10.j1939_session_rxtimer_cancel.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i10
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_rxtimer_cancel.exit

if.then10.i.i.i.i.i.i11:                          ; preds = %if.end5.i.i.i.i.i.i10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i4, i32 noundef 3) #10
  br label %j1939_session_rxtimer_cancel.exit

if.then.i.i.i12:                                  ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call fastcc void @j1939_session_destroy(ptr noundef %session) #10
  br label %j1939_session_rxtimer_cancel.exit

j1939_session_rxtimer_cancel.exit:                ; preds = %if.then.i.i.i12, %if.then10.i.i.i.i.i.i11, %if.end5.i.i.i.i.i.i10.j1939_session_rxtimer_cancel.exit_crit_edge, %j1939_session_txtimer_cancel.exit.j1939_session_rxtimer_cancel.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @j1939_session_rxtimer_cancel(ptr noundef %session) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rxtimer = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 19
  %call = tail call i32 @hrtimer_cancel(ptr noundef %rxtimer) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %kref.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !216

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %if.end

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call fastcc void @j1939_session_destroy(ptr noundef %session) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @j1939_session_skb_queue(ptr noundef %session, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %session, align 8
  %call2 = tail call i32 @j1939_ac_fixup(ptr noundef %1, ptr noundef %skb) #10
  %da = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %2 = ptrtoint ptr %da to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %da, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %3)
  %cmp.i = icmp ult i8 %3, -2
  br i1 %cmp.i, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %idxprom = zext i8 %3 to i32
  %nusers = getelementptr %struct.j1939_priv, ptr %1, i32 0, i32 3, i32 %idxprom, i32 1
  %4 = ptrtoint ptr %nusers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nusers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags, align 8
  %8 = or i8 %7, 2
  store i8 %8, ptr %flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %flags7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  %9 = ptrtoint ptr %flags7 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flags7, align 8
  %11 = or i8 %10, 1
  store i8 %11, ptr %flags7, align 8
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #10, !srcloc !214
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !215

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !216

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #10
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %skb_queue = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 6
  tail call void @skb_queue_tail(ptr noundef %skb_queue, ptr noundef %skb) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @j1939_ac_fixup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @j1939_tp_schedule_txtimer(ptr noundef %session, i32 noundef %msec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %kref.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !214
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !215

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.j1939_session_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !216

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.j1939_session_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %j1939_session_get.exit

j1939_session_get.exit:                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.j1939_session_get.exit_crit_edge
  %txtimer = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 18
  %conv = sext i32 %msec to i64
  %mul.i = mul nsw i64 %conv, 1000000
  tail call void @hrtimer_start_range_ns(ptr noundef %txtimer, i64 noundef %mul.i, i64 noundef 0, i32 noundef 5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @j1939_session_activate(ptr noundef %session) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %session, align 8
  %active_session_list_lock.i = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %active_session_list_lock.i) #10
  %type = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3, i32 5
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp.not = icmp eq i8 %3, 2
  br i1 %cmp.not, label %entry.if.else_crit_edge, label %if.end

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end:                                           ; preds = %entry
  %addr = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3
  %active_session_list = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 5
  %transmission = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 9
  %4 = ptrtoint ptr %transmission to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %transmission, align 2, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool = icmp ne i8 %5, 0
  %call = tail call fastcc ptr @j1939_session_get_by_addr_locked(ptr noundef %1, ptr noundef %active_session_list, ptr noundef %addr, i1 noundef zeroext false, i1 noundef zeroext %tobool)
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.end.if.else_crit_edge, label %if.then6

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then6:                                         ; preds = %if.end
  %kref.i = getelementptr inbounds %struct.j1939_session, ptr %call, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end68_crit_edge, label %if.then10.i.i.i.i.i, !prof !216

if.end5.i.i.i.i.i.if.end68_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %if.end68

if.then.i.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call fastcc void @j1939_session_destroy(ptr noundef nonnull %call) #10
  br label %if.end68

if.else:                                          ; preds = %if.end.if.else_crit_edge, %entry.if.else_crit_edge
  %state = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 16
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7.not = icmp eq i32 %8, 0
  br i1 %cmp7.not, label %if.else.if.end39_crit_edge, label %land.rhs

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

land.rhs:                                         ; preds = %if.else
  %.b85 = load i1, ptr @j1939_session_activate.__already_done, align 1
  br i1 %.b85, label %land.rhs.if.end39_crit_edge, label %if.then17, !prof !216

land.rhs.if.end39_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then17:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @j1939_session_activate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1563, i32 noundef 9, ptr noundef null) #10
  br label %if.end39

if.end39:                                         ; preds = %if.then17, %land.rhs.if.end39_crit_edge, %if.else.if.end39_crit_edge
  %active_session_list_entry = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 1
  %active_session_list47 = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %active_session_list_entry, ptr noundef %10, ptr noundef %active_session_list47) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end39.list_add_tail.exit_crit_edge

if.end39.list_add_tail.exit_crit_edge:            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %active_session_list_entry, ptr %prev.i, align 4
  %12 = ptrtoint ptr %active_session_list_entry to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %active_session_list47, ptr %active_session_list_entry, align 4
  %prev3.i.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %active_session_list_entry, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end39.list_add_tail.exit_crit_edge
  %kref.i86 = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 3
  %call.i.i.i.i.i.i.i87 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i86, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref.i86, i32 1, i32 3, i32 1) #10
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i86, ptr %kref.i86, i32 1, ptr elementtype(i32) %kref.i86) #10, !srcloc !214
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %list_add_tail.exit.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !215

list_add_tail.exit.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %list_add_tail.exit
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %16 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i.i88 = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i.i88, label %if.else.i.i.i.i.i.j1939_session_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !216

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.j1939_session_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %list_add_tail.exit.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %list_add_tail.exit.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i86, i32 noundef %.sink.i.i.i.i.i) #10
  br label %j1939_session_get.exit

j1939_session_get.exit:                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.j1939_session_get.exit_crit_edge
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %state, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @j1939_session_activate.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@j1939_session_activate, %if.then61)) #10
          to label %if.end68 [label %if.then61], !srcloc !221

if.then61:                                        ; preds = %j1939_session_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %session, align 8
  %ndev = getelementptr inbounds %struct.j1939_priv, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @j1939_session_activate.__UNIQUE_ID_ddebug471, ptr noundef %21, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, ptr noundef %session) #10
  br label %if.end68

if.end68:                                         ; preds = %if.then61, %j1939_session_get.exit, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end68_crit_edge
  %ret.0 = phi i32 [ 0, %if.then61 ], [ -11, %if.end5.i.i.i.i.i.if.end68_crit_edge ], [ -11, %if.then10.i.i.i.i.i ], [ -11, %if.then.i.i ], [ 0, %j1939_session_get.exit ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %active_session_list_lock.i) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @j1939_session_get_by_addr_locked(ptr noundef %priv, ptr noundef readonly %root, ptr nocapture noundef readonly %addr, i1 noundef zeroext %reverse, i1 noundef zeroext %transmitter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !215

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 512, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn56 = load ptr, ptr %root, align 4
  %cmp26.not58 = icmp eq ptr %.pn56, %root
  br i1 %cmp26.not58, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %type1.i = getelementptr inbounds %struct.j1939_addr, ptr %addr, i32 0, i32 5
  %sa51.i = getelementptr inbounds %struct.j1939_addr, ptr %addr, i32 0, i32 3
  %dst_name62.i = getelementptr inbounds %struct.j1939_addr, ptr %addr, i32 0, i32 1
  %da70.i = getelementptr inbounds %struct.j1939_addr, ptr %addr, i32 0, i32 4
  %2 = zext i1 %transmitter to i8
  br label %for.body

for.body:                                         ; preds = %j1939_session_put.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn59 = phi ptr [ %.pn56, %for.body.lr.ph ], [ %.pn, %j1939_session_put.exit.for.body_crit_edge ]
  %session.060 = getelementptr i8, ptr %.pn59, i32 -4
  %kref.i = getelementptr i8, ptr %.pn59, i32 16
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !214
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %for.body.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !215

for.body.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %for.body
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.j1939_session_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !216

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.j1939_session_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %for.body.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %for.body.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %j1939_session_get.exit

j1939_session_get.exit:                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.j1939_session_get.exit_crit_edge
  %type.i = getelementptr i8, ptr %.pn59, i32 66
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type.i, align 2
  %7 = ptrtoint ptr %type1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type1.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp.not.i = icmp eq i8 %6, %8
  br i1 %cmp.not.i, label %if.end.i, label %j1939_session_get.exit.if.end38_crit_edge

j1939_session_get.exit.if.end38_crit_edge:        ; preds = %j1939_session_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.end.i:                                         ; preds = %j1939_session_get.exit
  %addr29 = getelementptr i8, ptr %.pn59, i32 44
  %9 = ptrtoint ptr %addr29 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %addr29, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool5.not.i = icmp eq i64 %10, 0
  br i1 %reverse, label %if.then4.i, label %if.else38.i

if.then4.i:                                       ; preds = %if.end.i
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then4.i
  %11 = ptrtoint ptr %dst_name62.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %dst_name62.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp8.not.i = icmp eq i64 %10, %12
  br i1 %cmp8.not.i, label %if.then6.i.if.end18.i_crit_edge, label %if.then6.i.if.end38_crit_edge

if.then6.i.if.end38_crit_edge:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then6.i.if.end18.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.else.i:                                        ; preds = %if.then4.i
  %sa.i = getelementptr i8, ptr %.pn59, i32 64
  %13 = ptrtoint ptr %sa.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sa.i, align 4
  %15 = ptrtoint ptr %da70.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %da70.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %16)
  %cmp14.not.i = icmp eq i8 %14, %16
  br i1 %cmp14.not.i, label %if.else.i.if.end18.i_crit_edge, label %if.else.i.if.end38_crit_edge

if.else.i.if.end38_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.else.i.if.end18.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i.if.end18.i_crit_edge, %if.then6.i.if.end18.i_crit_edge
  %dst_name19.i = getelementptr i8, ptr %.pn59, i32 52
  %17 = ptrtoint ptr %dst_name19.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %dst_name19.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool20.not.i = icmp eq i64 %18, 0
  br i1 %tobool20.not.i, label %if.else28.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end18.i
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %addr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %20)
  %cmp24.not.i = icmp eq i64 %18, %20
  br i1 %cmp24.not.i, label %if.then21.i.land.lhs.true_crit_edge, label %if.then21.i.if.end38_crit_edge

if.then21.i.if.end38_crit_edge:                   ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then21.i.land.lhs.true_crit_edge:              ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.else28.i:                                      ; preds = %if.end18.i
  %da29.i = getelementptr i8, ptr %.pn59, i32 65
  %21 = ptrtoint ptr %da29.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %da29.i, align 1
  %23 = ptrtoint ptr %sa51.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sa51.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp33.not.i = icmp eq i8 %22, %24
  br i1 %cmp33.not.i, label %if.else28.i.land.lhs.true_crit_edge, label %if.else28.i.if.end38_crit_edge

if.else28.i.if.end38_crit_edge:                   ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.else28.i.land.lhs.true_crit_edge:              ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.else38.i:                                      ; preds = %if.end.i
  br i1 %tobool5.not.i, label %if.else48.i, label %if.then41.i

if.then41.i:                                      ; preds = %if.else38.i
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %addr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %26)
  %cmp44.not.i = icmp eq i64 %10, %26
  br i1 %cmp44.not.i, label %if.then41.i.if.end57.i_crit_edge, label %if.then41.i.if.end38_crit_edge

if.then41.i.if.end38_crit_edge:                   ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then41.i.if.end57.i_crit_edge:                 ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.i

if.else48.i:                                      ; preds = %if.else38.i
  %sa49.i = getelementptr i8, ptr %.pn59, i32 64
  %27 = ptrtoint ptr %sa49.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %sa49.i, align 4
  %29 = ptrtoint ptr %sa51.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sa51.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %30)
  %cmp53.not.i = icmp eq i8 %28, %30
  br i1 %cmp53.not.i, label %if.else48.i.if.end57.i_crit_edge, label %if.else48.i.if.end38_crit_edge

if.else48.i.if.end38_crit_edge:                   ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.else48.i.if.end57.i_crit_edge:                 ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.else48.i.if.end57.i_crit_edge, %if.then41.i.if.end57.i_crit_edge
  %dst_name58.i = getelementptr i8, ptr %.pn59, i32 52
  %31 = ptrtoint ptr %dst_name58.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %dst_name58.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %tobool59.not.i = icmp eq i64 %32, 0
  br i1 %tobool59.not.i, label %if.else67.i, label %if.then60.i

if.then60.i:                                      ; preds = %if.end57.i
  %33 = ptrtoint ptr %dst_name62.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %dst_name62.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %34)
  %cmp63.not.i = icmp eq i64 %32, %34
  br i1 %cmp63.not.i, label %if.then60.i.land.lhs.true_crit_edge, label %if.then60.i.if.end38_crit_edge

if.then60.i.if.end38_crit_edge:                   ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then60.i.land.lhs.true_crit_edge:              ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.else67.i:                                      ; preds = %if.end57.i
  %da68.i = getelementptr i8, ptr %.pn59, i32 65
  %35 = ptrtoint ptr %da68.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %da68.i, align 1
  %37 = ptrtoint ptr %da70.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %da70.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %38)
  %cmp72.not.i = icmp eq i8 %36, %38
  br i1 %cmp72.not.i, label %if.else67.i.land.lhs.true_crit_edge, label %if.else67.i.if.end38_crit_edge

if.else67.i.if.end38_crit_edge:                   ; preds = %if.else67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.else67.i.land.lhs.true_crit_edge:              ; preds = %if.else67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else67.i.land.lhs.true_crit_edge, %if.then60.i.land.lhs.true_crit_edge, %if.else28.i.land.lhs.true_crit_edge, %if.then21.i.land.lhs.true_crit_edge
  %transmission = getelementptr i8, ptr %.pn59, i32 134
  %39 = ptrtoint ptr %transmission to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %transmission, align 2, !range !220
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %2)
  %cmp35 = icmp eq i8 %40, %2
  br i1 %cmp35, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38:                                         ; preds = %land.lhs.true.if.end38_crit_edge, %if.else67.i.if.end38_crit_edge, %if.then60.i.if.end38_crit_edge, %if.else48.i.if.end38_crit_edge, %if.then41.i.if.end38_crit_edge, %if.else28.i.if.end38_crit_edge, %if.then21.i.if.end38_crit_edge, %if.else.i.if.end38_crit_edge, %if.then6.i.if.end38_crit_edge, %j1939_session_get.exit.if.end38_crit_edge
  %call.i.i.i.i.i.i.i53 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i54 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i54, label %if.end5.i.i.i.i.i.j1939_session_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !216

if.end5.i.i.i.i.i.j1939_session_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %j1939_session_put.exit

if.then.i.i:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call fastcc void @j1939_session_destroy(ptr noundef %session.060) #10
  br label %j1939_session_put.exit

j1939_session_put.exit:                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.j1939_session_put.exit_crit_edge
  %42 = ptrtoint ptr %.pn59 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn = load ptr, ptr %.pn59, align 4
  %cmp26.not = icmp eq ptr %.pn, %root
  br i1 %cmp26.not, label %j1939_session_put.exit.cleanup_crit_edge, label %j1939_session_put.exit.for.body_crit_edge

j1939_session_put.exit.for.body_crit_edge:        ; preds = %j1939_session_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

j1939_session_put.exit.cleanup_crit_edge:         ; preds = %j1939_session_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %j1939_session_put.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end.cleanup_crit_edge ], [ null, %j1939_session_put.exit.cleanup_crit_edge ], [ %session.060, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @j1939_tp_send(ptr noundef %priv, ptr noundef %skb, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pgn = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %0 = ptrtoint ptr %pgn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pgn, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.end [
    i32 60160, label %entry.cleanup_crit_edge
    i32 60416, label %entry.cleanup_crit_edge143
    i32 50944, label %entry.cleanup_crit_edge144
    i32 51200, label %entry.cleanup_crit_edge145
  ]

entry.cleanup_crit_edge145:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge144:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge143:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tp_max_packet_size = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 7
  %3 = ptrtoint ptr %tp_max_packet_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tp_max_packet_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %size)
  %cmp13 = icmp ult i32 %4, %size
  br i1 %cmp13, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %size)
  %cmp17 = icmp ult i32 %size, 9
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 38
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %type, align 2
  br label %if.end28

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1785, i32 %size)
  %cmp20 = icmp ugt i32 %size, 1785
  %type23 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 38
  br i1 %cmp20, label %if.then21, label %if.else24

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %type23 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %type23, align 2
  br label %if.end28

if.else24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %type23 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %type23, align 2
  br label %if.end28

if.end28:                                         ; preds = %if.else24, %if.then21, %if.then18
  %type30 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 38
  %8 = ptrtoint ptr %type30 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type30, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp31 = icmp eq i8 %9, 1
  br i1 %cmp31, label %land.lhs.true, label %if.end28.if.end37_crit_edge

if.end28.if.end37_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end28
  %dst_name.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %10 = ptrtoint ptr %dst_name.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %dst_name.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool.not.i = icmp eq i64 %11, 0
  br i1 %tobool.not.i, label %j1939_cb_is_broadcast.exit, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

j1939_cb_is_broadcast.exit:                       ; preds = %land.lhs.true
  %da.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %12 = ptrtoint ptr %da.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %da.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp.i = icmp eq i8 %13, -1
  br i1 %cmp.i, label %j1939_cb_is_broadcast.exit.cleanup_crit_edge, label %j1939_cb_is_broadcast.exit.if.end37_crit_edge

j1939_cb_is_broadcast.exit.if.end37_crit_edge:    ; preds = %j1939_cb_is_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

j1939_cb_is_broadcast.exit.cleanup_crit_edge:     ; preds = %j1939_cb_is_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end37:                                         ; preds = %j1939_cb_is_broadcast.exit.if.end37_crit_edge, %land.lhs.true.if.end37_crit_edge, %if.end28.if.end37_crit_edge
  %call38 = tail call i32 @j1939_ac_fixup(ptr noundef %priv, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool.not = icmp eq i32 %call38, 0
  br i1 %tobool.not, label %if.end43, label %if.then41, !prof !216

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %14 = inttoptr i32 %call38 to ptr
  br label %cleanup

if.end43:                                         ; preds = %if.end37
  %da = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %15 = ptrtoint ptr %da to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %da, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %16)
  %cmp.i136 = icmp ult i8 %16, -2
  br i1 %cmp.i136, label %land.lhs.true47, label %if.end43.if.end54_crit_edge

if.end43.if.end54_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

land.lhs.true47:                                  ; preds = %if.end43
  %idxprom = zext i8 %16 to i32
  %nusers = getelementptr %struct.j1939_priv, ptr %priv, i32 0, i32 3, i32 %idxprom, i32 1
  %17 = ptrtoint ptr %nusers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nusers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool50.not = icmp eq i32 %18, 0
  br i1 %tobool50.not, label %land.lhs.true47.if.end54_crit_edge, label %if.then51

land.lhs.true47.if.end54_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then51:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags, align 8
  %21 = or i8 %20, 2
  store i8 %21, ptr %flags, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %land.lhs.true47.if.end54_crit_edge, %if.end43.if.end54_crit_edge
  %flags55 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  %22 = ptrtoint ptr %flags55 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flags55, align 8
  %24 = or i8 %23, 1
  store i8 %24, ptr %flags55, align 8
  %call59 = tail call fastcc ptr @j1939_session_new(ptr noundef %priv, ptr noundef %skb, i32 noundef %size)
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %if.end54.cleanup_crit_edge, label %if.end63

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end63:                                         ; preds = %if.end54
  %25 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %27, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !214
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end63.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !215

if.end63.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end63
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %29 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %.not.i.i.i.i = icmp sgt i32 %29, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !216

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end63.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end63.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %25, align 4
  %sk = getelementptr inbounds %struct.j1939_session, ptr %call59, i32 0, i32 4
  %32 = ptrtoint ptr %sk to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %sk, align 8
  %transmission = getelementptr inbounds %struct.j1939_session, ptr %call59, i32 0, i32 9
  %33 = ptrtoint ptr %transmission to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %transmission, align 2
  %add = add i32 %size, 6
  %div = udiv i32 %add, 7
  %pkt = getelementptr inbounds %struct.j1939_session, ptr %call59, i32 0, i32 17
  %34 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div, ptr %pkt, align 4
  %35 = ptrtoint ptr %type30 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %type30, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp67 = icmp eq i8 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1791, i32 %add)
  %cmp74 = icmp ugt i32 %add, 1791
  %37 = or i1 %cmp74, %cmp67
  %cond81 = select i1 %37, i32 255, i32 %div
  %block = getelementptr inbounds %struct.j1939_session, ptr %call59, i32 0, i32 17, i32 5
  %38 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cond81, ptr %block, align 4
  %dst_name.i137 = getelementptr inbounds %struct.j1939_session, ptr %call59, i32 0, i32 5, i32 3, i32 1
  %39 = ptrtoint ptr %dst_name.i137 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %dst_name.i137, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %tobool.not.i138 = icmp eq i64 %40, 0
  br i1 %tobool.not.i138, label %j1939_cb_is_broadcast.exit142, label %sock_hold.exit.if.end89_crit_edge

sock_hold.exit.if.end89_crit_edge:                ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

j1939_cb_is_broadcast.exit142:                    ; preds = %sock_hold.exit
  %da.i139 = getelementptr inbounds %struct.j1939_session, ptr %call59, i32 0, i32 5, i32 3, i32 4
  %41 = ptrtoint ptr %da.i139 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %da.i139, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %42)
  %cmp.i140 = icmp eq i8 %42, -1
  br i1 %cmp.i140, label %if.then85, label %j1939_cb_is_broadcast.exit142.if.end89_crit_edge

j1939_cb_is_broadcast.exit142.if.end89_crit_edge: ; preds = %j1939_cb_is_broadcast.exit142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then85:                                        ; preds = %j1939_cb_is_broadcast.exit142
  call void @__sanitizer_cov_trace_pc() #12
  %last = getelementptr inbounds %struct.j1939_session, ptr %call59, i32 0, i32 17, i32 1
  %43 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %div, ptr %last, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then85, %j1939_cb_is_broadcast.exit142.if.end89_crit_edge, %sock_hold.exit.if.end89_crit_edge
  %44 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sk, align 8
  %sk_tskey = getelementptr inbounds %struct.sock, ptr %45, i32 0, i32 67
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_tskey, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !222
  tail call void @llvm.prefetch.p0(ptr %sk_tskey, i32 1, i32 3, i32 1) #10
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_tskey, ptr %sk_tskey, i32 1, ptr elementtype(i32) %sk_tskey) #10, !srcloc !223
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %46, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !224
  %sub = add i32 %asmresult.i.i.i.i, -1
  %tskey = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %47 = ptrtoint ptr %tskey to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub, ptr %tskey, align 8
  %tskey93 = getelementptr inbounds %struct.j1939_session, ptr %call59, i32 0, i32 15
  %48 = ptrtoint ptr %tskey93 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub, ptr %tskey93, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %if.end54.cleanup_crit_edge, %if.then41, %j1939_cb_is_broadcast.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge143, %entry.cleanup_crit_edge144, %entry.cleanup_crit_edge145
  %retval.0 = phi ptr [ %14, %if.then41 ], [ %call59, %if.end89 ], [ inttoptr (i32 -33 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -33 to ptr), %entry.cleanup_crit_edge143 ], [ inttoptr (i32 -33 to ptr), %entry.cleanup_crit_edge144 ], [ inttoptr (i32 -33 to ptr), %entry.cleanup_crit_edge145 ], [ inttoptr (i32 -90 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -89 to ptr), %j1939_cb_is_broadcast.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end54.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @j1939_session_new(ptr noundef %priv, ptr noundef %skb, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !204) #10
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.i = select i1 %tobool.not.i, i32 3520, i32 2848
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef %or.i, i32 noundef 288) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %active_session_list_entry = getelementptr inbounds %struct.j1939_session, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %active_session_list_entry to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %active_session_list_entry, ptr %active_session_list_entry, align 4
  %prev.i = getelementptr inbounds %struct.j1939_session, ptr %call7.i.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %active_session_list_entry, ptr %prev.i, align 8
  %sk_session_queue_entry = getelementptr inbounds %struct.j1939_session, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %sk_session_queue_entry to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %sk_session_queue_entry, ptr %sk_session_queue_entry, align 4
  %prev.i41 = getelementptr inbounds %struct.j1939_session, ptr %call7.i.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i41 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %sk_session_queue_entry, ptr %prev.i41, align 8
  %kref = getelementptr inbounds %struct.j1939_session, ptr %call7.i.i, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  %9 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %kref, align 4
  tail call void @j1939_priv_get(ptr noundef %priv) #10
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %priv, ptr %call7.i.i, align 8
  %total_message_size = getelementptr inbounds %struct.j1939_session, ptr %call7.i.i, i32 0, i32 11
  %11 = ptrtoint ptr %total_message_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %size, ptr %total_message_size, align 4
  %state = getelementptr inbounds %struct.j1939_session, ptr %call7.i.i, i32 0, i32 16
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %state, align 8
  %skb_queue = getelementptr inbounds %struct.j1939_session, ptr %call7.i.i, i32 0, i32 6
  %lock.i = getelementptr inbounds %struct.j1939_session, ptr %call7.i.i, i32 0, i32 6, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %13 = ptrtoint ptr %skb_queue to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %skb_queue, ptr %skb_queue, align 8
  %prev.i.i = getelementptr inbounds %struct.j1939_session, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %skb_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.j1939_session, ptr %call7.i.i, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %qlen.i.i, align 8
  tail call void @skb_queue_tail(ptr noundef %skb_queue, ptr noundef %skb) #10
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %skcb5 = getelementptr inbounds %struct.j1939_session, ptr %call7.i.i, i32 0, i32 5
  %16 = call ptr @memcpy(ptr %skcb5, ptr %cb.i, i32 48)
  %txtimer = getelementptr inbounds %struct.j1939_session, ptr %call7.i.i, i32 0, i32 18
  tail call void @hrtimer_init(ptr noundef %txtimer, i32 noundef 1, i32 noundef 5) #10
  %function = getelementptr inbounds %struct.j1939_session, ptr %call7.i.i, i32 0, i32 18, i32 2
  %17 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @j1939_tp_txtimer, ptr %function, align 8
  %rxtimer = getelementptr inbounds %struct.j1939_session, ptr %call7.i.i, i32 0, i32 19
  tail call void @hrtimer_init(ptr noundef %rxtimer, i32 noundef 1, i32 noundef 5) #10
  %function8 = getelementptr inbounds %struct.j1939_session, ptr %call7.i.i, i32 0, i32 19, i32 2
  %18 = ptrtoint ptr %function8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @j1939_tp_rxtimer, ptr %function8, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @j1939_session_new.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@j1939_session_new, %if.then14)) #10
          to label %cleanup [label %if.then14], !srcloc !221

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ndev = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 2
  %19 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ndev, align 4
  %sa = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %21 = ptrtoint ptr %sa to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sa, align 4
  %conv = zext i8 %22 to i32
  %da = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %23 = ptrtoint ptr %da to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %da, align 1
  %conv16 = zext i8 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @j1939_session_new.__UNIQUE_ID_ddebug470, ptr noundef %20, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, ptr noundef nonnull %call7.i.i, i32 noundef %conv, i32 noundef %conv16) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @j1939_tp_recv(ptr noundef %priv, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags.i, align 8
  %2 = and i8 %1, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dst_name.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %3 = ptrtoint ptr %dst_name.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %dst_name.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not.i = icmp eq i64 %4, 0
  br i1 %tobool.not.i, label %j1939_cb_is_broadcast.exit, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

j1939_cb_is_broadcast.exit:                       ; preds = %land.lhs.true
  %da.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %5 = ptrtoint ptr %da.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %da.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp.i = icmp eq i8 %6, -1
  br i1 %cmp.i, label %j1939_cb_is_broadcast.exit.if.end_crit_edge, label %j1939_cb_is_broadcast.exit.cleanup_crit_edge

j1939_cb_is_broadcast.exit.cleanup_crit_edge:     ; preds = %j1939_cb_is_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

j1939_cb_is_broadcast.exit.if.end_crit_edge:      ; preds = %j1939_cb_is_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %j1939_cb_is_broadcast.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %pgn = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %7 = ptrtoint ptr %pgn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pgn, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %8, label %if.end.cleanup_crit_edge [
    i32 50944, label %sw.bb
    i32 60160, label %if.end.sw.bb4_crit_edge
    i32 51200, label %sw.bb5
    i32 60416, label %if.end.sw.bb8_crit_edge
  ]

if.end.sw.bb8_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb8

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 38
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %type, align 2
  br label %sw.bb4

sw.bb4:                                           ; preds = %sw.bb, %if.end.sw.bb4_crit_edge
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags.i, align 8
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i19 = icmp eq i8 %13, 0
  br i1 %tobool.not.i19, label %sw.bb4.if.end5.i_crit_edge, label %if.then.i

sw.bb4.if.end5.i_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then.i:                                        ; preds = %sw.bb4
  %addr.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %active_session_list_lock.i.i.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %active_session_list_lock.i.i.i) #10
  %active_session_list.i.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 5
  %call.i.i = tail call fastcc ptr @j1939_session_get_by_addr_locked(ptr noundef %priv, ptr noundef %active_session_list.i.i, ptr noundef %addr.i, i1 noundef zeroext false, i1 noundef zeroext true) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %active_session_list_lock.i.i.i) #10
  %tobool3.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %ndev.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 2
  %14 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %15, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.j1939_xtp_rx_dat) #14
  br label %if.end5.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @j1939_xtp_rx_dat_one(ptr noundef nonnull %call.i.i, ptr noundef %skb) #10
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else.i, %if.then4.i, %sw.bb4.if.end5.i_crit_edge
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %flags.i, align 8
  %18 = and i8 %17, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool7.not.i = icmp eq i8 %18, 0
  br i1 %tobool7.not.i, label %if.end5.i.if.end16.i_crit_edge, label %if.then8.i

if.end5.i.if.end16.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then8.i:                                       ; preds = %if.end5.i
  %addr9.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %active_session_list_lock.i.i44.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %active_session_list_lock.i.i44.i) #10
  %active_session_list.i45.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 5
  %call.i46.i = tail call fastcc ptr @j1939_session_get_by_addr_locked(ptr noundef %priv, ptr noundef %active_session_list.i45.i, ptr noundef %addr9.i, i1 noundef zeroext false, i1 noundef zeroext false) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %active_session_list_lock.i.i44.i) #10
  %tobool11.not.i = icmp eq ptr %call.i46.i, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.else14.i

if.then12.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  %ndev13.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 2
  %19 = ptrtoint ptr %ndev13.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ndev13.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %20, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.j1939_xtp_rx_dat) #14
  br label %if.end16.i

if.else14.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @j1939_xtp_rx_dat_one(ptr noundef nonnull %call.i46.i, ptr noundef %skb) #10
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else14.i, %if.then12.i, %if.end5.i.if.end16.i_crit_edge
  %dst_name.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %21 = ptrtoint ptr %dst_name.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %dst_name.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool.not.i.i = icmp eq i64 %22, 0
  br i1 %tobool.not.i.i, label %j1939_cb_is_broadcast.exit.i, label %if.end16.i.cleanup_crit_edge

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

j1939_cb_is_broadcast.exit.i:                     ; preds = %if.end16.i
  %da.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %23 = ptrtoint ptr %da.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %da.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp.i.i = icmp eq i8 %24, -1
  br i1 %cmp.i.i, label %if.then18.i, label %j1939_cb_is_broadcast.exit.i.cleanup_crit_edge

j1939_cb_is_broadcast.exit.i.cleanup_crit_edge:   ; preds = %j1939_cb_is_broadcast.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18.i:                                      ; preds = %j1939_cb_is_broadcast.exit.i
  %addr19.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %active_session_list_lock.i.i47.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %active_session_list_lock.i.i47.i) #10
  %active_session_list.i48.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 5
  %call.i49.i = tail call fastcc ptr @j1939_session_get_by_addr_locked(ptr noundef %priv, ptr noundef %active_session_list.i48.i, ptr noundef %addr19.i, i1 noundef zeroext false, i1 noundef zeroext false) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %active_session_list_lock.i.i47.i) #10
  %tobool21.not.i = icmp eq ptr %call.i49.i, null
  br i1 %tobool21.not.i, label %if.then18.i.cleanup_crit_edge, label %if.then22.i

if.then18.i.cleanup_crit_edge:                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then22.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @j1939_xtp_rx_dat_one(ptr noundef nonnull %call.i49.i, ptr noundef %skb) #10
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %type7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 38
  %25 = ptrtoint ptr %type7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %type7, align 2
  br label %sw.bb8

sw.bb8:                                           ; preds = %sw.bb5, %if.end.sw.bb8_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %27)
  %cmp = icmp ult i32 %27, 8
  br i1 %cmp, label %sw.bb8.cleanup_crit_edge, label %if.end10

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %sw.bb8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %31, label %if.end10.cleanup_crit_edge [
    i8 20, label %if.end10.sw.bb8.i_crit_edge
    i8 32, label %land.lhs.true.i
    i8 16, label %sw.bb8.thread.i
    i8 21, label %sw.bb37.i
    i8 17, label %if.end10.sw.bb38.i_crit_edge
    i8 22, label %sw.bb54.i
    i8 23, label %sw.bb70.i
    i8 19, label %if.end10.sw.bb71.i_crit_edge
    i8 -1, label %sw.bb87.i
  ]

if.end10.sw.bb71.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb71.i

if.end10.sw.bb38.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb38.i

if.end10.sw.bb8.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb8.i

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end10
  %dst_name.i.i20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %33 = ptrtoint ptr %dst_name.i.i20 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %dst_name.i.i20, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %tobool.not.i.i21 = icmp eq i64 %34, 0
  br i1 %tobool.not.i.i21, label %j1939_cb_is_broadcast.exit.i24, label %land.lhs.true.i.do.body.i_crit_edge

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

j1939_cb_is_broadcast.exit.i24:                   ; preds = %land.lhs.true.i
  %da.i.i22 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %35 = ptrtoint ptr %da.i.i22 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %da.i.i22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %cmp.i.i23 = icmp eq i8 %36, -1
  br i1 %cmp.i.i23, label %j1939_cb_is_broadcast.exit.i24.sw.bb8.i_crit_edge, label %j1939_cb_is_broadcast.exit.i24.do.body.i_crit_edge

j1939_cb_is_broadcast.exit.i24.do.body.i_crit_edge: ; preds = %j1939_cb_is_broadcast.exit.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

j1939_cb_is_broadcast.exit.i24.sw.bb8.i_crit_edge: ; preds = %j1939_cb_is_broadcast.exit.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb8.i

do.body.i:                                        ; preds = %j1939_cb_is_broadcast.exit.i24.do.body.i_crit_edge, %land.lhs.true.i.do.body.i_crit_edge
  %.b160.i = load i1, ptr @j1939_tp_cmd_recv.__print_once, align 1
  br i1 %.b160.i, label %do.body.i.cleanup_crit_edge, label %if.then5.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @j1939_tp_cmd_recv.__print_once, align 1
  %ndev.i25 = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 2
  %37 = ptrtoint ptr %ndev.i25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ndev.i25, align 4
  %sa.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %39 = ptrtoint ptr %sa.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %sa.i, align 4
  %conv6.i = zext i8 %40 to i32
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.21, ptr noundef %38, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.j1939_tp_cmd_recv, i32 noundef %conv6.i) #14
  br label %cleanup

sw.bb8.i:                                         ; preds = %j1939_cb_is_broadcast.exit.i24.sw.bb8.i_crit_edge, %if.end10.sw.bb8.i_crit_edge
  %extd.1.i = phi i32 [ 0, %j1939_cb_is_broadcast.exit.i24.sw.bb8.i_crit_edge ], [ 1, %if.end10.sw.bb8.i_crit_edge ]
  %type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 38
  %41 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %type.i, align 2
  %conv10.i = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %extd.1.i, i32 %conv10.i)
  %cmp11.not.i = icmp eq i32 %extd.1.i, %conv10.i
  br i1 %cmp11.not.i, label %sw.bb8.i.if.end26.i_crit_edge, label %sw.bb8.i.cleanup_crit_edge

sw.bb8.i.cleanup_crit_edge:                       ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb8.i.if.end26.i_crit_edge:                    ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

sw.bb8.thread.i:                                  ; preds = %if.end10
  %type201.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 38
  %43 = ptrtoint ptr %type201.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %type201.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp11.not203.i = icmp eq i8 %44, 0
  br i1 %cmp11.not203.i, label %land.lhs.true18.i, label %sw.bb8.thread.i.cleanup_crit_edge

sw.bb8.thread.i.cleanup_crit_edge:                ; preds = %sw.bb8.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true18.i:                                ; preds = %sw.bb8.thread.i
  %dst_name.i161.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %45 = ptrtoint ptr %dst_name.i161.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %dst_name.i161.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %46)
  %tobool.not.i162.i = icmp eq i64 %46, 0
  br i1 %tobool.not.i162.i, label %j1939_cb_is_broadcast.exit166.i, label %land.lhs.true18.i.if.end26.i_crit_edge

land.lhs.true18.i.if.end26.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

j1939_cb_is_broadcast.exit166.i:                  ; preds = %land.lhs.true18.i
  %da.i163.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %47 = ptrtoint ptr %da.i163.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %da.i163.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %48)
  %cmp.i164.i = icmp eq i8 %48, -1
  br i1 %cmp.i164.i, label %if.then21.i, label %j1939_cb_is_broadcast.exit166.i.if.end26.i_crit_edge

j1939_cb_is_broadcast.exit166.i.if.end26.i_crit_edge: ; preds = %j1939_cb_is_broadcast.exit166.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then21.i:                                      ; preds = %j1939_cb_is_broadcast.exit166.i
  call void @__sanitizer_cov_trace_pc() #12
  %ndev22.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 2
  %49 = ptrtoint ptr %ndev22.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ndev22.i, align 4
  %sa24.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %51 = ptrtoint ptr %sa24.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %sa24.i, align 4
  %conv25.i = zext i8 %52 to i32
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %50, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.j1939_tp_cmd_recv, i32 noundef %conv25.i) #14
  br label %cleanup

if.end26.i:                                       ; preds = %j1939_cb_is_broadcast.exit166.i.if.end26.i_crit_edge, %land.lhs.true18.i.if.end26.i_crit_edge, %sw.bb8.i.if.end26.i_crit_edge
  %53 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %flags.i, align 8
  %55 = and i8 %54, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool28.not.i = icmp eq i8 %55, 0
  br i1 %tobool28.not.i, label %if.end26.i.if.end30.i_crit_edge, label %if.then29.i

if.end26.i.if.end30.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @j1939_xtp_rx_rts(ptr noundef %priv, ptr noundef %skb, i1 noundef zeroext true) #10
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then29.i, %if.end26.i.if.end30.i_crit_edge
  %56 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %flags.i, align 8
  %58 = and i8 %57, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool32.not.i = icmp eq i8 %58, 0
  br i1 %tobool32.not.i, label %lor.lhs.false.i, label %if.end30.i.if.then35.i_crit_edge

if.end30.i.if.then35.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35.i

lor.lhs.false.i:                                  ; preds = %if.end30.i
  %dst_name.i169.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %59 = ptrtoint ptr %dst_name.i169.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %dst_name.i169.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %60)
  %tobool.not.i170.i = icmp eq i64 %60, 0
  br i1 %tobool.not.i170.i, label %j1939_cb_is_broadcast.exit174.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

j1939_cb_is_broadcast.exit174.i:                  ; preds = %lor.lhs.false.i
  %da.i171.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %61 = ptrtoint ptr %da.i171.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %da.i171.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %62)
  %cmp.i172.i = icmp eq i8 %62, -1
  br i1 %cmp.i172.i, label %j1939_cb_is_broadcast.exit174.i.if.then35.i_crit_edge, label %j1939_cb_is_broadcast.exit174.i.cleanup_crit_edge

j1939_cb_is_broadcast.exit174.i.cleanup_crit_edge: ; preds = %j1939_cb_is_broadcast.exit174.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

j1939_cb_is_broadcast.exit174.i.if.then35.i_crit_edge: ; preds = %j1939_cb_is_broadcast.exit174.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35.i

if.then35.i:                                      ; preds = %j1939_cb_is_broadcast.exit174.i.if.then35.i_crit_edge, %if.end30.i.if.then35.i_crit_edge
  tail call fastcc void @j1939_xtp_rx_rts(ptr noundef %priv, ptr noundef %skb, i1 noundef zeroext false) #10
  br label %cleanup

sw.bb37.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb38.i

sw.bb38.i:                                        ; preds = %sw.bb37.i, %if.end10.sw.bb38.i_crit_edge
  %extd.2.i = phi i32 [ 0, %if.end10.sw.bb38.i_crit_edge ], [ 1, %sw.bb37.i ]
  %type40.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 38
  %63 = ptrtoint ptr %type40.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %type40.i, align 2
  %conv41.i = zext i8 %64 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %extd.2.i, i32 %conv41.i)
  %cmp42.not.i = icmp eq i32 %extd.2.i, %conv41.i
  br i1 %cmp42.not.i, label %if.end45.i, label %sw.bb38.i.cleanup_crit_edge

sw.bb38.i.cleanup_crit_edge:                      ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end45.i:                                       ; preds = %sw.bb38.i
  %65 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %flags.i, align 8
  %67 = and i8 %66, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool47.not.i = icmp eq i8 %67, 0
  br i1 %tobool47.not.i, label %if.end45.i.if.end49.i_crit_edge, label %if.then48.i

if.end45.i.if.end49.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i

if.then48.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @j1939_xtp_rx_cts(ptr noundef %priv, ptr noundef %skb, i1 noundef zeroext false) #10
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then48.i, %if.end45.i.if.end49.i_crit_edge
  %68 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %flags.i, align 8
  %70 = and i8 %69, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool51.not.i = icmp eq i8 %70, 0
  br i1 %tobool51.not.i, label %if.end49.i.cleanup_crit_edge, label %if.then52.i

if.end49.i.cleanup_crit_edge:                     ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then52.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @j1939_xtp_rx_cts(ptr noundef %priv, ptr noundef %skb, i1 noundef zeroext true) #10
  br label %cleanup

sw.bb54.i:                                        ; preds = %if.end10
  %type56.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 38
  %71 = ptrtoint ptr %type56.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %type56.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %72)
  %cmp58.not.i = icmp eq i8 %72, 1
  br i1 %cmp58.not.i, label %if.end61.i, label %sw.bb54.i.cleanup_crit_edge

sw.bb54.i.cleanup_crit_edge:                      ; preds = %sw.bb54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end61.i:                                       ; preds = %sw.bb54.i
  %73 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %flags.i, align 8
  %75 = and i8 %74, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool63.not.i = icmp eq i8 %75, 0
  br i1 %tobool63.not.i, label %if.end61.i.if.end65.i_crit_edge, label %if.then64.i

if.end61.i.if.end65.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65.i

if.then64.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @j1939_xtp_rx_dpo(ptr noundef %priv, ptr noundef %skb, i1 noundef zeroext true) #10
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then64.i, %if.end61.i.if.end65.i_crit_edge
  %76 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %flags.i, align 8
  %78 = and i8 %77, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool67.not.i = icmp eq i8 %78, 0
  br i1 %tobool67.not.i, label %if.end65.i.cleanup_crit_edge, label %if.then68.i

if.end65.i.cleanup_crit_edge:                     ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then68.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @j1939_xtp_rx_dpo(ptr noundef %priv, ptr noundef %skb, i1 noundef zeroext false) #10
  br label %cleanup

sw.bb70.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb71.i

sw.bb71.i:                                        ; preds = %sw.bb70.i, %if.end10.sw.bb71.i_crit_edge
  %extd.3.i = phi i32 [ 0, %if.end10.sw.bb71.i_crit_edge ], [ 1, %sw.bb70.i ]
  %type73.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 38
  %79 = ptrtoint ptr %type73.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %type73.i, align 2
  %conv74.i = zext i8 %80 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %extd.3.i, i32 %conv74.i)
  %cmp75.not.i = icmp eq i32 %extd.3.i, %conv74.i
  br i1 %cmp75.not.i, label %if.end78.i, label %sw.bb71.i.cleanup_crit_edge

sw.bb71.i.cleanup_crit_edge:                      ; preds = %sw.bb71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end78.i:                                       ; preds = %sw.bb71.i
  %81 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %flags.i, align 8
  %83 = and i8 %82, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool80.not.i = icmp eq i8 %83, 0
  br i1 %tobool80.not.i, label %if.end78.i.if.end82.i_crit_edge, label %if.then81.i

if.end78.i.if.end82.i_crit_edge:                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82.i

if.then81.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @j1939_xtp_rx_eoma(ptr noundef %priv, ptr noundef %skb, i1 noundef zeroext false) #10
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then81.i, %if.end78.i.if.end82.i_crit_edge
  %84 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %flags.i, align 8
  %86 = and i8 %85, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool84.not.i = icmp eq i8 %86, 0
  br i1 %tobool84.not.i, label %if.end82.i.cleanup_crit_edge, label %if.then85.i

if.end82.i.cleanup_crit_edge:                     ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then85.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @j1939_xtp_rx_eoma(ptr noundef %priv, ptr noundef %skb, i1 noundef zeroext true) #10
  br label %cleanup

sw.bb87.i:                                        ; preds = %if.end10
  %dst_name.i187.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %87 = ptrtoint ptr %dst_name.i187.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %dst_name.i187.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %88)
  %tobool.not.i188.i = icmp eq i64 %88, 0
  br i1 %tobool.not.i188.i, label %j1939_cb_is_broadcast.exit192.i, label %sw.bb87.i.if.end100.i_crit_edge

sw.bb87.i.if.end100.i_crit_edge:                  ; preds = %sw.bb87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100.i

j1939_cb_is_broadcast.exit192.i:                  ; preds = %sw.bb87.i
  %da.i189.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %89 = ptrtoint ptr %da.i189.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %da.i189.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %90)
  %cmp.i190.i = icmp eq i8 %90, -1
  br i1 %cmp.i190.i, label %do.body90.i, label %j1939_cb_is_broadcast.exit192.i.if.end100.i_crit_edge

j1939_cb_is_broadcast.exit192.i.if.end100.i_crit_edge: ; preds = %j1939_cb_is_broadcast.exit192.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100.i

do.body90.i:                                      ; preds = %j1939_cb_is_broadcast.exit192.i
  %.b158159.i = load i1, ptr @j1939_tp_cmd_recv.__print_once.41, align 1
  br i1 %.b158159.i, label %do.body90.i.cleanup_crit_edge, label %if.then92.i

do.body90.i.cleanup_crit_edge:                    ; preds = %do.body90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then92.i:                                      ; preds = %do.body90.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @j1939_tp_cmd_recv.__print_once.41, align 1
  %ndev93.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 2
  %91 = ptrtoint ptr %ndev93.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ndev93.i, align 4
  %sa95.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %93 = ptrtoint ptr %sa95.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %sa95.i, align 4
  %conv96.i = zext i8 %94 to i32
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.21, ptr noundef %92, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.j1939_tp_cmd_recv, i32 noundef %conv96.i) #14
  br label %cleanup

if.end100.i:                                      ; preds = %j1939_cb_is_broadcast.exit192.i.if.end100.i_crit_edge, %sw.bb87.i.if.end100.i_crit_edge
  %95 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %flags.i, align 8
  %97 = and i8 %96, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool102.not.i = icmp eq i8 %97, 0
  br i1 %tobool102.not.i, label %if.end100.i.if.end104.i_crit_edge, label %if.then103.i

if.end100.i.if.end104.i_crit_edge:                ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104.i

if.then103.i:                                     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @j1939_xtp_rx_abort_one(ptr noundef %priv, ptr noundef %skb, i1 noundef zeroext false, i1 noundef zeroext true) #10
  tail call fastcc void @j1939_xtp_rx_abort_one(ptr noundef %priv, ptr noundef %skb, i1 noundef zeroext true, i1 noundef zeroext true) #10
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then103.i, %if.end100.i.if.end104.i_crit_edge
  %98 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %flags.i, align 8
  %100 = and i8 %99, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool106.not.i = icmp eq i8 %100, 0
  br i1 %tobool106.not.i, label %if.end104.i.cleanup_crit_edge, label %if.then107.i

if.end104.i.cleanup_crit_edge:                    ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then107.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @j1939_xtp_rx_abort_one(ptr noundef %priv, ptr noundef %skb, i1 noundef zeroext false, i1 noundef zeroext false) #10
  tail call fastcc void @j1939_xtp_rx_abort_one(ptr noundef %priv, ptr noundef %skb, i1 noundef zeroext true, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then107.i, %if.end104.i.cleanup_crit_edge, %if.then92.i, %do.body90.i.cleanup_crit_edge, %if.then85.i, %if.end82.i.cleanup_crit_edge, %sw.bb71.i.cleanup_crit_edge, %if.then68.i, %if.end65.i.cleanup_crit_edge, %sw.bb54.i.cleanup_crit_edge, %if.then52.i, %if.end49.i.cleanup_crit_edge, %sw.bb38.i.cleanup_crit_edge, %if.then35.i, %j1939_cb_is_broadcast.exit174.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.then21.i, %sw.bb8.thread.i.cleanup_crit_edge, %sw.bb8.i.cleanup_crit_edge, %if.then5.i, %do.body.i.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %if.then22.i, %if.then18.i.cleanup_crit_edge, %j1939_cb_is_broadcast.exit.i.cleanup_crit_edge, %if.end16.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %j1939_cb_is_broadcast.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %j1939_cb_is_broadcast.exit.cleanup_crit_edge ], [ 0, %sw.bb8.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end16.i.cleanup_crit_edge ], [ 1, %j1939_cb_is_broadcast.exit.i.cleanup_crit_edge ], [ 1, %if.then18.i.cleanup_crit_edge ], [ 1, %if.then22.i ], [ 1, %if.end10.cleanup_crit_edge ], [ 1, %do.body.i.cleanup_crit_edge ], [ 1, %if.then5.i ], [ 1, %sw.bb8.i.cleanup_crit_edge ], [ 1, %sw.bb8.thread.i.cleanup_crit_edge ], [ 1, %if.then21.i ], [ 1, %lor.lhs.false.i.cleanup_crit_edge ], [ 1, %j1939_cb_is_broadcast.exit174.i.cleanup_crit_edge ], [ 1, %if.then35.i ], [ 1, %sw.bb38.i.cleanup_crit_edge ], [ 1, %if.end49.i.cleanup_crit_edge ], [ 1, %if.then52.i ], [ 1, %sw.bb54.i.cleanup_crit_edge ], [ 1, %if.end65.i.cleanup_crit_edge ], [ 1, %if.then68.i ], [ 1, %sw.bb71.i.cleanup_crit_edge ], [ 1, %if.end82.i.cleanup_crit_edge ], [ 1, %if.then85.i ], [ 1, %do.body90.i.cleanup_crit_edge ], [ 1, %if.then92.i ], [ 1, %if.end104.i.cleanup_crit_edge ], [ 1, %if.then107.i ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @j1939_simple_recv(ptr noundef %priv, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 29, i16 %4)
  %cmp.not = icmp eq i16 %4, 29
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 46
  %5 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sk_protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %6)
  %cmp3.not = icmp eq i16 %6, 7
  br i1 %cmp3.not, label %if.end6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %active_session_list_lock.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %active_session_list_lock.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %7 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end6.if.end.i_crit_edge, label %land.rhs.i

if.end6.if.end.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end6
  %dep_map.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !215

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 532, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end6.if.end.i_crit_edge
  %active_session_list.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 5
  %8 = ptrtoint ptr %active_session_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn61.i = load ptr, ptr %active_session_list.i, align 4
  %cmp27.not63.i = icmp eq ptr %.pn61.i, %active_session_list.i
  br i1 %cmp27.not63.i, label %if.end.i.j1939_session_get_simple.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end.i.j1939_session_get_simple.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_get_simple.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %tskey33.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %j1939_session_put.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn64.i = phi ptr [ %.pn61.i, %for.body.lr.ph.i ], [ %.pn.i, %j1939_session_put.exit.i.for.body.i_crit_edge ]
  %session.065.i = getelementptr i8, ptr %.pn64.i, i32 -4
  %kref.i.i = getelementptr i8, ptr %.pn64.i, i32 16
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #10, !srcloc !214
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %for.body.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !215

for.body.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %for.body.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.j1939_session_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !216

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.j1939_session_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %for.body.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %for.body.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #10
  br label %j1939_session_get.exit.i

j1939_session_get.exit.i:                         ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.j1939_session_get.exit.i_crit_edge
  %type.i = getelementptr i8, ptr %.pn64.i, i32 66
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp31.i = icmp eq i8 %12, 2
  br i1 %cmp31.i, label %land.lhs.true.i, label %j1939_session_get.exit.i.if.end40.i_crit_edge

j1939_session_get.exit.i.if.end40.i_crit_edge:    ; preds = %j1939_session_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i

land.lhs.true.i:                                  ; preds = %j1939_session_get.exit.i
  %tskey.i = getelementptr i8, ptr %.pn64.i, i32 152
  %13 = ptrtoint ptr %tskey.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tskey.i, align 4
  %15 = ptrtoint ptr %tskey33.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tskey33.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp34.i = icmp eq i32 %14, %16
  br i1 %cmp34.i, label %land.lhs.true36.i, label %land.lhs.true.i.if.end40.i_crit_edge

land.lhs.true.i.if.end40.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i

land.lhs.true36.i:                                ; preds = %land.lhs.true.i
  %sk.i = getelementptr i8, ptr %.pn64.i, i32 20
  %17 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk.i, align 8
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %0, align 4
  %cmp37.i = icmp eq ptr %18, %20
  br i1 %cmp37.i, label %j1939_session_get_simple.exit, label %land.lhs.true36.i.if.end40.i_crit_edge

land.lhs.true36.i.if.end40.i_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i

if.end40.i:                                       ; preds = %land.lhs.true36.i.if.end40.i_crit_edge, %land.lhs.true.i.if.end40.i_crit_edge, %j1939_session_get.exit.i.if.end40.i_crit_edge
  %call.i.i.i.i.i.i.i59.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #10, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i60.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i60.i, label %if.end5.i.i.i.i.i.i.j1939_session_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !216

if.end5.i.i.i.i.i.i.j1939_session_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_put.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef 3) #10
  br label %j1939_session_put.exit.i

if.then.i.i.i:                                    ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call fastcc void @j1939_session_destroy(ptr noundef %session.065.i) #10
  br label %j1939_session_put.exit.i

j1939_session_put.exit.i:                         ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.j1939_session_put.exit.i_crit_edge
  %22 = ptrtoint ptr %.pn64.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i = load ptr, ptr %.pn64.i, align 4
  %cmp27.not.i = icmp eq ptr %.pn.i, %active_session_list.i
  br i1 %cmp27.not.i, label %j1939_session_put.exit.i.j1939_session_get_simple.exit.thread_crit_edge, label %j1939_session_put.exit.i.for.body.i_crit_edge

j1939_session_put.exit.i.for.body.i_crit_edge:    ; preds = %j1939_session_put.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

j1939_session_put.exit.i.j1939_session_get_simple.exit.thread_crit_edge: ; preds = %j1939_session_put.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_get_simple.exit.thread

j1939_session_get_simple.exit.thread:             ; preds = %j1939_session_put.exit.i.j1939_session_get_simple.exit.thread_crit_edge, %if.end.i.j1939_session_get_simple.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %active_session_list_lock.i) #10
  br label %if.then8

j1939_session_get_simple.exit:                    ; preds = %land.lhs.true36.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %active_session_list_lock.i) #10
  %tobool7.not = icmp eq ptr %session.065.i, null
  br i1 %tobool7.not, label %j1939_session_get_simple.exit.if.then8_crit_edge, label %if.end9

j1939_session_get_simple.exit.if.then8_crit_edge: ; preds = %j1939_session_get_simple.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8:                                         ; preds = %j1939_session_get_simple.exit.if.then8_crit_edge, %j1939_session_get_simple.exit.thread
  %ndev = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 2
  %23 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %24, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.j1939_simple_recv) #14
  br label %cleanup

if.end9:                                          ; preds = %j1939_session_get_simple.exit
  tail call void @j1939_session_timers_cancel(ptr noundef nonnull %session.065.i)
  %25 = ptrtoint ptr %session.065.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %session.065.i, align 8
  %active_session_list_lock.i.i = getelementptr inbounds %struct.j1939_priv, ptr %26, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %active_session_list_lock.i.i) #10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i.i, i32 noundef 4) #10
  %27 = ptrtoint ptr %kref.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %kref.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp.i = icmp ult i32 %28, 2
  br i1 %cmp.i, label %land.rhs.i21, label %if.end9.j1939_session_deactivate.exit_crit_edge

if.end9.j1939_session_deactivate.exit_crit_edge:  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_deactivate.exit

land.rhs.i21:                                     ; preds = %if.end9
  %.b44.i = load i1, ptr @j1939_session_deactivate.__already_done, align 1
  br i1 %.b44.i, label %land.rhs.i21.j1939_session_deactivate.exit_crit_edge, label %if.then.i, !prof !216

land.rhs.i21.j1939_session_deactivate.exit_crit_edge: ; preds = %land.rhs.i21
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_deactivate.exit

if.then.i:                                        ; preds = %land.rhs.i21
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @j1939_session_deactivate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1090, i32 noundef 9, ptr noundef null) #10
  br label %j1939_session_deactivate.exit

j1939_session_deactivate.exit:                    ; preds = %if.then.i, %land.rhs.i21.j1939_session_deactivate.exit_crit_edge, %if.end9.j1939_session_deactivate.exit_crit_edge
  %call36.i = tail call fastcc zeroext i1 @j1939_session_deactivate_locked(ptr noundef nonnull %session.065.i) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %active_session_list_lock.i.i) #10
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #10
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #10, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i23 = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i23)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i23, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %j1939_session_deactivate.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i23)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i23, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !216

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i:                                      ; preds = %j1939_session_deactivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call fastcc void @j1939_session_destroy(ptr noundef nonnull %session.065.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.then8, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @j1939_cancel_active_session(ptr noundef %priv, ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @j1939_cancel_active_session.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@j1939_cancel_active_session, %if.then)) #10
          to label %do.end5 [label %if.then], !srcloc !221

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ndev = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @j1939_cancel_active_session.__UNIQUE_ID_ddebug479, ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, ptr noundef %sk) #10
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  %active_session_list_lock.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %active_session_list_lock.i) #10
  %active_session_list = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 5
  %2 = ptrtoint ptr %active_session_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active_session_list, align 4
  %cmp.not63 = icmp eq ptr %3, %active_session_list
  br i1 %cmp.not63, label %do.end5.for.end_crit_edge, label %for.body.lr.ph

do.end5.for.end_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end5
  %tobool15.not = icmp eq ptr %sk, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in64 = phi ptr [ %3, %for.body.lr.ph ], [ %.pn69, %for.inc.for.body_crit_edge ]
  %session.067 = getelementptr i8, ptr %.pn.in64, i32 -4
  %4 = ptrtoint ptr %.pn.in64 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn69 = load ptr, ptr %.pn.in64, align 4
  br i1 %tobool15.not, label %for.body.if.then18_crit_edge, label %lor.lhs.false

for.body.if.then18_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

lor.lhs.false:                                    ; preds = %for.body
  %sk16 = getelementptr i8, ptr %.pn.in64, i32 20
  %5 = ptrtoint ptr %sk16 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk16, align 8
  %cmp17 = icmp eq ptr %6, %sk
  br i1 %cmp17, label %lor.lhs.false.if.then18_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %for.body.if.then18_crit_edge
  %txtimer = getelementptr i8, ptr %.pn.in64, i32 188
  %call19 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %txtimer) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19)
  %cmp20 = icmp eq i32 %call19, 1
  br i1 %cmp20, label %if.then21, label %if.then18.if.end22_crit_edge

if.then18.if.end22_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then21:                                        ; preds = %if.then18
  %kref.i = getelementptr i8, ptr %.pn.in64, i32 16
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end22_crit_edge, label %if.then10.i.i.i.i.i, !prof !216

if.end5.i.i.i.i.i.if.end22_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %if.end22

if.then.i.i:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call fastcc void @j1939_session_destroy(ptr noundef %session.067) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end22_crit_edge, %if.then18.if.end22_crit_edge
  %rxtimer = getelementptr i8, ptr %.pn.in64, i32 236
  %call23 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %rxtimer) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call23)
  %cmp24 = icmp eq i32 %call23, 1
  br i1 %cmp24, label %if.then25, label %if.end22.if.end26_crit_edge

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then25:                                        ; preds = %if.end22
  %kref.i50 = getelementptr i8, ptr %.pn.in64, i32 16
  %call.i.i.i.i.i.i.i51 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i50, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %kref.i50, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i50, ptr %kref.i50, i32 1, ptr elementtype(i32) %kref.i50) #10, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i52 = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i52)
  %cmp.i.i.i.i.i53 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i52, 1
  br i1 %cmp.i.i.i.i.i53, label %if.then.i.i57, label %if.end5.i.i.i.i.i55

if.end5.i.i.i.i.i55:                              ; preds = %if.then25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i52)
  %.not.i.i.i.i.i54 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i52, 0
  br i1 %.not.i.i.i.i.i54, label %if.end5.i.i.i.i.i55.if.end26_crit_edge, label %if.then10.i.i.i.i.i56, !prof !216

if.end5.i.i.i.i.i55.if.end26_crit_edge:           ; preds = %if.end5.i.i.i.i.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then10.i.i.i.i.i56:                            ; preds = %if.end5.i.i.i.i.i55
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i50, i32 noundef 3) #10
  br label %if.end26

if.then.i.i57:                                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call fastcc void @j1939_session_destroy(ptr noundef %session.067) #10
  br label %if.end26

if.end26:                                         ; preds = %if.then.i.i57, %if.then10.i.i.i.i.i56, %if.end5.i.i.i.i.i55.if.end26_crit_edge, %if.end22.if.end26_crit_edge
  %err = getelementptr i8, ptr %.pn.in64, i32 148
  %9 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 108, ptr %err, align 8
  %call27 = tail call fastcc zeroext i1 @j1939_session_deactivate_locked(ptr noundef %session.067)
  br label %for.inc

for.inc:                                          ; preds = %if.end26, %lor.lhs.false.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn69, %active_session_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end5.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %active_session_list_lock.i) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @j1939_session_deactivate_locked(ptr noundef %session) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %1 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %session, align 8
  %dep_map = getelementptr inbounds %struct.j1939_priv, ptr %2, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !215

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1067, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %state = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 16
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 8
  %5 = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %if.then27, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then27:                                        ; preds = %if.end
  %active_session_list_entry = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %active_session_list_entry) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then27.list_del_init.exit_crit_edge

if.then27.list_del_init.exit_crit_edge:           ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %active_session_list_entry to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %active_session_list_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then27.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %active_session_list_entry to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %active_session_list_entry, ptr %active_session_list_entry, align 4
  %prev.i3.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %active_session_list_entry, ptr %prev.i3.i, align 4
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %state, align 8
  %kref.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end29_crit_edge, label %if.then10.i.i.i.i.i, !prof !216

if.end5.i.i.i.i.i.if.end29_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %if.end29

if.then.i.i:                                      ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call fastcc void @j1939_session_destroy(ptr noundef %session) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end29_crit_edge, %if.end.if.end29_crit_edge
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @j1939_tp_init(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %active_session_list_lock = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %active_session_list_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @j1939_tp_init.__key, i16 noundef signext 3) #10
  %active_session_list = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %active_session_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %active_session_list, ptr %active_session_list, align 4
  %prev.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %active_session_list, ptr %prev.i, align 4
  %tp_max_packet_size = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 7
  %2 = ptrtoint ptr %tp_max_packet_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 117440505, ptr %tp_max_packet_size, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @j1939_session_destroy(ptr noundef %session) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %transmission = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 9
  %0 = ptrtoint ptr %transmission to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %transmission, align 2, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %err4 = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 14
  %2 = ptrtoint ptr %err4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %err4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else3, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %. = select i1 %tobool5.not, i32 0, i32 2
  br label %do.body9.sink.split

if.else3:                                         ; preds = %entry
  br i1 %tobool5.not, label %if.else3.do.body9_crit_edge, label %if.else3.do.body9.sink.split_crit_edge

if.else3.do.body9.sink.split_crit_edge:           ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body9.sink.split

if.else3.do.body9_crit_edge:                      ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body9

do.body9.sink.split:                              ; preds = %if.else3.do.body9.sink.split_crit_edge, %if.then
  %.sink = phi i32 [ %., %if.then ], [ 5, %if.else3.do.body9.sink.split_crit_edge ]
  tail call void @j1939_sk_errqueue(ptr noundef %session, i32 noundef %.sink) #10
  br label %do.body9

do.body9:                                         ; preds = %do.body9.sink.split, %if.else3.do.body9_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @j1939_session_destroy.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@j1939_session_destroy, %if.then13)) #10
          to label %do.end15 [label %if.then13], !srcloc !221

if.then13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %session, align 8
  %ndev = getelementptr inbounds %struct.j1939_priv, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @j1939_session_destroy.__UNIQUE_ID_ddebug458, ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.8, ptr noundef %session) #10
  br label %do.end15

do.end15:                                         ; preds = %if.then13, %do.body9
  %sk_session_queue_entry = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 2
  %8 = ptrtoint ptr %sk_session_queue_entry to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %sk_session_queue_entry, align 4
  %cmp.i.not = icmp eq ptr %9, %sk_session_queue_entry
  br i1 %cmp.i.not, label %do.end15.if.end60_crit_edge, label %land.rhs

do.end15.if.end60_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

land.rhs:                                         ; preds = %do.end15
  %.b145 = load i1, ptr @j1939_session_destroy.__already_done, align 1
  br i1 %.b145, label %land.rhs.if.end60_crit_edge, label %if.then35, !prof !216

land.rhs.if.end60_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then35:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @j1939_session_destroy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 274, i32 noundef 9, ptr noundef null) #10
  br label %if.end60

if.end60:                                         ; preds = %if.then35, %land.rhs.if.end60_crit_edge, %do.end15.if.end60_crit_edge
  %active_session_list_entry = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 1
  %10 = ptrtoint ptr %active_session_list_entry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %active_session_list_entry, align 4
  %cmp.i146.not = icmp eq ptr %11, %active_session_list_entry
  br i1 %cmp.i146.not, label %if.end60.if.end117_crit_edge, label %land.rhs79

if.end60.if.end117_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end117

land.rhs79:                                       ; preds = %if.end60
  %.b143144 = load i1, ptr @j1939_session_destroy.__already_done.9, align 1
  br i1 %.b143144, label %land.rhs79.if.end117_crit_edge, label %if.then90, !prof !216

land.rhs79.if.end117_crit_edge:                   ; preds = %land.rhs79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end117

if.then90:                                        ; preds = %land.rhs79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @j1939_session_destroy.__already_done.9, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #10
  br label %if.end117

if.end117:                                        ; preds = %if.then90, %land.rhs79.if.end117_crit_edge, %if.end60.if.end117_crit_edge
  %skb_queue = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 6
  tail call void @skb_queue_purge(ptr noundef %skb_queue) #10
  %12 = ptrtoint ptr %transmission to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %transmission, align 2, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.end117.__j1939_session_drop.exit_crit_edge, label %if.end.i

if.end117.__j1939_session_drop.exit_crit_edge:    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %__j1939_session_drop.exit

if.end.i:                                         ; preds = %if.end117
  %sk.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 4
  %14 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk.i, align 8
  tail call void @j1939_sock_pending_del(ptr noundef %15) #10
  %16 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk.i, align 8
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %17, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #10, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.__j1939_session_drop.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !216

if.end5.i.i.i.i.i.__j1939_session_drop.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__j1939_session_drop.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #10
  br label %__j1939_session_drop.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @sk_free(ptr noundef %17) #10
  br label %__j1939_session_drop.exit

__j1939_session_drop.exit:                        ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.__j1939_session_drop.exit_crit_edge, %if.end117.__j1939_session_drop.exit_crit_edge
  %19 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %session, align 8
  tail call void @j1939_priv_put(ptr noundef %20) #10
  tail call void @kfree(ptr noundef %session) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_sk_errqueue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_priv_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_sock_pending_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_priv_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @j1939_tp_txtimer(ptr noundef %hrtimer) #0 align 64 {
entry:
  %dat.i.i = alloca [8 x i8], align 1
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hrtimer, i32 -192
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %type = getelementptr i8, ptr %hrtimer, i32 -122
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp eq i8 %3, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %dpo.i.i = getelementptr i8, ptr %hrtimer, i32 -4
  %4 = ptrtoint ptr %dpo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dpo.i.i, align 4
  %mul.i.i = mul i32 %5, 7
  %call.i.i = tail call fastcc ptr @j1939_session_skb_get_by_offset(ptr noundef %add.ptr, i32 noundef %mul.i.i) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.sw.bb16_crit_edge, label %if.end.i

if.then.sw.bb16_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb16

if.end.i:                                         ; preds = %if.then
  %call2.i = tail call ptr @skb_clone(ptr noundef nonnull %call.i.i, i32 noundef 2592) #10
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i.if.then11.i_crit_edge, label %if.end5.i

if.end.i.if.then11.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i

if.end5.i:                                        ; preds = %if.end.i
  %6 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end5.i.can_skb_set_owner.exit.i_crit_edge, label %land.lhs.true.i.i

if.end5.i.can_skb_set_owner.exit.i_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_skb_set_owner.exit.i

land.lhs.true.i.i:                                ; preds = %if.end5.i
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #10
  %9 = ptrtoint ptr %skc_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %skc_refcnt.i.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.lhs.true.i.i
  %11 = phi i32 [ %10, %land.lhs.true.i.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %12 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %11, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #10
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #10
  %13 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %15 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 %14, i32 %add.i.i.i.i.i, ptr elementtype(i32) %skc_refcnt.i.i) #10, !srcloc !225
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %14
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !216

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %16 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %17, 1
  %18 = or i32 %add5.i.i.i.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !216

if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc_not_zero.exit.i.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 0) #10
  %19 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr.i.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i.i

refcount_inc_not_zero.exit.i.i:                   ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge
  %20 = phi i32 [ %17, %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge ], [ %.pr.i.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool12.i.i.i.not.i.i = icmp eq i32 %20, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #10
  br i1 %tobool12.i.i.i.not.i.i, label %refcount_inc_not_zero.exit.i.i.can_skb_set_owner.exit.i_crit_edge, label %if.then.i.i

refcount_inc_not_zero.exit.i.i.can_skb_set_owner.exit.i_crit_edge: ; preds = %refcount_inc_not_zero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_skb_set_owner.exit.i

if.then.i.i:                                      ; preds = %refcount_inc_not_zero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i, i32 0, i32 4, i32 0, i32 1
  %21 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sock_efree, ptr %destructor.i.i, align 4
  %22 = getelementptr inbounds %struct.sk_buff, ptr %call2.i, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %8, ptr %22, align 4
  br label %can_skb_set_owner.exit.i

can_skb_set_owner.exit.i:                         ; preds = %if.then.i.i, %refcount_inc_not_zero.exit.i.i.can_skb_set_owner.exit.i_crit_edge, %if.end5.i.can_skb_set_owner.exit.i_crit_edge
  call fastcc void @j1939_tp_set_rxtimeout(ptr noundef %add.ptr, i32 noundef 10000) #10
  %call6.i = call i32 @j1939_send_one(ptr noundef %1, ptr noundef nonnull %call2.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.else.i, label %can_skb_set_owner.exit.i.if.then11.i_crit_edge

can_skb_set_owner.exit.i.if.then11.i_crit_edge:   ; preds = %can_skb_set_owner.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i

if.then11.i:                                      ; preds = %can_skb_set_owner.exit.i.if.then11.i_crit_edge, %if.end.i.if.then11.i_crit_edge
  %ret.0.ph.i = phi i32 [ -12, %if.end.i.if.then11.i_crit_edge ], [ %call6.i, %can_skb_set_owner.exit.i.if.then11.i_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  br label %if.end7

if.else.i:                                        ; preds = %can_skb_set_owner.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @j1939_sk_errqueue(ptr noundef %add.ptr, i32 noundef 1) #10
  call void @j1939_sk_queue_activate_next(ptr noundef %add.ptr) #10
  call void @consume_skb(ptr noundef nonnull %call.i.i) #10
  br label %sw.bb16

if.else:                                          ; preds = %entry
  %transmission = getelementptr i8, ptr %hrtimer, i32 -54
  %24 = ptrtoint ptr %transmission to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %transmission, align 2, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  br i1 %tobool.not, label %if.else5, label %if.then3

if.then3:                                         ; preds = %if.else
  %skcb.i = getelementptr i8, ptr %hrtimer, i32 -160
  %flags.i.i = getelementptr i8, ptr %hrtimer, i32 -120
  %26 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %flags.i.i, align 8
  %28 = and i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i53 = icmp eq i8 %28, 0
  br i1 %tobool.not.i53, label %if.then.i, label %if.end.i54

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %ndev.i = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ndev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %30, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.j1939_xtp_txnext_transmiter, ptr noundef %add.ptr) #14
  br label %sw.default

if.end.i54:                                       ; preds = %if.then3
  %last_cmd.i = getelementptr i8, ptr %hrtimer, i32 -56
  %31 = ptrtoint ptr %last_cmd.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %last_cmd.i, align 8
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %32, label %sw.default.i [
    i8 0, label %sw.bb.i
    i8 21, label %sw.bb3.i
    i8 17, label %if.end.i54.sw.bb12.i_crit_edge
    i8 -1, label %if.end.i54.sw.bb12.i_crit_edge192
    i8 22, label %if.end.i54.sw.bb12.i_crit_edge193
    i8 32, label %if.end.i54.sw.bb12.i_crit_edge194
  ]

if.end.i54.sw.bb12.i_crit_edge194:                ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12.i

if.end.i54.sw.bb12.i_crit_edge193:                ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12.i

if.end.i54.sw.bb12.i_crit_edge192:                ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12.i

if.end.i54.sw.bb12.i_crit_edge:                   ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12.i

sw.bb.i:                                          ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i55 = tail call fastcc i32 @j1939_session_tx_rts(ptr noundef %add.ptr) #10
  br label %if.end7

sw.bb3.i:                                         ; preds = %if.end.i54
  %last_txcmd.i = getelementptr i8, ptr %hrtimer, i32 -55
  %34 = ptrtoint ptr %last_txcmd.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %last_txcmd.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %35)
  %cmp.not.i = icmp eq i8 %35, 22
  br i1 %cmp.not.i, label %sw.bb3.i.sw.bb12.i_crit_edge, label %if.then6.i

sw.bb3.i.sw.bb12.i_crit_edge:                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12.i

if.then6.i:                                       ; preds = %sw.bb3.i
  %call7.i = tail call fastcc i32 @j1939_session_tx_dpo(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then6.i.sw.bb12.i_crit_edge, label %if.then6.i.if.end7_crit_edge

if.then6.i.if.end7_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6.i.sw.bb12.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12.i

sw.bb12.i:                                        ; preds = %if.then6.i.sw.bb12.i_crit_edge, %sw.bb3.i.sw.bb12.i_crit_edge, %if.end.i54.sw.bb12.i_crit_edge, %if.end.i54.sw.bb12.i_crit_edge192, %if.end.i54.sw.bb12.i_crit_edge193, %if.end.i54.sw.bb12.i_crit_edge194
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dat.i.i)
  %pkt.i.i = getelementptr i8, ptr %hrtimer, i32 -28
  %tx.i.i = getelementptr i8, ptr %hrtimer, i32 -20
  %dat.i.i.1.dat.i.i.1.dat.i.1.dat.i.1..sroa_idx127 = getelementptr inbounds i8, ptr %dat.i.i, i32 1
  %38 = call ptr @memset(ptr %dat.i.i.1.dat.i.i.1.dat.i.1.dat.i.1..sroa_idx127, i32 255, i32 7)
  %39 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx.i.i, align 4
  %mul.i.i56 = mul i32 %40, 7
  %call.i.i57 = tail call fastcc ptr @j1939_session_skb_get_by_offset(ptr noundef %add.ptr, i32 noundef %mul.i.i56) #10
  %tobool.not.i.i58 = icmp eq ptr %call.i.i57, null
  br i1 %tobool.not.i.i58, label %sw.bb12.i.j1939_session_tx_dat.exit.i_crit_edge, label %if.end.i.i

sw.bb12.i.j1939_session_tx_dat.exit.i_crit_edge:  ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_tx_dat.exit.i

if.end.i.i:                                       ; preds = %sw.bb12.i
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i57, i32 0, i32 3
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i57, i32 0, i32 19
  %41 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i.i, align 4
  %43 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp.not.i.i = icmp eq i8 %44, 1
  br i1 %cmp.not.i.i, label %if.end.i.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i59

if.end.i.i.if.else.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

land.lhs.true.i.i59:                              ; preds = %if.end.i.i
  %dst_name.i.i.i = getelementptr i8, ptr %hrtimer, i32 -136
  %45 = ptrtoint ptr %dst_name.i.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %dst_name.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %46)
  %tobool.not.i.i.i = icmp eq i64 %46, 0
  br i1 %tobool.not.i.i.i, label %j1939_cb_is_broadcast.exit.i.i, label %land.lhs.true.i.i59.if.else.i.i_crit_edge

land.lhs.true.i.i59.if.else.i.i_crit_edge:        ; preds = %land.lhs.true.i.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

j1939_cb_is_broadcast.exit.i.i:                   ; preds = %land.lhs.true.i.i59
  %da.i.i.i = getelementptr i8, ptr %hrtimer, i32 -123
  %47 = ptrtoint ptr %da.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %da.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %48)
  %cmp.i.i.i = icmp eq i8 %48, -1
  br i1 %cmp.i.i.i, label %j1939_cb_is_broadcast.exit.i.i.if.end10.i.i_crit_edge, label %j1939_cb_is_broadcast.exit.i.i.if.else.i.i_crit_edge

j1939_cb_is_broadcast.exit.i.i.if.else.i.i_crit_edge: ; preds = %j1939_cb_is_broadcast.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

j1939_cb_is_broadcast.exit.i.i.if.end10.i.i_crit_edge: ; preds = %j1939_cb_is_broadcast.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i

if.else.i.i:                                      ; preds = %j1939_cb_is_broadcast.exit.i.i.if.else.i.i_crit_edge, %land.lhs.true.i.i59.if.else.i.i_crit_edge, %if.end.i.i.if.else.i.i_crit_edge
  %last.i.i = getelementptr i8, ptr %hrtimer, i32 -24
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.else.i.i, %j1939_cb_is_broadcast.exit.i.i.if.end10.i.i_crit_edge
  %pkt_end.0.in.i.i = phi ptr [ %last.i.i, %if.else.i.i ], [ %pkt.i.i, %j1939_cb_is_broadcast.exit.i.i.if.end10.i.i_crit_edge ]
  %49 = ptrtoint ptr %pkt_end.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %pkt_end.0.i.i = load i32, ptr %pkt_end.0.in.i.i, align 4
  %50 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %pkt_end.0.i.i)
  %cmp13162.i.i = icmp ult i32 %51, %pkt_end.0.i.i
  br i1 %cmp13162.i.i, label %while.body.lr.ph.i.i, label %if.end10.i.i.if.else80.i.i_crit_edge

if.end10.i.i.if.else80.i.i_crit_edge:             ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else80.i.i

while.body.lr.ph.i.i:                             ; preds = %if.end10.i.i
  %dpo.i.i60 = getelementptr i8, ptr %hrtimer, i32 -4
  %len24.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i57, i32 0, i32 6
  %last_txcmd.i.i = getelementptr i8, ptr %hrtimer, i32 -55
  %dst_name.i136.i.i = getelementptr i8, ptr %hrtimer, i32 -136
  %da.i138.i.i = getelementptr i8, ptr %hrtimer, i32 -123
  br label %while.body.i.i

while.cond.i.i:                                   ; preds = %j1939_cb_is_broadcast.exit141.thread.i.i.while.cond.i.i_crit_edge, %if.end58.i.i.while.cond.i.i_crit_edge
  %cmp13.i.i = icmp ult i32 %inc61.i.i, %pkt_end.0.i.i
  br i1 %cmp13.i.i, label %while.cond.i.i.while.body.i.i_crit_edge, label %while.cond.i.i.while.end.i.i_crit_edge

while.cond.i.i.while.end.i.i_crit_edge:           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %52 = phi i32 [ %51, %while.body.lr.ph.i.i ], [ %inc61.i.i, %while.cond.i.i.while.body.i.i_crit_edge ]
  %pkt_done.0163.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %inc.i.i, %while.cond.i.i.while.body.i.i_crit_edge ]
  %53 = ptrtoint ptr %dpo.i.i60 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dpo.i.i60, align 4
  %sub.i.i = sub i32 %52, %54
  %55 = trunc i32 %sub.i.i to i8
  %conv18.i.i = add i8 %55, 1
  %56 = ptrtoint ptr %dat.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv18.i.i, ptr %dat.i.i, align 1
  %mul21.i.i = mul i32 %52, 7
  %57 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cb.i.i.i, align 8
  %sub23.i.i = sub i32 %mul21.i.i, %58
  %59 = ptrtoint ptr %len24.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len24.i.i, align 4
  %sub25.i.i = sub i32 %60, %sub23.i.i
  %61 = tail call i32 @llvm.umin.i32(i32 %sub25.i.i, i32 7) #10
  %add30.i.i = add i32 %61, %sub23.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add30.i.i, i32 %60)
  %cmp32.i.i = icmp ugt i32 %add30.i.i, %60
  br i1 %cmp32.i.i, label %do.body.i.i, label %if.end42.i.i

do.body.i.i:                                      ; preds = %while.body.i.i
  %.b134.i.i = load i1, ptr @j1939_session_tx_dat.__print_once, align 1
  br i1 %.b134.i.i, label %do.body.i.i.if.then79.i.i_crit_edge, label %if.then36.i.i

do.body.i.i.if.then79.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then79.i.i

if.then36.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @j1939_session_tx_dat.__print_once, align 1
  %ndev.i.i = getelementptr inbounds %struct.j1939_priv, ptr %37, i32 0, i32 2
  %62 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ndev.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.21, ptr noundef %63, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.j1939_session_tx_dat, ptr noundef %add.ptr, i32 noundef %58, i32 noundef %60, i32 noundef %52) #14
  br label %if.then79.i.i

if.end42.i.i:                                     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool43.not.i.i = icmp eq i32 %61, 0
  br i1 %tobool43.not.i.i, label %if.end42.i.i.while.end.i.i_crit_edge, label %if.end45.i.i

if.end42.i.i.while.end.i.i_crit_edge:             ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

if.end45.i.i:                                     ; preds = %if.end42.i.i
  %arrayidx47.i.i = getelementptr i8, ptr %42, i32 %sub23.i.i
  %64 = call ptr @memcpy(ptr %dat.i.i.1.dat.i.i.1.dat.i.1.dat.i.1..sroa_idx127, ptr %arrayidx47.i.i, i32 %61)
  %add48.i.i = add nuw nsw i32 %61, 1
  %65 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr, align 8
  %call.i.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 32, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end45.i.i.if.then.i.i.i_crit_edge, label %j1939_tp_tx_dat_new.exit.i.i.i, !prof !215

if.end45.i.i.if.then.i.i.i_crit_edge:             ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

j1939_tp_tx_dat_new.exit.i.i.i:                   ; preds = %if.end45.i.i
  %ndev.i.i.i.i = getelementptr inbounds %struct.j1939_priv, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %ndev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ndev.i.i.i.i, align 4
  %69 = getelementptr inbounds %struct.anon.1, ptr %call.i.i.i.i.i, i32 0, i32 2
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %68, ptr %69, align 8
  %data.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 19
  %71 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %72, i32 16
  store ptr %add.ptr.i.i.i.i.i.i, ptr %data.i.i.i.i.i.i, align 4
  %tail.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 16
  %73 = ptrtoint ptr %tail.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tail.i.i.i.i.i.i, align 8
  %add.ptr1.i.i.i.i.i.i = getelementptr i8, ptr %74, i32 16
  store ptr %add.ptr1.i.i.i.i.i.i, ptr %tail.i.i.i.i.i.i, align 8
  %75 = load ptr, ptr %ndev.i.i.i.i, align 4
  %ifindex.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 17
  %76 = ptrtoint ptr %ifindex.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ifindex.i.i.i.i, align 4
  %head.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 18
  %78 = ptrtoint ptr %head.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %head.i.i.i.i.i, align 8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %77, ptr %79, align 8
  %81 = load ptr, ptr %head.i.i.i.i.i, align 8
  %skbcnt.i.i.i.i = getelementptr inbounds %struct.can_skb_priv, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %skbcnt.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %skbcnt.i.i.i.i, align 4
  %83 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %83, i32 8
  store ptr %add.ptr.i.i.i.i.i, ptr %data.i.i.i.i.i.i, align 4
  %84 = load ptr, ptr %tail.i.i.i.i.i.i, align 8
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %84, i32 8
  store ptr %add.ptr1.i.i.i.i.i, ptr %tail.i.i.i.i.i.i, align 8
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3
  %85 = call ptr @memcpy(ptr %cb.i.i.i.i, ptr %skcb.i, i32 48)
  %type.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3, i32 38
  %86 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %type.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %87)
  %cmp.i.i.i.i = icmp eq i8 %87, 1
  %pgn.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3, i32 32
  %.53.i.i.i.i = select i1 %cmp.i.i.i.i, i32 50944, i32 60160
  %88 = ptrtoint ptr %pgn.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %.53.i.i.i.i, ptr %pgn.i.i.i.i, align 8
  %cmp.i20.i.i.i = icmp ugt ptr %call.i.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i20.i.i.i, label %j1939_tp_tx_dat_new.exit.i.i.i.if.then.i.i.i_crit_edge, label %if.end.i.i.i

j1939_tp_tx_dat_new.exit.i.i.i.if.then.i.i.i_crit_edge: ; preds = %j1939_tp_tx_dat_new.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %j1939_tp_tx_dat_new.exit.i.i.i.if.then.i.i.i_crit_edge, %if.end45.i.i.if.then.i.i.i_crit_edge
  %retval.0.i23.i.i.i = phi ptr [ %call.i.i.i.i.i, %j1939_tp_tx_dat_new.exit.i.i.i.if.then.i.i.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end45.i.i.if.then.i.i.i_crit_edge ]
  %89 = ptrtoint ptr %retval.0.i23.i.i.i to i32
  br label %j1939_tp_tx_dat.exit.i.i

if.end.i.i.i:                                     ; preds = %j1939_tp_tx_dat_new.exit.i.i.i
  %call.i.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i.i, i32 noundef %add48.i.i) #10
  %90 = call ptr @memcpy(ptr %call.i.i.i.i, ptr %dat.i.i, i32 %add48.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub25.i.i)
  %cmp.i135.not.i.i = icmp ugt i32 %sub25.i.i, 6
  br i1 %cmp.i135.not.i.i, label %if.end.i.i.i.if.end8.i.i.i_crit_edge, label %if.then5.i.i.i

if.end.i.i.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = xor i32 %61, 7
  %call6.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i.i, i32 noundef %sub.i.i.i) #10
  %91 = call ptr @memset(ptr %call6.i.i.i, i32 255, i32 %sub.i.i.i)
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then5.i.i.i, %if.end.i.i.i.if.end8.i.i.i_crit_edge
  %call9.i.i.i = tail call i32 @j1939_send_one(ptr noundef %66, ptr noundef nonnull %call.i.i.i.i.i) #10
  br label %j1939_tp_tx_dat.exit.i.i

j1939_tp_tx_dat.exit.i.i:                         ; preds = %if.end8.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %89, %if.then.i.i.i ], [ %call9.i.i.i, %if.end8.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp50.i.i = icmp slt i32 %retval.0.i.i.i, 0
  br i1 %cmp50.i.i, label %if.then52.i.i, label %if.end58.i.i

if.then52.i.i:                                    ; preds = %j1939_tp_tx_dat.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -105, i32 %retval.0.i.i.i)
  %cmp53.not.i.i = icmp eq i32 %retval.0.i.i.i, -105
  br i1 %cmp53.not.i.i, label %if.then52.i.i.while.end.i.i_crit_edge, label %if.then55.i.i

if.then52.i.i.while.end.i.i_crit_edge:            ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

if.then55.i.i:                                    ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ndev56.i.i = getelementptr inbounds %struct.j1939_priv, ptr %37, i32 0, i32 2
  %92 = ptrtoint ptr %ndev56.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ndev56.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %93, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.j1939_session_tx_dat, ptr noundef %add.ptr, i32 noundef %retval.0.i.i.i) #14
  br label %while.end.i.i

if.end58.i.i:                                     ; preds = %j1939_tp_tx_dat.exit.i.i
  %94 = ptrtoint ptr %last_txcmd.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -1, ptr %last_txcmd.i.i, align 1
  %inc.i.i = add i32 %pkt_done.0163.i.i, 1
  %95 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tx.i.i, align 4
  %inc61.i.i = add i32 %96, 1
  store i32 %inc61.i.i, ptr %tx.i.i, align 4
  %97 = ptrtoint ptr %dst_name.i136.i.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %dst_name.i136.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %98)
  %tobool.not.i137.i.i = icmp eq i64 %98, 0
  br i1 %tobool.not.i137.i.i, label %j1939_cb_is_broadcast.exit141.thread.i.i, label %if.end58.i.i.while.cond.i.i_crit_edge

if.end58.i.i.while.cond.i.i_crit_edge:            ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

j1939_cb_is_broadcast.exit141.thread.i.i:         ; preds = %if.end58.i.i
  %99 = ptrtoint ptr %da.i138.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %da.i138.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %100)
  %cmp.i139.i.i = icmp eq i8 %100, -1
  %101 = ptrtoint ptr %pkt.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pkt.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc61.i.i, i32 %102)
  %cmp69.i.i = icmp uge i32 %inc61.i.i, %102
  %call63.not.i.i = xor i1 %cmp.i139.i.i, true
  %brmerge.i.i = select i1 %cmp69.i.i, i1 true, i1 %call63.not.i.i
  br i1 %brmerge.i.i, label %j1939_cb_is_broadcast.exit141.thread.i.i.while.cond.i.i_crit_edge, label %if.then73.i.i

j1939_cb_is_broadcast.exit141.thread.i.i.while.cond.i.i_crit_edge: ; preds = %j1939_cb_is_broadcast.exit141.thread.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

if.then73.i.i:                                    ; preds = %j1939_cb_is_broadcast.exit141.thread.i.i
  %kref.i.i.i.i = getelementptr i8, ptr %hrtimer, i32 -172
  %call.i.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref.i.i.i.i, i32 1, i32 3, i32 1) #10
  %103 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i.i.i, ptr %kref.i.i.i.i, i32 1, ptr elementtype(i32) %kref.i.i.i.i) #10, !srcloc !214
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %103, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i.i, label %if.then73.i.i.if.end15.sink.split.i.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i.i, !prof !215

if.then73.i.i.if.end15.sink.split.i.i.i.i.i.i.i.i_crit_edge: ; preds = %if.then73.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.i:                          ; preds = %if.then73.i.i
  %add.i.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  %104 = or i32 %add.i.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %104)
  %.not.i.i.i.i.i.i.i.i = icmp sgt i32 %104, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.i.j1939_tp_schedule_txtimer.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i.i_crit_edge, !prof !216

if.else.i.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.i.j1939_tp_schedule_txtimer.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_tp_schedule_txtimer.exit.i.i

if.end15.sink.split.i.i.i.i.i.i.i.i:              ; preds = %if.else.i.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i.i_crit_edge, %if.then73.i.i.if.end15.sink.split.i.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %if.then73.i.i.if.end15.sink.split.i.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i.i) #10
  br label %j1939_tp_schedule_txtimer.exit.i.i

j1939_tp_schedule_txtimer.exit.i.i:               ; preds = %if.end15.sink.split.i.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.i.j1939_tp_schedule_txtimer.exit.i.i_crit_edge
  %mul.i.i.i.i = select i1 %cmp.i139.i.i, i64 50000000, i64 0
  tail call void @hrtimer_start_range_ns(ptr noundef %hrtimer, i64 noundef %mul.i.i.i.i, i64 noundef 0, i32 noundef 5) #10
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %j1939_tp_schedule_txtimer.exit.i.i, %if.then55.i.i, %if.then52.i.i.while.end.i.i_crit_edge, %if.end42.i.i.while.end.i.i_crit_edge, %while.cond.i.i.while.end.i.i_crit_edge
  %pkt_done.1.i.i = phi i32 [ %pkt_done.0163.i.i, %if.then55.i.i ], [ %pkt_done.0163.i.i, %if.then52.i.i.while.end.i.i_crit_edge ], [ %inc.i.i, %j1939_tp_schedule_txtimer.exit.i.i ], [ %inc.i.i, %while.cond.i.i.while.end.i.i_crit_edge ], [ %pkt_done.0163.i.i, %if.end42.i.i.while.end.i.i_crit_edge ]
  %ret.1.i.i = phi i32 [ %retval.0.i.i.i, %if.then55.i.i ], [ -105, %if.then52.i.i.while.end.i.i_crit_edge ], [ %retval.0.i.i.i, %j1939_tp_schedule_txtimer.exit.i.i ], [ %retval.0.i.i.i, %while.cond.i.i.while.end.i.i_crit_edge ], [ -105, %if.end42.i.i.while.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pkt_done.1.i.i)
  %tobool75.not.i.i = icmp eq i32 %pkt_done.1.i.i, 0
  br i1 %tobool75.not.i.i, label %while.end.i.i.out_free.i.i_crit_edge, label %if.then76.i.i

while.end.i.i.out_free.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free.i.i

if.then76.i.i:                                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @j1939_tp_set_rxtimeout(ptr noundef %add.ptr, i32 noundef 250) #10
  br label %out_free.i.i

out_free.i.i:                                     ; preds = %if.then76.i.i, %while.end.i.i.out_free.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.i)
  %tobool78.not.i.i = icmp eq i32 %ret.1.i.i, 0
  br i1 %tobool78.not.i.i, label %out_free.i.i.if.else80.i.i_crit_edge, label %out_free.i.i.if.then79.i.i_crit_edge

out_free.i.i.if.then79.i.i_crit_edge:             ; preds = %out_free.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then79.i.i

out_free.i.i.if.else80.i.i_crit_edge:             ; preds = %out_free.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else80.i.i

if.then79.i.i:                                    ; preds = %out_free.i.i.if.then79.i.i_crit_edge, %if.then36.i.i, %do.body.i.i.if.then79.i.i_crit_edge
  %ret.2145.i.i = phi i32 [ %ret.1.i.i, %out_free.i.i.if.then79.i.i_crit_edge ], [ -75, %if.then36.i.i ], [ -75, %do.body.i.i.if.then79.i.i_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i57, i32 noundef 0) #10
  br label %j1939_session_tx_dat.exit.i

if.else80.i.i:                                    ; preds = %out_free.i.i.if.else80.i.i_crit_edge, %if.end10.i.i.if.else80.i.i_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call.i.i57) #10
  br label %j1939_session_tx_dat.exit.i

j1939_session_tx_dat.exit.i:                      ; preds = %if.else80.i.i, %if.then79.i.i, %sw.bb12.i.j1939_session_tx_dat.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -105, %sw.bb12.i.j1939_session_tx_dat.exit.i_crit_edge ], [ 0, %if.else80.i.i ], [ %ret.2145.i.i, %if.then79.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dat.i.i)
  br label %if.end7

sw.default.i:                                     ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %32 to i32
  %ndev14.i = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 2
  %105 = ptrtoint ptr %ndev14.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ndev14.i, align 4
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %106, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.j1939_xtp_txnext_transmiter, ptr noundef %add.ptr, i32 noundef %conv.i) #14
  br label %sw.bb16

if.else5:                                         ; preds = %if.else
  %flags.i.i62 = getelementptr i8, ptr %hrtimer, i32 -120
  %107 = ptrtoint ptr %flags.i.i62 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %flags.i.i62, align 8
  %109 = and i8 %108, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i63 = icmp eq i8 %109, 0
  br i1 %tobool.not.i63, label %if.then.i65, label %if.end.i67

if.then.i65:                                      ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #12
  %ndev.i64 = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 2
  %110 = ptrtoint ptr %ndev.i64 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ndev.i64, align 4
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %111, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.j1939_xtp_txnext_receiver, ptr noundef %add.ptr) #14
  br label %sw.default

if.end.i67:                                       ; preds = %if.else5
  %last_cmd.i66 = getelementptr i8, ptr %hrtimer, i32 -56
  %112 = ptrtoint ptr %last_cmd.i66 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %last_cmd.i66, align 8
  %114 = zext i8 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %113, label %sw.default.i75 [
    i8 16, label %if.end.i67.sw.bb.i69_crit_edge
    i8 20, label %if.end.i67.sw.bb.i69_crit_edge195
    i8 21, label %if.end.i67.sw.bb3.i70_crit_edge
    i8 17, label %if.end.i67.sw.bb3.i70_crit_edge196
    i8 -1, label %if.end.i67.sw.bb3.i70_crit_edge197
    i8 22, label %if.end.i67.sw.bb3.i70_crit_edge198
  ]

if.end.i67.sw.bb3.i70_crit_edge198:               ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i70

if.end.i67.sw.bb3.i70_crit_edge197:               ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i70

if.end.i67.sw.bb3.i70_crit_edge196:               ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i70

if.end.i67.sw.bb3.i70_crit_edge:                  ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i70

if.end.i67.sw.bb.i69_crit_edge195:                ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i69

if.end.i67.sw.bb.i69_crit_edge:                   ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i69

sw.bb.i69:                                        ; preds = %if.end.i67.sw.bb.i69_crit_edge, %if.end.i67.sw.bb.i69_crit_edge195
  %call2.i68 = tail call fastcc i32 @j1939_session_tx_cts(ptr noundef %add.ptr) #10
  br label %if.end7

sw.bb3.i70:                                       ; preds = %if.end.i67.sw.bb3.i70_crit_edge, %if.end.i67.sw.bb3.i70_crit_edge196, %if.end.i67.sw.bb3.i70_crit_edge197, %if.end.i67.sw.bb3.i70_crit_edge198
  %115 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %cmp.i = icmp eq i8 %116, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb3.i70.if.end11.i_crit_edge

sw.bb3.i70.if.end11.i_crit_edge:                  ; preds = %sw.bb3.i70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %sw.bb3.i70
  %dst_name.i.i = getelementptr i8, ptr %hrtimer, i32 -136
  %117 = ptrtoint ptr %dst_name.i.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %dst_name.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %118)
  %tobool.not.i.i71 = icmp eq i64 %118, 0
  br i1 %tobool.not.i.i71, label %j1939_cb_is_broadcast.exit.i, label %land.lhs.true.i.if.end11.i_crit_edge

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

j1939_cb_is_broadcast.exit.i:                     ; preds = %land.lhs.true.i
  %da.i.i = getelementptr i8, ptr %hrtimer, i32 -123
  %119 = ptrtoint ptr %da.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %da.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %120)
  %cmp.i.i = icmp eq i8 %120, -1
  br i1 %cmp.i.i, label %j1939_cb_is_broadcast.exit.i.sw.bb16_crit_edge, label %j1939_cb_is_broadcast.exit.i.if.end11.i_crit_edge

j1939_cb_is_broadcast.exit.i.if.end11.i_crit_edge: ; preds = %j1939_cb_is_broadcast.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

j1939_cb_is_broadcast.exit.i.sw.bb16_crit_edge:   ; preds = %j1939_cb_is_broadcast.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb16

if.end11.i:                                       ; preds = %j1939_cb_is_broadcast.exit.i.if.end11.i_crit_edge, %land.lhs.true.i.if.end11.i_crit_edge, %sw.bb3.i70.if.end11.i_crit_edge
  %pkt.i = getelementptr i8, ptr %hrtimer, i32 -28
  %rx.i = getelementptr i8, ptr %hrtimer, i32 -12
  %121 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rx.i, align 4
  %123 = ptrtoint ptr %pkt.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %pkt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %124)
  %cmp13.not.i = icmp ult i32 %122, %124
  br i1 %cmp13.not.i, label %if.else.i72, label %if.then15.i

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %call16.i = tail call fastcc i32 @j1939_session_tx_eoma(ptr noundef %add.ptr) #10
  br label %if.end7

if.else.i72:                                      ; preds = %if.end11.i
  %last.i = getelementptr i8, ptr %hrtimer, i32 -24
  %125 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %last.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %126)
  %cmp20.not.i = icmp ult i32 %122, %126
  br i1 %cmp20.not.i, label %if.else.i72.sw.bb16_crit_edge, label %if.then22.i

if.else.i72.sw.bb16_crit_edge:                    ; preds = %if.else.i72
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb16

if.then22.i:                                      ; preds = %if.else.i72
  call void @__sanitizer_cov_trace_pc() #12
  %last_txcmd.i73 = getelementptr i8, ptr %hrtimer, i32 -55
  %127 = ptrtoint ptr %last_txcmd.i73 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %last_txcmd.i73, align 1
  %call23.i = tail call fastcc i32 @j1939_session_tx_cts(ptr noundef %add.ptr) #10
  br label %if.end7

sw.default.i75:                                   ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i74 = zext i8 %113 to i32
  %ndev26.i = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 2
  %128 = ptrtoint ptr %ndev26.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ndev26.i, align 4
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %129, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.j1939_xtp_txnext_receiver, ptr noundef %add.ptr, i32 noundef %conv.i74) #14
  br label %sw.bb16

if.end7:                                          ; preds = %if.then22.i, %if.then15.i, %sw.bb.i69, %j1939_session_tx_dat.exit.i, %if.then6.i.if.end7_crit_edge, %sw.bb.i, %if.then11.i
  %ret.0 = phi i32 [ %ret.0.ph.i, %if.then11.i ], [ %call7.i, %if.then6.i.if.end7_crit_edge ], [ %retval.0.i.i, %j1939_session_tx_dat.exit.i ], [ %call2.i55, %sw.bb.i ], [ %call16.i, %if.then15.i ], [ %call23.i, %if.then22.i ], [ %call2.i68, %sw.bb.i69 ]
  %130 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %ret.0, label %if.end7.sw.default_crit_edge [
    i32 -105, label %sw.bb
    i32 -100, label %if.end7.sw.epilog_crit_edge
    i32 -75, label %sw.bb15
    i32 0, label %if.end7.sw.bb16_crit_edge
  ]

if.end7.sw.bb16_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb16

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end7.sw.default_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.bb:                                            ; preds = %if.end7
  %tx_retry = getelementptr i8, ptr %hrtimer, i32 -44
  %131 = ptrtoint ptr %tx_retry to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %tx_retry, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %132)
  %cmp8 = icmp ult i32 %132, 100
  br i1 %cmp8, label %if.then10, label %if.else13

if.then10:                                        ; preds = %sw.bb
  %inc = add nuw nsw i32 %132, 1
  %133 = ptrtoint ptr %tx_retry to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %inc, ptr %tx_retry, align 4
  %call.i = call i32 @prandom_u32() #10
  %134 = lshr i32 %call.i, 28
  %kref.i.i = getelementptr i8, ptr %hrtimer, i32 -172
  %call.i.i.i.i.i.i.i.i77 = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #10
  %135 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #10, !srcloc !214
  %asmresult.i.i.i.i.i.i.i.i78 = extractvalue { i32, i32, i32 } %135, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i78)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i78, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then10.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !215

if.then10.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then10
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i78, 1
  %136 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i78
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %136)
  %.not.i.i.i.i.i.i = icmp sgt i32 %136, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.j1939_tp_schedule_txtimer.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !216

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.j1939_tp_schedule_txtimer.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_tp_schedule_txtimer.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then10.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then10.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #10
  br label %j1939_tp_schedule_txtimer.exit

j1939_tp_schedule_txtimer.exit:                   ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.j1939_tp_schedule_txtimer.exit_crit_edge
  %137 = mul nuw nsw i32 %134, 1000000
  %narrow = add nuw nsw i32 %137, 10000000
  %mul.i.i80 = zext i32 %narrow to i64
  call void @hrtimer_start_range_ns(ptr noundef %hrtimer, i64 noundef %mul.i.i80, i64 noundef 0, i32 noundef 5) #10
  br label %sw.epilog

if.else13:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %ndev = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 2
  %138 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_alert(ptr noundef %139, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.j1939_tp_txtimer, ptr noundef %add.ptr) #14
  %err = getelementptr i8, ptr %hrtimer, i32 -40
  %140 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 -101, ptr %err, align 8
  call fastcc void @j1939_session_rxtimer_cancel(ptr noundef %add.ptr)
  call fastcc void @j1939_session_deactivate_activate_next(ptr noundef %add.ptr)
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end7
  %141 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %add.ptr, align 8
  %active_session_list_lock.i.i = getelementptr inbounds %struct.j1939_priv, ptr %142, i32 0, i32 6
  call void @_raw_spin_lock_bh(ptr noundef %active_session_list_lock.i.i) #10
  %state.i = getelementptr i8, ptr %hrtimer, i32 -32
  %143 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %144)
  %cond.i = icmp eq i32 %144, 1
  br i1 %cond.i, label %if.then.i81, label %sw.bb15.j1939_session_cancel.exit_crit_edge

sw.bb15.j1939_session_cancel.exit_crit_edge:      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_cancel.exit

if.then.i81:                                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @j1939_tp_set_rxtimeout(ptr noundef %add.ptr, i32 noundef 500) #10
  call fastcc void @__j1939_session_cancel(ptr noundef %add.ptr, i32 noundef 15) #10
  br label %j1939_session_cancel.exit

j1939_session_cancel.exit:                        ; preds = %if.then.i81, %sw.bb15.j1939_session_cancel.exit_crit_edge
  %145 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %add.ptr, align 8
  %active_session_list_lock.i9.i = getelementptr inbounds %struct.j1939_priv, ptr %146, i32 0, i32 6
  call void @_raw_spin_unlock_bh(ptr noundef %active_session_list_lock.i9.i) #10
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end7.sw.bb16_crit_edge, %sw.default.i75, %if.else.i72.sw.bb16_crit_edge, %j1939_cb_is_broadcast.exit.i.sw.bb16_crit_edge, %sw.default.i, %if.else.i, %if.then.sw.bb16_crit_edge
  %tx_retry17 = getelementptr i8, ptr %hrtimer, i32 -44
  %147 = ptrtoint ptr %tx_retry17 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %tx_retry17, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end7.sw.default_crit_edge, %if.then.i65, %if.then.i
  %ret.093 = phi i32 [ %ret.0, %if.end7.sw.default_crit_edge ], [ -22, %if.then.i ], [ -22, %if.then.i65 ]
  %ndev18 = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 2
  %148 = ptrtoint ptr %ndev18 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ndev18, align 4
  call void (ptr, ptr, ...) @netdev_alert(ptr noundef %149, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.j1939_tp_txtimer, ptr noundef %add.ptr, i32 noundef %ret.093) #14
  %150 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %151)
  %cmp23.not = icmp eq i8 %151, 2
  br i1 %cmp23.not, label %if.else26, label %if.then25

if.then25:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @j1939_session_cancel(ptr noundef %add.ptr, i32 noundef 250)
  br label %sw.epilog

if.else26:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %err27 = getelementptr i8, ptr %hrtimer, i32 -40
  %152 = ptrtoint ptr %err27 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %ret.093, ptr %err27, align 8
  call fastcc void @j1939_session_rxtimer_cancel(ptr noundef %add.ptr)
  call fastcc void @j1939_session_deactivate_activate_next(ptr noundef %add.ptr)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else26, %if.then25, %sw.bb16, %j1939_session_cancel.exit, %if.else13, %j1939_tp_schedule_txtimer.exit, %if.end7.sw.epilog_crit_edge
  %kref.i = getelementptr i8, ptr %hrtimer, i32 -172
  %call.i.i.i.i.i.i.i83 = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !217
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %153 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i84 = extractvalue { i32, i32, i32 } %153, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i84)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i84, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i87, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i84)
  %.not.i.i.i.i.i85 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i84, 0
  br i1 %.not.i.i.i.i.i85, label %if.end5.i.i.i.i.i.j1939_session_put.exit_crit_edge, label %if.then10.i.i.i.i.i86, !prof !216

if.end5.i.i.i.i.i.j1939_session_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_put.exit

if.then10.i.i.i.i.i86:                            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %j1939_session_put.exit

if.then.i.i87:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  call fastcc void @j1939_session_destroy(ptr noundef %add.ptr) #10
  br label %j1939_session_put.exit

j1939_session_put.exit:                           ; preds = %if.then.i.i87, %if.then10.i.i.i.i.i86, %if.end5.i.i.i.i.i.j1939_session_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @j1939_tp_rxtimer(ptr noundef %hrtimer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hrtimer, i32 -240
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %state = getelementptr i8, ptr %hrtimer, i32 -80
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ndev = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %5, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.j1939_tp_rxtimer, ptr noundef %add.ptr) #14
  tail call fastcc void @j1939_session_deactivate_activate_next(ptr noundef %add.ptr)
  br label %if.end19

if.else:                                          ; preds = %entry
  %type = getelementptr i8, ptr %hrtimer, i32 -170
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp2 = icmp eq i8 %7, 2
  br i1 %cmp2, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  %ndev5 = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %ndev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev5, align 4
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.j1939_tp_rxtimer, ptr noundef %add.ptr) #14
  %err = getelementptr i8, ptr %hrtimer, i32 -88
  %10 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -62, ptr %err, align 8
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  %active_session_list_lock.i.i = getelementptr inbounds %struct.j1939_priv, ptr %12, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %active_session_list_lock.i.i) #10
  %kref.i = getelementptr i8, ptr %hrtimer, i32 -220
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #10
  %13 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %kref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i = icmp ult i32 %14, 2
  br i1 %cmp.i, label %land.rhs.i, label %if.then4.j1939_session_deactivate.exit_crit_edge

if.then4.j1939_session_deactivate.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_deactivate.exit

land.rhs.i:                                       ; preds = %if.then4
  %.b44.i = load i1, ptr @j1939_session_deactivate.__already_done, align 1
  br i1 %.b44.i, label %land.rhs.i.j1939_session_deactivate.exit_crit_edge, label %if.then.i, !prof !216

land.rhs.i.j1939_session_deactivate.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_deactivate.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @j1939_session_deactivate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1090, i32 noundef 9, ptr noundef null) #10
  br label %j1939_session_deactivate.exit

j1939_session_deactivate.exit:                    ; preds = %if.then.i, %land.rhs.i.j1939_session_deactivate.exit_crit_edge, %if.then4.j1939_session_deactivate.exit_crit_edge
  %call36.i = tail call fastcc zeroext i1 @j1939_session_deactivate_locked(ptr noundef %add.ptr) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %active_session_list_lock.i.i) #10
  br label %if.end19

if.else6:                                         ; preds = %if.else
  %active_session_list_lock.i = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %active_session_list_lock.i) #10
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state, align 8
  %17 = add i32 %16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %if.then14, label %if.else6.if.end_crit_edge

if.else6.if.end_crit_edge:                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then14:                                        ; preds = %if.else6
  %ndev15 = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %ndev15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ndev15, align 4
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %20, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.j1939_tp_rxtimer, ptr noundef %add.ptr) #14
  %kref.i38 = getelementptr i8, ptr %hrtimer, i32 -220
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i38, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref.i38, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i38, ptr %kref.i38, i32 1, ptr elementtype(i32) %kref.i38) #10, !srcloc !214
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then14.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !215

if.then14.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then14
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %22 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i.i.i = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.j1939_session_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !216

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.j1939_session_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then14.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then14.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i38, i32 noundef %.sink.i.i.i.i.i) #10
  br label %j1939_session_get.exit

j1939_session_get.exit:                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.j1939_session_get.exit_crit_edge
  tail call void @hrtimer_start_range_ns(ptr noundef %hrtimer, i64 noundef 500000000, i64 noundef 0, i32 noundef 5) #10
  tail call fastcc void @__j1939_session_cancel(ptr noundef %add.ptr, i32 noundef 3)
  br label %if.end

if.end:                                           ; preds = %j1939_session_get.exit, %if.else6.if.end_crit_edge
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 8
  %active_session_list_lock.i39 = getelementptr inbounds %struct.j1939_priv, ptr %24, i32 0, i32 6
  tail call void @_raw_spin_unlock_bh(ptr noundef %active_session_list_lock.i39) #10
  br label %if.end19

if.end19:                                         ; preds = %if.end, %j1939_session_deactivate.exit, %if.then
  %kref.i40 = getelementptr i8, ptr %hrtimer, i32 -220
  %call.i.i.i.i.i.i.i41 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i40, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %kref.i40, i32 1, i32 3, i32 1) #10
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i40, ptr %kref.i40, i32 1, ptr elementtype(i32) %kref.i40) #10, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i42 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i42, label %if.end5.i.i.i.i.i.j1939_session_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !216

if.end5.i.i.i.i.i.j1939_session_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i40, i32 noundef 3) #10
  br label %j1939_session_put.exit

if.then.i.i:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call fastcc void @j1939_session_destroy(ptr noundef %add.ptr) #10
  br label %j1939_session_put.exit

j1939_session_put.exit:                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.j1939_session_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @j1939_session_deactivate_activate_next(ptr noundef %session) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %session, align 8
  %active_session_list_lock.i.i = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %active_session_list_lock.i.i) #10
  %kref.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #10
  %2 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %kref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp ult i32 %3, 2
  br i1 %cmp.i, label %land.rhs.i, label %entry.j1939_session_deactivate.exit_crit_edge

entry.j1939_session_deactivate.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_deactivate.exit

land.rhs.i:                                       ; preds = %entry
  %.b44.i = load i1, ptr @j1939_session_deactivate.__already_done, align 1
  br i1 %.b44.i, label %land.rhs.i.j1939_session_deactivate.exit_crit_edge, label %if.then.i, !prof !216

land.rhs.i.j1939_session_deactivate.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_deactivate.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @j1939_session_deactivate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1090, i32 noundef 9, ptr noundef null) #10
  br label %j1939_session_deactivate.exit

j1939_session_deactivate.exit:                    ; preds = %if.then.i, %land.rhs.i.j1939_session_deactivate.exit_crit_edge, %entry.j1939_session_deactivate.exit_crit_edge
  %call36.i = tail call fastcc zeroext i1 @j1939_session_deactivate_locked(ptr noundef %session) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %active_session_list_lock.i.i) #10
  br i1 %call36.i, label %if.then, label %j1939_session_deactivate.exit.if.end_crit_edge

j1939_session_deactivate.exit.if.end_crit_edge:   ; preds = %j1939_session_deactivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %j1939_session_deactivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @j1939_sk_queue_activate_next(ptr noundef %session) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %j1939_session_deactivate.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @j1939_session_cancel(ptr noundef %session, i32 noundef %err) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %session, align 8
  %active_session_list_lock.i = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %active_session_list_lock.i) #10
  %state = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 16
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cond = icmp eq i32 %3, 1
  br i1 %cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @j1939_tp_set_rxtimeout(ptr noundef %session, i32 noundef 500)
  tail call fastcc void @__j1939_session_cancel(ptr noundef %session, i32 noundef %err)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %session, align 8
  %active_session_list_lock.i9 = getelementptr inbounds %struct.j1939_priv, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_unlock_bh(ptr noundef %active_session_list_lock.i9) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @j1939_tp_set_rxtimeout(ptr noundef %session, i32 noundef %msec) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %rxtimer.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 19
  %call.i = tail call i32 @hrtimer_cancel(ptr noundef %rxtimer.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.j1939_session_rxtimer_cancel.exit_crit_edge, label %if.then.i

entry.j1939_session_rxtimer_cancel.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_rxtimer_cancel.exit

if.then.i:                                        ; preds = %entry
  %kref.i.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #10, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.j1939_session_rxtimer_cancel.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !216

if.end5.i.i.i.i.i.i.j1939_session_rxtimer_cancel.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_rxtimer_cancel.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef 3) #10
  br label %j1939_session_rxtimer_cancel.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call fastcc void @j1939_session_destroy(ptr noundef %session) #10
  br label %j1939_session_rxtimer_cancel.exit

j1939_session_rxtimer_cancel.exit:                ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.j1939_session_rxtimer_cancel.exit_crit_edge, %entry.j1939_session_rxtimer_cancel.exit_crit_edge
  %kref.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !214
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %j1939_session_rxtimer_cancel.exit.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !215

j1939_session_rxtimer_cancel.exit.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %j1939_session_rxtimer_cancel.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %j1939_session_rxtimer_cancel.exit
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.j1939_session_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !216

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.j1939_session_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %j1939_session_rxtimer_cancel.exit.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %j1939_session_rxtimer_cancel.exit.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %j1939_session_get.exit

j1939_session_get.exit:                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.j1939_session_get.exit_crit_edge
  %3 = zext i32 %msec to i64
  %mul.i = mul nuw nsw i64 %3, 1000000
  tail call void @hrtimer_start_range_ns(ptr noundef %rxtimer.i, i64 noundef %mul.i, i64 noundef 0, i32 noundef 5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @j1939_send_one(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_sk_queue_activate_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @j1939_session_skb_get_by_offset(ptr noundef %session, i32 noundef %offset_start) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %session, align 8
  %skb_queue = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 6
  %lock = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 6, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %2 = ptrtoint ptr %skb_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %do_skb.057 = load ptr, ptr %skb_queue, align 8
  %cmp8.not58 = icmp eq ptr %do_skb.057, %skb_queue
  br i1 %cmp8.not58, label %entry.do.body25.critedge_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body25.critedge_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body25.critedge

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %do_skb.060 = phi ptr [ %do_skb.0, %for.inc.for.body_crit_edge ], [ %do_skb.057, %entry.for.body_crit_edge ]
  %skb.059 = phi ptr [ %skb.1, %for.inc.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %do_skb.060, i32 0, i32 3
  %3 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cb.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %offset_start)
  %cmp11.not = icmp ugt i32 %4, %offset_start
  br i1 %cmp11.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %do_skb.060, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %add = add i32 %6, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %offset_start)
  %cmp14 = icmp ugt i32 %add, %offset_start
  %spec.select = select i1 %cmp14, ptr %do_skb.060, ptr %skb.059
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body.for.inc_crit_edge
  %skb.1 = phi ptr [ %skb.059, %for.body.for.inc_crit_edge ], [ %spec.select, %land.lhs.true ]
  %7 = ptrtoint ptr %do_skb.060 to i32
  call void @__asan_load4_noabort(i32 %7)
  %do_skb.0 = load ptr, ptr %do_skb.060, align 8
  %cmp8.not = icmp eq ptr %do_skb.0, %skb_queue
  br i1 %cmp8.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool.not = icmp eq ptr %skb.1, null
  br i1 %tobool.not, label %for.end.do.body25.critedge_crit_edge, label %if.then17

for.end.do.body25.critedge_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body25.critedge

if.then17:                                        ; preds = %for.end
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #10, !srcloc !214
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then17.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !215

if.then17.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then17
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !216

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then17.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then17.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #10
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  br label %if.end39

do.body25.critedge:                               ; preds = %for.end.do.body25.critedge_crit_edge, %entry.do.body25.critedge_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @j1939_session_skb_get_by_offset.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@j1939_session_skb_get_by_offset, %if.then31)) #10
          to label %if.end39 [label %if.then31], !srcloc !221

if.then31:                                        ; preds = %do.body25.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %ndev = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndev, align 4
  %qlen.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qlen.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @j1939_session_skb_get_by_offset.__UNIQUE_ID_ddebug459, ptr noundef %11, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, ptr noundef %session, i32 noundef %offset_start, i32 noundef %13) #10
  br label %if.end39

if.end39:                                         ; preds = %if.then31, %do.body25.critedge, %skb_get.exit
  %skb.0.lcssa63 = phi ptr [ null, %do.body25.critedge ], [ %skb.1, %skb_get.exit ], [ null, %if.then31 ]
  ret ptr %skb.0.lcssa63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_efree(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @j1939_session_tx_rts(ptr noundef %session) unnamed_addr #0 align 64 {
entry:
  %dat = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dat) #10
  %0 = getelementptr inbounds [8 x i8], ptr %dat, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %dat, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %dat, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %dat, i32 0, i32 4
  %total_message_size = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 11
  %4 = ptrtoint ptr %dat to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %dat, align 8
  %5 = ptrtoint ptr %total_message_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %total_message_size, align 4
  %conv = trunc i32 %6 to i8
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %0, align 1
  %shr2 = lshr i32 %6, 8
  %conv3 = trunc i32 %shr2 to i8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv3, ptr %1, align 2
  %pkt = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 17
  %9 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pkt, align 4
  %conv5 = trunc i32 %10 to i8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv5, ptr %2, align 1
  %type = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3, i32 5
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp = icmp eq i8 %13, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %dat to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 20, ptr %dat, align 8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv3, ptr %1, align 2
  %shr19 = lshr i32 %6, 16
  %conv20 = trunc i32 %shr19 to i8
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv20, ptr %2, align 1
  %shr23 = lshr i32 %6, 24
  %conv24 = trunc i32 %shr23 to i8
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv24, ptr %3, align 4
  br label %if.end34

if.else:                                          ; preds = %entry
  %dst_name.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3, i32 1
  %18 = ptrtoint ptr %dst_name.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %dst_name.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool.not.i = icmp eq i64 %19, 0
  br i1 %tobool.not.i, label %j1939_cb_is_broadcast.exit, label %if.else.if.else30_crit_edge

if.else.if.else30_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else30

j1939_cb_is_broadcast.exit:                       ; preds = %if.else
  %da.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3, i32 4
  %20 = ptrtoint ptr %da.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %da.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %cmp.i = icmp eq i8 %21, -1
  br i1 %cmp.i, label %if.then27, label %j1939_cb_is_broadcast.exit.if.else30_crit_edge

j1939_cb_is_broadcast.exit.if.else30_crit_edge:   ; preds = %j1939_cb_is_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else30

if.then27:                                        ; preds = %j1939_cb_is_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %dat to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 32, ptr %dat, align 8
  %tx = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 17, i32 2
  %23 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %tx, align 4
  br label %if.end34

if.else30:                                        ; preds = %j1939_cb_is_broadcast.exit.if.else30_crit_edge, %if.else.if.else30_crit_edge
  %24 = ptrtoint ptr %dat to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 16, ptr %dat, align 8
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv5, ptr %3, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else30, %if.then27, %if.then
  %cmp52 = phi i1 [ true, %if.then27 ], [ false, %if.else30 ], [ false, %if.then ]
  %26 = phi i8 [ 32, %if.then27 ], [ 16, %if.else30 ], [ 20, %if.then ]
  %last_txcmd = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 8
  %27 = ptrtoint ptr %last_txcmd to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %last_txcmd, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %28)
  %cmp38 = icmp eq i8 %26, %28
  br i1 %cmp38, label %if.end34.cleanup_crit_edge, label %if.end41

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end41:                                         ; preds = %if.end34
  %29 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %session, align 8
  %skcb.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5
  %pgn.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3, i32 2
  %31 = ptrtoint ptr %pgn.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pgn.i, align 8
  %call.i = call fastcc i32 @j1939_xtp_do_tx_ctl(ptr noundef %30, ptr noundef %skcb.i, i1 noundef zeroext false, i32 noundef %32, ptr noundef nonnull %dat) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp44 = icmp slt i32 %call.i, 0
  br i1 %cmp44, label %if.end41.cleanup_crit_edge, label %if.end47

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end47:                                         ; preds = %if.end41
  %33 = ptrtoint ptr %last_txcmd to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %26, ptr %last_txcmd, align 1
  br i1 %cmp52, label %if.then54, label %if.end47.do.body57_crit_edge

if.end47.do.body57_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body57

if.then54:                                        ; preds = %if.end47
  %kref.i.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #10
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #10, !srcloc !214
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then54.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !215

if.then54.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then54
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %35 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %.not.i.i.i.i.i.i = icmp sgt i32 %35, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.j1939_tp_schedule_txtimer.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !216

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.j1939_tp_schedule_txtimer.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_tp_schedule_txtimer.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then54.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then54.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #10
  br label %j1939_tp_schedule_txtimer.exit

j1939_tp_schedule_txtimer.exit:                   ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.j1939_tp_schedule_txtimer.exit_crit_edge
  %txtimer.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 18
  tail call void @hrtimer_start_range_ns(ptr noundef %txtimer.i, i64 noundef 50000000, i64 noundef 0, i32 noundef 5) #10
  br label %do.body57

do.body57:                                        ; preds = %j1939_tp_schedule_txtimer.exit, %if.end47.do.body57_crit_edge
  %.sink = phi i32 [ 250, %j1939_tp_schedule_txtimer.exit ], [ 1250, %if.end47.do.body57_crit_edge ]
  tail call fastcc void @j1939_tp_set_rxtimeout(ptr noundef %session, i32 noundef %.sink)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @j1939_session_tx_rts.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@j1939_session_tx_rts, %if.then61)) #10
          to label %cleanup [label %if.then61], !srcloc !221

if.then61:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %session, align 8
  %ndev = getelementptr inbounds %struct.j1939_priv, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @j1939_session_tx_rts.__UNIQUE_ID_ddebug460, ptr noundef %39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.19, ptr noundef %session) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %do.body57, %if.end41.cleanup_crit_edge, %if.end34.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34.cleanup_crit_edge ], [ %call.i, %if.end41.cleanup_crit_edge ], [ 0, %if.then61 ], [ 0, %do.body57 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dat) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @j1939_session_tx_dpo(ptr noundef %session) unnamed_addr #0 align 64 {
entry:
  %dat = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dat) #10
  %0 = getelementptr inbounds [8 x i8], ptr %dat, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %dat, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %dat, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %dat, i32 0, i32 4
  %4 = ptrtoint ptr %dat to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %dat, align 8
  store i8 22, ptr %dat, align 8
  %tx_acked = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 17, i32 3
  %5 = ptrtoint ptr %tx_acked to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_acked, align 4
  %dpo = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 17, i32 6
  %7 = ptrtoint ptr %dpo to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dpo, align 4
  %last = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 17, i32 1
  %8 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last, align 4
  %sub = sub i32 %9, %6
  %conv = trunc i32 %sub to i8
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %0, align 1
  %conv9 = trunc i32 %6 to i8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv9, ptr %1, align 2
  %shr11 = lshr i32 %6, 8
  %conv12 = trunc i32 %shr11 to i8
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv12, ptr %2, align 1
  %shr14 = lshr i32 %6, 16
  %conv15 = trunc i32 %shr14 to i8
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv15, ptr %3, align 4
  %14 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %session, align 8
  %skcb.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5
  %pgn.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3, i32 2
  %16 = ptrtoint ptr %pgn.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pgn.i, align 8
  %call.i = call fastcc i32 @j1939_xtp_do_tx_ctl(ptr noundef %15, ptr noundef %skcb.i, i1 noundef zeroext false, i32 noundef %17, ptr noundef nonnull %dat) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %last_txcmd = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 8
  %18 = ptrtoint ptr %last_txcmd to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 22, ptr %last_txcmd, align 1
  tail call fastcc void @j1939_tp_set_rxtimeout(ptr noundef %session, i32 noundef 1250)
  %19 = ptrtoint ptr %tx_acked to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_acked, align 4
  %tx = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 17, i32 2
  %21 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %tx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @j1939_session_tx_dpo.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@j1939_session_tx_dpo, %if.then27)) #10
          to label %cleanup [label %if.then27], !srcloc !221

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %session, align 8
  %ndev = getelementptr inbounds %struct.j1939_priv, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @j1939_session_tx_dpo.__UNIQUE_ID_ddebug461, ptr noundef %25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.20, ptr noundef %session) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dat) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @j1939_xtp_do_tx_ctl(ptr noundef %priv, ptr nocapture noundef readonly %re_skcb, i1 noundef zeroext %swap_src_dst, i32 noundef %pgn, ptr nocapture noundef readonly %dat) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i.i = getelementptr inbounds %struct.j1939_sk_buff_cb, ptr %re_skcb, i32 0, i32 4
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags.i.i, align 8
  %..i = select i1 %swap_src_dst, i8 2, i8 1
  %2 = and i8 %1, %..i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 32, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.if.then5_crit_edge, label %if.end.i, !prof !215

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.end.i:                                         ; preds = %if.end
  %ndev.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 2
  %3 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ndev.i, align 4
  %5 = getelementptr inbounds %struct.anon.1, ptr %call.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %5, align 8
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 16
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %10, i32 16
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %11 = load ptr, ptr %ndev.i, align 4
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ifindex.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %14 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %15, align 8
  %17 = load ptr, ptr %head.i.i, align 8
  %skbcnt.i = getelementptr inbounds %struct.can_skb_priv, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %skbcnt.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %skbcnt.i, align 4
  %19 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i.i, align 4
  %20 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %20, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i.i, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %21 = call ptr @memcpy(ptr %cb.i, ptr %re_skcb, i32 48)
  br i1 %swap_src_dst, label %if.then12.i, label %if.end.i.j1939_tp_tx_dat_new.exit_crit_edge

if.end.i.j1939_tp_tx_dat_new.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_tp_tx_dat_new.exit

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %addr.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %dst_name.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 24
  %22 = ptrtoint ptr %dst_name.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %dst_name.i.i, align 8
  %24 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %addr.i.i, align 8
  store i64 %25, ptr %dst_name.i.i, align 8
  store i64 %23, ptr %addr.i.i, align 8
  %da.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 37
  %26 = ptrtoint ptr %da.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %da.i.i, align 1
  %sa.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 36
  %28 = ptrtoint ptr %sa.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sa.i.i, align 4
  store i8 %29, ptr %da.i.i, align 1
  store i8 %27, ptr %sa.i.i, align 4
  %flags.i.i28 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 40
  %30 = ptrtoint ptr %flags.i.i28 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %flags.i.i28, align 8
  %trunc.i.i = trunc i8 %31 to i2
  %rev.i.i = tail call i2 @llvm.bitreverse.i2(i2 %trunc.i.i) #10
  %32 = zext i2 %rev.i.i to i8
  %33 = and i8 %31, -4
  %or3449.i.i = or i8 %33, %32
  %34 = ptrtoint ptr %flags.i.i28 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %or3449.i.i, ptr %flags.i.i28, align 8
  br label %j1939_tp_tx_dat_new.exit

j1939_tp_tx_dat_new.exit:                         ; preds = %if.then12.i, %if.end.i.j1939_tp_tx_dat_new.exit_crit_edge
  %type.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 38
  %35 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp.i = icmp eq i8 %36, 1
  %pgn.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 32
  %..i29 = select i1 %cmp.i, i32 51200, i32 60416
  %37 = ptrtoint ptr %pgn.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %..i29, ptr %pgn.i, align 8
  %cmp.i31 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31, label %j1939_tp_tx_dat_new.exit.if.then5_crit_edge, label %if.end7

j1939_tp_tx_dat_new.exit.if.then5_crit_edge:      ; preds = %j1939_tp_tx_dat_new.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.then5:                                         ; preds = %j1939_tp_tx_dat_new.exit.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %retval.0.i3034 = phi ptr [ %call.i.i, %j1939_tp_tx_dat_new.exit.if.then5_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.if.then5_crit_edge ]
  %38 = ptrtoint ptr %retval.0.i3034 to i32
  br label %cleanup

if.end7:                                          ; preds = %j1939_tp_tx_dat_new.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 8) #10
  %39 = call ptr @memcpy(ptr %call8, ptr %dat, i32 5)
  %conv = trunc i32 %pgn to i8
  %arrayidx = getelementptr i8, ptr %call8, i32 5
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv, ptr %arrayidx, align 1
  %shr9 = lshr i32 %pgn, 8
  %conv10 = trunc i32 %shr9 to i8
  %arrayidx11 = getelementptr i8, ptr %call8, i32 6
  %41 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv10, ptr %arrayidx11, align 1
  %shr12 = lshr i32 %pgn, 16
  %conv13 = trunc i32 %shr12 to i8
  %arrayidx14 = getelementptr i8, ptr %call8, i32 7
  %42 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv13, ptr %arrayidx14, align 1
  %call15 = tail call i32 @j1939_send_one(ptr noundef %priv, ptr noundef nonnull %call.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %38, %if.then5 ], [ %call15, %if.end7 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @j1939_session_tx_cts(ptr noundef %session) unnamed_addr #0 align 64 {
entry:
  %dat = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %session, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dat) #10
  %2 = getelementptr inbounds [8 x i8], ptr %dat, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i8], ptr %dat, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i8], ptr %dat, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i8], ptr %dat, i32 0, i32 4
  %skcb = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5
  %call = tail call zeroext i1 @j1939_sk_recv_match(ptr noundef %1, ptr noundef %skcb) #10
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pkt2 = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 17
  %6 = ptrtoint ptr %pkt2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pkt2, align 4
  %rx = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 17, i32 4
  %8 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx, align 4
  %sub = sub i32 %7, %9
  %block = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 17, i32 5
  %10 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %block, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %11)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 255)
  %14 = ptrtoint ptr %dat to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 -1, ptr %dat, align 8
  %type = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3, i32 5
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp16 = icmp eq i8 %16, 1
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %9, 1
  %17 = ptrtoint ptr %dat to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 21, ptr %dat, align 8
  %conv21 = trunc i32 %13 to i8
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv21, ptr %2, align 1
  %conv23 = trunc i32 %add to i8
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv23, ptr %3, align 2
  %shr25 = lshr i32 %add, 8
  %conv26 = trunc i32 %shr25 to i8
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv26, ptr %4, align 1
  %shr28 = lshr i32 %add, 16
  %conv29 = trunc i32 %shr28 to i8
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv29, ptr %5, align 4
  br label %if.end39

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %dat to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 17, ptr %dat, align 8
  %conv32 = trunc i32 %13 to i8
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv32, ptr %2, align 1
  %24 = trunc i32 %9 to i8
  %conv37 = add i8 %24, 1
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv37, ptr %3, align 2
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then18
  %26 = ptrtoint ptr %dat to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dat, align 8
  %last_txcmd = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 8
  %28 = ptrtoint ptr %last_txcmd to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %last_txcmd, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp43 = icmp eq i8 %27, %29
  br i1 %cmp43, label %if.end39.cleanup_crit_edge, label %if.end46

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end46:                                         ; preds = %if.end39
  %30 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %session, align 8
  %pgn.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3, i32 2
  %32 = ptrtoint ptr %pgn.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pgn.i, align 8
  %call.i = call fastcc i32 @j1939_xtp_do_tx_ctl(ptr noundef %31, ptr noundef %skcb, i1 noundef zeroext true, i32 noundef %33, ptr noundef nonnull %dat) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp49 = icmp slt i32 %call.i, 0
  br i1 %cmp49, label %if.end46.cleanup_crit_edge, label %if.end52

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool53.not = icmp eq i32 %13, 0
  br i1 %tobool53.not, label %if.end52.if.end57_crit_edge, label %if.then54

if.end52.if.end57_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %last_txcmd to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %27, ptr %last_txcmd, align 1
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end52.if.end57_crit_edge
  tail call fastcc void @j1939_tp_set_rxtimeout(ptr noundef %session, i32 noundef 1250)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @j1939_session_tx_cts.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@j1939_session_tx_cts, %if.then64)) #10
          to label %cleanup [label %if.then64], !srcloc !221

if.then64:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %session, align 8
  %ndev = getelementptr inbounds %struct.j1939_priv, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @j1939_session_tx_cts.__UNIQUE_ID_ddebug466, ptr noundef %38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.25, ptr noundef %session) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %if.end57, %if.end46.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ], [ %call.i, %if.end46.cleanup_crit_edge ], [ 0, %if.then64 ], [ 0, %if.end57 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dat) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @j1939_session_tx_eoma(ptr noundef %session) unnamed_addr #0 align 64 {
entry:
  %dat = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %session, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dat) #10
  %2 = getelementptr inbounds [8 x i8], ptr %dat, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i8], ptr %dat, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i8], ptr %dat, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i8], ptr %dat, i32 0, i32 4
  %skcb = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5
  %call = tail call zeroext i1 @j1939_sk_recv_match(ptr noundef %1, ptr noundef %skcb) #10
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %dat to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %dat, align 8
  %type = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3, i32 5
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp = icmp eq i8 %8, 1
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %dat to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 23, ptr %dat, align 8
  %total_message_size = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 11
  %10 = ptrtoint ptr %total_message_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %total_message_size, align 4
  %conv5 = trunc i32 %11 to i8
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv5, ptr %2, align 1
  %shr8 = lshr i32 %11, 8
  %conv9 = trunc i32 %shr8 to i8
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv9, ptr %3, align 2
  %shr12 = lshr i32 %11, 16
  %conv13 = trunc i32 %shr12 to i8
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv13, ptr %4, align 1
  %shr16 = lshr i32 %11, 24
  %conv17 = trunc i32 %shr16 to i8
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv17, ptr %5, align 4
  br label %if.end29

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %dat to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 19, ptr %dat, align 8
  %total_message_size20 = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 11
  %17 = ptrtoint ptr %total_message_size20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %total_message_size20, align 4
  %conv21 = trunc i32 %18 to i8
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv21, ptr %2, align 1
  %shr24 = lshr i32 %18, 8
  %conv25 = trunc i32 %shr24 to i8
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv25, ptr %3, align 2
  %pkt = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 17
  %21 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pkt, align 4
  %conv27 = trunc i32 %22 to i8
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv27, ptr %4, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then4
  %24 = ptrtoint ptr %dat to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dat, align 8
  %last_txcmd = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 8
  %26 = ptrtoint ptr %last_txcmd to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %last_txcmd, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp33 = icmp eq i8 %25, %27
  br i1 %cmp33, label %if.end29.cleanup_crit_edge, label %if.end36

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  %28 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %session, align 8
  %pgn.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3, i32 2
  %30 = ptrtoint ptr %pgn.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pgn.i, align 8
  %call.i = call fastcc i32 @j1939_xtp_do_tx_ctl(ptr noundef %29, ptr noundef %skcb, i1 noundef zeroext true, i32 noundef %31, ptr noundef nonnull %dat) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp39 = icmp slt i32 %call.i, 0
  br i1 %cmp39, label %if.end36.cleanup_crit_edge, label %if.end42

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %last_txcmd to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %25, ptr %last_txcmd, align 1
  tail call fastcc void @j1939_tp_set_rxtimeout(ptr noundef %session, i32 noundef 1250)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @j1939_session_tx_eoma.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@j1939_session_tx_eoma, %if.then49)) #10
          to label %cleanup [label %if.then49], !srcloc !221

if.then49:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %session, align 8
  %ndev = getelementptr inbounds %struct.j1939_priv, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @j1939_session_tx_eoma.__UNIQUE_ID_ddebug467, ptr noundef %36, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, ptr noundef %session) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.end42, %if.end36.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ], [ %call.i, %if.end36.cleanup_crit_edge ], [ 0, %if.then49 ], [ 0, %if.end42 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dat) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @j1939_sk_recv_match(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__j1939_session_cancel(ptr noundef %session, i32 noundef %err) unnamed_addr #0 align 64 {
entry:
  %dat.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %session, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool40.not = icmp eq i32 %2, 0
  br i1 %tobool40.not, label %entry.if.end67_crit_edge, label %land.rhs41

entry.if.end67_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

land.rhs41:                                       ; preds = %entry
  %dep_map = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end61, label %land.rhs41.if.end67_crit_edge, !prof !215

land.rhs41.if.end67_crit_edge:                    ; preds = %land.rhs41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

do.end61:                                         ; preds = %land.rhs41
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1110, i32 noundef 9, ptr noundef null) #10
  br label %if.end67

if.end67:                                         ; preds = %do.end61, %land.rhs41.if.end67_crit_edge, %entry.if.end67_crit_edge
  %call77 = tail call fastcc i32 @j1939_xtp_abort_to_errno(ptr noundef %1, i32 noundef %err)
  %err78 = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 14
  %3 = ptrtoint ptr %err78 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call77, ptr %err78, align 8
  %state = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 16
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %state, align 8
  %skcb = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5
  %dst_name.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3, i32 1
  %5 = ptrtoint ptr %dst_name.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %dst_name.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.not.i = icmp eq i64 %6, 0
  br i1 %tobool.not.i, label %j1939_cb_is_broadcast.exit, label %if.end67.if.then80_crit_edge

if.end67.if.then80_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then80

j1939_cb_is_broadcast.exit:                       ; preds = %if.end67
  %da.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3, i32 4
  %7 = ptrtoint ptr %da.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %da.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp.i = icmp eq i8 %8, -1
  br i1 %cmp.i, label %j1939_cb_is_broadcast.exit.if.end87_crit_edge, label %j1939_cb_is_broadcast.exit.if.then80_crit_edge

j1939_cb_is_broadcast.exit.if.then80_crit_edge:   ; preds = %j1939_cb_is_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then80

j1939_cb_is_broadcast.exit.if.end87_crit_edge:    ; preds = %j1939_cb_is_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then80:                                        ; preds = %j1939_cb_is_broadcast.exit.if.then80_crit_edge, %if.end67.if.then80_crit_edge
  %transmission = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 9
  %9 = ptrtoint ptr %transmission to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %transmission, align 2, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool82.not = icmp eq i8 %10, 0
  %pgn = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3, i32 2
  %11 = ptrtoint ptr %pgn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pgn, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %dat.i) #10
  %flags.i.i.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 4
  %13 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags.i.i.i, align 8
  %..i.i = select i1 %tobool82.not, i8 2, i8 1
  %15 = and i8 %14, %..i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool1.not.i = icmp eq i8 %15, 0
  br i1 %tobool1.not.i, label %if.then80.j1939_xtp_tx_abort.exit_crit_edge, label %if.end.i

if.then80.j1939_xtp_tx_abort.exit_crit_edge:      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_xtp_tx_abort.exit

if.end.i:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  %16 = getelementptr inbounds [5 x i8], ptr %dat.i, i32 0, i32 1
  %conv.i = trunc i32 %err to i8
  %17 = call ptr @memset(ptr %dat.i, i32 255, i32 5)
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i, ptr %16, align 1
  %call5.i = call fastcc i32 @j1939_xtp_do_tx_ctl(ptr noundef %1, ptr noundef %skcb, i1 noundef zeroext %tobool82.not, i32 noundef %12, ptr noundef nonnull %dat.i) #10
  br label %j1939_xtp_tx_abort.exit

j1939_xtp_tx_abort.exit:                          ; preds = %if.end.i, %if.then80.j1939_xtp_tx_abort.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %dat.i) #10
  br label %if.end87

if.end87:                                         ; preds = %j1939_xtp_tx_abort.exit, %j1939_cb_is_broadcast.exit.if.end87_crit_edge
  %sk = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 4
  %19 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sk, align 8
  %tobool88.not = icmp eq ptr %20, null
  br i1 %tobool88.not, label %if.else, label %if.then89

if.then89:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %err78 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %err78, align 8
  tail call void @j1939_sk_send_loop_abort(ptr noundef nonnull %20, i32 noundef %22) #10
  br label %if.end92

if.else:                                          ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @j1939_sk_errqueue(ptr noundef %session, i32 noundef 5) #10
  br label %if.end92

if.end92:                                         ; preds = %if.else, %if.then89
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @j1939_xtp_abort_to_errno(ptr nocapture noundef readonly %priv, i32 noundef %abort) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %abort to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %abort, label %sw.default [
    i32 0, label %land.end
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb36
    i32 3, label %sw.bb37
    i32 4, label %sw.bb38
    i32 5, label %sw.bb39
    i32 6, label %sw.bb40
    i32 7, label %sw.bb41
    i32 8, label %sw.bb42
    i32 9, label %sw.bb43
    i32 10, label %sw.bb44
    i32 11, label %sw.bb45
    i32 12, label %sw.bb46
    i32 13, label %sw.bb47
    i32 14, label %sw.bb48
    i32 15, label %sw.bb49
    i32 250, label %sw.bb50
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.end:                                         ; preds = %entry
  %.b55 = load i1, ptr @j1939_xtp_abort_to_errno.__already_done, align 1
  br i1 %.b55, label %land.end.sw.epilog_crit_edge, label %if.then, !prof !216

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @j1939_xtp_abort_to_errno.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 177, i32 noundef 9, ptr noundef null) #10
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb40:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb45:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb47:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb49:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb50:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ndev = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 2
  %1 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef %abort) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb50, %sw.bb49, %sw.bb48, %sw.bb47, %sw.bb46, %sw.bb45, %sw.bb44, %sw.bb43, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %if.then, %land.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ 71, %sw.default ], [ 71, %sw.bb50 ], [ 71, %sw.bb49 ], [ 71, %sw.bb48 ], [ 71, %sw.bb47 ], [ 71, %sw.bb46 ], [ 71, %sw.bb45 ], [ 71, %sw.bb44 ], [ 71, %sw.bb43 ], [ 71, %sw.bb42 ], [ 84, %sw.bb41 ], [ 107, %sw.bb40 ], [ 131, %sw.bb39 ], [ 74, %sw.bb38 ], [ 113, %sw.bb37 ], [ 90, %sw.bb36 ], [ 0, %if.then ], [ 0, %land.end.sw.epilog_crit_edge ], [ 114, %entry.sw.epilog_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_sk_send_loop_abort(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @j1939_xtp_rx_dat_one(ptr noundef %session, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %session, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp.not = icmp eq i32 %5, 8
  br i1 %cmp.not, label %if.end, label %entry.out_session_cancel_crit_edge

entry.out_session_cancel_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_session_cancel

if.end:                                           ; preds = %entry
  %last_cmd = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 7
  %6 = ptrtoint ptr %last_cmd to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %last_cmd, align 8
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %7, label %if.end.sw.default_crit_edge [
    i8 -1, label %if.end.sw.epilog_crit_edge
    i8 22, label %sw.bb
    i8 32, label %if.end.sw.bb8_crit_edge
    i8 17, label %if.end.sw.bb8_crit_edge232
  ]

if.end.sw.bb8_crit_edge232:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb8

if.end.sw.bb8_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb8

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.sw.default_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.bb:                                            ; preds = %if.end
  %type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 38
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp3 = icmp eq i8 %10, 1
  br i1 %cmp3, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.sw.bb8_crit_edge

sw.bb.sw.bb8_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb8

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb8:                                           ; preds = %sw.bb.sw.bb8_crit_edge, %if.end.sw.bb8_crit_edge, %if.end.sw.bb8_crit_edge232
  %type10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 38
  %11 = ptrtoint ptr %type10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type10, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp12.not = icmp eq i8 %12, 1
  br i1 %cmp12.not, label %sw.bb8.sw.default_crit_edge, label %sw.bb8.sw.epilog_crit_edge

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb8.sw.default_crit_edge:                      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.default:                                       ; preds = %sw.bb8.sw.default_crit_edge, %if.end.sw.default_crit_edge
  %ndev = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev, align 4
  %conv17 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %14, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.j1939_xtp_rx_dat_one, ptr noundef %session, i32 noundef %conv17) #14
  br label %out_session_cancel

sw.epilog:                                        ; preds = %sw.bb8.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %3, align 1
  %conv18 = zext i8 %16 to i32
  %sub = add nsw i32 %conv18, -1
  %pkt = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 17
  %dpo = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 17, i32 6
  %17 = ptrtoint ptr %dpo to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dpo, align 4
  %add = add i32 %sub, %18
  %19 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pkt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %20)
  %cmp20 = icmp ugt i32 %add, %20
  br i1 %cmp20, label %sw.epilog.if.then28_crit_edge, label %lor.lhs.false

sw.epilog.if.then28_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

lor.lhs.false:                                    ; preds = %sw.epilog
  %rx = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 17, i32 4
  %21 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx, align 4
  %add23 = add i32 %22, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add23, i32 %20)
  %cmp26 = icmp ugt i32 %add23, %20
  br i1 %cmp26, label %lor.lhs.false.if.then28_crit_edge, label %if.end30

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.then28:                                        ; preds = %lor.lhs.false.if.then28_crit_edge, %sw.epilog.if.then28_crit_edge
  %ndev29 = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %ndev29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ndev29, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %24, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.j1939_xtp_rx_dat_one, ptr noundef %session) #14
  br label %out_session_cancel

if.end30:                                         ; preds = %lor.lhs.false
  %mul = mul i32 %add, 7
  %call31 = tail call fastcc ptr @j1939_session_skb_get_by_offset(ptr noundef %session, i32 noundef %mul)
  %tobool.not = icmp eq ptr %call31, null
  br i1 %tobool.not, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %ndev33 = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %ndev33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ndev33, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %26, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.j1939_xtp_rx_dat_one, ptr noundef %session) #14
  br label %out_session_cancel

if.end34:                                         ; preds = %if.end30
  %cb.i211 = getelementptr inbounds %struct.sk_buff, ptr %call31, i32 0, i32 3
  %27 = ptrtoint ptr %cb.i211 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cb.i211, align 8
  %sub38 = sub i32 %mul, %28
  %len39 = getelementptr inbounds %struct.sk_buff, ptr %call31, i32 0, i32 6
  %29 = ptrtoint ptr %len39 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len39, align 4
  %sub40 = sub i32 %30, %sub38
  %31 = tail call i32 @llvm.smin.i32(i32 %sub40, i32 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp45 = icmp slt i32 %31, 1
  br i1 %cmp45, label %if.end34.if.then52_crit_edge, label %lor.lhs.false47

if.end34.if.then52_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

lor.lhs.false47:                                  ; preds = %if.end34
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp50.not = icmp ult i32 %31, %33
  br i1 %cmp50.not, label %if.end55, label %lor.lhs.false47.if.then52_crit_edge

lor.lhs.false47.if.then52_crit_edge:              ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

if.then52:                                        ; preds = %lor.lhs.false47.if.then52_crit_edge, %if.end34.if.then52_crit_edge
  %ndev53 = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %ndev53 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ndev53, align 4
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %35, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.j1939_xtp_rx_dat_one, ptr noundef %session, i32 noundef %31, i32 noundef %37) #14
  br label %out_session_cancel

if.end55:                                         ; preds = %lor.lhs.false47
  %data56 = getelementptr inbounds %struct.sk_buff, ptr %call31, i32 0, i32 19
  %38 = ptrtoint ptr %data56 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data56, align 4
  %transmission = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 9
  %40 = ptrtoint ptr %transmission to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %transmission, align 2, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool57.not = icmp eq i8 %41, 0
  %arrayidx59 = getelementptr i8, ptr %39, i32 %sub38
  %arrayidx60 = getelementptr i8, ptr %3, i32 1
  br i1 %tobool57.not, label %if.then58, label %if.else

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %42 = call ptr @memcpy(ptr %arrayidx59, ptr %arrayidx60, i32 %31)
  br label %if.end73

if.else:                                          ; preds = %if.end55
  %bcmp = tail call i32 @bcmp(ptr %arrayidx59, ptr %arrayidx60, i32 %31) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool64.not = icmp eq i32 %bcmp, 0
  br i1 %tobool64.not, label %if.else.if.end73_crit_edge, label %do.body

if.else.if.end73_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

do.body:                                          ; preds = %if.else
  %.b209 = load i1, ptr @j1939_xtp_rx_dat_one.__print_once, align 1
  br i1 %.b209, label %do.body.if.end73_crit_edge, label %if.then67

do.body.if.end73_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then67:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @j1939_xtp_rx_dat_one.__print_once, align 1
  %ndev68 = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %ndev68 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ndev68, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.21, ptr noundef %44, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.j1939_xtp_rx_dat_one, ptr noundef %session, i32 noundef %31, ptr noundef %arrayidx60, i32 noundef %31, ptr noundef %arrayidx59) #14
  br label %if.end73

if.end73:                                         ; preds = %if.then67, %do.body.if.end73_crit_edge, %if.else.if.end73_crit_edge, %if.then58
  %45 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %46)
  %cmp76 = icmp eq i32 %add, %46
  br i1 %cmp76, label %if.then78, label %if.end73.if.end81_crit_edge

if.end73.if.end81_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then78:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add i32 %18, %conv18
  %47 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %inc, ptr %rx, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %if.end73.if.end81_crit_edge
  %type83 = getelementptr inbounds %struct.sk_buff, ptr %call31, i32 0, i32 3, i32 38
  %48 = ptrtoint ptr %type83 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %type83, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %49)
  %cmp85.not = icmp eq i8 %49, 1
  br i1 %cmp85.not, label %if.end81.if.else118_crit_edge, label %land.lhs.true

if.end81.if.else118_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else118

land.lhs.true:                                    ; preds = %if.end81
  %dst_name.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3, i32 1
  %50 = ptrtoint ptr %dst_name.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %dst_name.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %51)
  %tobool.not.i = icmp eq i64 %51, 0
  br i1 %tobool.not.i, label %j1939_cb_is_broadcast.exit, label %land.lhs.true.if.else118_crit_edge

land.lhs.true.if.else118_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else118

j1939_cb_is_broadcast.exit:                       ; preds = %land.lhs.true
  %da.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3, i32 4
  %52 = ptrtoint ptr %da.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %da.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %53)
  %cmp.i = icmp eq i8 %53, -1
  br i1 %cmp.i, label %if.end108, label %j1939_cb_is_broadcast.exit.if.else118_crit_edge

j1939_cb_is_broadcast.exit.if.else118_crit_edge:  ; preds = %j1939_cb_is_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else118

if.end108:                                        ; preds = %j1939_cb_is_broadcast.exit
  %54 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx, align 4
  %56 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pkt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp95.not = icmp ult i32 %55, %57
  br i1 %cmp95.not, label %if.then113, label %if.then110

if.then110:                                       ; preds = %if.end108
  tail call void @j1939_session_timers_cancel(ptr noundef %session)
  %58 = ptrtoint ptr %transmission to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %transmission, align 2, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i212 = icmp eq i8 %59, 0
  br i1 %tobool.not.i212, label %if.then.i, label %if.then110.j1939_session_completed.exit_crit_edge

if.then110.j1939_session_completed.exit_crit_edge: ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_completed.exit

if.then.i:                                        ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %dpo to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dpo, align 4
  %mul.i.i = mul i32 %61, 7
  %call.i.i = tail call fastcc ptr @j1939_session_skb_get_by_offset(ptr noundef %session, i32 noundef %mul.i.i) #10
  %62 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %session, align 8
  tail call void @j1939_sk_recv(ptr noundef %63, ptr noundef %call.i.i) #10
  tail call void @consume_skb(ptr noundef %call.i.i) #10
  br label %j1939_session_completed.exit

j1939_session_completed.exit:                     ; preds = %if.then.i, %if.then110.j1939_session_completed.exit_crit_edge
  tail call fastcc void @j1939_session_deactivate_activate_next(ptr noundef %session) #10
  br label %if.end128

if.then113:                                       ; preds = %if.end108
  %64 = ptrtoint ptr %transmission to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %transmission, align 2, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool115.not = icmp eq i8 %65, 0
  br i1 %tobool115.not, label %if.then116, label %if.then113.if.end128_crit_edge

if.then113.if.end128_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

if.then116:                                       ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @j1939_tp_set_rxtimeout(ptr noundef %session, i32 noundef 750)
  br label %if.end128

if.else118:                                       ; preds = %j1939_cb_is_broadcast.exit.if.else118_crit_edge, %land.lhs.true.if.else118_crit_edge, %if.end81.if.else118_crit_edge
  %66 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx, align 4
  %last = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 17, i32 1
  %68 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp104.not.not = icmp ult i32 %67, %69
  br i1 %cmp104.not.not, label %if.else125, label %if.then120

if.then120:                                       ; preds = %if.else118
  tail call fastcc void @j1939_tp_set_rxtimeout(ptr noundef %session, i32 noundef 1250)
  %70 = ptrtoint ptr %transmission to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %transmission, align 2, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool122.not = icmp eq i8 %71, 0
  br i1 %tobool122.not, label %if.then123, label %if.then120.if.end128_crit_edge

if.then120.if.end128_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

if.then123:                                       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @j1939_tp_schedule_txtimer(ptr noundef %session, i32 noundef 0)
  br label %if.end128

if.else125:                                       ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @j1939_tp_set_rxtimeout(ptr noundef %session, i32 noundef 750)
  br label %if.end128

if.end128:                                        ; preds = %if.else125, %if.then123, %if.then120.if.end128_crit_edge, %if.then116, %if.then113.if.end128_crit_edge, %j1939_session_completed.exit
  %72 = ptrtoint ptr %last_cmd to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -1, ptr %last_cmd, align 8
  tail call void @consume_skb(ptr noundef nonnull %call31) #10
  %kref.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %73 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !216

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call fastcc void @j1939_session_destroy(ptr noundef %session) #10
  br label %cleanup

out_session_cancel:                               ; preds = %if.then52, %if.then32, %if.then28, %sw.default, %entry.out_session_cancel_crit_edge
  %se_skb.0 = phi ptr [ null, %sw.default ], [ null, %if.then28 ], [ %call31, %if.then52 ], [ null, %if.then32 ], [ null, %entry.out_session_cancel_crit_edge ]
  %abort.0 = phi i32 [ 5, %sw.default ], [ 5, %if.then28 ], [ 5, %if.then52 ], [ 5, %if.then32 ], [ 6, %entry.out_session_cancel_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %se_skb.0, i32 noundef 0) #10
  tail call void @j1939_session_timers_cancel(ptr noundef %session)
  %74 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %session, align 8
  %active_session_list_lock.i.i = getelementptr inbounds %struct.j1939_priv, ptr %75, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %active_session_list_lock.i.i) #10
  %state.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 16
  %76 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %77)
  %cond.i = icmp eq i32 %77, 1
  br i1 %cond.i, label %if.then.i213, label %out_session_cancel.j1939_session_cancel.exit_crit_edge

out_session_cancel.j1939_session_cancel.exit_crit_edge: ; preds = %out_session_cancel
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_cancel.exit

if.then.i213:                                     ; preds = %out_session_cancel
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @j1939_tp_set_rxtimeout(ptr noundef %session, i32 noundef 500) #10
  tail call fastcc void @__j1939_session_cancel(ptr noundef %session, i32 noundef %abort.0) #10
  br label %j1939_session_cancel.exit

j1939_session_cancel.exit:                        ; preds = %if.then.i213, %out_session_cancel.j1939_session_cancel.exit_crit_edge
  %78 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %session, align 8
  %active_session_list_lock.i9.i = getelementptr inbounds %struct.j1939_priv, ptr %79, i32 0, i32 6
  tail call void @_raw_spin_unlock_bh(ptr noundef %active_session_list_lock.i9.i) #10
  %kref.i214 = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 3
  %call.i.i.i.i.i.i.i215 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i214, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %kref.i214, i32 1, i32 3, i32 1) #10
  %80 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i214, ptr %kref.i214, i32 1, ptr elementtype(i32) %kref.i214) #10, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i216 = extractvalue { i32, i32, i32 } %80, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i216)
  %cmp.i.i.i.i.i217 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i216, 1
  br i1 %cmp.i.i.i.i.i217, label %if.then.i.i221, label %if.end5.i.i.i.i.i219

if.end5.i.i.i.i.i219:                             ; preds = %j1939_session_cancel.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i216)
  %.not.i.i.i.i.i218 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i216, 0
  br i1 %.not.i.i.i.i.i218, label %if.end5.i.i.i.i.i219.cleanup_crit_edge, label %if.then10.i.i.i.i.i220, !prof !216

if.end5.i.i.i.i.i219.cleanup_crit_edge:           ; preds = %if.end5.i.i.i.i.i219
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i220:                           ; preds = %if.end5.i.i.i.i.i219
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i214, i32 noundef 3) #10
  br label %cleanup

if.then.i.i221:                                   ; preds = %j1939_session_cancel.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call fastcc void @j1939_session_destroy(ptr noundef %session) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i221, %if.then10.i.i.i.i.i220, %if.end5.i.i.i.i.i219.cleanup_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_sk_recv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @j1939_xtp_rx_rts(ptr noundef %priv, ptr noundef %skb, i1 noundef zeroext %transmitter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %addr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %active_session_list_lock.i.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %active_session_list_lock.i.i) #10
  %active_session_list.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 5
  %call.i = tail call fastcc ptr @j1939_session_get_by_addr_locked(ptr noundef %priv, ptr noundef %active_session_list.i, ptr noundef %addr, i1 noundef zeroext false, i1 noundef zeroext %transmitter) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %active_session_list_lock.i.i) #10
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %transmitter, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call5 = tail call fastcc ptr @j1939_xtp_rx_rts_session_new(ptr noundef %priv, ptr noundef %skb)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %3)
  %cmp = icmp eq i8 %3, 32
  br i1 %cmp, label %land.lhs.true, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then7
  %call9 = tail call zeroext i1 @j1939_sk_recv_match(ptr noundef %priv, ptr noundef %cb.i) #10
  br i1 %call9, label %if.then11, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %ndev = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 2
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %5, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.j1939_xtp_rx_rts) #14
  br label %cleanup

if.else:                                          ; preds = %entry
  %call14 = tail call fastcc i32 @j1939_xtp_rx_rts_session_active(ptr noundef nonnull %call.i, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.else.if.end18_crit_edge, label %if.then16

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then16:                                        ; preds = %if.else
  %kref.i = getelementptr inbounds %struct.j1939_session, ptr %call.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !216

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call fastcc void @j1939_session_destroy(ptr noundef nonnull %call.i) #10
  br label %cleanup

if.end18:                                         ; preds = %if.else.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %session.0 = phi ptr [ %call.i, %if.else.if.end18_crit_edge ], [ %call5, %if.end.if.end18_crit_edge ]
  %last_cmd = getelementptr inbounds %struct.j1939_session, ptr %session.0, i32 0, i32 7
  %7 = ptrtoint ptr %last_cmd to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %3, ptr %last_cmd, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %3)
  %cmp20 = icmp eq i8 %3, 32
  %transmission = getelementptr inbounds %struct.j1939_session, ptr %session.0, i32 0, i32 9
  %8 = ptrtoint ptr %transmission to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %transmission, align 2, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool23.not = icmp eq i8 %9, 0
  br i1 %cmp20, label %if.then22, label %if.else26

if.then22:                                        ; preds = %if.end18
  br i1 %tobool23.not, label %if.then22.if.end31.sink.split_crit_edge, label %if.then22.if.end31_crit_edge

if.then22.if.end31_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then22.if.end31.sink.split_crit_edge:          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.sink.split

if.else26:                                        ; preds = %if.end18
  br i1 %tobool23.not, label %if.then29, label %if.else26.if.end31.sink.split_crit_edge

if.else26.if.end31.sink.split_crit_edge:          ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.sink.split

if.then29:                                        ; preds = %if.else26
  %txtimer.i = getelementptr inbounds %struct.j1939_session, ptr %session.0, i32 0, i32 18
  %call.i55 = tail call i32 @hrtimer_cancel(ptr noundef %txtimer.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool.not.i = icmp eq i32 %call.i55, 0
  br i1 %tobool.not.i, label %if.then29.j1939_session_txtimer_cancel.exit_crit_edge, label %if.then.i

if.then29.j1939_session_txtimer_cancel.exit_crit_edge: ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_txtimer_cancel.exit

if.then.i:                                        ; preds = %if.then29
  %kref.i.i = getelementptr inbounds %struct.j1939_session, ptr %session.0, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #10, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.j1939_session_txtimer_cancel.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !216

if.end5.i.i.i.i.i.i.j1939_session_txtimer_cancel.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_txtimer_cancel.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef 3) #10
  br label %j1939_session_txtimer_cancel.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call fastcc void @j1939_session_destroy(ptr noundef nonnull %session.0) #10
  br label %j1939_session_txtimer_cancel.exit

j1939_session_txtimer_cancel.exit:                ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.j1939_session_txtimer_cancel.exit_crit_edge, %if.then29.j1939_session_txtimer_cancel.exit_crit_edge
  %kref.i.i56 = getelementptr inbounds %struct.j1939_session, ptr %session.0, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i57 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i56, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref.i.i56, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i56, ptr %kref.i.i56, i32 1, ptr elementtype(i32) %kref.i.i56) #10, !srcloc !214
  %asmresult.i.i.i.i.i.i.i.i58 = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i58)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i58, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %j1939_session_txtimer_cancel.exit.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !215

j1939_session_txtimer_cancel.exit.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %j1939_session_txtimer_cancel.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %j1939_session_txtimer_cancel.exit
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i58, 1
  %12 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i.i.i59 = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i.i.i59, label %if.else.i.i.i.i.i.i.j1939_tp_schedule_txtimer.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !216

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.j1939_tp_schedule_txtimer.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_tp_schedule_txtimer.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %j1939_session_txtimer_cancel.exit.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %j1939_session_txtimer_cancel.exit.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i56, i32 noundef %.sink.i.i.i.i.i.i) #10
  br label %j1939_tp_schedule_txtimer.exit

j1939_tp_schedule_txtimer.exit:                   ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.j1939_tp_schedule_txtimer.exit_crit_edge
  tail call void @hrtimer_start_range_ns(ptr noundef %txtimer.i, i64 noundef 0, i64 noundef 0, i32 noundef 5) #10
  br label %if.end31.sink.split

if.end31.sink.split:                              ; preds = %j1939_tp_schedule_txtimer.exit, %if.else26.if.end31.sink.split_crit_edge, %if.then22.if.end31.sink.split_crit_edge
  %.sink = phi i32 [ 750, %if.then22.if.end31.sink.split_crit_edge ], [ 1250, %j1939_tp_schedule_txtimer.exit ], [ 1250, %if.else26.if.end31.sink.split_crit_edge ]
  tail call fastcc void @j1939_tp_set_rxtimeout(ptr noundef nonnull %session.0, i32 noundef %.sink)
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %if.then22.if.end31_crit_edge
  %kref.i61 = getelementptr inbounds %struct.j1939_session, ptr %session.0, i32 0, i32 3
  %call.i.i.i.i.i.i.i62 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i61, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %kref.i61, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i61, ptr %kref.i61, i32 1, ptr elementtype(i32) %kref.i61) #10, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i63 = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i63)
  %cmp.i.i.i.i.i64 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i63, 1
  br i1 %cmp.i.i.i.i.i64, label %if.then.i.i68, label %if.end5.i.i.i.i.i66

if.end5.i.i.i.i.i66:                              ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i63)
  %.not.i.i.i.i.i65 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i63, 0
  br i1 %.not.i.i.i.i.i65, label %if.end5.i.i.i.i.i66.cleanup_crit_edge, label %if.then10.i.i.i.i.i67, !prof !216

if.end5.i.i.i.i.i66.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i67:                            ; preds = %if.end5.i.i.i.i.i66
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i61, i32 noundef 3) #10
  br label %cleanup

if.then.i.i68:                                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call fastcc void @j1939_session_destroy(ptr noundef nonnull %session.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i68, %if.then10.i.i.i.i.i67, %if.end5.i.i.i.i.i66.cleanup_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.then11, %land.lhs.true.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @j1939_xtp_rx_cts(ptr noundef %priv, ptr nocapture noundef readonly %skb, i1 noundef zeroext %transmitter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %active_session_list_lock.i.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %active_session_list_lock.i.i) #10
  %active_session_list.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 5
  %call.i = tail call fastcc ptr @j1939_session_get_by_addr_locked(ptr noundef %priv, ptr noundef %active_session_list.i, ptr noundef %addr, i1 noundef zeroext true, i1 noundef zeroext %transmitter) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %active_session_list_lock.i.i) #10
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @j1939_xtp_rx_cts_one(ptr noundef nonnull %call.i, ptr noundef %skb)
  %kref.i = getelementptr inbounds %struct.j1939_session, ptr %call.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !216

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call fastcc void @j1939_session_destroy(ptr noundef nonnull %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @j1939_xtp_rx_dpo(ptr noundef %priv, ptr nocapture noundef readonly %skb, i1 noundef zeroext %transmitter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %active_session_list_lock.i.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %active_session_list_lock.i.i) #10
  %active_session_list.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 5
  %call.i = tail call fastcc ptr @j1939_session_get_by_addr_locked(ptr noundef %priv, ptr noundef %active_session_list.i, ptr noundef %addr, i1 noundef zeroext false, i1 noundef zeroext %transmitter) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %active_session_list_lock.i.i) #10
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ndev = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.j1939_xtp_rx_dpo) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @j1939_xtp_rx_dpo_one(ptr noundef nonnull %call.i, ptr noundef %skb)
  %kref.i = getelementptr inbounds %struct.j1939_session, ptr %call.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !216

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call fastcc void @j1939_session_destroy(ptr noundef nonnull %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @j1939_xtp_rx_eoma(ptr noundef %priv, ptr nocapture noundef readonly %skb, i1 noundef zeroext %transmitter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %active_session_list_lock.i.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %active_session_list_lock.i.i) #10
  %active_session_list.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 5
  %call.i = tail call fastcc ptr @j1939_session_get_by_addr_locked(ptr noundef %priv, ptr noundef %active_session_list.i, ptr noundef %addr, i1 noundef zeroext true, i1 noundef zeroext %transmitter) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %active_session_list_lock.i.i) #10
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @j1939_xtp_rx_eoma_one(ptr noundef nonnull %call.i, ptr noundef %skb)
  %kref.i = getelementptr inbounds %struct.j1939_session, ptr %call.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !216

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call fastcc void @j1939_session_destroy(ptr noundef nonnull %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @j1939_xtp_rx_rts_session_new(ptr noundef %priv, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  %dat.i217 = alloca [5 x i8], align 1
  %dat.i = alloca [5 x i8], align 1
  %skcb = alloca %struct.j1939_sk_buff_cb, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %skcb) #10
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = call ptr @memcpy(ptr %skcb, ptr %cb.i, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @j1939_xtp_rx_rts_session_new.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@j1939_xtp_rx_rts_session_new, %if.then)) #10
          to label %do.end6 [label %if.then], !srcloc !221

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ndev = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 2
  %1 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @j1939_xtp_rx_rts_session_new.__UNIQUE_ID_ddebug472, ptr noundef %2, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.44) #10
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %arrayidx.i = getelementptr i8, ptr %4, i32 7
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %6 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx1.i = getelementptr i8, ptr %4, i32 6
  %7 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %8 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %4, i32 5
  %9 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %10 to i32
  %11 = and i32 %conv2.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %11)
  %cmp.i.not.i = icmp eq i32 %11, 240
  %or7.i = select i1 %cmp.i.not.i, i32 %conv5.i, i32 0
  %spec.select.i = or i32 %or.i, %or7.i
  %pgn8 = getelementptr inbounds %struct.j1939_sk_buff_cb, ptr %skcb, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %pgn8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select.i, ptr %pgn8, align 8
  %call9 = call zeroext i1 @j1939_sk_recv_match(ptr noundef %priv, ptr noundef nonnull %skcb) #10
  br i1 %call9, label %if.end11, label %do.end6.cleanup_crit_edge

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %do.end6
  %type = getelementptr inbounds %struct.j1939_sk_buff_cb, ptr %skcb, i32 0, i32 3, i32 5
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp = icmp eq i8 %14, 1
  br i1 %cmp, label %if.then14, label %if.else29

if.then14:                                        ; preds = %if.end11
  %arrayidx.i198 = getelementptr i8, ptr %4, i32 4
  %15 = ptrtoint ptr %arrayidx.i198 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i198, align 1
  %conv.i199 = zext i8 %16 to i32
  %shl.i200 = shl nuw i32 %conv.i199, 24
  %arrayidx1.i201 = getelementptr i8, ptr %4, i32 3
  %17 = ptrtoint ptr %arrayidx1.i201 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx1.i201, align 1
  %conv2.i202 = zext i8 %18 to i32
  %shl3.i203 = shl nuw nsw i32 %conv2.i202, 16
  %or.i204 = or i32 %shl3.i203, %shl.i200
  %arrayidx4.i205 = getelementptr i8, ptr %4, i32 2
  %19 = ptrtoint ptr %arrayidx4.i205 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx4.i205, align 1
  %conv5.i206 = zext i8 %20 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i206, 8
  %or7.i207 = or i32 %or.i204, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %4, i32 1
  %21 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %22 to i32
  %or11.i = or i32 %or7.i207, %conv9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440505, i32 %or11.i)
  %cmp16 = icmp sgt i32 %or11.i, 117440505
  br i1 %cmp16, label %if.then14.if.then49_crit_edge, label %if.else

if.then14.if.then49_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49

if.else:                                          ; preds = %if.then14
  %tp_max_packet_size = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 7
  %23 = ptrtoint ptr %tp_max_packet_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tp_max_packet_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or11.i, i32 %24)
  %cmp19 = icmp ugt i32 %or11.i, %24
  br i1 %cmp19, label %if.else.if.then49_crit_edge, label %if.else22

if.else.if.then49_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49

if.else22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1786, i32 %or11.i)
  %cmp23 = icmp slt i32 %or11.i, 1786
  br i1 %cmp23, label %if.else22.if.then49_crit_edge, label %if.else22.if.end51_crit_edge

if.else22.if.end51_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.else22.if.then49_crit_edge:                    ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49

if.else29:                                        ; preds = %if.end11
  %arrayidx.i208 = getelementptr i8, ptr %4, i32 2
  %25 = ptrtoint ptr %arrayidx.i208 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i208, align 1
  %conv.i209 = zext i8 %26 to i32
  %shl.i210 = shl nuw nsw i32 %conv.i209, 8
  %arrayidx1.i211 = getelementptr i8, ptr %4, i32 1
  %27 = ptrtoint ptr %arrayidx1.i211 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx1.i211, align 1
  %conv2.i212 = zext i8 %28 to i32
  %add.i = or i32 %shl.i210, %conv2.i212
  call void @__sanitizer_cov_trace_const_cmp4(i32 1785, i32 %add.i)
  %cmp31 = icmp ugt i32 %add.i, 1785
  br i1 %cmp31, label %if.else29.if.then49_crit_edge, label %if.else34

if.else29.if.then49_crit_edge:                    ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49

if.else34:                                        ; preds = %if.else29
  %tp_max_packet_size35 = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 7
  %29 = ptrtoint ptr %tp_max_packet_size35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tp_max_packet_size35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %30)
  %cmp36 = icmp ugt i32 %add.i, %30
  br i1 %cmp36, label %if.else34.if.then49_crit_edge, label %if.end46

if.else34.if.then49_crit_edge:                    ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49

if.end46:                                         ; preds = %if.else34
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %add.i)
  %cmp40 = icmp ult i32 %add.i, 9
  br i1 %cmp40, label %if.end46.if.then49_crit_edge, label %if.end46.if.end51_crit_edge

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.end46.if.then49_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49

if.then49:                                        ; preds = %if.end46.if.then49_crit_edge, %if.else34.if.then49_crit_edge, %if.else29.if.then49_crit_edge, %if.else22.if.then49_crit_edge, %if.else.if.then49_crit_edge, %if.then14.if.then49_crit_edge
  %abort.0227 = phi i8 [ 5, %if.end46.if.then49_crit_edge ], [ 5, %if.else22.if.then49_crit_edge ], [ 2, %if.else34.if.then49_crit_edge ], [ 5, %if.else29.if.then49_crit_edge ], [ 2, %if.else.if.then49_crit_edge ], [ 5, %if.then14.if.then49_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %dat.i) #10
  %flags.i.i.i = getelementptr inbounds %struct.j1939_sk_buff_cb, ptr %skcb, i32 0, i32 4
  %31 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %flags.i.i.i, align 8
  %33 = and i8 %32, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool1.not.i = icmp eq i8 %33, 0
  br i1 %tobool1.not.i, label %if.then49.j1939_xtp_tx_abort.exit_crit_edge, label %if.end.i

if.then49.j1939_xtp_tx_abort.exit_crit_edge:      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_xtp_tx_abort.exit

if.end.i:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %34 = getelementptr inbounds [5 x i8], ptr %dat.i, i32 0, i32 1
  %35 = call ptr @memset(ptr %dat.i, i32 255, i32 5)
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %abort.0227, ptr %34, align 1
  %call5.i = call fastcc i32 @j1939_xtp_do_tx_ctl(ptr noundef %priv, ptr noundef nonnull %skcb, i1 noundef zeroext true, i32 noundef %spec.select.i, ptr noundef nonnull %dat.i) #10
  br label %j1939_xtp_tx_abort.exit

j1939_xtp_tx_abort.exit:                          ; preds = %if.end.i, %if.then49.j1939_xtp_tx_abort.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %dat.i) #10
  br label %cleanup

if.end51:                                         ; preds = %if.end46.if.end51_crit_edge, %if.else22.if.end51_crit_edge
  %len.0228 = phi i32 [ %or11.i, %if.else22.if.end51_crit_edge ], [ %add.i, %if.end46.if.end51_crit_edge ]
  %add.i214 = add nuw nsw i32 %len.0228, 16
  %call.i.i = call ptr @__alloc_skb(i32 noundef %add.i214, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end51.if.then54_crit_edge, label %if.end.i215, !prof !215

if.end51.if.then54_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54

if.end.i215:                                      ; preds = %if.end51
  %ndev.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 2
  %37 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ndev.i, align 4
  %39 = getelementptr inbounds %struct.anon.1, ptr %call.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %38, ptr %39, align 8
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %41 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %42, i32 16
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %43 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %44, i32 16
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %45 = load ptr, ptr %ndev.i, align 4
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 17
  %46 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ifindex.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %48 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %head.i.i, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %47, ptr %49, align 8
  %51 = load ptr, ptr %head.i.i, align 8
  %skbcnt.i = getelementptr inbounds %struct.can_skb_priv, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %skbcnt.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %skbcnt.i, align 4
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %53 = call ptr @memcpy(ptr %cb.i.i, ptr %skcb, i32 48)
  %call9.i = call fastcc ptr @j1939_session_new(ptr noundef %priv, ptr noundef nonnull %call.i.i, i32 noundef %len.0228) #10
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end56

if.then11.i:                                      ; preds = %if.end.i215
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  br label %if.then54

if.then54:                                        ; preds = %if.then11.i, %if.end51.if.then54_crit_edge
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %dat.i217) #10
  %flags.i.i.i218 = getelementptr inbounds %struct.j1939_sk_buff_cb, ptr %skcb, i32 0, i32 4
  %54 = ptrtoint ptr %flags.i.i.i218 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %flags.i.i.i218, align 8
  %56 = and i8 %55, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool1.not.i219 = icmp eq i8 %56, 0
  br i1 %tobool1.not.i219, label %if.then54.j1939_xtp_tx_abort.exit222_crit_edge, label %if.end.i221

if.then54.j1939_xtp_tx_abort.exit222_crit_edge:   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_xtp_tx_abort.exit222

if.end.i221:                                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  %57 = getelementptr inbounds [5 x i8], ptr %dat.i217, i32 0, i32 1
  %58 = call ptr @memset(ptr %dat.i217, i32 255, i32 5)
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 2, ptr %57, align 1
  %call5.i220 = call fastcc i32 @j1939_xtp_do_tx_ctl(ptr noundef %priv, ptr noundef nonnull %skcb, i1 noundef zeroext true, i32 noundef %spec.select.i, ptr noundef nonnull %dat.i217) #10
  br label %j1939_xtp_tx_abort.exit222

j1939_xtp_tx_abort.exit222:                       ; preds = %if.end.i221, %if.then54.j1939_xtp_tx_abort.exit222_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %dat.i217) #10
  br label %cleanup

if.end56:                                         ; preds = %if.end.i215
  %call13.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %len.0228) #10
  %add = add nuw nsw i32 %len.0228, 6
  %div231 = udiv i32 %add, 7
  %pkt = getelementptr inbounds %struct.j1939_session, ptr %call9.i, i32 0, i32 17
  %60 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %div231, ptr %pkt, align 4
  %block = getelementptr inbounds %struct.j1939_session, ptr %call9.i, i32 0, i32 17, i32 5
  %61 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 255, ptr %block, align 4
  %62 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %63)
  %cmp61.not = icmp eq i8 %63, 1
  br i1 %cmp61.not, label %if.end56.if.end91_crit_edge, label %if.then63

if.end56.if.end91_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then63:                                        ; preds = %if.end56
  %arrayidx = getelementptr i8, ptr %4, i32 3
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx, align 1
  %conv64 = zext i8 %65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div231, i32 %conv64)
  %cmp67.not = icmp eq i32 %div231, %conv64
  br i1 %cmp67.not, label %if.then63.if.end75_crit_edge, label %if.then69

if.then63.if.end75_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then69:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ndev.i, align 4
  call void (ptr, ptr, ...) @netdev_alert(ptr noundef %67, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44, ptr noundef nonnull %call9.i, i32 noundef %div231, i32 noundef %conv64) #14
  br label %if.end75

if.end75:                                         ; preds = %if.then69, %if.then63.if.end75_crit_edge
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx, align 1
  %conv77 = zext i8 %69 to i32
  %70 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv77, ptr %pkt, align 4
  %71 = load i8, ptr %arrayidx, align 1
  %arrayidx81 = getelementptr i8, ptr %4, i32 4
  %72 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx81, align 1
  %74 = call i8 @llvm.umin.i8(i8 %71, i8 %73)
  %cond = zext i8 %74 to i32
  %75 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %cond, ptr %block, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.end75, %if.end56.if.end91_crit_edge
  %rx = getelementptr inbounds %struct.j1939_session, ptr %call9.i, i32 0, i32 17, i32 4
  %76 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %rx, align 4
  %tx = getelementptr inbounds %struct.j1939_session, ptr %call9.i, i32 0, i32 17, i32 2
  %77 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %tx, align 4
  %rx_tskey = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 11
  %78 = ptrtoint ptr %rx_tskey to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rx_tskey, align 4
  %inc = add i32 %79, 1
  store i32 %inc, ptr %rx_tskey, align 4
  %tskey = getelementptr inbounds %struct.j1939_session, ptr %call9.i, i32 0, i32 15
  %80 = ptrtoint ptr %tskey to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %tskey, align 4
  call void @j1939_sk_errqueue(ptr noundef nonnull %call9.i, i32 noundef 3) #10
  %call94 = call i32 @j1939_session_activate(ptr noundef nonnull %call9.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end91.cleanup_crit_edge, label %land.rhs

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs:                                         ; preds = %if.end91
  %.b194 = load i1, ptr @j1939_xtp_rx_rts_session_new.__already_done, align 1
  br i1 %.b194, label %land.rhs.cleanup_crit_edge, label %if.then112, !prof !216

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then112:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @j1939_xtp_rx_rts_session_new.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1645, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then112, %land.rhs.cleanup_crit_edge, %if.end91.cleanup_crit_edge, %j1939_xtp_tx_abort.exit222, %j1939_xtp_tx_abort.exit, %do.end6.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %j1939_xtp_tx_abort.exit ], [ null, %j1939_xtp_tx_abort.exit222 ], [ null, %do.end6.cleanup_crit_edge ], [ %call9.i, %if.end91.cleanup_crit_edge ], [ %call9.i, %if.then112 ], [ %call9.i, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %skcb) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @j1939_xtp_rx_rts_session_active(ptr noundef %session, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %session, align 8
  %transmission = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 9
  %2 = ptrtoint ptr %transmission to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %transmission, align 2, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc zeroext i1 @j1939_xtp_rx_cmd_bad_pgn(ptr noundef %session, ptr noundef %skb)
  br i1 %call2, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  tail call void @j1939_session_timers_cancel(ptr noundef %session)
  %4 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %session, align 8
  %active_session_list_lock.i.i = getelementptr inbounds %struct.j1939_priv, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %active_session_list_lock.i.i) #10
  %state.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 16
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cond.i = icmp eq i32 %7, 1
  br i1 %cond.i, label %if.then.i, label %if.end.j1939_session_cancel.exit_crit_edge

if.end.j1939_session_cancel.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_cancel.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @j1939_tp_set_rxtimeout(ptr noundef %session, i32 noundef 500) #10
  tail call fastcc void @__j1939_session_cancel(ptr noundef %session, i32 noundef 1) #10
  br label %j1939_session_cancel.exit

j1939_session_cancel.exit:                        ; preds = %if.then.i, %if.end.j1939_session_cancel.exit_crit_edge
  %8 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %session, align 8
  %active_session_list_lock.i9.i = getelementptr inbounds %struct.j1939_priv, ptr %9, i32 0, i32 6
  tail call void @_raw_spin_unlock_bh(ptr noundef %active_session_list_lock.i9.i) #10
  br label %if.end4

if.end4:                                          ; preds = %j1939_session_cancel.exit, %entry.if.end4_crit_edge
  %last_cmd = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 7
  %10 = ptrtoint ptr %last_cmd to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %last_cmd, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.not = icmp eq i8 %11, 0
  br i1 %cmp.not, label %if.end12, label %if.then6

if.then6:                                         ; preds = %if.end4
  %conv = zext i8 %11 to i32
  %ndev = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndev, align 4
  %sa = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %14 = ptrtoint ptr %sa to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sa, align 4
  %conv7 = zext i8 %15 to i32
  %da = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %16 = ptrtoint ptr %da to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %da, align 1
  %conv9 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %13, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.j1939_xtp_rx_rts_session_active, ptr noundef %session, i32 noundef %conv7, i32 noundef %conv9, i32 noundef %conv) #14
  tail call void @j1939_session_timers_cancel(ptr noundef %session)
  %18 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %session, align 8
  %active_session_list_lock.i.i97 = getelementptr inbounds %struct.j1939_priv, ptr %19, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %active_session_list_lock.i.i97) #10
  %state.i98 = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 16
  %20 = ptrtoint ptr %state.i98 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state.i98, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cond.i99 = icmp eq i32 %21, 1
  br i1 %cond.i99, label %if.then.i100, label %if.then6.j1939_session_cancel.exit102_crit_edge

if.then6.j1939_session_cancel.exit102_crit_edge:  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_cancel.exit102

if.then.i100:                                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @j1939_tp_set_rxtimeout(ptr noundef %session, i32 noundef 500) #10
  tail call fastcc void @__j1939_session_cancel(ptr noundef %session, i32 noundef 1) #10
  br label %j1939_session_cancel.exit102

j1939_session_cancel.exit102:                     ; preds = %if.then.i100, %if.then6.j1939_session_cancel.exit102_crit_edge
  %22 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %session, align 8
  %active_session_list_lock.i9.i101 = getelementptr inbounds %struct.j1939_priv, ptr %23, i32 0, i32 6
  tail call void @_raw_spin_unlock_bh(ptr noundef %active_session_list_lock.i9.i101) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %sa15 = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3, i32 3
  %24 = ptrtoint ptr %sa15 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sa15, align 4
  %sa18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %26 = ptrtoint ptr %sa18 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sa18, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp20.not = icmp eq i8 %25, %27
  br i1 %cmp20.not, label %lor.lhs.false, label %if.end12.if.then31_crit_edge

if.end12.if.then31_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31

lor.lhs.false:                                    ; preds = %if.end12
  %da24 = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3, i32 4
  %28 = ptrtoint ptr %da24 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %da24, align 1
  %da27 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %30 = ptrtoint ptr %da27 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %da27, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %31)
  %cmp29.not = icmp eq i8 %29, %31
  br i1 %cmp29.not, label %lor.lhs.false.if.end47_crit_edge, label %lor.lhs.false.if.then31_crit_edge

lor.lhs.false.if.then31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31

lor.lhs.false.if.end47_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then31:                                        ; preds = %lor.lhs.false.if.then31_crit_edge, %if.end12.if.then31_crit_edge
  %ndev32 = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %ndev32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ndev32, align 4
  %conv36 = zext i8 %25 to i32
  %conv39 = zext i8 %27 to i32
  %da42 = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3, i32 4
  %34 = ptrtoint ptr %da42 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %da42, align 1
  %conv43 = zext i8 %35 to i32
  %da45 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %36 = ptrtoint ptr %da45 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %da45, align 1
  %conv46 = zext i8 %37 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %33, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.j1939_xtp_rx_rts_session_active, ptr noundef %session, i32 noundef %conv36, i32 noundef %conv39, i32 noundef %conv43, i32 noundef %conv46) #14
  br label %if.end47

if.end47:                                         ; preds = %if.then31, %lor.lhs.false.if.end47_crit_edge
  %38 = ptrtoint ptr %sa18 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %sa18, align 4
  %40 = ptrtoint ptr %sa15 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %sa15, align 4
  %da54 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %41 = ptrtoint ptr %da54 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %da54, align 1
  %da57 = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3, i32 4
  %43 = ptrtoint ptr %da57 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %da57, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @j1939_xtp_rx_rts_session_active.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@j1939_xtp_rx_rts_session_active, %if.then63)) #10
          to label %cleanup [label %if.then63], !srcloc !221

if.then63:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %session, align 8
  %ndev65 = getelementptr inbounds %struct.j1939_priv, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %ndev65 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ndev65, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @j1939_xtp_rx_rts_session_active.__UNIQUE_ID_ddebug475, ptr noundef %47, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.j1939_xtp_rx_rts_session_active, ptr noundef %session) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %if.end47, %j1939_session_cancel.exit102, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %j1939_session_cancel.exit102 ], [ -16, %if.then.cleanup_crit_edge ], [ 0, %if.then63 ], [ 0, %if.end47 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @j1939_xtp_rx_cmd_bad_pgn(ptr noundef %session, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  %dat.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %arrayidx.i = getelementptr i8, ptr %1, i32 7
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %3 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx1.i = getelementptr i8, ptr %1, i32 6
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %5 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %1, i32 5
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %7 to i32
  %8 = and i32 %conv2.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, 240
  %or7.i = select i1 %cmp.i.not.i, i32 %conv5.i, i32 0
  %spec.select.i = or i32 %or.i, %or7.i
  %9 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %session, align 8
  %pgn5 = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3, i32 2
  %11 = ptrtoint ptr %pgn5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pgn5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %spec.select.i)
  %cmp = icmp eq i32 %12, %spec.select.i
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 1
  %conv = zext i8 %14 to i32
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %14, label %land.end [
    i8 32, label %if.end.sw.epilog_crit_edge
    i8 20, label %if.end.if.then55_crit_edge
    i8 16, label %if.end.if.then55_crit_edge80
    i8 21, label %if.end.sw.bb9_crit_edge
    i8 17, label %if.end.sw.bb9_crit_edge81
    i8 22, label %sw.bb10
    i8 23, label %if.end.sw.bb12_crit_edge
    i8 19, label %if.end.sw.bb12_crit_edge82
    i8 -1, label %if.end.sw.epilog_crit_edge83
  ]

if.end.sw.epilog_crit_edge83:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.sw.bb12_crit_edge82:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

if.end.sw.bb12_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

if.end.sw.bb9_crit_edge81:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9

if.end.sw.bb9_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9

if.end.if.then55_crit_edge80:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end.if.then55_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end.sw.bb9_crit_edge, %if.end.sw.bb9_crit_edge81
  br label %if.then55

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

sw.bb12:                                          ; preds = %if.end.sw.bb12_crit_edge, %if.end.sw.bb12_crit_edge82
  br label %if.then55

land.end:                                         ; preds = %if.end
  %.b74 = load i1, ptr @j1939_xtp_rx_cmd_bad_pgn.__already_done, align 1
  br i1 %.b74, label %land.end.sw.epilog_crit_edge, label %if.then19, !prof !216

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then19:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @j1939_xtp_rx_cmd_bad_pgn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1303, i32 noundef 9, ptr noundef null) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then19, %land.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge83
  %ndev = getelementptr inbounds %struct.j1939_priv, ptr %10, i32 0, i32 2
  %16 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev, align 4
  %18 = ptrtoint ptr %pgn5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pgn5, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %17, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.j1939_xtp_rx_cmd_bad_pgn, ptr noundef %session, i32 noundef %conv, i32 noundef %spec.select.i, i32 noundef %19) #14
  br label %cleanup

if.then55:                                        ; preds = %sw.bb12, %sw.bb10, %sw.bb9, %if.end.if.then55_crit_edge, %if.end.if.then55_crit_edge80
  %abort.0.ph = phi i8 [ 14, %sw.bb9 ], [ 10, %sw.bb10 ], [ -6, %sw.bb12 ], [ 1, %if.end.if.then55_crit_edge ], [ 1, %if.end.if.then55_crit_edge80 ]
  %ndev78 = getelementptr inbounds %struct.j1939_priv, ptr %10, i32 0, i32 2
  %20 = ptrtoint ptr %ndev78 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev78, align 4
  %22 = ptrtoint ptr %pgn5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pgn5, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %21, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.j1939_xtp_rx_cmd_bad_pgn, ptr noundef %session, i32 noundef %conv, i32 noundef %spec.select.i, i32 noundef %23) #14
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %dat.i) #10
  %flags.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  %24 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flags.i.i.i, align 8
  %26 = and i8 %25, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool1.not.i = icmp eq i8 %26, 0
  br i1 %tobool1.not.i, label %if.then55.j1939_xtp_tx_abort.exit_crit_edge, label %if.end.i

if.then55.j1939_xtp_tx_abort.exit_crit_edge:      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_xtp_tx_abort.exit

if.end.i:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  %27 = getelementptr inbounds [5 x i8], ptr %dat.i, i32 0, i32 1
  %28 = call ptr @memset(ptr %dat.i, i32 255, i32 5)
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %abort.0.ph, ptr %27, align 1
  %call5.i = call fastcc i32 @j1939_xtp_do_tx_ctl(ptr noundef %10, ptr noundef %cb.i, i1 noundef zeroext true, i32 noundef %spec.select.i, ptr noundef nonnull %dat.i) #10
  br label %j1939_xtp_tx_abort.exit

j1939_xtp_tx_abort.exit:                          ; preds = %if.end.i, %if.then55.j1939_xtp_tx_abort.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %dat.i) #10
  br label %cleanup

cleanup:                                          ; preds = %j1939_xtp_tx_abort.exit, %sw.epilog, %entry.cleanup_crit_edge
  %30 = xor i1 %cmp, true
  ret i1 %30
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @j1939_xtp_rx_cts_one(ptr noundef %session, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call fastcc zeroext i1 @j1939_xtp_rx_cmd_bad_pgn(ptr noundef %session, ptr noundef %skb)
  br i1 %call, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body1:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @j1939_xtp_rx_cts_one.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@j1939_xtp_rx_cts_one, %if.then5)) #10
          to label %do.end8 [label %if.then5], !srcloc !221

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %session, align 8
  %ndev = getelementptr inbounds %struct.j1939_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @j1939_xtp_rx_cts_one.__UNIQUE_ID_ddebug469, ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.50, ptr noundef %session) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1
  %last_cmd = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 7
  %6 = ptrtoint ptr %last_cmd to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %last_cmd, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp = icmp eq i8 %7, %9
  br i1 %cmp, label %do.end8.out_session_cancel_crit_edge, label %if.end12

do.end8.out_session_cancel_crit_edge:             ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_session_cancel

if.end12:                                         ; preds = %do.end8
  %type = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3, i32 5
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp14 = icmp eq i8 %11, 1
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr i8, ptr %1, i32 4
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %13 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx1.i = getelementptr i8, ptr %1, i32 3
  %14 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %15 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %1, i32 2
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %17 to i32
  %or7.i = or i32 %or.i, %conv5.i
  br label %if.end20

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx18 = getelementptr i8, ptr %1, i32 2
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %19 to i32
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then16
  %pkt.0 = phi i32 [ %or7.i, %if.then16 ], [ %conv19, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pkt.0)
  %tobool21.not = icmp eq i32 %pkt.0, 0
  br i1 %tobool21.not, label %if.end20.out_session_cancel_crit_edge, label %if.else23

if.end20.out_session_cancel_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_session_cancel

if.else23:                                        ; preds = %if.end20
  %arrayidx24 = getelementptr i8, ptr %1, i32 1
  %20 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %21 to i32
  %block = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 17, i32 5
  %22 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %block, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv25)
  %cmp27 = icmp ult i32 %23, %conv25
  br i1 %cmp27, label %if.else23.out_session_cancel_crit_edge, label %if.end31

if.else23.out_session_cancel_crit_edge:           ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_session_cancel

if.end31:                                         ; preds = %if.else23
  %pkt26 = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 17
  %sub = add nsw i32 %pkt.0, -1
  %tx_acked = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 17, i32 3
  %24 = ptrtoint ptr %tx_acked to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub, ptr %tx_acked, align 4
  %qlen.i.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp.i = icmp ult i32 %26, 2
  br i1 %cmp.i, label %if.end31.j1939_session_skb_drop_old.exit_crit_edge, label %if.end.i

if.end31.j1939_session_skb_drop_old.exit_crit_edge: ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_skb_drop_old.exit

if.end.i:                                         ; preds = %if.end31
  %skb_queue.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 6
  %mul.i = mul nsw i32 %sub, 7
  %lock.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 6, i32 2
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %27 = ptrtoint ptr %skb_queue.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skb_queue.i, align 4
  %cmp.i.i = icmp eq ptr %28, %skb_queue.i
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %28
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cb.i.i, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 6
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i, align 4
  %add.i = add i32 %32, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %mul.i)
  %cmp11.i = icmp ult i32 %add.i, %mul.i
  br i1 %cmp11.i, label %if.then13.i, label %if.end.i.if.end16.i_crit_edge

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then13.i:                                      ; preds = %if.end.i
  %33 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %35 = ptrtoint ptr %spec.store.select.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %spec.store.select.i.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.1, ptr %spec.store.select.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.1, ptr %36, i32 0, i32 1
  %39 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %38, ptr %prev17.i.i, align 4
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %36, ptr %38, align 8
  %tobool.not.i.i = icmp eq ptr %spec.store.select.i.i, null
  br i1 %tobool.not.i.i, label %if.then13.i.skb_unref.exit.i_crit_edge, label %if.end.i.i, !prof !215

if.then13.i.skb_unref.exit.i_crit_edge:           ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_unref.exit.i

if.end.i.i:                                       ; preds = %if.then13.i
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #10
  %41 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp.i32.i = icmp eq i32 %42, 1
  br i1 %cmp.i32.i, label %do.end.i.i, label %if.else.i.i, !prof !216

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !226
  br label %skb_unref.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #10
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #10, !srcloc !218
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end5.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  br label %skb_unref.exit.i

if.end5.i.i.i.i:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.skb_unref.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !216

if.end5.i.i.i.i.skb_unref.exit.i_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_unref.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %users.i.i, i32 noundef 3) #10
  br label %skb_unref.exit.i

skb_unref.exit.i:                                 ; preds = %if.then10.i.i.i.i, %if.end5.i.i.i.i.skb_unref.exit.i_crit_edge, %do.end.i.i.i.i, %do.end.i.i, %if.then13.i.skb_unref.exit.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %spec.store.select.i.i, i32 noundef 0) #10
  br label %if.end16.i

if.end16.i:                                       ; preds = %skb_unref.exit.i, %if.end.i.if.end16.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #10
  br label %j1939_session_skb_drop_old.exit

j1939_session_skb_drop_old.exit:                  ; preds = %if.end16.i, %if.end31.j1939_session_skb_drop_old.exit_crit_edge
  %44 = ptrtoint ptr %tx_acked to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_acked, align 4
  %46 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx24, align 1
  %conv36 = zext i8 %47 to i32
  %add = add i32 %45, %conv36
  %last = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 17, i32 1
  %48 = ptrtoint ptr %pkt26 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pkt26, align 4
  %50 = tail call i32 @llvm.umin.i32(i32 %add, i32 %49)
  %51 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %last, align 4
  %tx = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 17, i32 2
  %52 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %45, ptr %tx, align 4
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %1, align 1
  %55 = ptrtoint ptr %last_cmd to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %last_cmd, align 8
  %56 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool55.not = icmp eq i8 %57, 0
  br i1 %tobool55.not, label %if.else65, label %if.then56

if.then56:                                        ; preds = %j1939_session_skb_drop_old.exit
  tail call fastcc void @j1939_tp_set_rxtimeout(ptr noundef %session, i32 noundef 1250)
  %transmission = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 9
  %58 = ptrtoint ptr %transmission to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %transmission, align 2, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool57.not = icmp eq i8 %59, 0
  br i1 %tobool57.not, label %if.then56.cleanup_crit_edge, label %if.then58

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then58:                                        ; preds = %if.then56
  %60 = ptrtoint ptr %tx_acked to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tx_acked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool61.not = icmp eq i32 %61, 0
  br i1 %tobool61.not, label %if.then58.if.end63_crit_edge, label %if.then62

if.then58.if.end63_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then62:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @j1939_sk_errqueue(ptr noundef %session, i32 noundef 1) #10
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.then58.if.end63_crit_edge
  %txtimer.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 18
  %call.i = tail call i32 @hrtimer_cancel(ptr noundef %txtimer.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end63.j1939_session_txtimer_cancel.exit_crit_edge, label %if.then.i

if.end63.j1939_session_txtimer_cancel.exit_crit_edge: ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_txtimer_cancel.exit

if.then.i:                                        ; preds = %if.end63
  %kref.i.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #10
  %62 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #10, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.j1939_session_txtimer_cancel.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !216

if.end5.i.i.i.i.i.i.j1939_session_txtimer_cancel.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_txtimer_cancel.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef 3) #10
  br label %j1939_session_txtimer_cancel.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call fastcc void @j1939_session_destroy(ptr noundef %session) #10
  br label %j1939_session_txtimer_cancel.exit

j1939_session_txtimer_cancel.exit:                ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.j1939_session_txtimer_cancel.exit_crit_edge, %if.end63.j1939_session_txtimer_cancel.exit_crit_edge
  %kref.i.i103 = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i104 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i103, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref.i.i103, i32 1, i32 3, i32 1) #10
  %63 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i103, ptr %kref.i.i103, i32 1, ptr elementtype(i32) %kref.i.i103) #10, !srcloc !214
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %j1939_session_txtimer_cancel.exit.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !215

j1939_session_txtimer_cancel.exit.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %j1939_session_txtimer_cancel.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %j1939_session_txtimer_cancel.exit
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %64 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %.not.i.i.i.i.i.i105 = icmp sgt i32 %64, -1
  br i1 %.not.i.i.i.i.i.i105, label %if.else.i.i.i.i.i.i.j1939_tp_schedule_txtimer.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !216

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.j1939_tp_schedule_txtimer.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_tp_schedule_txtimer.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %j1939_session_txtimer_cancel.exit.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %j1939_session_txtimer_cancel.exit.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i103, i32 noundef %.sink.i.i.i.i.i.i) #10
  br label %j1939_tp_schedule_txtimer.exit

j1939_tp_schedule_txtimer.exit:                   ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.j1939_tp_schedule_txtimer.exit_crit_edge
  tail call void @hrtimer_start_range_ns(ptr noundef %txtimer.i, i64 noundef 0, i64 noundef 0, i32 noundef 5) #10
  br label %cleanup

if.else65:                                        ; preds = %j1939_session_skb_drop_old.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @j1939_tp_set_rxtimeout(ptr noundef %session, i32 noundef 550)
  br label %cleanup

out_session_cancel:                               ; preds = %if.else23.out_session_cancel_crit_edge, %if.end20.out_session_cancel_crit_edge, %do.end8.out_session_cancel_crit_edge
  %err.0 = phi i32 [ 5, %if.else23.out_session_cancel_crit_edge ], [ 5, %if.end20.out_session_cancel_crit_edge ], [ 8, %do.end8.out_session_cancel_crit_edge ]
  tail call void @j1939_session_timers_cancel(ptr noundef %session)
  %65 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %session, align 8
  %active_session_list_lock.i.i = getelementptr inbounds %struct.j1939_priv, ptr %66, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %active_session_list_lock.i.i) #10
  %state.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 16
  %67 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cond.i = icmp eq i32 %68, 1
  br i1 %cond.i, label %if.then.i107, label %out_session_cancel.j1939_session_cancel.exit_crit_edge

out_session_cancel.j1939_session_cancel.exit_crit_edge: ; preds = %out_session_cancel
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_cancel.exit

if.then.i107:                                     ; preds = %out_session_cancel
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @j1939_tp_set_rxtimeout(ptr noundef %session, i32 noundef 500) #10
  tail call fastcc void @__j1939_session_cancel(ptr noundef %session, i32 noundef %err.0) #10
  br label %j1939_session_cancel.exit

j1939_session_cancel.exit:                        ; preds = %if.then.i107, %out_session_cancel.j1939_session_cancel.exit_crit_edge
  %69 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %session, align 8
  %active_session_list_lock.i9.i = getelementptr inbounds %struct.j1939_priv, ptr %70, i32 0, i32 6
  tail call void @_raw_spin_unlock_bh(ptr noundef %active_session_list_lock.i9.i) #10
  br label %cleanup

cleanup:                                          ; preds = %j1939_session_cancel.exit, %if.else65, %j1939_tp_schedule_txtimer.exit, %if.then56.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @j1939_xtp_rx_dpo_one(ptr noundef %session, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call fastcc zeroext i1 @j1939_xtp_rx_cmd_bad_pgn(ptr noundef %session, ptr noundef %skb)
  br i1 %call, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body1:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @j1939_xtp_rx_dpo_one.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@j1939_xtp_rx_dpo_one, %if.then5)) #10
          to label %do.end8 [label %if.then5], !srcloc !221

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %session, align 8
  %ndev = getelementptr inbounds %struct.j1939_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @j1939_xtp_rx_dpo_one.__UNIQUE_ID_ddebug476, ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52, ptr noundef %session) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %arrayidx.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %9 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx1.i = getelementptr i8, ptr %7, i32 3
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %11 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %7, i32 2
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %13 to i32
  %or7.i = or i32 %or.i, %conv5.i
  %dpo = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 17, i32 6
  %14 = ptrtoint ptr %dpo to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or7.i, ptr %dpo, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %1, align 1
  %last_cmd = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 7
  %17 = ptrtoint ptr %last_cmd to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %last_cmd, align 8
  tail call fastcc void @j1939_tp_set_rxtimeout(ptr noundef %session, i32 noundef 750)
  %transmission = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 9
  %18 = ptrtoint ptr %transmission to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %transmission, align 2, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool11.not = icmp eq i8 %19, 0
  br i1 %tobool11.not, label %if.then12, label %do.end8.cleanup_crit_edge

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then12:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @j1939_sk_errqueue(ptr noundef %session, i32 noundef 4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %do.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @j1939_xtp_rx_eoma_one(ptr noundef %session, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc zeroext i1 @j1939_xtp_rx_cmd_bad_pgn(ptr noundef %session, ptr noundef %skb)
  br i1 %call1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 38
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr i8, ptr %1, i32 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %5 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %1, i32 3
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %7 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %1, i32 2
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %9 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i46 = getelementptr i8, ptr %1, i32 2
  %10 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i46, align 1
  %conv.i47 = zext i8 %11 to i32
  %shl.i48 = shl nuw nsw i32 %conv.i47, 8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %shl.i48.sink = phi i32 [ %shl.i48, %if.else ], [ %or7.i, %if.then3 ]
  %arrayidx1.i49 = getelementptr i8, ptr %1, i32 1
  %12 = ptrtoint ptr %arrayidx1.i49 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx1.i49, align 1
  %conv2.i50 = zext i8 %13 to i32
  %add.i = or i32 %shl.i48.sink, %conv2.i50
  %total_message_size = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 11
  %14 = ptrtoint ptr %total_message_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %total_message_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add.i)
  %cmp7.not = icmp eq i32 %15, %add.i
  br i1 %cmp7.not, label %if.end6.do.body15_crit_edge, label %do.body

if.end6.do.body15_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body15

do.body:                                          ; preds = %if.end6
  %.b45 = load i1, ptr @j1939_xtp_rx_eoma_one.__print_once, align 1
  br i1 %.b45, label %do.body.do.body15_crit_edge, label %if.then10

do.body.do.body15_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body15

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @j1939_xtp_rx_eoma_one.__print_once, align 1
  %16 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %session, align 8
  %ndev = getelementptr inbounds %struct.j1939_priv, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.53, ptr noundef %19, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.j1939_xtp_rx_eoma_one, ptr noundef %session, i32 noundef %15, i32 noundef %add.i) #14
  br label %do.body15

do.body15:                                        ; preds = %if.then10, %do.body.do.body15_crit_edge, %if.end6.do.body15_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @j1939_xtp_rx_eoma_one.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@j1939_xtp_rx_eoma_one, %if.then20)) #10
          to label %do.end27 [label %if.then20], !srcloc !221

if.then20:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %session, align 8
  %ndev22 = getelementptr inbounds %struct.j1939_priv, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %ndev22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ndev22, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @j1939_xtp_rx_eoma_one.__UNIQUE_ID_ddebug468, ptr noundef %23, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.j1939_xtp_rx_eoma_one, ptr noundef %session) #10
  br label %do.end27

do.end27:                                         ; preds = %if.then20, %do.body15
  %pkt = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 17
  %24 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pkt, align 4
  %tx_acked = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 17, i32 3
  %26 = ptrtoint ptr %tx_acked to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %tx_acked, align 4
  tail call void @j1939_session_timers_cancel(ptr noundef %session)
  %transmission.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 9
  %27 = ptrtoint ptr %transmission.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %transmission.i, align 2, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end27.j1939_session_completed.exit_crit_edge

do.end27.j1939_session_completed.exit_crit_edge:  ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_session_completed.exit

if.then.i:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  %dpo.i.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 17, i32 6
  %29 = ptrtoint ptr %dpo.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dpo.i.i, align 4
  %mul.i.i = mul i32 %30, 7
  %call.i.i = tail call fastcc ptr @j1939_session_skb_get_by_offset(ptr noundef %session, i32 noundef %mul.i.i) #10
  %31 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %session, align 8
  tail call void @j1939_sk_recv(ptr noundef %32, ptr noundef %call.i.i) #10
  tail call void @consume_skb(ptr noundef %call.i.i) #10
  br label %j1939_session_completed.exit

j1939_session_completed.exit:                     ; preds = %if.then.i, %do.end27.j1939_session_completed.exit_crit_edge
  tail call fastcc void @j1939_session_deactivate_activate_next(ptr noundef %session) #10
  br label %cleanup

cleanup:                                          ; preds = %j1939_session_completed.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @j1939_xtp_rx_abort_one(ptr noundef %priv, ptr nocapture noundef readonly %skb, i1 noundef zeroext %reverse, i1 noundef zeroext %transmitter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %addr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %active_session_list_lock.i.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %active_session_list_lock.i.i) #10
  %active_session_list.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 5
  %call.i = tail call fastcc ptr @j1939_session_get_by_addr_locked(ptr noundef %priv, ptr noundef %active_session_list.i, ptr noundef %addr, i1 noundef zeroext %reverse, i1 noundef zeroext %transmitter) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %active_session_list_lock.i.i) #10
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call fastcc zeroext i1 @j1939_xtp_rx_cmd_bad_pgn(ptr noundef nonnull %call.i, ptr noundef %skb)
  br i1 %call5, label %if.end.abort_put_crit_edge, label %if.end7

if.end.abort_put_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort_put

if.end7:                                          ; preds = %if.end
  %ndev = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 2
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %arrayidx.i = getelementptr i8, ptr %7, i32 7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %9 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx1.i = getelementptr i8, ptr %7, i32 6
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %11 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %7, i32 5
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %13 to i32
  %14 = and i32 %conv2.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %14)
  %cmp.i.not.i = icmp eq i32 %14, 240
  %or7.i = select i1 %cmp.i.not.i, i32 %conv5.i, i32 0
  %spec.select.i = or i32 %or.i, %or7.i
  %conv = zext i8 %3 to i32
  %switch.tableidx = add i8 %3, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %switch.tableidx)
  %15 = icmp ult i8 %switch.tableidx, 22
  br i1 %15, label %switch.lookup, label %if.end7.j1939_xtp_abort_to_str.exit_crit_edge

if.end7.j1939_xtp_abort_to_str.exit_crit_edge:    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %j1939_xtp_abort_to_str.exit

switch.lookup:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %16 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [22 x ptr], ptr @switch.table.j1939_xtp_rx_abort_one, i32 0, i32 %16
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %j1939_xtp_abort_to_str.exit

j1939_xtp_abort_to_str.exit:                      ; preds = %switch.lookup, %if.end7.j1939_xtp_abort_to_str.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.72, %if.end7.j1939_xtp_abort_to_str.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %5, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.j1939_xtp_rx_abort_one, ptr noundef nonnull %call.i, i32 noundef %spec.select.i, i32 noundef %conv, ptr noundef nonnull %retval.0.i) #14
  tail call void @j1939_session_timers_cancel(ptr noundef nonnull %call.i)
  %call13 = tail call fastcc i32 @j1939_xtp_abort_to_errno(ptr noundef %priv, i32 noundef %conv)
  %err = getelementptr inbounds %struct.j1939_session, ptr %call.i, i32 0, i32 14
  %18 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call13, ptr %err, align 8
  %sk = getelementptr inbounds %struct.j1939_session, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sk, align 8
  %tobool14.not = icmp eq ptr %20, null
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %j1939_xtp_abort_to_str.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @j1939_sk_send_loop_abort(ptr noundef nonnull %20, i32 noundef %call13) #10
  br label %if.end18

if.else:                                          ; preds = %j1939_xtp_abort_to_str.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @j1939_sk_errqueue(ptr noundef nonnull %call.i, i32 noundef 5) #10
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then15
  tail call fastcc void @j1939_session_deactivate_activate_next(ptr noundef nonnull %call.i)
  br label %abort_put

abort_put:                                        ; preds = %if.end18, %if.end.abort_put_crit_edge
  %kref.i = getelementptr inbounds %struct.j1939_session, ptr %call.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %abort_put
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !216

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i:                                      ; preds = %abort_put
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call fastcc void @j1939_session_destroy(ptr noundef nonnull %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i2 @llvm.bitreverse.i2(i2) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !10, !12, !14, !15, !16, !18, !19, !21, !22, !24, !26, !28, !29, !30, !32, !33, !35, !37, !39, !41, !42, !43, !45, !47, !49, !51, !52, !54, !55, !57, !58, !59, !60, !62, !64, !66, !68, !70, !72, !73, !75, !76, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !112, !114, !115, !116, !118, !120, !121, !123, !125, !127, !128, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !150, !152, !154, !156, !157, !159, !160, !161, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202}
!llvm.named.register.sp = !{!204}
!llvm.module.flags = !{!205, !206, !207, !208, !209, !210, !211, !212}
!llvm.ident = !{!213}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../net/can/j1939/transport.c", i32 1563, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../net/can/j1939/transport.c", i32 1569, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @j1939_session_activate.__UNIQUE_ID_ddebug471, !4, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/can/j1939/transport.c", i32 2157, i32 8}
!10 = !{ptr @__func__.j1939_simple_recv, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/can/j1939/transport.c", i32 2158, i32 8}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/can/j1939/transport.c", i32 2171, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @j1939_cancel_active_session.__UNIQUE_ID_ddebug479, !13, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!16 = !{ptr @j1939_tp_init.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../net/can/j1939/transport.c", i32 2192, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/can/j1939/transport.c", i32 272, i32 2}
!21 = !{ptr @j1939_session_destroy.__UNIQUE_ID_ddebug458, !20, !"__UNIQUE_ID_ddebug458", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../net/can/j1939/transport.c", i32 274, i32 2}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../net/can/j1939/transport.c", i32 275, i32 2}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/can/j1939/transport.c", i32 1509, i32 2}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @j1939_session_new.__UNIQUE_ID_ddebug470, !27, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!30 = !{ptr @skb_queue_head_init.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/can/j1939/transport.c", i32 1165, i32 29}
!35 = !{ptr @__func__.j1939_tp_txtimer, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/can/j1939/transport.c", i32 1166, i32 10}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/can/j1939/transport.c", i32 1187, i32 28}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/can/j1939/transport.c", i32 389, i32 3}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @j1939_session_skb_get_by_offset.__UNIQUE_ID_ddebug459, !40, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/can/j1939/transport.c", i32 867, i32 28}
!45 = !{ptr @__func__.j1939_xtp_txnext_transmiter, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/can/j1939/transport.c", i32 868, i32 9}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/can/j1939/transport.c", i32 893, i32 28}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/can/j1939/transport.c", i32 746, i32 2}
!51 = !{ptr @j1939_session_tx_rts.__UNIQUE_ID_ddebug460, !50, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/can/j1939/transport.c", i32 775, i32 2}
!54 = !{ptr @j1939_session_tx_dpo.__UNIQUE_ID_ddebug461, !53, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!55 = distinct !{null, !56, !"__print_once", i1 false, i1 false}
!56 = !{!"../net/can/j1939/transport.c", i32 813, i32 4}
!57 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @__func__.j1939_session_tx_dat, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/can/j1939/transport.c", i32 832, i32 11}
!62 = distinct !{null, !63, !"j1939_tp_padding", i1 false, i1 false}
!63 = !{!"../net/can/j1939/transport.c", i32 127, i32 21}
!64 = distinct !{null, !65, !"j1939_tp_packet_delay", i1 false, i1 false}
!65 = !{!"../net/can/j1939/transport.c", i32 126, i32 21}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/can/j1939/transport.c", i32 993, i32 28}
!68 = !{ptr @__func__.j1939_xtp_txnext_receiver, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/can/j1939/transport.c", i32 994, i32 9}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/can/j1939/transport.c", i32 940, i32 2}
!72 = !{ptr @j1939_session_tx_cts.__UNIQUE_ID_ddebug466, !71, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/can/j1939/transport.c", i32 982, i32 2}
!75 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @j1939_session_tx_eoma.__UNIQUE_ID_ddebug467, !74, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../net/can/j1939/transport.c", i32 1109, i32 2}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../net/can/j1939/transport.c", i32 177, i32 3}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/can/j1939/transport.c", i32 229, i32 27}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/can/j1939/transport.c", i32 1225, i32 28}
!85 = !{ptr @__func__.j1939_tp_rxtimer, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/can/j1939/transport.c", i32 1226, i32 9}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/can/j1939/transport.c", i32 1231, i32 28}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/can/j1939/transport.c", i32 1243, i32 29}
!91 = distinct !{null, !92, !"j1939_tp_block", i1 false, i1 false}
!92 = !{!"../net/can/j1939/transport.c", i32 125, i32 21}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/can/j1939/transport.c", i32 1926, i32 28}
!95 = !{ptr @__func__.j1939_xtp_rx_dat, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/can/j1939/transport.c", i32 1927, i32 9}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/can/j1939/transport.c", i32 1936, i32 28}
!99 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/can/j1939/transport.c", i32 1828, i32 27}
!101 = !{ptr @__func__.j1939_xtp_rx_dat_one, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/can/j1939/transport.c", i32 1828, i32 52}
!103 = !{ptr @.str.35, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../net/can/j1939/transport.c", i32 1836, i32 27}
!105 = !{ptr @.str.36, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/can/j1939/transport.c", i32 1843, i32 27}
!107 = !{ptr @.str.37, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/can/j1939/transport.c", i32 1854, i32 27}
!109 = distinct !{null, !110, !"__print_once", i1 false, i1 false}
!110 = !{!"../net/can/j1939/transport.c", i32 1867, i32 4}
!111 = !{ptr @.str.38, !110, !"<string literal>", i1 false, i1 false}
!112 = distinct !{null, !113, !"__print_once", i1 false, i1 false}
!113 = !{!"../net/can/j1939/transport.c", i32 2027, i32 4}
!114 = !{ptr @.str.39, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @__func__.j1939_tp_cmd_recv, !113, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/can/j1939/transport.c", i32 2037, i32 29}
!118 = distinct !{null, !119, !"__print_once", i1 false, i1 false}
!119 = !{!"../net/can/j1939/transport.c", i32 2094, i32 4}
!120 = !{ptr @.str.42, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.43, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/can/j1939/transport.c", i32 1727, i32 29}
!123 = !{ptr @__func__.j1939_xtp_rx_rts, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../net/can/j1939/transport.c", i32 1728, i32 10}
!125 = !{ptr @.str.44, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/can/j1939/transport.c", i32 1588, i32 2}
!127 = !{ptr @.str.45, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @j1939_xtp_rx_rts_session_new.__UNIQUE_ID_ddebug472, !126, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!129 = !{ptr @.str.46, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../net/can/j1939/transport.c", i32 1632, i32 29}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../net/can/j1939/transport.c", i32 1645, i32 2}
!133 = !{ptr @.str.47, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../net/can/j1939/transport.c", i32 1667, i32 28}
!135 = !{ptr @__func__.j1939_xtp_rx_rts_session_active, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../net/can/j1939/transport.c", i32 1668, i32 9}
!137 = !{ptr @.str.48, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../net/can/j1939/transport.c", i32 1679, i32 27}
!139 = !{ptr @j1939_xtp_rx_rts_session_active.__UNIQUE_ID_ddebug475, !140, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!140 = !{!"../net/can/j1939/transport.c", i32 1690, i32 2}
!141 = distinct !{null, !142, !"__already_done", i1 false, i1 false}
!142 = !{!"../net/can/j1939/transport.c", i32 1303, i32 3}
!143 = !{ptr @.str.49, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../net/can/j1939/transport.c", i32 1307, i32 26}
!145 = !{ptr @__func__.j1939_xtp_rx_cmd_bad_pgn, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../net/can/j1939/transport.c", i32 1308, i32 7}
!147 = !{ptr @.str.50, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../net/can/j1939/transport.c", i32 1415, i32 2}
!149 = !{ptr @j1939_xtp_rx_cts_one.__UNIQUE_ID_ddebug469, !148, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!150 = !{ptr @.str.51, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../net/can/j1939/transport.c", i32 1782, i32 8}
!152 = !{ptr @__func__.j1939_xtp_rx_dpo, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../net/can/j1939/transport.c", i32 1782, i32 37}
!154 = !{ptr @.str.52, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../net/can/j1939/transport.c", i32 1761, i32 2}
!156 = !{ptr @j1939_xtp_rx_dpo_one.__UNIQUE_ID_ddebug476, !155, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!157 = distinct !{null, !158, !"__print_once", i1 false, i1 false}
!158 = !{!"../net/can/j1939/transport.c", i32 1373, i32 3}
!159 = !{ptr @.str.53, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.54, !158, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @__func__.j1939_xtp_rx_eoma_one, !158, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @j1939_xtp_rx_eoma_one.__UNIQUE_ID_ddebug468, !163, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!163 = !{!"../net/can/j1939/transport.c", i32 1379, i32 2}
!164 = !{ptr @.str.55, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../net/can/j1939/transport.c", i32 1330, i32 26}
!166 = !{ptr @__func__.j1939_xtp_rx_abort_one, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../net/can/j1939/transport.c", i32 1330, i32 57}
!168 = !{ptr @.str.56, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../net/can/j1939/transport.c", i32 134, i32 10}
!170 = !{ptr @.str.57, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../net/can/j1939/transport.c", i32 136, i32 10}
!172 = !{ptr @.str.58, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../net/can/j1939/transport.c", i32 138, i32 10}
!174 = !{ptr @.str.59, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../net/can/j1939/transport.c", i32 140, i32 10}
!176 = !{ptr @.str.60, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../net/can/j1939/transport.c", i32 142, i32 10}
!178 = !{ptr @.str.61, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../net/can/j1939/transport.c", i32 144, i32 10}
!180 = !{ptr @.str.62, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../net/can/j1939/transport.c", i32 146, i32 10}
!182 = !{ptr @.str.63, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../net/can/j1939/transport.c", i32 148, i32 10}
!184 = !{ptr @.str.64, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../net/can/j1939/transport.c", i32 150, i32 10}
!186 = !{ptr @.str.65, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../net/can/j1939/transport.c", i32 152, i32 10}
!188 = !{ptr @.str.66, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../net/can/j1939/transport.c", i32 154, i32 10}
!190 = !{ptr @.str.67, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../net/can/j1939/transport.c", i32 156, i32 10}
!192 = !{ptr @.str.68, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../net/can/j1939/transport.c", i32 158, i32 10}
!194 = !{ptr @.str.69, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../net/can/j1939/transport.c", i32 160, i32 10}
!196 = !{ptr @.str.70, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../net/can/j1939/transport.c", i32 162, i32 10}
!198 = !{ptr @.str.71, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../net/can/j1939/transport.c", i32 164, i32 10}
!200 = !{ptr @.str.72, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../net/can/j1939/transport.c", i32 166, i32 10}
!202 = distinct !{null, !203, !"__already_done", i1 false, i1 false}
!203 = !{!"../net/can/j1939/transport.c", i32 1090, i32 2}
!204 = !{!"sp"}
!205 = !{i32 1, !"wchar_size", i32 2}
!206 = !{i32 1, !"min_enum_size", i32 4}
!207 = !{i32 8, !"branch-target-enforcement", i32 0}
!208 = !{i32 8, !"sign-return-address", i32 0}
!209 = !{i32 8, !"sign-return-address-all", i32 0}
!210 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!211 = !{i32 7, !"uwtable", i32 1}
!212 = !{i32 7, !"frame-pointer", i32 2}
!213 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!214 = !{i64 2148408624, i64 2148408656, i64 2148408685, i64 2148408719, i64 2148408750, i64 2148408773}
!215 = !{!"branch_weights", i32 1, i32 2000}
!216 = !{!"branch_weights", i32 2000, i32 1}
!217 = !{i64 2148496625}
!218 = !{i64 2148411089, i64 2148411121, i64 2148411150, i64 2148411184, i64 2148411215, i64 2148411238}
!219 = !{i64 2150578278}
!220 = !{i8 0, i8 2}
!221 = !{i64 2148888909, i64 2148888914, i64 2148888927, i64 2148888971, i64 2148889005, i64 2148889026}
!222 = !{i64 2148492505}
!223 = !{i64 2148407814, i64 2148407846, i64 2148407875, i64 2148407909, i64 2148407940, i64 2148407963}
!224 = !{i64 2148492734}
!225 = !{i64 890830, i64 890854, i64 890875, i64 890892, i64 890909}
!226 = !{i64 2154560490}
