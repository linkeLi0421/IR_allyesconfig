; ModuleID = '/llk/IR_all_yes/net/can/j1939/socket.c_pt.bc'
source_filename = "../net/can/j1939/socket.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.115, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.115 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.can_proto = type { i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.j1939_sock = type { %struct.sock, ptr, %struct.list_head, i32, i32, %struct.j1939_addr, ptr, i32, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.spinlock, %struct.list_head }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.120, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.121, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.122, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.116, [0 x i32], %union.anon.117, i16, i16, %union.anon.118, %struct.refcount_struct, [0 x i32], %union.anon.119 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { %struct.hlist_node }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.120 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.121 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.122 = type { ptr }
%struct.sk_buff_head = type { %union.anon.67, i32, %struct.spinlock }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.j1939_addr = type { i64, i64, i32, i8, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.j1939_session = type { ptr, %struct.list_head, %struct.list_head, %struct.kref, ptr, %struct.j1939_sk_buff_cb, %struct.sk_buff_head, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.anon.146, %struct.hrtimer, %struct.hrtimer }
%struct.kref = type { %struct.refcount_struct }
%struct.j1939_sk_buff_cb = type { i32, i32, i32, %struct.j1939_addr, i8, i8 }
%struct.anon.146 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.j1939_priv = type { %struct.list_head, %struct.rwlock_t, ptr, [256 x %struct.j1939_addr_ent], %struct.kref, %struct.list_head, %struct.spinlock, i32, %struct.spinlock, %struct.list_head, %struct.kref, i32 }
%struct.j1939_addr_ent = type { ptr, i32 }
%struct.j1939_filter = type { i64, i64, i32, i32, i8, i8 }
%struct.sk_buff = type { %union.anon.44, %union.anon.47, %union.anon.48, [48 x i8], %union.anon.49, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.51, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, ptr, %union.anon.46 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { ptr }
%union.anon.48 = type { i64 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i32, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.53, i32, i32, i32, i16, i16, %union.anon.55, i32, %union.anon.56, %union.anon.57, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.53 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.sockaddr_can = type { i16, i32, %union.anon.151 }
%union.anon.151 = type { %struct.anon.153 }
%struct.anon.153 = type { i64, i32, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.126, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.140, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.126 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.140 = type { ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.114, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.112 }
%union.anon.4 = type { ptr }
%union.anon.112 = type { i64 }
%union.anon.114 = type { ptr }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.can_frame = type { i32, %union.anon.154, i8, i8, i8, [8 x i8] }
%union.anon.154 = type { i8 }

@j1939_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 29, ptr null, ptr @j1939_sk_release, ptr @j1939_sk_bind, ptr @j1939_sk_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @j1939_sk_getname, ptr @datagram_poll, ptr @j1939_sk_no_ioctlcmd, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr @j1939_sk_setsockopt, ptr @j1939_sk_getsockopt, ptr null, ptr @j1939_sk_sendmsg, ptr @j1939_sk_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@j1939_proto = internal global %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @j1939_sk_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1128, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.115 zeroinitializer, ptr null, [32 x i8] c"CAN_J1939\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, section ".data..read_mostly", align 4
@j1939_can_proto = dso_local constant { %struct.can_proto, [16 x i8] } { %struct.can_proto { i32 2, i32 7, ptr @j1939_ops, ptr @j1939_proto }, [16 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/can/j1939/socket.c\00", [41 x i8] zeroinitializer }, align 32
@j1939_sk_queue_activate_next_locked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@j1939_sk_recv_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014can_j1939: skb clone failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"j1939_sk_recv_one\00", [46 x i8] zeroinitializer }, align 32
@j1939_sk_recv_one._entry_ptr = internal global ptr @j1939_sk_recv_one._entry, section ".printk_index", align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UNK\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown errqueue type %i\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TX ACK\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TX SCH\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TX ABT\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RX RTS\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RX DPO\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RX ABT\00", [25 x i8] zeroinitializer }, align 32
@__j1939_sk_errqueue.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str, ptr @.str.13, i8 1, i8 8, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"can_j1939\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__j1939_sk_errqueue\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: 0x%p tskey: %i, state: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@j1939_sk_queue_drop_all.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.14, ptr @.str, ptr @.str.15, i8 0, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"j1939_sk_queue_drop_all\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: err: %i\0A\00", [19 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@j1939_sk_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&jsk->waitq\00", [20 x i8] zeroinitializer }, align 32
@j1939_sk_init.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&jsk->sk_session_queue_lock\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.23 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294966784, i64 4294967285]
@___asan_gen_.27 = private unnamed_addr constant [10 x i8] c"j1939_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1284, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"j1939_can_proto\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1311, i32 24 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 160, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 310, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 973, i32 16 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1001, i32 26 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1019, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1025, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1031, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1037, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1043, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1049, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1057, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 138, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 230, i32 6 }
@___asan_gen_.88 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 214, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 156, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 391, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [26 x i8] c"../net/can/j1939/socket.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 399, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @j1939_sk_recv_one._entry, ptr @j1939_sk_recv_one._entry_ptr, ptr @j1939_ops, ptr @j1939_can_proto, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @j1939_sk_init.__key, ptr @.str.20, ptr @j1939_sk_init.__key.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j1939_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j1939_can_proto to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j1939_sk_recv_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j1939_sk_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j1939_sk_init.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @j1939_sock_pending_del(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %skb_pending = getelementptr inbounds %struct.j1939_sock, ptr %sk, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skb_pending, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !65
  tail call void @llvm.prefetch.p0(ptr %skb_pending, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skb_pending, ptr %skb_pending, i32 1, ptr elementtype(i32) %skb_pending) #11, !srcloc !66
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %waitq = getelementptr inbounds %struct.j1939_sock, ptr %sk, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @j1939_sk_queue_activate_next(ptr noundef %session) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk_session_queue_lock = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %sk_session_queue_lock) #11
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.j1939_sk_queue_activate_next_locked.exit_crit_edge, label %if.end.i

if.end.j1939_sk_queue_activate_next_locked.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %j1939_sk_queue_activate_next_locked.exit

if.end.i:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not.i = icmp eq i32 %4, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end20.i_crit_edge, label %land.rhs.i

if.end.i.if.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

land.rhs.i:                                       ; preds = %if.end.i
  %dep_map.i = getelementptr inbounds %struct.j1939_sock, ptr %3, i32 0, i32 11, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end20.i_crit_edge, !prof !68

land.rhs.i.if.end20.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 160, i32 noundef 9, ptr noundef null) #11
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end.i, %land.rhs.i.if.end20.i_crit_edge, %if.end.i.if.end20.i_crit_edge
  %err29.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 14
  %5 = ptrtoint ptr %err29.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %err29.i, align 8
  %sk_session_queue.i = getelementptr inbounds %struct.j1939_sock, ptr %3, i32 0, i32 12
  %7 = ptrtoint ptr %sk_session_queue.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %sk_session_queue.i, align 4
  %cmp35.not.i = icmp eq ptr %8, %sk_session_queue.i
  %add.ptr.i = getelementptr i8, ptr %8, i32 -12
  %spec.select.i = select i1 %cmp35.not.i, ptr null, ptr %add.ptr.i
  %cmp37.not.i = icmp eq ptr %spec.select.i, %session
  br i1 %cmp37.not.i, label %if.end20.i.activate_next.i_crit_edge, label %if.end20.i.j1939_sk_queue_activate_next_locked.exit_crit_edge

if.end20.i.j1939_sk_queue_activate_next_locked.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %j1939_sk_queue_activate_next_locked.exit

if.end20.i.activate_next.i_crit_edge:             ; preds = %if.end20.i
  br label %activate_next.i

activate_next.i:                                  ; preds = %if.then114.i, %if.end20.i.activate_next.i_crit_edge
  %first.0.i = phi ptr [ %add.ptr53.i, %if.then114.i ], [ %session, %if.end20.i.activate_next.i_crit_edge ]
  %sk_session_queue_entry.i = getelementptr inbounds %struct.j1939_session, ptr %first.0.i, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sk_session_queue_entry.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %activate_next.i.list_del_init.exit.i_crit_edge

activate_next.i.list_del_init.exit.i_crit_edge:   ; preds = %activate_next.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %activate_next.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.j1939_session, ptr %first.0.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %sk_session_queue_entry.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk_session_queue_entry.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %activate_next.i.list_del_init.exit.i_crit_edge
  %15 = ptrtoint ptr %sk_session_queue_entry.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %sk_session_queue_entry.i, ptr %sk_session_queue_entry.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.j1939_session, ptr %first.0.i, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %sk_session_queue_entry.i, ptr %prev.i3.i.i, align 4
  tail call void @j1939_session_put(ptr noundef %first.0.i) #11
  %17 = ptrtoint ptr %sk_session_queue.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %sk_session_queue.i, align 4
  %cmp49.not.i = icmp eq ptr %18, %sk_session_queue.i
  %add.ptr53.i = getelementptr i8, ptr %18, i32 -12
  %tobool57.not147.i = icmp eq ptr %add.ptr53.i, null
  %tobool57.not.i = or i1 %cmp49.not.i, %tobool57.not147.i
  br i1 %tobool57.not.i, label %list_del_init.exit.i.j1939_sk_queue_activate_next_locked.exit_crit_edge, label %if.end59.i

list_del_init.exit.i.j1939_sk_queue_activate_next_locked.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %j1939_sk_queue_activate_next_locked.exit

if.end59.i:                                       ; preds = %list_del_init.exit.i
  %call60.i = tail call i32 @j1939_session_activate(ptr noundef nonnull %add.ptr53.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %if.else.i, label %land.rhs67.i

land.rhs67.i:                                     ; preds = %if.end59.i
  %.b143.i = load i1, ptr @j1939_sk_queue_activate_next_locked.__already_done, align 1
  br i1 %.b143.i, label %land.rhs67.i.if.then114.i_crit_edge, label %if.then78.i, !prof !69

land.rhs67.i.if.then114.i_crit_edge:              ; preds = %land.rhs67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then114.i

if.then78.i:                                      ; preds = %land.rhs67.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @j1939_sk_queue_activate_next_locked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 181, i32 noundef 9, ptr noundef null) #11
  br label %if.then114.i

if.then114.i:                                     ; preds = %if.then78.i, %land.rhs67.i.if.then114.i_crit_edge
  %err115.i = getelementptr i8, ptr %18, i32 140
  %19 = ptrtoint ptr %err115.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -16, ptr %err115.i, align 8
  br label %activate_next.i

if.else.i:                                        ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool116.not.i = icmp eq i32 %6, 0
  br i1 %tobool116.not.i, label %if.else.i.if.end119.i_crit_edge, label %if.then117.i

if.else.i.if.end119.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end119.i

if.then117.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i146.i = tail call i32 @prandom_u32() #11
  %20 = lshr i32 %call.i146.i, 28
  %add.i = add nuw nsw i32 %20, 10
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.then117.i, %if.else.i.if.end119.i_crit_edge
  %time_ms.0.i = phi i32 [ %add.i, %if.then117.i ], [ 0, %if.else.i.if.end119.i_crit_edge ]
  tail call void @j1939_tp_schedule_txtimer(ptr noundef nonnull %add.ptr53.i, i32 noundef %time_ms.0.i) #11
  br label %j1939_sk_queue_activate_next_locked.exit

j1939_sk_queue_activate_next_locked.exit:         ; preds = %if.end119.i, %list_del_init.exit.i.j1939_sk_queue_activate_next_locked.exit_crit_edge, %if.end20.i.j1939_sk_queue_activate_next_locked.exit_crit_edge, %if.end.j1939_sk_queue_activate_next_locked.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sk_session_queue_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %j1939_sk_queue_activate_next_locked.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @j1939_sk_recv_match(ptr noundef %priv, ptr nocapture noundef readonly %skcb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %j1939_socks_lock = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %j1939_socks_lock) #11
  %j1939_socks = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 9
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %j1939_socks, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %j1939_socks
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond
  %jsk.0 = getelementptr i8, ptr %.pn, i32 -964
  %call = tail call fastcc zeroext i1 @j1939_sk_recv_match_one(ptr noundef %jsk.0, ptr noundef %skcb)
  br i1 %call, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %1 = xor i1 %cmp.not, true
  tail call void @_raw_spin_unlock_bh(ptr noundef %j1939_socks_lock) #11
  ret i1 %1
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @j1939_sk_recv_match_one(ptr noundef %jsk, ptr nocapture noundef readonly %skcb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.j1939_sock, ptr %jsk, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.end2_crit_edge

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2

if.end.i:                                         ; preds = %if.end
  %addr.i = getelementptr inbounds %struct.j1939_sock, ptr %jsk, i32 0, i32 5
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool1.not.i = icmp eq i64 %3, 0
  br i1 %tobool1.not.i, label %if.end.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %dst_name.i = getelementptr inbounds %struct.j1939_sk_buff_cb, ptr %skcb, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %dst_name.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %dst_name.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool3.not.i = icmp eq i64 %5, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then4.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %5)
  %cmp.not.i = icmp eq i64 %3, %5
  br i1 %cmp.not.i, label %if.then4.i.if.end26.i_crit_edge, label %if.then4.i.return_crit_edge

if.then4.i.return_crit_edge:                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then4.i.if.end26.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %da.i = getelementptr inbounds %struct.j1939_sk_buff_cb, ptr %skcb, i32 0, i32 3, i32 4
  %6 = ptrtoint ptr %da.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %da.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %7)
  %cmp.i.i = icmp ult i8 %7, -2
  br i1 %cmp.i.i, label %if.then12.i, label %if.else21.i

if.then12.i:                                      ; preds = %if.else.i
  %sa.i = getelementptr inbounds %struct.j1939_sock, ptr %jsk, i32 0, i32 5, i32 3
  %8 = ptrtoint ptr %sa.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sa.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %7)
  %cmp17.not.i = icmp eq i8 %9, %7
  br i1 %cmp17.not.i, label %if.then12.i.if.end26.i_crit_edge, label %if.then12.i.return_crit_edge

if.then12.i.return_crit_edge:                     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then12.i.if.end26.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

if.else21.i:                                      ; preds = %if.else.i
  %10 = getelementptr inbounds %struct.sock_common, ptr %jsk, i32 0, i32 13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %13 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i, label %if.else21.i.return_crit_edge, label %if.else21.i.if.end26.i_crit_edge

if.else21.i.if.end26.i_crit_edge:                 ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

if.else21.i.return_crit_edge:                     ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end26.i:                                       ; preds = %if.else21.i.if.end26.i_crit_edge, %if.then12.i.if.end26.i_crit_edge, %if.then4.i.if.end26.i_crit_edge
  %and28.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end26.i.if.end59.i_crit_edge, label %if.then30.i

if.end26.i.if.end59.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i

if.then30.i:                                      ; preds = %if.end26.i
  %dst_name32.i = getelementptr inbounds %struct.j1939_sock, ptr %jsk, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %dst_name32.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %dst_name32.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool33.not.i = icmp eq i64 %15, 0
  br i1 %tobool33.not.i, label %if.then30.i.if.else47.i_crit_edge, label %land.lhs.true34.i

if.then30.i.if.else47.i_crit_edge:                ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else47.i

land.lhs.true34.i:                                ; preds = %if.then30.i
  %addr35.i = getelementptr inbounds %struct.j1939_sk_buff_cb, ptr %skcb, i32 0, i32 3
  %16 = ptrtoint ptr %addr35.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %addr35.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool37.not.i = icmp eq i64 %17, 0
  br i1 %tobool37.not.i, label %land.lhs.true34.i.if.else47.i_crit_edge, label %if.then38.i

land.lhs.true34.i.if.else47.i_crit_edge:          ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else47.i

if.then38.i:                                      ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %17)
  %cmp43.not.i = icmp eq i64 %15, %17
  br i1 %cmp43.not.i, label %if.then38.i.if.end59.i_crit_edge, label %if.then38.i.return_crit_edge

if.then38.i.return_crit_edge:                     ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then38.i.if.end59.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i

if.else47.i:                                      ; preds = %land.lhs.true34.i.if.else47.i_crit_edge, %if.then30.i.if.else47.i_crit_edge
  %da49.i = getelementptr inbounds %struct.j1939_sock, ptr %jsk, i32 0, i32 5, i32 4
  %18 = ptrtoint ptr %da49.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %da49.i, align 1
  %sa52.i = getelementptr inbounds %struct.j1939_sk_buff_cb, ptr %skcb, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %sa52.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sa52.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp54.not.i = icmp eq i8 %19, %21
  br i1 %cmp54.not.i, label %if.else47.i.if.end59.i_crit_edge, label %if.else47.i.return_crit_edge

if.else47.i.return_crit_edge:                     ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.else47.i.if.end59.i_crit_edge:                 ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.else47.i.if.end59.i_crit_edge, %if.then38.i.if.end59.i_crit_edge, %if.end26.i.if.end59.i_crit_edge
  %pgn_rx_filter.i = getelementptr inbounds %struct.j1939_sock, ptr %jsk, i32 0, i32 8
  %22 = ptrtoint ptr %pgn_rx_filter.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pgn_rx_filter.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %23)
  %cmp.i89.i = icmp ult i32 %23, 262144
  br i1 %cmp.i89.i, label %land.lhs.true62.i, label %if.end59.i.if.end2_crit_edge

if.end59.i.if.end2_crit_edge:                     ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2

land.lhs.true62.i:                                ; preds = %if.end59.i
  %pgn.i = getelementptr inbounds %struct.j1939_sk_buff_cb, ptr %skcb, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %pgn.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pgn.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp65.not.i = icmp eq i32 %23, %25
  br i1 %cmp65.not.i, label %land.lhs.true62.i.if.end2_crit_edge, label %land.lhs.true62.i.return_crit_edge

land.lhs.true62.i.return_crit_edge:               ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.lhs.true62.i.if.end2_crit_edge:              ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2

if.end2:                                          ; preds = %land.lhs.true62.i.if.end2_crit_edge, %if.end59.i.if.end2_crit_edge, %if.end.if.end2_crit_edge
  %nfilters.i = getelementptr inbounds %struct.j1939_sock, ptr %jsk, i32 0, i32 7
  %26 = ptrtoint ptr %nfilters.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nfilters.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i9 = icmp eq i32 %27, 0
  br i1 %tobool.not.i9, label %if.end2.return_crit_edge, label %for.body.lr.ph.i

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.body.lr.ph.i:                                 ; preds = %if.end2
  %filters.i = getelementptr inbounds %struct.j1939_sock, ptr %jsk, i32 0, i32 6
  %28 = ptrtoint ptr %filters.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %filters.i, align 8
  %addr.i10 = getelementptr inbounds %struct.j1939_sk_buff_cb, ptr %skcb, i32 0, i32 3
  %pgn.i11 = getelementptr inbounds %struct.j1939_sk_buff_cb, ptr %skcb, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %pgn.i11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pgn.i11, align 8
  %sa.i12 = getelementptr inbounds %struct.j1939_sk_buff_cb, ptr %skcb, i32 0, i32 3, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %nfilter.036.i = phi i32 [ %27, %for.body.lr.ph.i ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %f.034.i = phi ptr [ %29, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %pgn_mask.i = getelementptr inbounds %struct.j1939_filter, ptr %f.034.i, i32 0, i32 3
  %32 = ptrtoint ptr %pgn_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pgn_mask.i, align 4
  %and.i13 = and i32 %33, %31
  %pgn2.i = getelementptr inbounds %struct.j1939_filter, ptr %f.034.i, i32 0, i32 2
  %34 = ptrtoint ptr %pgn2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pgn2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i13, i32 %35)
  %cmp.not.i14 = icmp eq i32 %and.i13, %35
  br i1 %cmp.not.i14, label %if.end4.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end4.i:                                        ; preds = %for.body.i
  %36 = ptrtoint ptr %sa.i12 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %sa.i12, align 4
  %addr_mask.i = getelementptr inbounds %struct.j1939_filter, ptr %f.034.i, i32 0, i32 5
  %38 = ptrtoint ptr %addr_mask.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %addr_mask.i, align 1
  %and732.i = and i8 %39, %37
  %addr8.i = getelementptr inbounds %struct.j1939_filter, ptr %f.034.i, i32 0, i32 4
  %40 = ptrtoint ptr %addr8.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %addr8.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %and732.i, i8 %41)
  %cmp10.not.i = icmp eq i8 %and732.i, %41
  br i1 %cmp10.not.i, label %if.end13.i, label %if.end4.i.for.inc.i_crit_edge

if.end4.i.for.inc.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end13.i:                                       ; preds = %if.end4.i
  %42 = ptrtoint ptr %addr.i10 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %addr.i10, align 8
  %name_mask.i = getelementptr inbounds %struct.j1939_filter, ptr %f.034.i, i32 0, i32 1
  %44 = ptrtoint ptr %name_mask.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %name_mask.i, align 8
  %and15.i = and i64 %45, %43
  %46 = ptrtoint ptr %f.034.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %f.034.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and15.i, i64 %47)
  %cmp16.not.i = icmp eq i64 %and15.i, %47
  br i1 %cmp16.not.i, label %if.end13.i.return_crit_edge, label %if.end13.i.for.inc.i_crit_edge

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end13.i.return_crit_edge:                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.inc.i:                                        ; preds = %if.end13.i.for.inc.i_crit_edge, %if.end4.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.j1939_filter, ptr %f.034.i, i32 1
  %dec.i = add i32 %nfilter.036.i, -1
  %tobool1.not.i15 = icmp eq i32 %dec.i, 0
  br i1 %tobool1.not.i15, label %for.inc.i.return_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.return_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

return:                                           ; preds = %for.inc.i.return_crit_edge, %if.end13.i.return_crit_edge, %if.end2.return_crit_edge, %land.lhs.true62.i.return_crit_edge, %if.else47.i.return_crit_edge, %if.then38.i.return_crit_edge, %if.else21.i.return_crit_edge, %if.then12.i.return_crit_edge, %if.then4.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ true, %if.end2.return_crit_edge ], [ false, %if.then4.i.return_crit_edge ], [ false, %if.then12.i.return_crit_edge ], [ false, %if.else21.i.return_crit_edge ], [ false, %if.then38.i.return_crit_edge ], [ false, %if.else47.i.return_crit_edge ], [ false, %land.lhs.true62.i.return_crit_edge ], [ false, %for.inc.i.return_crit_edge ], [ true, %if.end13.i.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @j1939_sk_recv(ptr noundef %priv, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %j1939_socks_lock = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %j1939_socks_lock) #11
  %j1939_socks = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %j1939_socks to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn13 = load ptr, ptr %j1939_socks, align 4
  %cmp.not14 = icmp eq ptr %.pn13, %j1939_socks
  br i1 %cmp.not14, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %j1939_sk_recv_one.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn15 = phi ptr [ %.pn13, %for.body.lr.ph ], [ %.pn, %j1939_sk_recv_one.exit.for.body_crit_edge ]
  %jsk.0 = getelementptr i8, ptr %.pn15, i32 -964
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp.i = icmp eq ptr %3, %jsk.0
  br i1 %cmp.i, label %for.body.j1939_sk_recv_one.exit_crit_edge, label %if.end.i

for.body.j1939_sk_recv_one.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %j1939_sk_recv_one.exit

if.end.i:                                         ; preds = %for.body
  %call1.i = call fastcc zeroext i1 @j1939_sk_recv_match_one(ptr noundef %jsk.0, ptr noundef %cb.i.i) #11
  br i1 %call1.i, label %if.end3.i, label %if.end.i.j1939_sk_recv_one.exit_crit_edge

if.end.i.j1939_sk_recv_one.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %j1939_sk_recv_one.exit

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #11
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end7.i

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  br label %j1939_sk_recv_one.exit

if.end7.i:                                        ; preds = %if.end3.i
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end7.i.can_skb_set_owner.exit.i_crit_edge, label %land.lhs.true.i.i

if.end7.i.can_skb_set_owner.exit.i_crit_edge:     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %can_skb_set_owner.exit.i

land.lhs.true.i.i:                                ; preds = %if.end7.i
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #11
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #11
  %6 = ptrtoint ptr %skc_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %skc_refcnt.i.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.lhs.true.i.i
  %8 = phi i32 [ %7, %land.lhs.true.i.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #11
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #11
  %10 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 %11, i32 %add.i.i.i.i.i, ptr elementtype(i32) %skc_refcnt.i.i) #11, !srcloc !70
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !69

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !69

if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc_not_zero.exit.i.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 0) #11
  %16 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr.i.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i.i

refcount_inc_not_zero.exit.i.i:                   ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge
  %17 = phi i32 [ %14, %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge ], [ %.pr.i.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.not.i.i = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #11
  br i1 %tobool12.i.i.i.not.i.i, label %refcount_inc_not_zero.exit.i.i.can_skb_set_owner.exit.i_crit_edge, label %if.then.i.i

refcount_inc_not_zero.exit.i.i.can_skb_set_owner.exit.i_crit_edge: ; preds = %refcount_inc_not_zero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %can_skb_set_owner.exit.i

if.then.i.i:                                      ; preds = %refcount_inc_not_zero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %call4.i, i32 0, i32 4, i32 0, i32 1
  %18 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @sock_efree, ptr %destructor.i.i, align 4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %call4.i, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %5, ptr %19, align 4
  br label %can_skb_set_owner.exit.i

can_skb_set_owner.exit.i:                         ; preds = %if.then.i.i, %refcount_inc_not_zero.exit.i.i.can_skb_set_owner.exit.i_crit_edge, %if.end7.i.can_skb_set_owner.exit.i_crit_edge
  %msg_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call4.i, i32 0, i32 3, i32 4
  %21 = ptrtoint ptr %msg_flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_flags.i, align 4
  %and.i = and i32 %22, -5
  store i32 %and.i, ptr %msg_flags.i, align 4
  %23 = getelementptr inbounds %struct.sk_buff, ptr %call4.i, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool9.not.i = icmp eq ptr %25, null
  br i1 %tobool9.not.i, label %can_skb_set_owner.exit.i.if.end12.i_crit_edge, label %if.then10.i

can_skb_set_owner.exit.i.if.end12.i_crit_edge:    ; preds = %can_skb_set_owner.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then10.i:                                      ; preds = %can_skb_set_owner.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %or.i = or i32 %22, 4
  %26 = ptrtoint ptr %msg_flags.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.i, ptr %msg_flags.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %can_skb_set_owner.exit.i.if.end12.i_crit_edge
  %call14.i = call i32 @sock_queue_rcv_skb(ptr noundef %jsk.0, ptr noundef nonnull %call4.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.then16.i, label %if.end12.i.j1939_sk_recv_one.exit_crit_edge

if.end12.i.j1939_sk_recv_one.exit_crit_edge:      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %j1939_sk_recv_one.exit

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree_skb_reason(ptr noundef nonnull %call4.i, i32 noundef 0) #11
  br label %j1939_sk_recv_one.exit

j1939_sk_recv_one.exit:                           ; preds = %if.then16.i, %if.end12.i.j1939_sk_recv_one.exit_crit_edge, %do.end.i, %if.end.i.j1939_sk_recv_one.exit_crit_edge, %for.body.j1939_sk_recv_one.exit_crit_edge
  %27 = ptrtoint ptr %.pn15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn15, align 4
  %cmp.not = icmp eq ptr %.pn, %j1939_socks
  br i1 %cmp.not, label %j1939_sk_recv_one.exit.for.end_crit_edge, label %j1939_sk_recv_one.exit.for.body_crit_edge

j1939_sk_recv_one.exit.for.body_crit_edge:        ; preds = %j1939_sk_recv_one.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

j1939_sk_recv_one.exit.for.end_crit_edge:         ; preds = %j1939_sk_recv_one.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %j1939_sk_recv_one.exit.for.end_crit_edge, %entry.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %j1939_socks_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @j1939_sk_errqueue(ptr noundef %session, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @__j1939_sk_errqueue(ptr noundef %session, ptr noundef nonnull %1, i32 noundef %type)
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %session, align 8
  %j1939_socks_lock = getelementptr inbounds %struct.j1939_priv, ptr %3, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %j1939_socks_lock) #11
  %j1939_socks = getelementptr inbounds %struct.j1939_priv, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %j1939_socks to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn26 = load ptr, ptr %j1939_socks, align 4
  %cmp.not28 = icmp eq ptr %.pn26, %j1939_socks
  br i1 %cmp.not28, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %skcb = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn29 = phi ptr [ %.pn26, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %jsk.030 = getelementptr i8, ptr %.pn29, i32 -964
  %call = tail call fastcc zeroext i1 @j1939_sk_recv_match_one(ptr noundef %jsk.030, ptr noundef %skcb)
  br i1 %call, label %if.then4, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @__j1939_sk_errqueue(ptr noundef %session, ptr noundef %jsk.030, i32 noundef %type)
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %.pn29 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn29, align 4
  %cmp.not = icmp eq ptr %.pn, %j1939_socks
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %j1939_socks_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__j1939_sk_errqueue(ptr noundef %session, ptr noundef %sk, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %tmp.i60.i = alloca i32, align 4
  %tmp.i58.i = alloca i8, align 1
  %tmp.i56.i = alloca i8, align 1
  %tmp.i54.i = alloca i64, align 8
  %tmp.i52.i = alloca i64, align 8
  %tmp.i50.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %session, align 8
  %state2 = getelementptr inbounds %struct.j1939_sock, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state2, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %if.end.sw.epilog_crit_edge
    i32 3, label %if.end.sw.bb16_crit_edge
    i32 4, label %if.end.sw.bb16_crit_edge144
    i32 5, label %if.end.sw.bb16_crit_edge145
  ]

if.end.sw.bb16_crit_edge145:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb16

if.end.sw.bb16_crit_edge144:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb16

if.end.sw.bb16_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb16

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %sk_tsflags = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 65
  %5 = ptrtoint ptr %sk_tsflags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sk_tsflags, align 8
  %7 = and i16 %6, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool4.not = icmp eq i16 %7, 0
  br i1 %tobool4.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  %sk_tsflags8 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 65
  %8 = ptrtoint ptr %sk_tsflags8 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sk_tsflags8, align 8
  %10 = and i16 %9, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool11.not = icmp eq i16 %10, 0
  br i1 %tobool11.not, label %sw.bb7.cleanup_crit_edge, label %sw.bb7.sw.epilog_crit_edge

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb16:                                          ; preds = %if.end.sw.bb16_crit_edge, %if.end.sw.bb16_crit_edge144, %if.end.sw.bb16_crit_edge145
  %sk_tsflags17 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 65
  %11 = ptrtoint ptr %sk_tsflags17 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sk_tsflags17, align 8
  %13 = and i16 %12, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool20.not = icmp eq i16 %13, 0
  br i1 %tobool20.not, label %sw.bb16.cleanup_crit_edge, label %sw.bb16.sw.epilog_crit_edge

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %ndev = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.4, i32 noundef %type) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb16.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cond.i.i = icmp eq i32 %type, 3
  %spec.select.i.i = select i1 %cond.i.i, i32 56, i32 8
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %spec.select.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %sw.epilog.cleanup_crit_edge, label %if.end.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog
  %addr.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3
  %type2.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3, i32 5
  %16 = ptrtoint ptr %type2.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %type2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp.i = icmp eq i8 %17, 2
  br i1 %cmp.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %total_message_size.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 11
  %18 = ptrtoint ptr %total_message_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %total_message_size.i, align 4
  br label %if.end8.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %tx_acked.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 17, i32 3
  %20 = ptrtoint ptr %tx_acked.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_acked.i, align 4
  %mul.i = mul i32 %21, 7
  %total_message_size5.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 11
  %22 = ptrtoint ptr %total_message_size5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %total_message_size5.i, align 4
  %24 = tail call i32 @llvm.umin.i32(i32 %mul.i, i32 %23) #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %if.then4.i
  %size.0.i = phi i32 [ %19, %if.then4.i ], [ %24, %if.else.i ]
  br i1 %cond.i.i, label %if.end26.thread, label %if.end26

if.end26.thread:                                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %total_message_size9.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 11
  %25 = ptrtoint ptr %total_message_size9.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %total_message_size9.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #11
  %27 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %tmp.i.i, align 4
  %call.i49.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #11
  %pgn.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3, i32 2
  %28 = ptrtoint ptr %pgn.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pgn.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i50.i) #11
  %30 = ptrtoint ptr %tmp.i50.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %tmp.i50.i, align 4
  %call.i51.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i50.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i50.i) #11
  %31 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %addr.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i52.i) #11
  %33 = ptrtoint ptr %tmp.i52.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %tmp.i52.i, align 8
  %call.i53.i = call i32 @nla_put_64bit(ptr noundef nonnull %call.i.i, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %tmp.i52.i, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i52.i) #11
  %dst_name.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3, i32 1
  %34 = ptrtoint ptr %dst_name.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %dst_name.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i54.i) #11
  %36 = ptrtoint ptr %tmp.i54.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %tmp.i54.i, align 8
  %call.i55.i = call i32 @nla_put_64bit(ptr noundef nonnull %call.i.i, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %tmp.i54.i, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i54.i) #11
  %sa.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3, i32 3
  %37 = ptrtoint ptr %sa.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %sa.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i56.i) #11
  %39 = ptrtoint ptr %tmp.i56.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %tmp.i56.i, align 1
  %call.i57.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %tmp.i56.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i56.i) #11
  %da.i = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 5, i32 3, i32 4
  %40 = ptrtoint ptr %da.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %da.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i58.i) #11
  %42 = ptrtoint ptr %tmp.i58.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %tmp.i58.i, align 1
  %call.i59.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 7, i32 noundef 1, ptr noundef nonnull %tmp.i58.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i58.i) #11
  %call.i139 = call i64 @ktime_get_with_offset(i32 noundef 0) #11
  %43 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %call.i139, ptr %43, align 8
  %cb140 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %45 = call ptr @memset(ptr %cb140, i32 0, i32 48)
  br label %sw.epilog68.sink.split

if.end26:                                         ; preds = %if.end8.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i60.i) #11
  %46 = ptrtoint ptr %tmp.i60.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %size.0.i, ptr %tmp.i60.i, align 4
  %call.i61.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i60.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i60.i) #11
  %call.i = call i64 @ktime_get_with_offset(i32 noundef 0) #11
  %47 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %call.i, ptr %47, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %49 = call ptr @memset(ptr %cb, i32 0, i32 48)
  %50 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %type, label %if.end26.sw.epilog68_crit_edge [
    i32 0, label %if.end26.sw.epilog68.sink.split_crit_edge
    i32 1, label %sw.bb31
    i32 2, label %sw.bb38
    i32 5, label %sw.bb60
    i32 4, label %sw.bb53
  ]

if.end26.sw.epilog68.sink.split_crit_edge:        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog68.sink.split

if.end26.sw.epilog68_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog68

sw.bb31:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog68.sink.split

sw.bb38:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %err39 = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 14
  %51 = ptrtoint ptr %err39 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %err39, align 8
  br label %sw.epilog68.sink.split

sw.bb53:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog68.sink.split

sw.bb60:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %err61 = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 14
  %53 = ptrtoint ptr %err61 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %err61, align 8
  br label %sw.epilog68.sink.split

sw.epilog68.sink.split:                           ; preds = %sw.bb60, %sw.bb53, %sw.bb38, %sw.bb31, %if.end26.sw.epilog68.sink.split_crit_edge, %if.end26.thread
  %.sink143 = phi i32 [ %54, %sw.bb60 ], [ 42, %sw.bb53 ], [ 42, %if.end26.thread ], [ %52, %sw.bb38 ], [ 42, %sw.bb31 ], [ 42, %if.end26.sw.epilog68.sink.split_crit_edge ]
  %.sink142 = phi i8 [ 1, %sw.bb60 ], [ 1, %sw.bb53 ], [ 1, %if.end26.thread ], [ 1, %sw.bb38 ], [ 4, %sw.bb31 ], [ 4, %if.end26.sw.epilog68.sink.split_crit_edge ]
  %.sink = phi i32 [ 4, %sw.bb60 ], [ 3, %sw.bb53 ], [ 2, %if.end26.thread ], [ 1, %sw.bb38 ], [ 1, %sw.bb31 ], [ 2, %if.end26.sw.epilog68.sink.split_crit_edge ]
  %state.0.ph = phi ptr [ @.str.10, %sw.bb60 ], [ @.str.9, %sw.bb53 ], [ @.str.8, %if.end26.thread ], [ @.str.7, %sw.bb38 ], [ @.str.6, %sw.bb31 ], [ @.str.5, %if.end26.sw.epilog68.sink.split_crit_edge ]
  %ee62 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 24
  %55 = ptrtoint ptr %ee62 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.sink143, ptr %ee62, align 4
  %ee_origin65 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 28
  %56 = ptrtoint ptr %ee_origin65 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %.sink142, ptr %ee_origin65, align 4
  %ee_info67 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 32
  %57 = ptrtoint ptr %ee_info67 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %.sink, ptr %ee_info67, align 4
  br label %sw.epilog68

sw.epilog68:                                      ; preds = %sw.epilog68.sink.split, %if.end26.sw.epilog68_crit_edge
  %state.0 = phi ptr [ @.str.3, %if.end26.sw.epilog68_crit_edge ], [ %state.0.ph, %sw.epilog68.sink.split ]
  %opt_stats = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 44
  %58 = ptrtoint ptr %opt_stats to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load = load i8, ptr %opt_stats, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %opt_stats, align 4
  %sk_tsflags69 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 65
  %59 = ptrtoint ptr %sk_tsflags69 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %sk_tsflags69, align 8
  %61 = and i16 %60, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool72.not = icmp eq i16 %61, 0
  br i1 %tobool72.not, label %sw.epilog68.do.body77_crit_edge, label %if.then73

sw.epilog68.do.body77_crit_edge:                  ; preds = %sw.epilog68
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body77

if.then73:                                        ; preds = %sw.epilog68
  call void @__sanitizer_cov_trace_pc() #13
  %tskey = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 15
  %62 = ptrtoint ptr %tskey to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tskey, align 4
  %64 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 36
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %63, ptr %64, align 4
  br label %do.body77

do.body77:                                        ; preds = %if.then73, %sw.epilog68.do.body77_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__j1939_sk_errqueue.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__j1939_sk_errqueue, %if.then82)) #11
          to label %do.end90 [label %if.then82], !srcloc !71

if.then82:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %session, align 8
  %ndev84 = getelementptr inbounds %struct.j1939_priv, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %ndev84 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ndev84, align 4
  %tskey85 = getelementptr inbounds %struct.j1939_session, ptr %session, i32 0, i32 15
  %70 = ptrtoint ptr %tskey85 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tskey85, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__j1939_sk_errqueue.__UNIQUE_ID_ddebug502, ptr noundef %69, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, ptr noundef %session, i32 noundef %71, ptr noundef nonnull %state.0) #11
  br label %do.end90

do.end90:                                         ; preds = %if.then82, %do.body77
  %call91 = call i32 @sock_queue_err_skb(ptr noundef %sk, ptr noundef nonnull %call.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %do.end90.cleanup_crit_edge, label %if.then93

do.end90.cleanup_crit_edge:                       ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then93:                                        ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then93, %do.end90.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb16.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @j1939_sk_send_loop_abort(ptr noundef %sk, i32 noundef %err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %0 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %err, ptr %sk_err, align 4
  tail call void @sk_error_report(ptr noundef %sk) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @j1939_sk_netdev_event_netdown(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %j1939_socks_lock = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %j1939_socks_lock) #11
  %j1939_socks = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %j1939_socks to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn20 = load ptr, ptr %j1939_socks, align 4
  %cmp.not22 = icmp eq ptr %.pn20, %j1939_socks
  br i1 %cmp.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn23 = phi ptr [ %.pn, %if.end.for.body_crit_edge ], [ %.pn20, %entry.for.body_crit_edge ]
  %jsk.024 = getelementptr i8, ptr %.pn23, i32 -964
  %sk_err = getelementptr i8, ptr %.pn23, i32 -272
  %1 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 100, ptr %sk_err, align 4
  %2 = getelementptr i8, ptr %.pn23, i32 -884
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %5 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sk_error_report(ptr noundef %jsk.024) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  tail call fastcc void @j1939_sk_queue_drop_all(ptr noundef %priv, ptr noundef %jsk.024, i32 noundef 100)
  %6 = ptrtoint ptr %.pn23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn23, align 4
  %cmp.not = icmp eq ptr %.pn, %j1939_socks
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %j1939_socks_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @j1939_sk_queue_drop_all(ptr nocapture noundef readonly %priv, ptr noundef %jsk, i32 noundef %err) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @j1939_sk_queue_drop_all.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@j1939_sk_queue_drop_all, %if.then)) #11
          to label %do.end6 [label %if.then], !srcloc !71

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ndev = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @j1939_sk_queue_drop_all.__UNIQUE_ID_ddebug495, ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, i32 noundef %err) #11
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %sk_session_queue_lock = getelementptr inbounds %struct.j1939_sock, ptr %jsk, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %sk_session_queue_lock) #11
  %sk_session_queue = getelementptr inbounds %struct.j1939_sock, ptr %jsk, i32 0, i32 12
  %2 = ptrtoint ptr %sk_session_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_session_queue, align 8
  %cmp.not35 = icmp eq ptr %3, %sk_session_queue
  br i1 %cmp.not35, label %do.end6.for.end_crit_edge, label %do.end6.for.body_crit_edge

do.end6.for.body_crit_edge:                       ; preds = %do.end6
  br label %for.body

do.end6.for.end_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %do.end6.for.body_crit_edge
  %.pn.in36 = phi ptr [ %.pn, %list_del_init.exit.for.body_crit_edge ], [ %3, %do.end6.for.body_crit_edge ]
  %session.0 = getelementptr i8, ptr %.pn.in36, i32 -12
  %4 = ptrtoint ptr %.pn.in36 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in36, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in36) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in36, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn.in36 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in36, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %.pn.in36 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %.pn.in36, ptr %.pn.in36, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in36, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %.pn.in36, ptr %prev.i3.i, align 4
  %err17 = getelementptr i8, ptr %.pn.in36, i32 140
  %13 = ptrtoint ptr %err17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %err, ptr %err17, align 8
  tail call void @j1939_session_put(ptr noundef %session.0) #11
  %cmp.not = icmp eq ptr %.pn, %sk_session_queue
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %do.end6.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sk_session_queue_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_session_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @j1939_session_activate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_tp_schedule_txtimer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_efree(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @j1939_sk_release(ptr nocapture noundef %sock) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup32_crit_edge, label %if.end

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup32

if.end:                                           ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #11
  %state = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end30_crit_edge, label %if.then3

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then3:                                         ; preds = %if.end
  %priv4 = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv4, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 625) #11
  %skb_pending.i = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skb_pending.i, i32 noundef 4) #11
  %6 = ptrtoint ptr %skb_pending.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %skb_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %if.then3.if.end28_crit_edge, label %if.then11

if.then3.if.end28_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then11:                                        ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %waitq = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 10
  %call1372 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %call.i.i.i5773 = call zeroext i1 @__kasan_check_read(ptr noundef %skb_pending.i, i32 noundef 4) #11
  %9 = ptrtoint ptr %skb_pending.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %skb_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool16.not74 = icmp eq i32 %10, 0
  br i1 %tobool16.not74, label %if.then11.if.end23.thread68_crit_edge, label %if.then11.if.end18_crit_edge

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  br label %if.end18

if.then11.if.end23.thread68_crit_edge:            ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.thread68

if.end18:                                         ; preds = %cleanup.if.end18_crit_edge, %if.then11.if.end18_crit_edge
  %call1375 = phi i32 [ %call13, %cleanup.if.end18_crit_edge ], [ %call1372, %if.then11.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1375)
  %tobool19.not = icmp eq i32 %call1375, 0
  br i1 %tobool19.not, label %cleanup, label %if.then26

cleanup:                                          ; preds = %if.end18
  call void @schedule() #11
  %call13 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %call.i.i.i57 = call zeroext i1 @__kasan_check_read(ptr noundef %skb_pending.i, i32 noundef 4) #11
  %11 = ptrtoint ptr %skb_pending.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %skb_pending.i, align 4
  %tobool16.not = icmp eq i32 %12, 0
  br i1 %tobool16.not, label %cleanup.if.end23.thread68_crit_edge, label %cleanup.if.end18_crit_edge

cleanup.if.end18_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

cleanup.if.end23.thread68_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.thread68

if.end23.thread68:                                ; preds = %cleanup.if.end23.thread68_crit_edge, %if.then11.if.end23.thread68_crit_edge
  call void @finish_wait(ptr noundef %waitq, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end28

if.then26:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  %call27 = call i32 @j1939_cancel_active_session(ptr noundef %5, ptr noundef nonnull %1) #11
  call fastcc void @j1939_sk_queue_drop_all(ptr noundef %5, ptr noundef %1, i32 noundef 108)
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end23.thread68, %if.then3.if.end28_crit_edge
  %j1939_socks_lock.i = getelementptr inbounds %struct.j1939_priv, ptr %5, i32 0, i32 8
  call void @_raw_spin_lock_bh(ptr noundef %j1939_socks_lock.i) #11
  %list.i = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 2
  %call.i.i.i58 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #11
  br i1 %call.i.i.i58, label %if.end.i.i.i, label %if.end28.j1939_jsk_del.exit_crit_edge

if.end28.j1939_jsk_del.exit_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %j1939_jsk_del.exit

if.end.i.i.i:                                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %j1939_jsk_del.exit

j1939_jsk_del.exit:                               ; preds = %if.end.i.i.i, %if.end28.j1939_jsk_del.exit_crit_edge
  %19 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list.i, ptr %prev.i3.i.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %j1939_socks_lock.i) #11
  call void @j1939_priv_put(ptr noundef %5) #11
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state, align 4
  %and.i = and i32 %22, -2
  store i32 %and.i, ptr %state, align 4
  %addr = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %addr, align 8
  %sa = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 5, i32 3
  %25 = ptrtoint ptr %sa to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sa, align 4
  call void @j1939_local_ecu_put(ptr noundef %5, i64 noundef %24, i8 noundef zeroext %26) #11
  call void @j1939_netdev_stop(ptr noundef %5) #11
  br label %if.end30

if.end30:                                         ; preds = %j1939_jsk_del.exit, %if.end.if.end30_crit_edge
  %filters = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %filters to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %filters, align 8
  call void @kfree(ptr noundef %28) #11
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #11
  %29 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %or.i.i.i = or i32 %31, 1
  store i32 %or.i.i.i, ptr %29, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %32 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %sk_socket.i.i, align 8
  %33 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %33, align 8
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #11
  %35 = ptrtoint ptr %sk1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %sk1, align 16
  call void @release_sock(ptr noundef nonnull %1) #11
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !72
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %36 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !73
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup32_crit_edge, label %if.then10.i.i.i.i, !prof !69

if.end5.i.i.i.i.cleanup32_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup32

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #11
  br label %cleanup32

if.then.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !74
  call void @sk_free(ptr noundef %1) #11
  br label %cleanup32

cleanup32:                                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup32_crit_edge, %entry.cleanup32_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @j1939_sk_bind(ptr nocapture noundef readonly %sock, ptr noundef readonly %uaddr, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %tobool.not.i = icmp eq ptr %uaddr, null
  br i1 %tobool.not.i, label %entry.cleanup57_crit_edge, label %if.end.i

entry.cleanup57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup57

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %len)
  %cmp.i = icmp ult i32 %len, 24
  br i1 %cmp.i, label %if.end.i.cleanup57_crit_edge, label %if.end2.i

if.end.i.cleanup57_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup57

if.end2.i:                                        ; preds = %if.end.i
  %2 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %uaddr, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 29, i16 %3)
  %cmp3.not.i = icmp eq i16 %3, 29
  br i1 %cmp3.not.i, label %if.end6.i, label %if.end2.i.cleanup57_crit_edge

if.end2.i.cleanup57_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup57

if.end6.i:                                        ; preds = %if.end2.i
  %can_ifindex.i = getelementptr inbounds %struct.sockaddr_can, ptr %uaddr, i32 0, i32 1
  %4 = ptrtoint ptr %can_ifindex.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %can_ifindex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not.i = icmp eq i32 %5, 0
  br i1 %tobool7.not.i, label %if.end6.i.cleanup57_crit_edge, label %if.end9.i

if.end6.i.cleanup57_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup57

if.end9.i:                                        ; preds = %if.end6.i
  %pgn.i = getelementptr inbounds %struct.sockaddr_can, ptr %uaddr, i32 0, i32 2, i32 0, i32 1
  %6 = ptrtoint ptr %pgn.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pgn.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %7)
  %cmp.i.i = icmp ult i32 %7, 262144
  br i1 %cmp.i.i, label %land.lhs.true.i, label %if.end9.i.if.end_crit_edge

if.end9.i.if.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end9.i
  %and.i.i.i = and i32 %7, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 61440, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 61440
  %and.i.i = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %retval.0.i.i = or i1 %cmp.i.not.i.i, %tobool.not.i.i
  br i1 %retval.0.i.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.cleanup57_crit_edge

land.lhs.true.i.cleanup57_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup57

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %if.end9.i.if.end_crit_edge
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %priv4 = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv4, align 8
  %state = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  %ifindex = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ifindex, align 8
  %14 = ptrtoint ptr %can_ifindex.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %can_ifindex.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not = icmp eq i32 %13, %15
  br i1 %cmp.not, label %if.end10, label %if.then8.out_release_sock_crit_edge

if.then8.out_release_sock_crit_edge:              ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_release_sock

if.end10:                                         ; preds = %if.then8
  %j1939_socks_lock.i = getelementptr inbounds %struct.j1939_priv, ptr %9, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %j1939_socks_lock.i) #11
  %list.i = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end10.j1939_jsk_del.exit_crit_edge

if.end10.j1939_jsk_del.exit_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %j1939_jsk_del.exit

if.end.i.i.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %j1939_jsk_del.exit

j1939_jsk_del.exit:                               ; preds = %if.end.i.i.i, %if.end10.j1939_jsk_del.exit_crit_edge
  %22 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %list.i, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %j1939_socks_lock.i) #11
  tail call void @j1939_priv_put(ptr noundef %9) #11
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state, align 4
  %and.i = and i32 %25, -2
  store i32 %and.i, ptr %state, align 4
  %addr11 = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %addr11 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %addr11, align 8
  %sa = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 5, i32 3
  %28 = ptrtoint ptr %sa to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sa, align 4
  tail call void @j1939_local_ecu_put(ptr noundef %9, i64 noundef %27, i8 noundef zeroext %29) #11
  br label %if.end35

if.else:                                          ; preds = %if.end
  %30 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sk, align 16
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skc_net.i, align 4
  %34 = ptrtoint ptr %can_ifindex.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %can_ifindex.i, align 4
  %call14 = tail call ptr @dev_get_by_index(ptr noundef %33, i32 noundef %35) #11
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.else.out_release_sock_crit_edge, label %if.end17

if.else.out_release_sock_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_release_sock

if.end17:                                         ; preds = %if.else
  %ml_priv_type.i.i = getelementptr inbounds %struct.net_device, ptr %call14, i32 0, i32 129
  %36 = ptrtoint ptr %ml_priv_type.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ml_priv_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp.not.i.i = icmp eq i32 %37, 1
  br i1 %cmp.not.i.i, label %can_get_ml_priv.exit, label %if.end17.do.body1.i_crit_edge

if.end17.do.body1.i_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i

can_get_ml_priv.exit:                             ; preds = %if.end17
  %ml_priv.i.i = getelementptr inbounds %struct.net_device, ptr %call14, i32 0, i32 128
  %38 = ptrtoint ptr %ml_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ml_priv.i.i, align 8
  %tobool19.not = icmp eq ptr %39, null
  br i1 %tobool19.not, label %can_get_ml_priv.exit.do.body1.i_crit_edge, label %if.end21

can_get_ml_priv.exit.do.body1.i_crit_edge:        ; preds = %can_get_ml_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i

do.body1.i:                                       ; preds = %can_get_ml_priv.exit.do.body1.i_crit_edge, %if.end17.do.body1.i_crit_edge
  %40 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !75
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call14, i32 0, i32 118
  %41 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pcpu_refcnt.i, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i106 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i106 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %49, %43
  %50 = inttoptr i32 %add.i to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %add13.i = add i32 %52, -1
  store i32 %add13.i, ptr %50, align 4
  %53 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !76
  %and.i.i.i107 = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i107)
  %tobool24.not.i = icmp eq i32 %and.i.i.i107, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !68

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %40) #11, !srcloc !77
  br label %out_release_sock

if.end21:                                         ; preds = %can_get_ml_priv.exit
  %flags = getelementptr inbounds %struct.net_device, ptr %call14, i32 0, i32 14
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags, align 8
  %and22 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body1.i117, label %do.body1.i130

do.body1.i117:                                    ; preds = %if.end21
  %56 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !75
  %pcpu_refcnt.i109 = getelementptr inbounds %struct.net_device, ptr %call14, i32 0, i32 118
  %57 = ptrtoint ptr %pcpu_refcnt.i109 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pcpu_refcnt.i109, align 4
  %59 = ptrtoint ptr %58 to i32
  %60 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i110 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i110 to ptr
  %cpu.i111 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %cpu.i111 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cpu.i111, align 4
  %arrayidx.i112 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx.i112 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i112, align 4
  %add.i113 = add i32 %65, %59
  %66 = inttoptr i32 %add.i113 to ptr
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %add13.i114 = add i32 %68, -1
  store i32 %add13.i114, ptr %66, align 4
  %69 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !76
  %and.i.i.i115 = and i32 %69, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i115)
  %tobool24.not.i116 = icmp eq i32 %and.i.i.i115, 0
  br i1 %tobool24.not.i116, label %if.then28.i118, label %do.body1.i117.dev_put.exit120_crit_edge, !prof !68

do.body1.i117.dev_put.exit120_crit_edge:          ; preds = %do.body1.i117
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit120

if.then28.i118:                                   ; preds = %do.body1.i117
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %dev_put.exit120

dev_put.exit120:                                  ; preds = %if.then28.i118, %do.body1.i117.dev_put.exit120_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %56) #11, !srcloc !77
  br label %out_release_sock

do.body1.i130:                                    ; preds = %if.end21
  %call26 = tail call ptr @j1939_netdev_start(ptr noundef nonnull %call14) #11
  %70 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !75
  %pcpu_refcnt.i122 = getelementptr inbounds %struct.net_device, ptr %call14, i32 0, i32 118
  %71 = ptrtoint ptr %pcpu_refcnt.i122 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pcpu_refcnt.i122, align 4
  %73 = ptrtoint ptr %72 to i32
  %74 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i123 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i123 to ptr
  %cpu.i124 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %cpu.i124 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cpu.i124, align 4
  %arrayidx.i125 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %77
  %78 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i125, align 4
  %add.i126 = add i32 %79, %73
  %80 = inttoptr i32 %add.i126 to ptr
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %add13.i127 = add i32 %82, -1
  store i32 %add13.i127, ptr %80, align 4
  %83 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !76
  %and.i.i.i128 = and i32 %83, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i128)
  %tobool24.not.i129 = icmp eq i32 %and.i.i.i128, 0
  br i1 %tobool24.not.i129, label %if.then28.i131, label %do.body1.i130.dev_put.exit133_crit_edge, !prof !68

do.body1.i130.dev_put.exit133_crit_edge:          ; preds = %do.body1.i130
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit133

if.then28.i131:                                   ; preds = %do.body1.i130
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %dev_put.exit133

dev_put.exit133:                                  ; preds = %if.then28.i131, %do.body1.i130.dev_put.exit133_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %70) #11, !srcloc !77
  %cmp.i134 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134, label %if.then28, label %cleanup

if.then28:                                        ; preds = %dev_put.exit133
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %call26 to i32
  br label %out_release_sock

cleanup:                                          ; preds = %dev_put.exit133
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %can_ifindex.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %can_ifindex.i, align 4
  %ifindex32 = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 4
  %87 = ptrtoint ptr %ifindex32 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %ifindex32, align 8
  tail call void @j1939_priv_get(ptr noundef %call26) #11
  %88 = ptrtoint ptr %priv4 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call26, ptr %priv4, align 8
  br label %if.end35

if.end35:                                         ; preds = %cleanup, %j1939_jsk_del.exit
  %priv.1 = phi ptr [ %9, %j1939_jsk_del.exit ], [ %call26, %cleanup ]
  %can_addr = getelementptr inbounds %struct.sockaddr_can, ptr %uaddr, i32 0, i32 2
  %89 = ptrtoint ptr %pgn.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pgn.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %90)
  %cmp.i135 = icmp ult i32 %90, 262144
  br i1 %cmp.i135, label %if.then37, label %if.end35.if.end40_crit_edge

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %pgn_rx_filter = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 8
  %91 = ptrtoint ptr %pgn_rx_filter to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %pgn_rx_filter, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end35.if.end40_crit_edge
  %92 = ptrtoint ptr %can_addr to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %can_addr, align 8
  %addr42 = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 5
  %94 = ptrtoint ptr %addr42 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %93, ptr %addr42, align 8
  %addr45 = getelementptr inbounds %struct.sockaddr_can, ptr %uaddr, i32 0, i32 2, i32 0, i32 2
  %95 = ptrtoint ptr %addr45 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %addr45, align 4
  %sa47 = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 5, i32 3
  %97 = ptrtoint ptr %sa47 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %sa47, align 4
  %call52 = tail call i32 @j1939_local_ecu_get(ptr noundef %priv.1, i64 noundef %93, i8 noundef zeroext %96) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @j1939_netdev_stop(ptr noundef %priv.1) #11
  br label %out_release_sock

if.end55:                                         ; preds = %if.end40
  %98 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %state, align 4
  %or.i = or i32 %99, 1
  store i32 %or.i, ptr %state, align 4
  tail call void @j1939_priv_get(ptr noundef %priv.1) #11
  %j1939_socks_lock.i137 = getelementptr inbounds %struct.j1939_priv, ptr %priv.1, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %j1939_socks_lock.i137) #11
  %list.i138 = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 2
  %j1939_socks.i = getelementptr inbounds %struct.j1939_priv, ptr %priv.1, i32 0, i32 9
  %prev.i.i = getelementptr inbounds %struct.j1939_priv, ptr %priv.1, i32 0, i32 9, i32 1
  %100 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i139 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i138, ptr noundef %101, ptr noundef %j1939_socks.i) #11
  br i1 %call.i.i.i139, label %if.end.i.i.i140, label %if.end55.j1939_jsk_add.exit_crit_edge

if.end55.j1939_jsk_add.exit_crit_edge:            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %j1939_jsk_add.exit

if.end.i.i.i140:                                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %list.i138, ptr %prev.i.i, align 4
  %103 = ptrtoint ptr %list.i138 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %j1939_socks.i, ptr %list.i138, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 2, i32 1
  %104 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %prev3.i.i.i, align 4
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %list.i138, ptr %101, align 4
  br label %j1939_jsk_add.exit

j1939_jsk_add.exit:                               ; preds = %if.end.i.i.i140, %if.end55.j1939_jsk_add.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %j1939_socks_lock.i137) #11
  br label %out_release_sock

out_release_sock:                                 ; preds = %j1939_jsk_add.exit, %if.then54, %if.then28, %dev_put.exit120, %dev_put.exit, %if.else.out_release_sock_crit_edge, %if.then8.out_release_sock_crit_edge
  %ret.1 = phi i32 [ %call52, %if.then54 ], [ 0, %j1939_jsk_add.exit ], [ -22, %if.then8.out_release_sock_crit_edge ], [ -19, %if.else.out_release_sock_crit_edge ], [ -19, %dev_put.exit ], [ -100, %dev_put.exit120 ], [ %84, %if.then28 ]
  %106 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %sk, align 16
  tail call void @release_sock(ptr noundef %107) #11
  br label %cleanup57

cleanup57:                                        ; preds = %out_release_sock, %land.lhs.true.i.cleanup57_crit_edge, %if.end6.i.cleanup57_crit_edge, %if.end2.i.cleanup57_crit_edge, %if.end.i.cleanup57_crit_edge, %entry.cleanup57_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_release_sock ], [ -22, %land.lhs.true.i.cleanup57_crit_edge ], [ -19, %if.end6.i.cleanup57_crit_edge ], [ -22, %if.end2.i.cleanup57_crit_edge ], [ -22, %if.end.i.cleanup57_crit_edge ], [ -89, %entry.cleanup57_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @j1939_sk_connect(ptr nocapture noundef readonly %sock, ptr noundef readonly %uaddr, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %tobool.not.i = icmp eq ptr %uaddr, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %len)
  %cmp.i = icmp ult i32 %len, 24
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i
  %2 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %uaddr, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 29, i16 %3)
  %cmp3.not.i = icmp eq i16 %3, 29
  br i1 %cmp3.not.i, label %if.end6.i, label %if.end2.i.cleanup_crit_edge

if.end2.i.cleanup_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6.i:                                        ; preds = %if.end2.i
  %can_ifindex.i = getelementptr inbounds %struct.sockaddr_can, ptr %uaddr, i32 0, i32 1
  %4 = ptrtoint ptr %can_ifindex.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %can_ifindex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not.i = icmp eq i32 %5, 0
  br i1 %tobool7.not.i, label %if.end6.i.cleanup_crit_edge, label %if.end9.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.i:                                        ; preds = %if.end6.i
  %pgn.i = getelementptr inbounds %struct.sockaddr_can, ptr %uaddr, i32 0, i32 2, i32 0, i32 1
  %6 = ptrtoint ptr %pgn.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pgn.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %7)
  %cmp.i.i = icmp ult i32 %7, 262144
  br i1 %cmp.i.i, label %land.lhs.true.i, label %if.end9.i.if.end_crit_edge

if.end9.i.if.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end9.i
  %and.i.i.i = and i32 %7, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 61440, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 61440
  %and.i.i = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %retval.0.i.i = or i1 %cmp.i.not.i.i, %tobool.not.i.i
  br i1 %retval.0.i.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %if.end9.i.if.end_crit_edge
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %state = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.out_release_sock_crit_edge, label %if.end5

if.end.out_release_sock_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_release_sock

if.end5:                                          ; preds = %if.end
  %ifindex = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ifindex, align 8
  %12 = ptrtoint ptr %can_ifindex.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %can_ifindex.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not = icmp eq i32 %11, %13
  br i1 %cmp.not, label %if.end7, label %if.end5.out_release_sock_crit_edge

if.end5.out_release_sock_crit_edge:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_release_sock

if.end7:                                          ; preds = %if.end5
  %can_addr = getelementptr inbounds %struct.sockaddr_can, ptr %uaddr, i32 0, i32 2
  %14 = ptrtoint ptr %can_addr to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %can_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool8.not = icmp eq i64 %15, 0
  br i1 %tobool8.not, label %land.lhs.true, label %if.end7.if.end17_crit_edge

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end7
  %addr10 = getelementptr inbounds %struct.sockaddr_can, ptr %uaddr, i32 0, i32 2, i32 0, i32 2
  %16 = ptrtoint ptr %addr10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %addr10, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp11 = icmp eq i8 %17, -1
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

land.lhs.true13:                                  ; preds = %land.lhs.true
  %18 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %21 = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not = icmp eq i32 %21, 0
  br i1 %tobool.i.not, label %land.lhs.true13.out_release_sock_crit_edge, label %land.lhs.true13.if.end17_crit_edge

land.lhs.true13.if.end17_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

land.lhs.true13.out_release_sock_crit_edge:       ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_release_sock

if.end17:                                         ; preds = %land.lhs.true13.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %if.end7.if.end17_crit_edge
  %dst_name = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %dst_name to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %15, ptr %dst_name, align 8
  %addr22 = getelementptr inbounds %struct.sockaddr_can, ptr %uaddr, i32 0, i32 2, i32 0, i32 2
  %23 = ptrtoint ptr %addr22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %addr22, align 4
  %da = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 5, i32 4
  %25 = ptrtoint ptr %da to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %da, align 1
  %26 = ptrtoint ptr %pgn.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pgn.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %27)
  %cmp.i53 = icmp ult i32 %27, 262144
  br i1 %cmp.i53, label %if.then26, label %if.end17.if.end31_crit_edge

if.end17.if.end31_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then26:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %pgn30 = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 5, i32 2
  %28 = ptrtoint ptr %pgn30 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %pgn30, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end17.if.end31_crit_edge
  %29 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state, align 4
  %or = or i32 %30, 2
  store i32 %or, ptr %state, align 4
  br label %out_release_sock

out_release_sock:                                 ; preds = %if.end31, %land.lhs.true13.out_release_sock_crit_edge, %if.end5.out_release_sock_crit_edge, %if.end.out_release_sock_crit_edge
  %ret.0 = phi i32 [ 0, %if.end31 ], [ -22, %if.end.out_release_sock_crit_edge ], [ -22, %if.end5.out_release_sock_crit_edge ], [ -13, %land.lhs.true13.out_release_sock_crit_edge ]
  %31 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sk, align 16
  tail call void @release_sock(ptr noundef %32) #11
  br label %cleanup

cleanup:                                          ; preds = %out_release_sock, %land.lhs.true.i.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %if.end2.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_release_sock ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -19, %if.end6.i.cleanup_crit_edge ], [ -22, %if.end2.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -89, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @j1939_sk_getname(ptr nocapture noundef readonly %sock, ptr nocapture noundef writeonly %uaddr, i32 noundef %peer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer)
  %tobool.not = icmp eq i32 %peer, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.failure_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.failure_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %failure

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = call ptr @memset(ptr %uaddr, i32 0, i32 24)
  %5 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 29, ptr %uaddr, align 8
  %ifindex.i = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifindex.i, align 8
  %can_ifindex.i = getelementptr inbounds %struct.sockaddr_can, ptr %uaddr, i32 0, i32 1
  %8 = ptrtoint ptr %can_ifindex.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %can_ifindex.i, align 4
  %pgn.i = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 5, i32 2
  %9 = ptrtoint ptr %pgn.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pgn.i, align 8
  %can_addr.i = getelementptr inbounds %struct.sockaddr_can, ptr %uaddr, i32 0, i32 2
  %pgn2.i = getelementptr inbounds %struct.sockaddr_can, ptr %uaddr, i32 0, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %pgn2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %pgn2.i, align 8
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dst_name.i = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %dst_name.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %dst_name.i, align 8
  %14 = ptrtoint ptr %can_addr.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %can_addr.i, align 8
  %da.i = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 5, i32 4
  br label %j1939_sk_sock2sockaddr_can.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %addr1.i = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %addr1.i, align 8
  %17 = ptrtoint ptr %can_addr.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %can_addr.i, align 8
  %sa.i = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 5, i32 3
  br label %j1939_sk_sock2sockaddr_can.exit

j1939_sk_sock2sockaddr_can.exit:                  ; preds = %if.else.i, %if.then.i
  %.sink.in.i = phi ptr [ %sa.i, %if.else.i ], [ %da.i, %if.then.i ]
  %18 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %.sink.i = load i8, ptr %.sink.in.i, align 1
  %19 = getelementptr inbounds %struct.sockaddr_can, ptr %uaddr, i32 0, i32 2, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink.i, ptr %19, align 4
  br label %failure

failure:                                          ; preds = %j1939_sk_sock2sockaddr_can.exit, %land.lhs.true.failure_crit_edge
  %ret.0 = phi i32 [ 24, %j1939_sk_sock2sockaddr_can.exit ], [ -99, %land.lhs.true.failure_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @j1939_sk_no_ioctlcmd(ptr nocapture noundef readnone %sock, i32 noundef %cmd, i32 noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -515
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @j1939_sk_setsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #11
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp, align 4, !annotation !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 107, i32 %level)
  %cmp.not = icmp eq i32 %level, 107
  br i1 %cmp.not, label %if.end, label %entry.cleanup64_crit_edge

entry.cleanup64_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup64

if.end:                                           ; preds = %entry
  %3 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %optname, label %if.end.cleanup64_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb26
    i32 4, label %sw.bb28
    i32 3, label %sw.bb38
  ]

if.end.cleanup64_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup64

sw.bb:                                            ; preds = %if.end
  %sockptr.coerce.fca.0.extract.i = extractvalue [2 x i32] %optval.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.0.extract.i)
  %retval.0.i = icmp eq i32 %sockptr.coerce.fca.0.extract.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %optlen)
  %cmp3.not = icmp eq i32 %optlen, 0
  %or.cond = or i1 %retval.0.i, %cmp3.not
  br i1 %or.cond, label %sw.bb.if.end21_crit_edge, label %if.then4

sw.bb.if.end21_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then4:                                         ; preds = %sw.bb
  %rem = and i32 %optlen, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp5.not = icmp ne i32 %rem, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %optlen)
  %cmp8 = icmp ugt i32 %optlen, 16384
  %or.cond138 = or i1 %cmp8, %cmp5.not
  br i1 %or.cond138, label %if.then4.cleanup64_crit_edge, label %if.end10

if.then4.cleanup64_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup64

if.end10:                                         ; preds = %if.then4
  %div135 = lshr i32 %optlen, 5
  %4 = tail call ptr @llvm.returnaddress(i32 0) #11
  %5 = ptrtoint ptr %4 to i32
  %call.i = tail call ptr @__kmalloc_track_caller(i32 noundef %optlen, i32 noundef 1060032, i32 noundef %5) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end10.if.then13_crit_edge, label %if.end.i

if.end10.if.then13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.end.i:                                         ; preds = %if.end10
  %call2.i = tail call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %call.i, [2 x i32] %optval.coerce, i32 noundef %optlen) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %memdup_sockptr.exit, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call.i) #11
  br label %if.then13

memdup_sockptr.exit:                              ; preds = %if.end.i
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %memdup_sockptr.exit.if.then13_crit_edge, label %for.cond.preheader

memdup_sockptr.exit.if.then13_crit_edge:          ; preds = %memdup_sockptr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

for.cond.preheader:                               ; preds = %memdup_sockptr.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %optlen)
  %tobool.not152 = icmp ult i32 %optlen, 32
  br i1 %tobool.not152, label %for.cond.preheader.if.end21_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end21_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then13:                                        ; preds = %memdup_sockptr.exit.if.then13_crit_edge, %if.then4.i, %if.end10.if.then13_crit_edge
  %retval.0.i139142 = phi ptr [ %call.i, %memdup_sockptr.exit.if.then13_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end10.if.then13_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.then4.i ]
  %6 = ptrtoint ptr %retval.0.i139142 to i32
  br label %cleanup64

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %c.0154 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %div135, %for.cond.preheader.for.body_crit_edge ]
  %f.0153 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %call.i, %for.cond.preheader.for.body_crit_edge ]
  %name_mask = getelementptr inbounds %struct.j1939_filter, ptr %f.0153, i32 0, i32 1
  %7 = ptrtoint ptr %name_mask to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %name_mask, align 8
  %9 = ptrtoint ptr %f.0153 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %f.0153, align 8
  %and = and i64 %10, %8
  store i64 %and, ptr %f.0153, align 8
  %pgn_mask = getelementptr inbounds %struct.j1939_filter, ptr %f.0153, i32 0, i32 3
  %11 = ptrtoint ptr %pgn_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pgn_mask, align 4
  %pgn = getelementptr inbounds %struct.j1939_filter, ptr %f.0153, i32 0, i32 2
  %13 = ptrtoint ptr %pgn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pgn, align 8
  %and16 = and i32 %14, %12
  store i32 %and16, ptr %pgn, align 8
  %addr_mask = getelementptr inbounds %struct.j1939_filter, ptr %f.0153, i32 0, i32 5
  %15 = ptrtoint ptr %addr_mask to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %addr_mask, align 1
  %addr = getelementptr inbounds %struct.j1939_filter, ptr %f.0153, i32 0, i32 4
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %addr, align 8
  %and18136 = and i8 %18, %16
  store i8 %and18136, ptr %addr, align 8
  %incdec.ptr = getelementptr %struct.j1939_filter, ptr %f.0153, i32 1
  %dec = add nsw i32 %c.0154, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.body.if.end21_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.end21:                                         ; preds = %for.body.if.end21_crit_edge, %for.cond.preheader.if.end21_crit_edge, %sw.bb.if.end21_crit_edge
  %count.1 = phi i32 [ 0, %sw.bb.if.end21_crit_edge ], [ %div135, %for.cond.preheader.if.end21_crit_edge ], [ %div135, %for.body.if.end21_crit_edge ]
  %filters.1 = phi ptr [ null, %sw.bb.if.end21_crit_edge ], [ %call.i, %for.cond.preheader.if.end21_crit_edge ], [ %call.i, %for.body.if.end21_crit_edge ]
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %filters23 = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %filters23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %filters23, align 8
  store ptr %filters.1, ptr %filters23, align 8
  %nfilters = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %nfilters to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %count.1, ptr %nfilters, align 4
  tail call void @release_sock(ptr noundef %1) #11
  tail call void @kfree(ptr noundef %20) #11
  br label %cleanup64

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call27 = tail call fastcc i32 @j1939_sk_setsockopt_flag(ptr noundef %1, [2 x i32] %optval.coerce, i32 noundef %optlen, i32 noundef 4)
  br label %cleanup64

sw.bb28:                                          ; preds = %if.end
  %call29 = tail call fastcc i32 @j1939_sk_setsockopt_flag(ptr noundef %1, [2 x i32] %optval.coerce, i32 noundef %optlen, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %sw.bb28.cleanup64_crit_edge, label %if.end33

sw.bb28.cleanup64_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup64

if.end33:                                         ; preds = %sw.bb28
  %state = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state, align 4
  %and34 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.then36, label %if.end33.cleanup64_crit_edge

if.end33.cleanup64_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup64

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %sk_error_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 7
  tail call void @skb_queue_purge(ptr noundef %sk_error_queue) #11
  br label %cleanup64

sw.bb38:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp39.not = icmp eq i32 %optlen, 4
  br i1 %cmp39.not, label %if.end42, label %sw.bb38.cleanup64_crit_edge

sw.bb38.cleanup64_crit_edge:                      ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup64

if.end42:                                         ; preds = %sw.bb38
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %24 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end42
  tail call void @__might_fault(ptr noundef nonnull @.str.18, i32 noundef 156) #11
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i.i, label %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge:      ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end8.i.i.i.i
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %24, i32 4, i32 -1226833920) #15, !srcloc !79
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !69

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp, i32 noundef 4) #11
  %26 = call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #7, !srcloc !80
  %and.i.i.i.i.i.i = and i32 %28, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #11, !srcloc !81
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !82
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tmp, ptr noundef %24, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #11, !srcloc !81
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end46thread-pre-split, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !69

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i.i.i149 = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 4, %res.0.i.i.i.i149
  %add.ptr.i.i.i.i = getelementptr i8, ptr %tmp, i32 %sub.i.i.i.i
  %29 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i149)
  br label %cleanup64

if.end.i.i:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %24, align 1
  %32 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %tmp, align 4
  br label %if.end46

if.end46thread-pre-split:                         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr = load i32, ptr %tmp, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.end46thread-pre-split, %if.end.i.i
  %34 = phi i32 [ %.pr, %if.end46thread-pre-split ], [ %31, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %34)
  %35 = icmp ugt i32 %34, 7
  br i1 %35, label %if.end46.cleanup64_crit_edge, label %if.end52

if.end46.cleanup64_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup64

if.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp53 = icmp ult i32 %34, 2
  br i1 %cmp53, label %land.lhs.true55, label %if.end52.if.end58_crit_edge

if.end52.if.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

land.lhs.true55:                                  ; preds = %if.end52
  %call56 = call zeroext i1 @capable(i32 noundef 12) #11
  br i1 %call56, label %land.lhs.true55.if.end58_crit_edge, label %land.lhs.true55.cleanup64_crit_edge

land.lhs.true55.cleanup64_crit_edge:              ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup64

land.lhs.true55.if.end58_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.end58:                                         ; preds = %land.lhs.true55.if.end58_crit_edge, %if.end52.if.end58_crit_edge
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %36 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tmp, align 4
  %conv.i = and i32 %37, 255
  %sub.i = sub nsw i32 7, %conv.i
  %sk_priority = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 33
  %38 = ptrtoint ptr %sk_priority to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub.i, ptr %sk_priority, align 4
  call void @release_sock(ptr noundef %1) #11
  br label %cleanup64

cleanup64:                                        ; preds = %if.end58, %land.lhs.true55.cleanup64_crit_edge, %if.end46.cleanup64_crit_edge, %if.then11.i.i.i.i, %sw.bb38.cleanup64_crit_edge, %if.then36, %if.end33.cleanup64_crit_edge, %sw.bb28.cleanup64_crit_edge, %sw.bb26, %if.end21, %if.then13, %if.then4.cleanup64_crit_edge, %if.end.cleanup64_crit_edge, %entry.cleanup64_crit_edge
  %retval.1 = phi i32 [ 0, %if.end58 ], [ %call27, %sw.bb26 ], [ 0, %if.end21 ], [ -22, %entry.cleanup64_crit_edge ], [ %call29, %sw.bb28.cleanup64_crit_edge ], [ %call29, %if.then36 ], [ %call29, %if.end33.cleanup64_crit_edge ], [ -22, %sw.bb38.cleanup64_crit_edge ], [ -33, %if.end46.cleanup64_crit_edge ], [ -1, %land.lhs.true55.cleanup64_crit_edge ], [ -92, %if.end.cleanup64_crit_edge ], [ -14, %if.then11.i.i.i.i ], [ -22, %if.then4.cleanup64_crit_edge ], [ %6, %if.then13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #11
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @j1939_sk_getsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #11
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 107, i32 %level)
  %cmp.not = icmp eq i32 %level, 107
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 752) #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !80
  %and.i = and i32 %5, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !82
  %6 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #11, !srcloc !83
  %asmresult = extractvalue { i32, i32 } %6, 0
  %asmresult4 = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #11, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult4)
  %cmp8 = icmp slt i32 %asmresult4, 0
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %7 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %optname, label %if.end10.no_copy_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb13
    i32 3, label %sw.bb18
  ]

if.end10.no_copy_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_copy

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %state = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %and = lshr i32 %9, 2
  %and.lobit = and i32 %and, 1
  %10 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and.lobit, ptr %tmp, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %state14 = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %state14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state14, align 4
  %and15 = lshr i32 %12, 3
  %and15.lobit = and i32 %and15, 1
  %13 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and15.lobit, ptr %tmp, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %sk_priority = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 33
  %14 = ptrtoint ptr %sk_priority to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sk_priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %15)
  %cmp.i = icmp ult i32 %15, 7
  %phi.cast.i = sub i32 7, %15
  %16 = and i32 %phi.cast.i, 255
  %conv = select i1 %cmp.i, i32 %16, i32 0
  %17 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %tmp, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb13, %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %asmresult4)
  %cmp21 = icmp ult i32 %asmresult4, 4
  br i1 %cmp21, label %sw.epilog.no_copy_crit_edge, label %if.else

sw.epilog.no_copy_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_copy

if.else:                                          ; preds = %sw.epilog
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 779) #11
  %18 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i58 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i58 to ptr
  %cpu_domain.i.i59 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i59) #7, !srcloc !80
  %and.i60 = and i32 %20, -13
  %or.i61 = or i32 %and.i60, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i61) #11, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !82
  %21 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 4, i32 -1226833921) #11, !srcloc !84
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #11, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool33.not = icmp eq i32 %21, 0
  br i1 %tobool33.not, label %if.then.i, label %if.else.no_copy_crit_edge

if.else.no_copy_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_copy

if.then.i:                                        ; preds = %if.else
  tail call void @__might_fault(ptr noundef nonnull @.str.18, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.no_copy_crit_edge, label %if.end.i.i

if.then.i.no_copy_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_copy

if.end.i.i:                                       ; preds = %if.then.i
  %22 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 4, i32 -1226833920) #15, !srcloc !85
  %asmresult.i.i = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %copy_to_user.exit, label %if.end.i.i.no_copy_crit_edge

if.end.i.i.no_copy_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_copy

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tmp, i32 noundef 4) #11
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %tmp, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool37.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool37.not, i32 0, i32 -14
  br label %no_copy

no_copy:                                          ; preds = %copy_to_user.exit, %if.end.i.i.no_copy_crit_edge, %if.then.i.no_copy_crit_edge, %if.else.no_copy_crit_edge, %sw.epilog.no_copy_crit_edge, %if.end10.no_copy_crit_edge
  %ret.0 = phi i32 [ -92, %if.end10.no_copy_crit_edge ], [ -14, %sw.epilog.no_copy_crit_edge ], [ -14, %if.else.no_copy_crit_edge ], [ -14, %if.then.i.no_copy_crit_edge ], [ -14, %if.end.i.i.no_copy_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @release_sock(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %no_copy, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %no_copy ], [ -22, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @j1939_sk_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %size) #0 align 64 {
entry:
  %ret.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %state = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.sendmsg_done_crit_edge, label %if.end

entry.sendmsg_done_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sendmsg_done

if.end:                                           ; preds = %entry
  %priv3 = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv3, align 8
  %ifindex4 = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %ifindex4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifindex4, align 8
  %addr = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool5.not = icmp eq i64 %9, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %sa = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 5, i32 3
  %10 = ptrtoint ptr %sa to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sa, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp = icmp eq i8 %11, -1
  br i1 %cmp, label %land.lhs.true.sendmsg_done_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true.sendmsg_done_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %sendmsg_done

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msg, align 8
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %14 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_namelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %15)
  %cmp14 = icmp ult i32 %15, 24
  br i1 %cmp14, label %if.then11.sendmsg_done_crit_edge, label %if.end17

if.then11.sendmsg_done_crit_edge:                 ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %sendmsg_done

if.end17:                                         ; preds = %if.then11
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %13, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 29, i16 %17)
  %cmp19.not = icmp eq i16 %17, 29
  br i1 %cmp19.not, label %if.end22, label %if.end17.sendmsg_done_crit_edge

if.end17.sendmsg_done_crit_edge:                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %sendmsg_done

if.end22:                                         ; preds = %if.end17
  %can_ifindex = getelementptr inbounds %struct.sockaddr_can, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %can_ifindex to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %can_ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool23.not = icmp eq i32 %19, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %7)
  %cmp26.not = icmp eq i32 %19, %7
  %or.cond = select i1 %tobool23.not, i1 true, i1 %cmp26.not
  br i1 %or.cond, label %if.end29, label %if.end22.sendmsg_done_crit_edge

if.end22.sendmsg_done_crit_edge:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %sendmsg_done

if.end29:                                         ; preds = %if.end22
  %can_addr = getelementptr inbounds %struct.sockaddr_can, ptr %13, i32 0, i32 2
  %pgn = getelementptr inbounds %struct.sockaddr_can, ptr %13, i32 0, i32 2, i32 0, i32 1
  %20 = ptrtoint ptr %pgn to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pgn, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %21)
  %cmp.i = icmp ult i32 %21, 262144
  br i1 %cmp.i, label %land.lhs.true32, label %if.end29.if.end37_crit_edge

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

land.lhs.true32:                                  ; preds = %if.end29
  %and.i.i = and i32 %21, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 61440, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 61440
  %and.i = and i32 %21, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %retval.0.i = or i1 %cmp.i.not.i, %tobool.not.i
  br i1 %retval.0.i, label %land.lhs.true32.if.end37_crit_edge, label %land.lhs.true32.sendmsg_done_crit_edge

land.lhs.true32.sendmsg_done_crit_edge:           ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #13
  br label %sendmsg_done

land.lhs.true32.if.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.end37:                                         ; preds = %land.lhs.true32.if.end37_crit_edge, %if.end29.if.end37_crit_edge
  %22 = ptrtoint ptr %can_addr to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %can_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool39.not = icmp eq i64 %23, 0
  br i1 %tobool39.not, label %land.lhs.true40, label %if.end37.if.end61_crit_edge

if.end37.if.end61_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

land.lhs.true40:                                  ; preds = %if.end37
  %addr42 = getelementptr inbounds %struct.sockaddr_can, ptr %13, i32 0, i32 2, i32 0, i32 2
  %24 = ptrtoint ptr %addr42 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %addr42, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %cmp44 = icmp eq i8 %25, -1
  br i1 %cmp44, label %land.lhs.true46, label %land.lhs.true40.if.end61_crit_edge

land.lhs.true40.if.end61_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

land.lhs.true46:                                  ; preds = %land.lhs.true40
  %26 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %29 = and i32 %28, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not = icmp eq i32 %29, 0
  br i1 %tobool.i.not, label %land.lhs.true46.sendmsg_done_crit_edge, label %land.lhs.true46.if.end61_crit_edge

land.lhs.true46.if.end61_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

land.lhs.true46.sendmsg_done_crit_edge:           ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #13
  br label %sendmsg_done

if.else:                                          ; preds = %if.end9
  %dst_name = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 5, i32 1
  %30 = ptrtoint ptr %dst_name to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %dst_name, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %tobool51.not = icmp eq i64 %31, 0
  br i1 %tobool51.not, label %land.lhs.true52, label %if.else.if.end61_crit_edge

if.else.if.end61_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

land.lhs.true52:                                  ; preds = %if.else
  %da = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 5, i32 4
  %32 = ptrtoint ptr %da to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %da, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %33)
  %cmp55 = icmp eq i8 %33, -1
  br i1 %cmp55, label %land.lhs.true57, label %land.lhs.true52.if.end61_crit_edge

land.lhs.true52.if.end61_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

land.lhs.true57:                                  ; preds = %land.lhs.true52
  %34 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %37 = and i32 %36, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i91.not = icmp eq i32 %37, 0
  br i1 %tobool.i91.not, label %land.lhs.true57.sendmsg_done_crit_edge, label %land.lhs.true57.if.end61_crit_edge

land.lhs.true57.if.end61_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

land.lhs.true57.sendmsg_done_crit_edge:           ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #13
  br label %sendmsg_done

if.end61:                                         ; preds = %land.lhs.true57.if.end61_crit_edge, %land.lhs.true52.if.end61_crit_edge, %if.else.if.end61_crit_edge, %land.lhs.true46.if.end61_crit_edge, %land.lhs.true40.if.end61_crit_edge, %if.end37.if.end61_crit_edge
  %sk_session_queue_lock.i.i = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %sk_session_queue_lock.i.i) #11
  %sk_session_queue.i.i = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 12
  %38 = ptrtoint ptr %sk_session_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %sk_session_queue.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %39, %sk_session_queue.i.i
  br i1 %cmp.i.not.i.i, label %if.end61.j1939_sk_get_incomplete_session.exit.thread.i_crit_edge, label %if.then.i.i

if.end61.j1939_sk_get_incomplete_session.exit.thread.i_crit_edge: ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %j1939_sk_get_incomplete_session.exit.thread.i

if.then.i.i:                                      ; preds = %if.end61
  %prev.i.i = getelementptr inbounds %struct.j1939_sock, ptr %1, i32 0, i32 12, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i, align 4
  %total_queued_size.i.i = getelementptr i8, ptr %41, i32 132
  %42 = ptrtoint ptr %total_queued_size.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %total_queued_size.i.i, align 8
  %total_message_size.i.i = getelementptr i8, ptr %41, i32 128
  %44 = ptrtoint ptr %total_message_size.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %total_message_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp.i.i = icmp eq i32 %43, %45
  br i1 %cmp.i.i, label %if.then.i.i.j1939_sk_get_incomplete_session.exit.thread.i_crit_edge, label %j1939_sk_get_incomplete_session.exit.i

if.then.i.i.j1939_sk_get_incomplete_session.exit.thread.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %j1939_sk_get_incomplete_session.exit.thread.i

j1939_sk_get_incomplete_session.exit.thread.i:    ; preds = %if.then.i.i.j1939_sk_get_incomplete_session.exit.thread.i_crit_edge, %if.end61.j1939_sk_get_incomplete_session.exit.thread.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sk_session_queue_lock.i.i) #11
  br label %if.end.i

j1939_sk_get_incomplete_session.exit.i:           ; preds = %if.then.i.i
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 -12
  tail call void @j1939_session_get(ptr noundef %add.ptr.i.i) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %sk_session_queue_lock.i.i) #11
  %tobool.not.i92 = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i92, label %j1939_sk_get_incomplete_session.exit.i.if.end.i_crit_edge, label %land.lhs.true.i

j1939_sk_get_incomplete_session.exit.i.if.end.i_crit_edge: ; preds = %j1939_sk_get_incomplete_session.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %j1939_sk_get_incomplete_session.exit.i
  %46 = ptrtoint ptr %total_message_size.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %total_message_size.i.i, align 4
  %48 = ptrtoint ptr %total_queued_size.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %total_queued_size.i.i, align 8
  %add.i = add i32 %49, %size
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %add.i)
  %cmp.not.i = icmp eq i32 %47, %add.i
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @j1939_session_put(ptr noundef nonnull %add.ptr.i.i) #11
  br label %sendmsg_done

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %j1939_sk_get_incomplete_session.exit.i.if.end.i_crit_edge, %j1939_sk_get_incomplete_session.exit.thread.i
  %session.0.i96.i = phi ptr [ null, %j1939_sk_get_incomplete_session.exit.thread.i ], [ %add.ptr.i.i, %land.lhs.true.i.if.end.i_crit_edge ], [ null, %j1939_sk_get_incomplete_session.exit.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool2.not134.i = icmp eq i32 %size, 0
  br i1 %tobool2.not134.i, label %if.end.i.sw.epilog.i_crit_edge, label %while.body.lr.ph.i

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

while.body.lr.ph.i:                               ; preds = %if.end.i
  %ndev.i = getelementptr inbounds %struct.j1939_priv, ptr %5, i32 0, i32 2
  %msg_flags.i.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %msg_iter.i.i.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %sk_priority.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 33
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %todo_size.0136.i = phi i32 [ %size, %while.body.lr.ph.i ], [ %sub.i, %cleanup.i.while.body.i_crit_edge ]
  %session.0135.i = phi ptr [ %session.0.i96.i, %while.body.lr.ph.i ], [ %session.1.i, %cleanup.i.while.body.i_crit_edge ]
  %50 = call i32 @llvm.umin.i32(i32 %todo_size.0136.i, i32 1785) #11
  %51 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ndev.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i) #11
  %53 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %ret.i.i, align 4, !annotation !78
  %add1.i.i = add nuw nsw i32 %50, 24
  %54 = ptrtoint ptr %msg_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %msg_flags.i.i, align 4
  %and.i.i93 = and i32 %55, 64
  %call2.i.i = call ptr @sock_alloc_send_skb(ptr noundef %1, i32 noundef %add1.i.i, i32 noundef %and.i.i93, ptr noundef nonnull %ret.i.i) #11
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %while.body.i.j1939_sk_alloc_skb.exit.i_crit_edge, label %if.end.i.i

while.body.i.j1939_sk_alloc_skb.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %j1939_sk_alloc_skb.exit.i

if.end.i.i:                                       ; preds = %while.body.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i.i, i32 0, i32 19
  %56 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %57, i32 16
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i.i, i32 0, i32 16
  %58 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %59, i32 16
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 17
  %60 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ifindex.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i.i, i32 0, i32 18
  %62 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %head.i.i.i, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %61, ptr %63, align 8
  %65 = load ptr, ptr %head.i.i.i, align 8
  %skbcnt.i.i = getelementptr inbounds %struct.can_skb_priv, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %skbcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %skbcnt.i.i, align 4
  %67 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %67, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i.i, align 4
  %68 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %68, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i.i, align 8
  %call6.i.i = call ptr @skb_put(ptr noundef nonnull %call2.i.i, i32 noundef %50) #11
  call void @__check_object_size(ptr noundef %call6.i.i, i32 noundef %50, i1 noundef zeroext false) #11
  %call3.i.i.i.i.i = call i32 @_copy_from_iter(ptr noundef %call6.i.i, i32 noundef %50, ptr noundef %msg_iter.i.i.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i.i.i.i, i32 %50)
  %cmp.i.i.i.i = icmp eq i32 %call3.i.i.i.i.i, %50
  br i1 %cmp.i.i.i.i, label %if.end9.i.i, label %free_skb.i.i, !prof !69

if.end9.i.i:                                      ; preds = %if.end.i.i
  %69 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %ret.i.i, align 4
  %70 = getelementptr inbounds %struct.anon.45, ptr %call2.i.i, i32 0, i32 2
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %52, ptr %70, align 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i.i, i32 0, i32 3
  %72 = call ptr @memset(ptr %cb.i.i.i, i32 0, i32 48)
  %addr.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i.i, i32 0, i32 3, i32 16
  %73 = call ptr @memcpy(ptr %addr.i.i, ptr %addr, i32 24)
  %74 = ptrtoint ptr %sk_priority.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sk_priority.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %75)
  %cmp.i.i.i = icmp ult i32 %75, 7
  %76 = trunc i32 %75 to i8
  %phi.cast.i.i.i = sub i8 7, %76
  %cond.i71.i.i = select i1 %cmp.i.i.i, i8 %phi.cast.i.i.i, i8 0
  %priority.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i.i, i32 0, i32 3, i32 41
  %77 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %cond.i71.i.i, ptr %priority.i.i, align 1
  %78 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %msg, align 8
  %tobool13.not.i.i = icmp eq ptr %79, null
  br i1 %tobool13.not.i.i, label %if.end9.i.i.j1939_sk_alloc_skb.exit.i_crit_edge, label %if.then14.i.i

if.end9.i.i.j1939_sk_alloc_skb.exit.i_crit_edge:  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %j1939_sk_alloc_skb.exit.i

if.then14.i.i:                                    ; preds = %if.end9.i.i
  %can_addr.i.i = getelementptr inbounds %struct.sockaddr_can, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %can_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %can_addr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %81)
  %tobool17.not.i.i = icmp eq i64 %81, 0
  br i1 %tobool17.not.i.i, label %lor.lhs.false.i.i, label %if.then14.i.i.if.then22.i.i_crit_edge

if.then14.i.i.if.then22.i.i_crit_edge:            ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22.i.i

lor.lhs.false.i.i:                                ; preds = %if.then14.i.i
  %addr19.i.i = getelementptr inbounds %struct.sockaddr_can, ptr %79, i32 0, i32 2, i32 0, i32 2
  %82 = ptrtoint ptr %addr19.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %addr19.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %83)
  %cmp20.not.i.i = icmp eq i8 %83, -1
  br i1 %cmp20.not.i.i, label %lor.lhs.false.i.i.if.end29.i.i_crit_edge, label %lor.lhs.false.i.i.if.then22.i.i_crit_edge

lor.lhs.false.i.i.if.then22.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22.i.i

lor.lhs.false.i.i.if.end29.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.i.i

if.then22.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then22.i.i_crit_edge, %if.then14.i.i.if.then22.i.i_crit_edge
  %dst_name.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i.i, i32 0, i32 3, i32 24
  %84 = ptrtoint ptr %dst_name.i.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %81, ptr %dst_name.i.i, align 8
  %addr27.i.i = getelementptr inbounds %struct.sockaddr_can, ptr %79, i32 0, i32 2, i32 0, i32 2
  %85 = ptrtoint ptr %addr27.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %addr27.i.i, align 4
  %da.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i.i, i32 0, i32 3, i32 37
  %87 = ptrtoint ptr %da.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %da.i.i, align 1
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then22.i.i, %lor.lhs.false.i.i.if.end29.i.i_crit_edge
  %pgn.i.i = getelementptr inbounds %struct.sockaddr_can, ptr %79, i32 0, i32 2, i32 0, i32 1
  %88 = ptrtoint ptr %pgn.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pgn.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %89)
  %cmp.i72.i.i = icmp ult i32 %89, 262144
  br i1 %cmp.i72.i.i, label %if.then32.i.i, label %if.end29.i.i.j1939_sk_alloc_skb.exit.i_crit_edge

if.end29.i.i.j1939_sk_alloc_skb.exit.i_crit_edge: ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %j1939_sk_alloc_skb.exit.i

if.then32.i.i:                                    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pgn36.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i.i, i32 0, i32 3, i32 32
  %90 = ptrtoint ptr %pgn36.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %pgn36.i.i, align 8
  br label %j1939_sk_alloc_skb.exit.i

free_skb.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @iov_iter_revert(ptr noundef %msg_iter.i.i.i, i32 noundef %call3.i.i.i.i.i) #11
  %91 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -14, ptr %ret.i.i, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %call2.i.i, i32 noundef 0) #11
  br label %j1939_sk_alloc_skb.exit.i

j1939_sk_alloc_skb.exit.i:                        ; preds = %free_skb.i.i, %if.then32.i.i, %if.end29.i.i.j1939_sk_alloc_skb.exit.i_crit_edge, %if.end9.i.i.j1939_sk_alloc_skb.exit.i_crit_edge, %while.body.i.j1939_sk_alloc_skb.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call2.i.i, %if.end29.i.i.j1939_sk_alloc_skb.exit.i_crit_edge ], [ %call2.i.i, %if.then32.i.i ], [ %call2.i.i, %if.end9.i.i.j1939_sk_alloc_skb.exit.i_crit_edge ], [ null, %while.body.i.j1939_sk_alloc_skb.exit.i_crit_edge ], [ null, %free_skb.i.i ]
  %92 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %storemerge.i.i = load i32, ptr %ret.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i) #11
  %93 = zext i32 %storemerge.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %storemerge.i.i, label %j1939_sk_alloc_skb.exit.i.sw.epilog.i_crit_edge [
    i32 0, label %if.end7.i
    i32 -11, label %j1939_sk_alloc_skb.exit.i.sw.bb34.i_crit_edge
    i32 -512, label %sw.bb34.i.loopexit
  ]

j1939_sk_alloc_skb.exit.i.sw.bb34.i_crit_edge:    ; preds = %j1939_sk_alloc_skb.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb34.i

j1939_sk_alloc_skb.exit.i.sw.epilog.i_crit_edge:  ; preds = %j1939_sk_alloc_skb.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end7.i:                                        ; preds = %j1939_sk_alloc_skb.exit.i
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i.i, i32 0, i32 3
  %tobool9.not.i = icmp eq ptr %session.0135.i, null
  br i1 %tobool9.not.i, label %if.then10.i, label %if.else23.i

if.then10.i:                                      ; preds = %if.end7.i
  %94 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %cb.i.i, align 8
  %call11.i = call ptr @j1939_tp_send(ptr noundef %5, ptr noundef %retval.0.i.i, i32 noundef %size) #11
  %cmp.i87.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87.i, label %kfree_skb.i, label %if.end15.i

if.end15.i:                                       ; preds = %if.then10.i
  %sk.i.i = getelementptr inbounds %struct.j1939_session, ptr %call11.i, i32 0, i32 4
  %95 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %sk.i.i, align 8
  %sk_session_queue_lock.i88.i = getelementptr inbounds %struct.j1939_sock, ptr %96, i32 0, i32 11
  call void @_raw_spin_lock_bh(ptr noundef %sk_session_queue_lock.i88.i) #11
  %sk_session_queue.i89.i = getelementptr inbounds %struct.j1939_sock, ptr %96, i32 0, i32 12
  %97 = ptrtoint ptr %sk_session_queue.i89.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile ptr, ptr %sk_session_queue.i89.i, align 4
  call void @j1939_session_get(ptr noundef %call11.i) #11
  %sk_session_queue_entry.i.i = getelementptr inbounds %struct.j1939_session, ptr %call11.i, i32 0, i32 2
  %prev.i.i.i = getelementptr inbounds %struct.j1939_sock, ptr %96, i32 0, i32 12, i32 1
  %99 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %sk_session_queue_entry.i.i, ptr noundef %100, ptr noundef %sk_session_queue.i89.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end15.i.j1939_sk_queue_session.exit.i_crit_edge

if.end15.i.j1939_sk_queue_session.exit.i_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %j1939_sk_queue_session.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %101 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %sk_session_queue_entry.i.i, ptr %prev.i.i.i, align 4
  %102 = ptrtoint ptr %sk_session_queue_entry.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %sk_session_queue.i89.i, ptr %sk_session_queue_entry.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.j1939_session, ptr %call11.i, i32 0, i32 2, i32 1
  %103 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %100, ptr %prev3.i.i.i.i, align 4
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %sk_session_queue_entry.i.i, ptr %100, align 4
  br label %j1939_sk_queue_session.exit.i

j1939_sk_queue_session.exit.i:                    ; preds = %if.end.i.i.i.i, %if.end15.i.j1939_sk_queue_session.exit.i_crit_edge
  %cmp.i.i90.i = icmp eq ptr %98, %sk_session_queue.i89.i
  call void @_raw_spin_unlock_bh(ptr noundef %sk_session_queue_lock.i88.i) #11
  %skb_pending.i.i.i = getelementptr inbounds %struct.j1939_sock, ptr %96, i32 0, i32 9
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skb_pending.i.i.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %skb_pending.i.i.i, i32 1, i32 3, i32 1) #11
  %105 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skb_pending.i.i.i, ptr %skb_pending.i.i.i, i32 1, ptr elementtype(i32) %skb_pending.i.i.i) #11, !srcloc !86
  br i1 %cmp.i.i90.i, label %if.then17.i, label %j1939_sk_queue_session.exit.i.cleanup.i_crit_edge

j1939_sk_queue_session.exit.i.cleanup.i_crit_edge: ; preds = %j1939_sk_queue_session.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.then17.i:                                      ; preds = %j1939_sk_queue_session.exit.i
  %call18.i = call i32 @j1939_session_activate(ptr noundef %call11.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %while.end.thread113.i

if.then20.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @j1939_tp_schedule_txtimer(ptr noundef %call11.i, i32 noundef 0) #11
  br label %cleanup.i

while.end.thread113.i:                            ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  %err.i = getelementptr inbounds %struct.j1939_session, ptr %call11.i, i32 0, i32 14
  %106 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -16, ptr %err.i, align 8
  call fastcc void @j1939_sk_queue_drop_all(ptr noundef %5, ptr noundef %1, i32 noundef 16) #11
  br label %sw.epilog.i

if.else23.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %total_queued_size24.i = getelementptr inbounds %struct.j1939_session, ptr %session.0135.i, i32 0, i32 12
  %107 = ptrtoint ptr %total_queued_size24.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %total_queued_size24.i, align 8
  %109 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %cb.i.i, align 8
  call void @j1939_session_skb_queue(ptr noundef nonnull %session.0135.i, ptr noundef %retval.0.i.i) #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else23.i, %if.then20.i, %j1939_sk_queue_session.exit.i.cleanup.i_crit_edge
  %session.1.i = phi ptr [ %session.0135.i, %if.else23.i ], [ %call11.i, %if.then20.i ], [ %call11.i, %j1939_sk_queue_session.exit.i.cleanup.i_crit_edge ]
  %sub.i = sub i32 %todo_size.0136.i, %50
  %total_queued_size27.i = getelementptr inbounds %struct.j1939_session, ptr %session.1.i, i32 0, i32 12
  %110 = ptrtoint ptr %total_queued_size27.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %total_queued_size27.i, align 8
  %add28.i = add i32 %111, %50
  store i32 %add28.i, ptr %total_queued_size27.i, align 8
  %tobool2.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool2.not.i, label %cleanup.i.sw.epilog.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

cleanup.i.sw.epilog.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb34.i.loopexit:                               ; preds = %j1939_sk_alloc_skb.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb34.i

sw.bb34.i:                                        ; preds = %sw.bb34.i.loopexit, %j1939_sk_alloc_skb.exit.i.sw.bb34.i_crit_edge
  %ret.3.i = phi i32 [ -4, %sw.bb34.i.loopexit ], [ -11, %j1939_sk_alloc_skb.exit.i.sw.bb34.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %todo_size.0136.i, i32 %size)
  %cmp35.not.i = icmp eq i32 %todo_size.0136.i, %size
  %sub37.i = sub i32 %size, %todo_size.0136.i
  %spec.select.i = select i1 %cmp35.not.i, i32 %ret.3.i, i32 %sub37.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb34.i, %cleanup.i.sw.epilog.i_crit_edge, %while.end.thread113.i, %j1939_sk_alloc_skb.exit.i.sw.epilog.i_crit_edge, %if.end.i.sw.epilog.i_crit_edge
  %session.3111.i = phi ptr [ %call11.i, %while.end.thread113.i ], [ %session.0135.i, %sw.bb34.i ], [ %session.0.i96.i, %if.end.i.sw.epilog.i_crit_edge ], [ %session.0135.i, %j1939_sk_alloc_skb.exit.i.sw.epilog.i_crit_edge ], [ %session.1.i, %cleanup.i.sw.epilog.i_crit_edge ]
  %ret.4.i = phi i32 [ -16, %while.end.thread113.i ], [ %spec.select.i, %sw.bb34.i ], [ 0, %if.end.i.sw.epilog.i_crit_edge ], [ %storemerge.i.i, %j1939_sk_alloc_skb.exit.i.sw.epilog.i_crit_edge ], [ %size, %cleanup.i.sw.epilog.i_crit_edge ]
  %tobool39.not.i = icmp eq ptr %session.3111.i, null
  br i1 %tobool39.not.i, label %sw.epilog.i.sendmsg_done_crit_edge, label %if.then40.i

sw.epilog.i.sendmsg_done_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sendmsg_done

if.then40.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @j1939_session_put(ptr noundef nonnull %session.3111.i) #11
  br label %sendmsg_done

kfree_skb.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  %112 = ptrtoint ptr %call11.i to i32
  call void @kfree_skb_reason(ptr noundef %retval.0.i.i, i32 noundef 0) #11
  br label %sendmsg_done

sendmsg_done:                                     ; preds = %kfree_skb.i, %if.then40.i, %sw.epilog.i.sendmsg_done_crit_edge, %if.then.i, %land.lhs.true57.sendmsg_done_crit_edge, %land.lhs.true46.sendmsg_done_crit_edge, %land.lhs.true32.sendmsg_done_crit_edge, %if.end22.sendmsg_done_crit_edge, %if.end17.sendmsg_done_crit_edge, %if.then11.sendmsg_done_crit_edge, %land.lhs.true.sendmsg_done_crit_edge, %entry.sendmsg_done_crit_edge
  %ret.1 = phi i32 [ -77, %entry.sendmsg_done_crit_edge ], [ -77, %land.lhs.true.sendmsg_done_crit_edge ], [ -13, %land.lhs.true57.sendmsg_done_crit_edge ], [ -5, %if.then.i ], [ %112, %kfree_skb.i ], [ %ret.4.i, %if.then40.i ], [ %ret.4.i, %sw.epilog.i.sendmsg_done_crit_edge ], [ -13, %land.lhs.true46.sendmsg_done_crit_edge ], [ -22, %land.lhs.true32.sendmsg_done_crit_edge ], [ -77, %if.end22.sendmsg_done_crit_edge ], [ -22, %if.end17.sendmsg_done_crit_edge ], [ -22, %if.then11.sendmsg_done_crit_edge ]
  %113 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %sk1, align 16
  call void @release_sock(ptr noundef %114) #11
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @j1939_sk_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #11
  %2 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ret, align 4
  %and = and i32 %flags, -8257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @sock_recv_errqueue(ptr noundef %1, ptr noundef %msg, i32 noundef %size, i32 noundef 107, i32 noundef 4) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call ptr @skb_recv_datagram(ptr noundef %1, i32 noundef %flags, i32 noundef 0, ptr noundef nonnull %ret) #11
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ret, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %len = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %size)
  %cmp = icmp ugt i32 %6, %size
  br i1 %cmp, label %if.then11, label %if.end10.if.end13_crit_edge

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then11:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %7 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_flags, align 4
  %or = or i32 %8, 32
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end10.if.end13_crit_edge
  %size.addr.0 = phi i32 [ %size, %if.then11 ], [ %6, %if.end10.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0)
  %cmp9.i.i.i = icmp slt i32 %size.addr.0, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end13
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge, label %if.then27.i.i.i, !prof !69

land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge:    ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %memcpy_to_msg.exit

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %memcpy_to_msg.exit

if.then.i.i.i.i:                                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %data = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  call void @__check_object_size(ptr noundef %10, i32 noundef %size.addr.0, i1 noundef zeroext true) #11
  %call3.i.i = call i32 @_copy_to_iter(ptr noundef %10, i32 noundef %size.addr.0, ptr noundef %msg_iter.i) #11
  br label %memcpy_to_msg.exit

memcpy_to_msg.exit:                               ; preds = %if.then.i.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i.i.i ], [ 0, %if.then27.i.i.i ], [ 0, %land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %size.addr.0)
  %cmp.i = icmp eq i32 %retval.0.i.i, %size.addr.0
  %cond.i = select i1 %cmp.i, i32 0, i32 -14
  %11 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond.i, ptr %ret, align 4
  br i1 %cmp.i, label %if.end17, label %if.then16

if.then16:                                        ; preds = %memcpy_to_msg.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @skb_free_datagram(ptr noundef %1, ptr noundef nonnull %call7) #11
  %12 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ret, align 4
  br label %cleanup

if.end17:                                         ; preds = %memcpy_to_msg.exit
  %addr = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 3, i32 16
  %da = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 3, i32 37
  %14 = ptrtoint ptr %da to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %da, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp.i94.not = icmp eq i8 %15, -1
  br i1 %cmp.i94.not, label %if.end17.if.end24_crit_edge, label %if.then20

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 107, i32 noundef 1, i32 noundef 1, ptr noundef %da) #11
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end17.if.end24_crit_edge
  %dst_name = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 3, i32 24
  %16 = ptrtoint ptr %dst_name to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %dst_name, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool26.not = icmp eq i64 %17, 0
  br i1 %tobool26.not, label %if.end24.if.end31_crit_edge, label %if.then27

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %call30 = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 107, i32 noundef 2, i32 noundef 8, ptr noundef %dst_name) #11
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end24.if.end31_crit_edge
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 3, i32 41
  %call32 = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 107, i32 noundef 3, i32 noundef 1, ptr noundef %priority) #11
  %18 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %msg, align 8
  %tobool33.not = icmp eq ptr %19, null
  br i1 %tobool33.not, label %if.end31.if.end45_crit_edge, label %if.then34

if.end31.if.end45_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %20 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 24, ptr %msg_namelen, align 4
  %21 = getelementptr inbounds i8, ptr %19, i32 2
  %22 = call ptr @memset(ptr %21, i32 0, i32 22)
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 29, ptr %19, align 8
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 15, i32 0, i32 7
  %24 = ptrtoint ptr %skb_iif to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %skb_iif, align 8
  %can_ifindex = getelementptr inbounds %struct.sockaddr_can, ptr %19, i32 0, i32 1
  %26 = ptrtoint ptr %can_ifindex to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %can_ifindex, align 4
  %27 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %addr, align 8
  %can_addr = getelementptr inbounds %struct.sockaddr_can, ptr %19, i32 0, i32 2
  %29 = ptrtoint ptr %can_addr to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %can_addr, align 8
  %sa = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 3, i32 36
  %30 = ptrtoint ptr %sa to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sa, align 4
  %addr41 = getelementptr inbounds %struct.sockaddr_can, ptr %19, i32 0, i32 2, i32 0, i32 2
  %32 = ptrtoint ptr %addr41 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %addr41, align 4
  %pgn = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 3, i32 32
  %33 = ptrtoint ptr %pgn to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pgn, align 8
  %pgn44 = getelementptr inbounds %struct.sockaddr_can, ptr %19, i32 0, i32 2, i32 0, i32 1
  %35 = ptrtoint ptr %pgn44 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %pgn44, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then34, %if.end31.if.end45_crit_edge
  %36 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 8
  %and.i = and i32 %38, 133120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end45.if.then.i_crit_edge

if.end45.if.then.i_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end45
  %sk_tsflags.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 65
  %39 = ptrtoint ptr %sk_tsflags.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %sk_tsflags.i, align 8
  %41 = and i16 %40, 80
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool2.not.i = icmp eq i16 %41, 0
  br i1 %tobool2.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end45.if.then.i_crit_edge
  call void @__sock_recv_ts_and_drops(ptr noundef %msg, ptr noundef %1, ptr noundef nonnull %call7) #11
  br label %sock_recv_ts_and_drops.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  %42 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %36, align 4
  %44 = and i32 %43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.i.not.i = icmp eq i32 %44, 0
  br i1 %tobool.i.not.i, label %if.else6.i, label %if.then5.i, !prof !69

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 2
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %45, align 8
  call fastcc void @sock_write_timestamp(ptr noundef %1, i64 noundef %47) #11
  br label %sock_recv_ts_and_drops.exit

if.else6.i:                                       ; preds = %if.else.i
  %sk_stamp.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 63
  %48 = ptrtoint ptr %sk_stamp.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %sk_stamp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1000000000, i64 %49)
  %cmp.i95 = icmp eq i64 %49, -1000000000
  br i1 %cmp.i95, label %if.then14.i, label %if.else6.i.sock_recv_ts_and_drops.exit_crit_edge, !prof !68

if.else6.i.sock_recv_ts_and_drops.exit_crit_edge: ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_recv_ts_and_drops.exit

if.then14.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @sock_write_timestamp(ptr noundef %1, i64 noundef 0) #11
  br label %sock_recv_ts_and_drops.exit

sock_recv_ts_and_drops.exit:                      ; preds = %if.then14.i, %if.else6.i.sock_recv_ts_and_drops.exit_crit_edge, %if.then5.i, %if.then.i
  %msg_flags46 = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 3, i32 4
  %50 = ptrtoint ptr %msg_flags46 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %msg_flags46, align 4
  %msg_flags47 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %52 = ptrtoint ptr %msg_flags47 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %msg_flags47, align 4
  %or48 = or i32 %53, %51
  store i32 %or48, ptr %msg_flags47, align 4
  call void @skb_free_datagram(ptr noundef %1, ptr noundef nonnull %call7) #11
  br label %cleanup

cleanup:                                          ; preds = %sock_recv_ts_and_drops.exit, %if.then16, %if.then9, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then4 ], [ %13, %if.then16 ], [ %size.addr.0, %sock_recv_ts_and_drops.exit ], [ %4, %if.then9 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @j1939_cancel_active_session(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_local_ecu_put(ptr noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_netdev_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_priv_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @j1939_netdev_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_priv_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @j1939_local_ecu_get(ptr noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @j1939_sk_setsockopt_flag(ptr noundef %jsk, [2 x i32] %optval.coerce, i32 noundef %optlen, i32 noundef %flag) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #11
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp.not = icmp eq i32 %optlen, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %1 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.18, i32 noundef 156) #11
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i.i, label %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge:      ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end8.i.i.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 4, i32 -1226833920) #15, !srcloc !79
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !69

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp, i32 noundef 4) #11
  %3 = call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #7, !srcloc !80
  %and.i.i.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #11, !srcloc !81
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !82
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tmp, ptr noundef %1, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #11, !srcloc !81
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end2_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !69

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end2_crit_edge:                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i.i.i15 = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 4, %res.0.i.i.i.i15
  %add.ptr.i.i.i.i = getelementptr i8, ptr %tmp, i32 %sub.i.i.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i15)
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %1, align 1
  %9 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end2_crit_edge
  call void @lock_sock_nested(ptr noundef %jsk, i32 noundef 0) #11
  %10 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  %state = getelementptr inbounds %struct.j1939_sock, ptr %jsk, i32 0, i32 3
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  %or = or i32 %13, %flag
  store i32 %or, ptr %state, align 4
  br label %if.end6

if.else:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  %neg = xor i32 %flag, -1
  %state5 = getelementptr inbounds %struct.j1939_sock, ptr %jsk, i32 0, i32 3
  %14 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state5, align 4
  %and = and i32 %15, %neg
  store i32 %and, ptr %state5, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  call void @release_sock(ptr noundef %jsk) #11
  %16 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tmp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then11.i.i.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ -14, %if.then11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_from_sockptr(ptr noundef %dst, [2 x i32] %src.coerce, i32 noundef %size) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %src.coerce.fca.0.extract.i = extractvalue [2 x i32] %src.coerce, 0
  %0 = inttoptr i32 %src.coerce.fca.0.extract.i to ptr
  %sockptr.coerce.fca.1.extract.i.i = extractvalue [2 x i32] %src.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i)
  %bf.cast.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i, 0
  br i1 %bf.cast.i.i, label %if.end.i, label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp9.i.i.i = icmp slt i32 %size, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end8.i.i.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.copy_from_sockptr_offset.exit_crit_edge, label %if.then27.i.i.i, !prof !69

land.rhs16.i.i.i.copy_from_sockptr_offset.exit_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_from_sockptr_offset.exit

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %copy_from_sockptr_offset.exit

if.then.i.i.i.i:                                  ; preds = %if.end8.i.i.i
  tail call void @__check_object_size(ptr noundef %dst, i32 noundef %size, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.18, i32 noundef 156) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %size, i32 -1226833920) #15, !srcloc !79
  %asmresult.i.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !69

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dst, i32 noundef %size) #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !80
  %and.i.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !82
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %dst, ptr noundef %0, i32 noundef %size) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #11, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !82
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %size, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %size, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge, label %if.then11.i.i.i, !prof !69

if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_from_sockptr_offset.exit

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = sub i32 %size, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %dst, i32 %sub.i.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %copy_from_sockptr_offset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = call ptr @memcpy(ptr %dst, ptr %0, i32 %size)
  br label %copy_from_sockptr_offset.exit

copy_from_sockptr_offset.exit:                    ; preds = %if.end.i, %if.then11.i.i.i, %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.copy_from_sockptr_offset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ 0, %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge ], [ %res.0.i.i.i, %if.then11.i.i.i ], [ %size, %if.then27.i.i.i ], [ %size, %land.rhs16.i.i.i.copy_from_sockptr_offset.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmalloc_track_caller(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @j1939_tp_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_session_skb_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_session_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_recv_errqueue(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_ts_and_drops(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sock_write_timestamp(ptr noundef %sk, i64 noundef %kt) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %sk_stamp_seq = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64
  %lock.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #11
  %0 = ptrtoint ptr %sk_stamp_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk_stamp_seq, align 4
  %inc.i.i.i.i = add i32 %1, 1
  store i32 %inc.i.i.i.i, ptr %sk_stamp_seq, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !87
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64, i32 0, i32 0, i32 1
  %2 = tail call ptr @llvm.returnaddress(i32 0) #11
  %3 = ptrtoint ptr %2 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %3) #11
  %sk_stamp = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 63
  %4 = ptrtoint ptr %sk_stamp to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %kt, ptr %sk_stamp, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %3) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !88
  %5 = ptrtoint ptr %sk_stamp_seq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sk_stamp_seq, align 4
  %inc.i.i.i = add i32 %6, 1
  store i32 %inc.i.i.i, ptr %sk_stamp_seq, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @j1939_sk_init(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sk, i32 960
  %0 = call ptr @memset(ptr %add.ptr, i32 0, i32 168)
  %list = getelementptr inbounds %struct.j1939_sock, ptr %sk, i32 0, i32 2
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.j1939_sock, ptr %sk, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %prev.i, align 4
  %waitq = getelementptr inbounds %struct.j1939_sock, ptr %sk, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.20, ptr noundef nonnull @j1939_sk_init.__key) #11
  %sk_priority = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 33
  %3 = ptrtoint ptr %sk_priority to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %sk_priority, align 4
  %skc_reuse = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 5
  %4 = ptrtoint ptr %skc_reuse to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %skc_reuse, align 1
  %bf.clear = and i8 %bf.load, 15
  %bf.set = or i8 %bf.clear, 16
  store i8 %bf.set, ptr %skc_reuse, align 1
  %sa = getelementptr inbounds %struct.j1939_sock, ptr %sk, i32 0, i32 5, i32 3
  %5 = ptrtoint ptr %sa to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %sa, align 4
  %da = getelementptr inbounds %struct.j1939_sock, ptr %sk, i32 0, i32 5, i32 4
  %6 = ptrtoint ptr %da to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %da, align 1
  %pgn = getelementptr inbounds %struct.j1939_sock, ptr %sk, i32 0, i32 5, i32 2
  %7 = ptrtoint ptr %pgn to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 262144, ptr %pgn, align 8
  %pgn_rx_filter = getelementptr inbounds %struct.j1939_sock, ptr %sk, i32 0, i32 8
  %8 = ptrtoint ptr %pgn_rx_filter to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 262144, ptr %pgn_rx_filter, align 8
  %skb_pending = getelementptr inbounds %struct.j1939_sock, ptr %sk, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skb_pending, i32 noundef 4) #11
  %9 = ptrtoint ptr %skb_pending to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %skb_pending, align 4
  %sk_session_queue_lock = getelementptr inbounds %struct.j1939_sock, ptr %sk, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %sk_session_queue_lock, ptr noundef nonnull @.str.22, ptr noundef nonnull @j1939_sk_init.__key.21, i16 noundef signext 3) #11
  %sk_session_queue = getelementptr inbounds %struct.j1939_sock, ptr %sk, i32 0, i32 12
  %10 = ptrtoint ptr %sk_session_queue to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %sk_session_queue, ptr %sk_session_queue, align 4
  %prev.i27 = getelementptr inbounds %struct.j1939_sock, ptr %sk, i32 0, i32 12, i32 1
  %11 = ptrtoint ptr %prev.i27 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sk_session_queue, ptr %prev.i27, align 4
  %12 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %or.i.i = or i32 %14, 8388608
  store i32 %or.i.i, ptr %12, align 4
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 82
  %15 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @j1939_sk_sock_destruct, ptr %sk_destruct, align 4
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %16 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 7, ptr %sk_protocol, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @j1939_sk_sock_destruct(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.j1939_sock, ptr %sk, i32 0, i32 1
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @j1939_priv_put(ptr noundef nonnull %1) #11
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %priv, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @can_sock_destruct(ptr noundef %sk) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_sock_destruct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !40, !41, !43, !45, !47, !49, !51, !52, !54}
!llvm.named.register.sp = !{!55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @j1939_can_proto, !1, !"j1939_can_proto", i1 false, i1 false}
!1 = !{!"../net/can/j1939/socket.c", i32 1311, i32 24}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/can/j1939/socket.c", i32 160, i32 2}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../net/can/j1939/socket.c", i32 181, i32 6}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/can/j1939/socket.c", i32 310, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @j1939_sk_recv_one._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @j1939_sk_recv_one._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/can/j1939/socket.c", i32 973, i32 16}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/can/j1939/socket.c", i32 1001, i32 26}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/can/j1939/socket.c", i32 1019, i32 11}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/can/j1939/socket.c", i32 1025, i32 11}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/can/j1939/socket.c", i32 1031, i32 11}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/can/j1939/socket.c", i32 1037, i32 11}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/can/j1939/socket.c", i32 1043, i32 11}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/can/j1939/socket.c", i32 1049, i32 11}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/can/j1939/socket.c", i32 1057, i32 2}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @__j1939_sk_errqueue.__UNIQUE_ID_ddebug502, !28, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/can/j1939/socket.c", i32 138, i32 2}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @j1939_sk_queue_drop_all.__UNIQUE_ID_ddebug495, !33, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!36 = !{ptr @j1939_ops, !37, !"j1939_ops", i1 false, i1 false}
!37 = !{!"../net/can/j1939/socket.c", i32 1284, i32 31}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!45 = distinct !{null, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/can/j1939/socket.c", i32 1162, i32 9}
!47 = !{ptr @j1939_proto, !48, !"j1939_proto", i1 false, i1 false}
!48 = !{!"../net/can/j1939/socket.c", i32 1304, i32 21}
!49 = !{ptr @j1939_sk_init.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../net/can/j1939/socket.c", i32 391, i32 2}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @j1939_sk_init.__key.21, !53, !"__key", i1 false, i1 false}
!53 = !{!"../net/can/j1939/socket.c", i32 399, i32 2}
!54 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!55 = !{!"sp"}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2148375801}
!66 = !{i64 2148290534, i64 2148290566, i64 2148290595, i64 2148290629, i64 2148290660, i64 2148290683}
!67 = !{i64 2148376030}
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{i64 771085, i64 771109, i64 771130, i64 771147, i64 771164}
!71 = !{i64 2148769164, i64 2148769169, i64 2148769182, i64 2148769226, i64 2148769260, i64 2148769281}
!72 = !{i64 2148376880}
!73 = !{i64 2148291344, i64 2148291376, i64 2148291405, i64 2148291439, i64 2148291470, i64 2148291493}
!74 = !{i64 2149314698}
!75 = !{i64 679830, i64 679891}
!76 = !{i64 682562}
!77 = !{i64 682847}
!78 = !{!"auto-init"}
!79 = !{i64 2152909524, i64 2152909549}
!80 = !{i64 5405079}
!81 = !{i64 5405276}
!82 = !{i64 2152890509}
!83 = !{i64 2157338740, i64 2157339020, i64 2157339354, i64 2157339688}
!84 = !{i64 2157348384, i64 2157348664, i64 2157348998, i64 2157349332}
!85 = !{i64 2152910205, i64 2152910230}
!86 = !{i64 2148287349, i64 2148287375, i64 2148287404, i64 2148287438, i64 2148287469, i64 2148287492}
!87 = !{i64 2150004831}
!88 = !{i64 2150005156}
