; ModuleID = '/llk/IR_all_yes/net/bluetooth/bnep/netdev.c_pt.bc'
source_filename = "../net/bluetooth/bnep/netdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.104, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.105, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.106, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.100, [0 x i32], %union.anon.101, i16, i16, %union.anon.102, %struct.refcount_struct, [0 x i32], %union.anon.103 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { %struct.hlist_node }
%union.anon.102 = type { i32 }
%union.anon.103 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.104 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.105 = type { ptr }
%union.anon.106 = type { ptr }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.bnep_set_filter_req = type { i8, i8, i16, [0 x i8] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.bnep_session = type { %struct.list_head, i32, i32, i32, %struct.atomic_t, ptr, %struct.ethhdr, %struct.msghdr, [5 x %struct.bnep_proto_filter], i64, ptr, ptr }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.98, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.9, %union.anon.96 }
%union.anon.9 = type { ptr }
%union.anon.96 = type { i64 }
%union.anon.98 = type { ptr }
%struct.bnep_proto_filter = type { i16, i16 }

@bnep_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @bnep_net_open, ptr @bnep_net_close, ptr @bnep_net_xmit, ptr null, ptr null, ptr null, ptr @bnep_net_set_mc_list, ptr @bnep_net_set_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bnep_net_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@bnep_net_xmit.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bnep\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bnep_net_xmit\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"net/bluetooth/bnep/netdev.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"skb %p, dev %p\0A\00", [16 x i8] zeroinitializer }, align 32
@bnep_net_xmit.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx queue is full\0A\00", [46 x i8] zeroinitializer }, align 32
@bnep_net_proto_filter.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnep_net_proto_filter\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"BNEP: filtered skb %p, proto 0x%.4x\0A\00", [59 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bnep_net_set_mc_list.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bnep_net_set_mc_list\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s mc_count %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s Multicast list allocation failed\0A\00", [59 x i8] zeroinitializer }, align 32
@__const.bnep_net_set_mc_list.start = private unnamed_addr constant [6 x i8] c"\01\00\00\00\00\00", align 1
@bnep_net_set_mac_addr.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnep_net_set_mac_addr\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@bnep_net_timeout.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bnep_net_timeout\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"net_timeout\0A\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"bnep_netdev_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 206, i32 36 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 170, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 196, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 159, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 59, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 64, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 111, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private constant [31 x i8] c"../net/bluetooth/bnep/netdev.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 117, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @bnep_netdev_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnep_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnep_net_setup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %0 = call ptr @memset(ptr %broadcast, i32 255, i32 6)
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %1 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 6, ptr %addr_len, align 1
  tail call void @ether_setup(ptr noundef %dev) #3
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %2 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %3 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 65535, ptr %max_mtu, align 4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %4 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %priv_flags, align 16
  %and = and i64 %5, -2049
  store i64 %and, ptr %priv_flags, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %6 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @bnep_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 115
  %7 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 200, ptr %watchdog_timeo, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnep_net_open(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnep_net_close(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnep_net_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %sock = getelementptr i8, ptr %dev, i32 2440
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock, align 8
  %sk1 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bnep_net_xmit.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bnep_net_xmit, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !38

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bnep_net_xmit.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.3, ptr noundef %skb, ptr noundef %dev) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %do.end.if.end8_crit_edge, label %land.lhs.true.i

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

land.lhs.true.i:                                  ; preds = %do.end
  %call.i.i = tail call i32 @crc32_be(i32 noundef -1, ptr noundef %5, i32 noundef 6) #6
  %shr.i5.i = lshr i32 %call.i.i, 26
  %mc_filter.i = getelementptr i8, ptr %dev, i32 2432
  %div3.i.i = lshr i32 %call.i.i, 31
  %arrayidx.i.i = getelementptr i32, ptr %mc_filter.i, i32 %div3.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %shr.i5.i, 31
  %11 = shl nuw i32 1, %and.i.i
  %12 = and i32 %11, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not.i = icmp eq i32 %12, 0
  br i1 %tobool3.not.i, label %if.then7, label %land.lhs.true.i.if.end8_crit_edge

land.lhs.true.i.if.end8_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.then7:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #3
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.i.if.end8_crit_edge, %do.end.if.end8_crit_edge
  %call9 = tail call fastcc i32 @bnep_net_proto_filter(ptr noundef %skb, ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #3
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %13 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %14, i32 0, i32 12
  %16 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp.not.i.i = icmp eq i32 %17, %15
  br i1 %cmp.not.i.i, label %if.end12.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end12.netif_trans_update.exit_crit_edge:       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 %15, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end12.netif_trans_update.exit_crit_edge
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 26
  tail call void @skb_queue_tail(ptr noundef %sk_write_queue, ptr noundef %skb) #3
  %19 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 17
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %19, align 8
  tail call void @__wake_up(ptr noundef %21, i32 noundef 1, i32 noundef 1, ptr noundef null) #3
  %qlen.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 26, i32 1
  %22 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %23)
  %cmp = icmp ugt i32 %23, 19
  br i1 %cmp, label %do.body17, label %netif_trans_update.exit.cleanup_crit_edge

netif_trans_update.exit.cleanup_crit_edge:        ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body17:                                        ; preds = %netif_trans_update.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bnep_net_xmit.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bnep_net_xmit, %if.then29)) #3
          to label %do.end32 [label %if.then29], !srcloc !38

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bnep_net_xmit.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.4) #3
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %do.body17
  %24 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %25, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #3
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %netif_trans_update.exit.cleanup_crit_edge, %if.then11, %if.then7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnep_net_set_mc_list(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %sock = getelementptr i8, ptr %dev, i32 2440
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock, align 8
  %sk1 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bnep_net_set_mc_list.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bnep_net_set_mc_list, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !38

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bnep_net_set_mc_list.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.8, ptr noundef %dev, i32 noundef %5) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call ptr @__alloc_skb(i32 noundef 256, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #3
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.then7, label %if.end10

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.9, ptr noundef %dev) #3
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not.i = icmp eq i32 %9, 0
  br i1 %tobool.i.not.i, label %__skb_put.exit, label %do.body3.i, !prof !39

do.body3.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #3, !srcloc !40
  unreachable

__skb_put.exit:                                   ; preds = %if.end10
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i88 = getelementptr i8, ptr %11, i32 4
  store ptr %add.ptr.i88, ptr %tail.i.i, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len9.i, align 4
  %add.i = add i32 %13, 4
  store i32 %add.i, ptr %len9.i, align 4
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %7, align 1
  %ctrl = getelementptr inbounds %struct.bnep_set_filter_req, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %ctrl to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 5, ptr %ctrl, align 1
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 8
  %and = and i32 %17, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %__skb_put.exit
  %18 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.i.not.i.i, label %__skb_put_data.exit, label %do.body3.i.i, !prof !39

do.body3.i.i:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #3, !srcloc !40
  unreachable

__skb_put_data.exit:                              ; preds = %if.then13
  %20 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 6
  store ptr %add.ptr.i.i, ptr %tail.i.i, align 8
  %22 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len9.i, align 4
  %add.i.i = add i32 %23, 6
  store i32 %add.i.i, ptr %len9.i, align 4
  %24 = call ptr @memcpy(ptr %21, ptr @__const.bnep_net_set_mc_list.start, i32 6)
  %25 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not.i.i90 = icmp eq i32 %26, 0
  br i1 %tobool.i.not.i.i90, label %__skb_put_data.exit96, label %do.body3.i.i91, !prof !39

do.body3.i.i91:                                   ; preds = %__skb_put_data.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #3, !srcloc !40
  unreachable

__skb_put_data.exit96:                            ; preds = %__skb_put_data.exit
  call void @__sanitizer_cov_trace_pc() #5
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %27 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i.i93 = getelementptr i8, ptr %28, i32 6
  store ptr %add.ptr.i.i93, ptr %tail.i.i, align 8
  %29 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len9.i, align 4
  %add.i.i95 = add i32 %30, 6
  store i32 %add.i.i95, ptr %len9.i, align 4
  %31 = call ptr @memcpy(ptr %28, ptr %broadcast, i32 6)
  br label %if.end53

if.else:                                          ; preds = %__skb_put.exit
  %32 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len9.i, align 4
  %and21 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else.if.end30_crit_edge, label %if.then23

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

if.then23:                                        ; preds = %if.else
  %broadcast24 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %34 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not.i.i98 = icmp eq i32 %35, 0
  br i1 %tobool.i.not.i.i98, label %__skb_put_data.exit104, label %do.body3.i.i99, !prof !39

do.body3.i.i99:                                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #3, !srcloc !40
  unreachable

__skb_put_data.exit104:                           ; preds = %if.then23
  %36 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i.i101 = getelementptr i8, ptr %37, i32 6
  store ptr %add.ptr.i.i101, ptr %tail.i.i, align 8
  %add.i.i103 = add i32 %33, 6
  %38 = ptrtoint ptr %len9.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add.i.i103, ptr %len9.i, align 4
  %39 = call ptr @memcpy(ptr %37, ptr %broadcast24, i32 6)
  %40 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.not.i.i106 = icmp eq i32 %41, 0
  br i1 %tobool.i.not.i.i106, label %__skb_put_data.exit112, label %do.body3.i.i107, !prof !39

do.body3.i.i107:                                  ; preds = %__skb_put_data.exit104
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #3, !srcloc !40
  unreachable

__skb_put_data.exit112:                           ; preds = %__skb_put_data.exit104
  call void @__sanitizer_cov_trace_pc() #5
  %42 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i.i109 = getelementptr i8, ptr %43, i32 6
  store ptr %add.ptr.i.i109, ptr %tail.i.i, align 8
  %44 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len9.i, align 4
  %add.i.i111 = add i32 %45, 6
  store i32 %add.i.i111, ptr %len9.i, align 4
  %46 = call ptr @memcpy(ptr %43, ptr %broadcast24, i32 6)
  br label %if.end30

if.end30:                                         ; preds = %__skb_put_data.exit112, %if.else.if.end30_crit_edge
  %mc31 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %47 = ptrtoint ptr %mc31 to i32
  call void @__asan_load4_noabort(i32 %47)
  %ha.0130 = load ptr, ptr %mc31, align 4
  %cmp.not131 = icmp eq ptr %ha.0130, %mc31
  br i1 %cmp.not131, label %if.end30.for.end_crit_edge, label %if.end30.if.end40_crit_edge

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  br label %if.end40

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end40:                                         ; preds = %__skb_put_data.exit128.if.end40_crit_edge, %if.end30.if.end40_crit_edge
  %ha.0133 = phi ptr [ %ha.0, %__skb_put_data.exit128.if.end40_crit_edge ], [ %ha.0130, %if.end30.if.end40_crit_edge ]
  %i.0132 = phi i32 [ %inc, %__skb_put_data.exit128.if.end40_crit_edge ], [ 0, %if.end30.if.end40_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0133, i32 0, i32 2
  %48 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.i.not.i.i114 = icmp eq i32 %49, 0
  br i1 %tobool.i.not.i.i114, label %__skb_put_data.exit120, label %do.body3.i.i115, !prof !39

do.body3.i.i115:                                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #3, !srcloc !40
  unreachable

__skb_put_data.exit120:                           ; preds = %if.end40
  %50 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i.i117 = getelementptr i8, ptr %51, i32 6
  store ptr %add.ptr.i.i117, ptr %tail.i.i, align 8
  %52 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len9.i, align 4
  %add.i.i119 = add i32 %53, 6
  store i32 %add.i.i119, ptr %len9.i, align 4
  %54 = call ptr @memcpy(ptr %51, ptr %addr, i32 6)
  %55 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.i.not.i.i122 = icmp eq i32 %56, 0
  br i1 %tobool.i.not.i.i122, label %__skb_put_data.exit128, label %do.body3.i.i123, !prof !39

do.body3.i.i123:                                  ; preds = %__skb_put_data.exit120
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #3, !srcloc !40
  unreachable

__skb_put_data.exit128:                           ; preds = %__skb_put_data.exit120
  %57 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i.i125 = getelementptr i8, ptr %58, i32 6
  store ptr %add.ptr.i.i125, ptr %tail.i.i, align 8
  %59 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len9.i, align 4
  %add.i.i127 = add i32 %60, 6
  store i32 %add.i.i127, ptr %len9.i, align 4
  %61 = call ptr @memcpy(ptr %58, ptr %addr, i32 6)
  %inc = add nuw nsw i32 %i.0132, 1
  %62 = ptrtoint ptr %ha.0133 to i32
  call void @__asan_load4_noabort(i32 %62)
  %ha.0 = load ptr, ptr %ha.0133, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc31
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %inc)
  %cmp38 = icmp eq i32 %inc, 20
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp38
  br i1 %or.cond, label %__skb_put_data.exit128.for.end_crit_edge, label %__skb_put_data.exit128.if.end40_crit_edge

__skb_put_data.exit128.if.end40_crit_edge:        ; preds = %__skb_put_data.exit128
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end40

__skb_put_data.exit128.for.end_crit_edge:         ; preds = %__skb_put_data.exit128
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %__skb_put_data.exit128.for.end_crit_edge, %if.end30.for.end_crit_edge
  %63 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len9.i, align 4
  %sub = sub i32 %64, %33
  %conv = trunc i32 %sub to i16
  br label %if.end53

if.end53:                                         ; preds = %for.end, %__skb_put_data.exit96
  %conv.sink = phi i16 [ %conv, %for.end ], [ 12, %__skb_put_data.exit96 ]
  %len52 = getelementptr inbounds %struct.bnep_set_filter_req, ptr %7, i32 0, i32 2
  %65 = ptrtoint ptr %len52 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 2)
  store i16 %conv.sink, ptr %len52, align 1
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 26
  tail call void @skb_queue_tail(ptr noundef %sk_write_queue, ptr noundef nonnull %call.i) #3
  %66 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 17
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile ptr, ptr %66, align 8
  tail call void @__wake_up(ptr noundef %68, i32 noundef 1, i32 noundef 1, ptr noundef null) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnep_net_set_mac_addr(ptr noundef %dev, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bnep_net_set_mac_addr.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bnep_net_set_mac_addr, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !38

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bnep_net_set_mac_addr.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.11, ptr noundef %dev) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnep_net_timeout(ptr nocapture noundef readonly %dev, i32 noundef %txqueue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bnep_net_timeout.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bnep_net_timeout, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !38

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bnep_net_timeout.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.13) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnep_net_proto_filter(ptr noundef %skb, ptr nocapture noundef readonly %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %h_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1535, i16 %3)
  %cmp.i = icmp ugt i16 %3, 1535
  br i1 %cmp.i, label %entry.bnep_net_eth_proto.exit_crit_edge, label %if.end.i

entry.bnep_net_eth_proto.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %bnep_net_eth_proto.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp4.i = icmp eq i16 %5, -1
  %..i = select i1 %cmp4.i, i16 1, i16 4
  br label %bnep_net_eth_proto.exit

bnep_net_eth_proto.exit:                          ; preds = %if.end.i, %entry.bnep_net_eth_proto.exit_crit_edge
  %retval.0.i30 = phi i16 [ %3, %entry.bnep_net_eth_proto.exit_crit_edge ], [ %..i, %if.end.i ]
  %end = getelementptr %struct.bnep_session, ptr %s, i32 0, i32 8, i32 0, i32 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %end, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %bnep_net_eth_proto.exit.do.body_crit_edge, label %for.body

bnep_net_eth_proto.exit.do.body_crit_edge:        ; preds = %bnep_net_eth_proto.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

for.cond:                                         ; preds = %for.body
  %end.1 = getelementptr %struct.bnep_session, ptr %s, i32 0, i32 8, i32 1, i32 1
  %8 = ptrtoint ptr %end.1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %end.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.1 = icmp eq i16 %9, 0
  br i1 %tobool.not.1, label %for.cond.do.body_crit_edge, label %for.body.1

for.cond.do.body_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

for.body.1:                                       ; preds = %for.cond
  %arrayidx.1 = getelementptr %struct.bnep_session, ptr %s, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i30, i16 %11)
  %cmp4.not.1 = icmp ult i16 %retval.0.i30, %11
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i30, i16 %9)
  %cmp10.not.1 = icmp ugt i16 %retval.0.i30, %9
  %or.cond.1 = select i1 %cmp4.not.1, i1 true, i1 %cmp10.not.1
  br i1 %or.cond.1, label %for.cond.1, label %for.body.1.cleanup_crit_edge

for.body.1.cleanup_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.1:                                       ; preds = %for.body.1
  %end.2 = getelementptr %struct.bnep_session, ptr %s, i32 0, i32 8, i32 2, i32 1
  %12 = ptrtoint ptr %end.2 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %end.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.2 = icmp eq i16 %13, 0
  br i1 %tobool.not.2, label %for.cond.1.do.body_crit_edge, label %for.body.2

for.cond.1.do.body_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

for.body.2:                                       ; preds = %for.cond.1
  %arrayidx.2 = getelementptr %struct.bnep_session, ptr %s, i32 0, i32 8, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i30, i16 %15)
  %cmp4.not.2 = icmp ult i16 %retval.0.i30, %15
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i30, i16 %13)
  %cmp10.not.2 = icmp ugt i16 %retval.0.i30, %13
  %or.cond.2 = select i1 %cmp4.not.2, i1 true, i1 %cmp10.not.2
  br i1 %or.cond.2, label %for.cond.2, label %for.body.2.cleanup_crit_edge

for.body.2.cleanup_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.2:                                       ; preds = %for.body.2
  %end.3 = getelementptr %struct.bnep_session, ptr %s, i32 0, i32 8, i32 3, i32 1
  %16 = ptrtoint ptr %end.3 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %end.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.3 = icmp eq i16 %17, 0
  br i1 %tobool.not.3, label %for.cond.2.do.body_crit_edge, label %for.body.3

for.cond.2.do.body_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

for.body.3:                                       ; preds = %for.cond.2
  %arrayidx.3 = getelementptr %struct.bnep_session, ptr %s, i32 0, i32 8, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i30, i16 %19)
  %cmp4.not.3 = icmp ult i16 %retval.0.i30, %19
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i30, i16 %17)
  %cmp10.not.3 = icmp ugt i16 %retval.0.i30, %17
  %or.cond.3 = select i1 %cmp4.not.3, i1 true, i1 %cmp10.not.3
  br i1 %or.cond.3, label %for.cond.3, label %for.body.3.cleanup_crit_edge

for.body.3.cleanup_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.3:                                       ; preds = %for.body.3
  %end.4 = getelementptr %struct.bnep_session, ptr %s, i32 0, i32 8, i32 4, i32 1
  %20 = ptrtoint ptr %end.4 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %end.4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.4 = icmp eq i16 %21, 0
  br i1 %tobool.not.4, label %for.cond.3.do.body_crit_edge, label %for.body.4

for.cond.3.do.body_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

for.body.4:                                       ; preds = %for.cond.3
  %arrayidx.4 = getelementptr %struct.bnep_session, ptr %s, i32 0, i32 8, i32 4
  %22 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.4, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i30, i16 %23)
  %cmp4.not.4 = icmp ult i16 %retval.0.i30, %23
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i30, i16 %21)
  %cmp10.not.4 = icmp ugt i16 %retval.0.i30, %21
  %or.cond.4 = select i1 %cmp4.not.4, i1 true, i1 %cmp10.not.4
  br i1 %or.cond.4, label %for.body.4.do.body_crit_edge, label %for.body.4.cleanup_crit_edge

for.body.4.cleanup_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.4.do.body_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

for.body:                                         ; preds = %bnep_net_eth_proto.exit
  %proto_filter = getelementptr inbounds %struct.bnep_session, ptr %s, i32 0, i32 8
  %24 = ptrtoint ptr %proto_filter to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %proto_filter, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i30, i16 %25)
  %cmp4.not = icmp ult i16 %retval.0.i30, %25
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i30, i16 %7)
  %cmp10.not = icmp ugt i16 %retval.0.i30, %7
  %or.cond = select i1 %cmp4.not, i1 true, i1 %cmp10.not
  br i1 %or.cond, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body:                                          ; preds = %for.body.4.do.body_crit_edge, %for.cond.3.do.body_crit_edge, %for.cond.2.do.body_crit_edge, %for.cond.1.do.body_crit_edge, %for.cond.do.body_crit_edge, %bnep_net_eth_proto.exit.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bnep_net_proto_filter.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bnep_net_proto_filter, %if.then16)) #3
          to label %cleanup [label %if.then16], !srcloc !38

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %conv17 = zext i16 %retval.0.i30 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bnep_net_proto_filter.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.6, ptr noundef %skb, i32 noundef %conv17) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %do.body, %for.body.cleanup_crit_edge, %for.body.4.cleanup_crit_edge, %for.body.3.cleanup_crit_edge, %for.body.2.cleanup_crit_edge, %for.body.1.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then16 ], [ 1, %do.body ], [ 0, %for.body.4.cleanup_crit_edge ], [ 0, %for.body.3.cleanup_crit_edge ], [ 0, %for.body.2.cleanup_crit_edge ], [ 0, %for.body.1.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_be(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !17, !18, !19, !21, !23, !24, !25, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @bnep_netdev_ops, !1, !"bnep_netdev_ops", i1 false, i1 false}
!1 = !{!"../net/bluetooth/bnep/netdev.c", i32 206, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/bluetooth/bnep/netdev.c", i32 170, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @bnep_net_xmit.__UNIQUE_ID_ddebug482, !3, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/bluetooth/bnep/netdev.c", i32 196, i32 3}
!10 = !{ptr @bnep_net_xmit.__UNIQUE_ID_ddebug483, !9, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/bluetooth/bnep/netdev.c", i32 159, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @bnep_net_proto_filter.__UNIQUE_ID_ddebug481, !12, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/bluetooth/bnep/netdev.c", i32 59, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @bnep_net_set_mc_list.__UNIQUE_ID_ddebug478, !16, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/bluetooth/bnep/netdev.c", i32 64, i32 3}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/bluetooth/bnep/netdev.c", i32 111, i32 2}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @bnep_net_set_mac_addr.__UNIQUE_ID_ddebug479, !22, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/bluetooth/bnep/netdev.c", i32 117, i32 2}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @bnep_net_timeout.__UNIQUE_ID_ddebug480, !26, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 2148853513, i64 2148853518, i64 2148853531, i64 2148853575, i64 2148853609, i64 2148853630}
!39 = !{!"branch_weights", i32 2000, i32 1}
!40 = !{i64 2154584529, i64 2154585017, i64 2154584566, i64 2154584622, i64 2154584656, i64 2154584680, i64 2154584721, i64 2154584742, i64 2154584770, i64 2154584804}
