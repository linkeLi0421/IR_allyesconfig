; ModuleID = '/llk/IR_all_yes/net/bridge/br_mrp.c_pt.bc'
source_filename = "../net/bridge/br_mrp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.br_frame_type = type { i16, ptr, %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.143, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%struct.list_head = type { ptr, ptr }
%union.anon.143 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.br_ip = type { %union.anon.144, %union.anon.145, i16, i16 }
%union.anon.144 = type { %struct.in6_addr }
%union.anon.145 = type { %struct.in6_addr }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.hlist_head = type { ptr }
%struct.br_mrp = type { %struct.hlist_node, ptr, ptr, ptr, i32, i16, i16, i32, i8, i32, i32, i32, i8, i32, i32, %struct.delayed_work, i32, i32, i32, i32, i8, %struct.delayed_work, i32, i32, i32, i32, i32, %struct.callback_head }
%struct.br_mrp_instance = type { i32, i32, i32, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.142 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.net_bridge_port = type { ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i8, i8, i16, i8, i8, i16, i16, %struct.bridge_id, %struct.bridge_id, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.kobject, %struct.callback_head, %struct.net_bridge_mcast_port, ptr, i32, i32, %struct.hlist_head, [16 x i8], ptr, i32, i32, %struct.netdev_phys_item_id, i16, i16, %struct.bridge_stp_xstats }
%struct.net_bridge_mcast_port = type { ptr, ptr, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, i8 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.bridge_stp_xstats = type { i64, i64, i64, i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.3, %union.anon.6, %union.anon.113, [48 x i8], %union.anon.114, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.116, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.6 = type { ptr }
%union.anon.113 = type { i64 }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { i32, ptr }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.118, i32, i32, i32, i16, i16, %union.anon.120, i32, %union.anon.121, %union.anon.122, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.118 = type { i32 }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i32 }
%union.anon.122 = type { i16 }
%struct.br_mrp_ring_state = type { i32, i32 }
%struct.br_mrp_ring_role = type { i32, i32 }
%struct.br_mrp_start_test = type { i32, i32, i32, i32, i32 }
%struct.br_mrp_in_state = type { i32, i16 }
%struct.br_mrp_in_role = type { i32, i32, i32, i16 }
%struct.br_mrp_start_in_test = type { i32, i32, i32, i16 }
%struct.br_mrp_tlv_hdr = type { i8, i8 }
%struct.br_mrp_ring_test_hdr = type <{ i16, [6 x i8], i16, i16, i16, i32 }>
%struct.br_mrp_in_test_hdr = type <{ i16, [6 x i8], i16, i16, i16, i32 }>
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.br_mrp_common_hdr = type { i16, [16 x i8] }

@mrp_frame_type = internal global %struct.br_frame_type { i16 -30493, ptr @br_mrp_process, %struct.hlist_node zeroinitializer }, section ".data..read_mostly", align 4
@br_mrp_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&mrp->test_work)->work)\00", [52 x i8] zeroinitializer }, align 32
@br_mrp_add.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&mrp->test_work)->timer\00", [38 x i8] zeroinitializer }, align 32
@br_mrp_add.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&mrp->in_test_work)->work)\00", [49 x i8] zeroinitializer }, align 32
@br_mrp_add.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&mrp->in_test_work)->timer\00", [35 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@br_mrp_set_in_role.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/bridge/br_mrp.c\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@br_mrp_find_id.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@br_mrp_unique_ifindex.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_mrp_unique_ifindex.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_mrp_unique_ifindex.__warned.11 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_mrp_unique_ifindex.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@br_mrp_rcv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@br_mrp_rcv.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_mrp_rcv.__warned.15 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_mrp_test_work_expired.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_mrp_test_work_expired.__warned.16 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@br_mrp_in_test_work_expired.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_mrp_in_test_work_expired.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_mrp_in_test_work_expired.__warned.21 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_mrp_del_impl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_mrp_del_impl.__warned.22 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_mrp_del_impl.__warned.23 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_mrp_del_impl.__warned.24 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_mrp_find_port.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_mrp_find_in_id.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [7 x i64] [i64 5, i64 8, i64 2, i64 3, i64 4, i64 5, i64 127]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 543, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 544, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 774, i32 7 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 57, i32 2 }
@___asan_gen_.65 = private constant [23 x i8] c"../net/bridge/br_mrp.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 1091, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 695, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 723, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @br_mrp_add.__key, ptr @.str, ptr @br_mrp_add.__key.1, ptr @.str.2, ptr @br_mrp_add.__key.3, ptr @.str.4, ptr @br_mrp_add.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.13, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mrp_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mrp_add.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mrp_add.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mrp_add.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_mrp_add(ptr noundef %br, ptr nocapture noundef readonly %instance) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %instance, align 4
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i, label %entry.do.end.i_crit_edge, label %land.lhs.true.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true2.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true2.i.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true2.i.do.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true2.i
  %.b39.i = load i1, ptr @br_mrp_find_id.__warned, align 1
  br i1 %.b39.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_find_id.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 58, ptr noundef nonnull @.str.9) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true2.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %mrp_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 47
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %mrp.0.in.i = phi ptr [ %mrp_list.i, %do.end.i ], [ %mrp.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %mrp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %mrp.0.i = load volatile ptr, ptr %mrp.0.in.i, align 4
  %tobool14.not.i = icmp eq ptr %mrp.0.i, null
  br i1 %tobool14.not.i, label %if.end, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %ring_id15.i = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 4
  %3 = ptrtoint ptr %ring_id15.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ring_id15.i, align 4
  %cmp.i = icmp eq i32 %4, %1
  br i1 %cmp.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.cond.i
  %p_ifindex = getelementptr inbounds %struct.br_mrp_instance, ptr %instance, i32 0, i32 1
  %5 = ptrtoint ptr %p_ifindex to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %p_ifindex, align 4
  %port_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  br label %for.cond.i209

for.cond.i209:                                    ; preds = %for.body.i210.for.cond.i209_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %port_list.i, %if.end ], [ %.pn.i, %for.body.i210.for.cond.i209_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %port_list.i
  br i1 %cmp.not.i, label %for.cond.i209.cleanup_crit_edge, label %for.body.i210

for.cond.i209.cleanup_crit_edge:                  ; preds = %for.cond.i209
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i210:                                    ; preds = %for.cond.i209
  %dev.i = getelementptr i8, ptr %.pn.i, i32 -8
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %ifindex2.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %ifindex2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ifindex2.i, align 4
  %cmp3.i = icmp eq i32 %11, %6
  br i1 %cmp3.i, label %br_mrp_get_port.exit, label %for.body.i210.for.cond.i209_crit_edge

for.body.i210.for.cond.i209_crit_edge:            ; preds = %for.body.i210
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i209

br_mrp_get_port.exit:                             ; preds = %for.body.i210
  %port.0.le.i = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool2.not = icmp eq ptr %port.0.le.i, null
  br i1 %tobool2.not, label %br_mrp_get_port.exit.cleanup_crit_edge, label %lor.lhs.false

br_mrp_get_port.exit.cleanup_crit_edge:           ; preds = %br_mrp_get_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %br_mrp_get_port.exit
  %s_ifindex = getelementptr inbounds %struct.br_mrp_instance, ptr %instance, i32 0, i32 2
  %12 = ptrtoint ptr %s_ifindex to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_ifindex, align 4
  br label %for.cond.i215

for.cond.i215:                                    ; preds = %for.body.i219.for.cond.i215_crit_edge, %lor.lhs.false
  %.pn.in.i212 = phi ptr [ %port_list.i, %lor.lhs.false ], [ %.pn.i213, %for.body.i219.for.cond.i215_crit_edge ]
  %14 = ptrtoint ptr %.pn.in.i212 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i213 = load ptr, ptr %.pn.in.i212, align 4
  %cmp.not.i214 = icmp eq ptr %.pn.i213, %port_list.i
  br i1 %cmp.not.i214, label %for.cond.i215.cleanup_crit_edge, label %for.body.i219

for.cond.i215.cleanup_crit_edge:                  ; preds = %for.cond.i215
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i219:                                    ; preds = %for.cond.i215
  %dev.i216 = getelementptr i8, ptr %.pn.i213, i32 -8
  %15 = ptrtoint ptr %dev.i216 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i216, align 4
  %ifindex2.i217 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 17
  %17 = ptrtoint ptr %ifindex2.i217 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ifindex2.i217, align 4
  %cmp3.i218 = icmp eq i32 %18, %13
  br i1 %cmp3.i218, label %br_mrp_get_port.exit223, label %for.body.i219.for.cond.i215_crit_edge

for.body.i219.for.cond.i215_crit_edge:            ; preds = %for.body.i219
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i215

br_mrp_get_port.exit223:                          ; preds = %for.body.i219
  %port.0.le.i220 = getelementptr i8, ptr %.pn.i213, i32 -12
  %tobool4.not = icmp eq ptr %port.0.le.i220, null
  br i1 %tobool4.not, label %br_mrp_get_port.exit223.cleanup_crit_edge, label %if.end6

br_mrp_get_port.exit223.cleanup_crit_edge:        ; preds = %br_mrp_get_port.exit223
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %br_mrp_get_port.exit223
  %call8 = tail call fastcc zeroext i1 @br_mrp_unique_ifindex(ptr noundef %br, i32 noundef %6)
  br i1 %call8, label %lor.lhs.false9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false9:                                   ; preds = %if.end6
  %19 = ptrtoint ptr %s_ifindex to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_ifindex, align 4
  %call11 = tail call fastcc zeroext i1 @br_mrp_unique_ifindex(ptr noundef %br, i32 noundef %20)
  br i1 %call11, label %if.end13, label %lor.lhs.false9.cleanup_crit_edge

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 308) #10
  %tobool15.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %22 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %instance, align 4
  %ring_id19 = getelementptr inbounds %struct.br_mrp, ptr %call7.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %ring_id19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %ring_id19, align 4
  %prio = getelementptr inbounds %struct.br_mrp_instance, ptr %instance, i32 0, i32 3
  %25 = ptrtoint ptr %prio to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %prio, align 4
  %prio20 = getelementptr inbounds %struct.br_mrp, ptr %call7.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %prio20 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %prio20, align 2
  %28 = ptrtoint ptr %p_ifindex to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %p_ifindex, align 4
  br label %for.cond.i228

for.cond.i228:                                    ; preds = %for.body.i232.for.cond.i228_crit_edge, %if.end17
  %.pn.in.i225 = phi ptr [ %port_list.i, %if.end17 ], [ %.pn.i226, %for.body.i232.for.cond.i228_crit_edge ]
  %30 = ptrtoint ptr %.pn.in.i225 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn.i226 = load ptr, ptr %.pn.in.i225, align 4
  %cmp.not.i227 = icmp eq ptr %.pn.i226, %port_list.i
  br i1 %cmp.not.i227, label %for.cond.i228.br_mrp_get_port.exit236_crit_edge, label %for.body.i232

for.cond.i228.br_mrp_get_port.exit236_crit_edge:  ; preds = %for.cond.i228
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_mrp_get_port.exit236

for.body.i232:                                    ; preds = %for.cond.i228
  %dev.i229 = getelementptr i8, ptr %.pn.i226, i32 -8
  %31 = ptrtoint ptr %dev.i229 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i229, align 4
  %ifindex2.i230 = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 17
  %33 = ptrtoint ptr %ifindex2.i230 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ifindex2.i230, align 4
  %cmp3.i231 = icmp eq i32 %34, %29
  br i1 %cmp3.i231, label %for.end.split.loop.exit.i234, label %for.body.i232.for.cond.i228_crit_edge

for.body.i232.for.cond.i228_crit_edge:            ; preds = %for.body.i232
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i228

for.end.split.loop.exit.i234:                     ; preds = %for.body.i232
  call void @__sanitizer_cov_trace_pc() #9
  %port.0.le.i233 = getelementptr i8, ptr %.pn.i226, i32 -12
  br label %br_mrp_get_port.exit236

br_mrp_get_port.exit236:                          ; preds = %for.end.split.loop.exit.i234, %for.cond.i228.br_mrp_get_port.exit236_crit_edge
  %res.0.i235 = phi ptr [ %port.0.le.i233, %for.end.split.loop.exit.i234 ], [ null, %for.cond.i228.br_mrp_get_port.exit236_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef %br) #7
  %state = getelementptr inbounds %struct.net_bridge_port, ptr %res.0.i235, i32 0, i32 8
  %35 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 3, ptr %state, align 1
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %res.0.i235, i32 0, i32 4
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags, align 4
  %or = or i32 %37, 131072
  store i32 %or, ptr %flags, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %br) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !77
  %p_port45 = getelementptr inbounds %struct.br_mrp, ptr %call7.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %p_port45 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %res.0.i235, ptr %p_port45, align 8
  %39 = ptrtoint ptr %s_ifindex to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_ifindex, align 4
  br label %for.cond.i241

for.cond.i241:                                    ; preds = %for.body.i245.for.cond.i241_crit_edge, %br_mrp_get_port.exit236
  %.pn.in.i238 = phi ptr [ %port_list.i, %br_mrp_get_port.exit236 ], [ %.pn.i239, %for.body.i245.for.cond.i241_crit_edge ]
  %41 = ptrtoint ptr %.pn.in.i238 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn.i239 = load ptr, ptr %.pn.in.i238, align 4
  %cmp.not.i240 = icmp eq ptr %.pn.i239, %port_list.i
  br i1 %cmp.not.i240, label %for.cond.i241.br_mrp_get_port.exit249_crit_edge, label %for.body.i245

for.cond.i241.br_mrp_get_port.exit249_crit_edge:  ; preds = %for.cond.i241
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_mrp_get_port.exit249

for.body.i245:                                    ; preds = %for.cond.i241
  %dev.i242 = getelementptr i8, ptr %.pn.i239, i32 -8
  %42 = ptrtoint ptr %dev.i242 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i242, align 4
  %ifindex2.i243 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 17
  %44 = ptrtoint ptr %ifindex2.i243 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ifindex2.i243, align 4
  %cmp3.i244 = icmp eq i32 %45, %40
  br i1 %cmp3.i244, label %for.end.split.loop.exit.i247, label %for.body.i245.for.cond.i241_crit_edge

for.body.i245.for.cond.i241_crit_edge:            ; preds = %for.body.i245
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i241

for.end.split.loop.exit.i247:                     ; preds = %for.body.i245
  call void @__sanitizer_cov_trace_pc() #9
  %port.0.le.i246 = getelementptr i8, ptr %.pn.i239, i32 -12
  br label %br_mrp_get_port.exit249

br_mrp_get_port.exit249:                          ; preds = %for.end.split.loop.exit.i247, %for.cond.i241.br_mrp_get_port.exit249_crit_edge
  %res.0.i248 = phi ptr [ %port.0.le.i246, %for.end.split.loop.exit.i247 ], [ null, %for.cond.i241.br_mrp_get_port.exit249_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef %br) #7
  %state60 = getelementptr inbounds %struct.net_bridge_port, ptr %res.0.i248, i32 0, i32 8
  %46 = ptrtoint ptr %state60 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 3, ptr %state60, align 1
  %flags61 = getelementptr inbounds %struct.net_bridge_port, ptr %res.0.i248, i32 0, i32 4
  %47 = ptrtoint ptr %flags61 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags61, align 4
  %or62 = or i32 %48, 131072
  store i32 %or62, ptr %flags61, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %br) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !78
  %s_port92 = getelementptr inbounds %struct.br_mrp, ptr %call7.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %s_port92 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %res.0.i248, ptr %s_port92, align 4
  %50 = ptrtoint ptr %mrp_list.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %mrp_list.i, align 4
  %tobool.not.i250.not = icmp eq ptr %51, null
  br i1 %tobool.not.i250.not, label %if.then106, label %br_mrp_get_port.exit249.do.body109_crit_edge

br_mrp_get_port.exit249.do.body109_crit_edge:     ; preds = %br_mrp_get_port.exit249
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body109

if.then106:                                       ; preds = %br_mrp_get_port.exit249
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @br_add_frame(ptr noundef %br, ptr noundef nonnull @mrp_frame_type) #7
  br label %do.body109

do.body109:                                       ; preds = %if.then106, %br_mrp_get_port.exit249.do.body109_crit_edge
  %test_work = getelementptr inbounds %struct.br_mrp, ptr %call7.i.i, i32 0, i32 15
  tail call void @__init_work(ptr noundef %test_work, i32 noundef 0) #7
  %52 = ptrtoint ptr %test_work to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -64, ptr %test_work, align 4
  %lockdep_map = getelementptr inbounds %struct.br_mrp, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @br_mrp_add.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry116 = getelementptr inbounds %struct.br_mrp, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 1
  %53 = ptrtoint ptr %entry116 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %entry116, ptr %entry116, align 8
  %prev.i = getelementptr inbounds %struct.br_mrp, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %entry116, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.br_mrp, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 2
  %55 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @br_mrp_test_work_expired, ptr %func, align 8
  %timer = getelementptr inbounds %struct.br_mrp, ptr %call7.i.i, i32 0, i32 15, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @br_mrp_add.__key.1) #7
  %in_test_work = getelementptr inbounds %struct.br_mrp, ptr %call7.i.i, i32 0, i32 21
  tail call void @__init_work(ptr noundef %in_test_work, i32 noundef 0) #7
  %56 = ptrtoint ptr %in_test_work to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -64, ptr %in_test_work, align 4
  %lockdep_map137 = getelementptr inbounds %struct.br_mrp, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map137, ptr noundef nonnull @.str.4, ptr noundef nonnull @br_mrp_add.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry140 = getelementptr inbounds %struct.br_mrp, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 1
  %57 = ptrtoint ptr %entry140 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %entry140, ptr %entry140, align 8
  %prev.i251 = getelementptr inbounds %struct.br_mrp, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %prev.i251 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %entry140, ptr %prev.i251, align 4
  %func143 = getelementptr inbounds %struct.br_mrp, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 2
  %59 = ptrtoint ptr %func143 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @br_mrp_in_test_work_expired, ptr %func143, align 8
  %timer148 = getelementptr inbounds %struct.br_mrp, ptr %call7.i.i, i32 0, i32 21, i32 1
  tail call void @init_timer_key(ptr noundef %timer148, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.6, ptr noundef nonnull @br_mrp_add.__key.5) #7
  br label %for.cond.i253

for.cond.i253:                                    ; preds = %for.cond.i253.for.cond.i253_crit_edge, %do.body109
  %last.0.i = phi ptr [ null, %do.body109 ], [ %i.0.i, %for.cond.i253.for.cond.i253_crit_edge ]
  %i.0.in.i = phi ptr [ %mrp_list.i, %do.body109 ], [ %i.0.i, %for.cond.i253.for.cond.i253_crit_edge ]
  %60 = ptrtoint ptr %i.0.in.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %i.0.i = load ptr, ptr %i.0.in.i, align 4
  %tobool.not.i252 = icmp eq ptr %i.0.i, null
  br i1 %tobool.not.i252, label %for.end.i, label %for.cond.i253.for.cond.i253_crit_edge

for.cond.i253.for.cond.i253_crit_edge:            ; preds = %for.cond.i253
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i253

for.end.i:                                        ; preds = %for.cond.i253
  %tobool1.not.i = icmp eq ptr %last.0.i, null
  br i1 %tobool1.not.i, label %if.else47.i, label %if.then.i254

if.then.i254:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %last.0.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %last.0.i, align 4
  %63 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %call7.i.i, align 8
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %last.0.i, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !79
  br label %if.end48.sink.split.i

if.else47.i:                                      ; preds = %for.end.i
  %65 = ptrtoint ptr %mrp_list.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mrp_list.i, align 4
  %67 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %call7.i.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %mrp_list.i, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !80
  %69 = ptrtoint ptr %mrp_list.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %call7.i.i, ptr %mrp_list.i, align 4
  %tobool.not.i.i = icmp eq ptr %66, null
  br i1 %tobool.not.i.i, label %if.else47.i.hlist_add_tail_rcu.exit_crit_edge, label %do.body49.i.i

if.else47.i.hlist_add_tail_rcu.exit_crit_edge:    ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_add_tail_rcu.exit

do.body49.i.i:                                    ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %66, i32 0, i32 1
  br label %if.end48.sink.split.i

if.end48.sink.split.i:                            ; preds = %do.body49.i.i, %if.then.i254
  %pprev51.i.sink.i = phi ptr [ %pprev51.i.i, %do.body49.i.i ], [ %last.0.i, %if.then.i254 ]
  %70 = ptrtoint ptr %pprev51.i.sink.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %call7.i.i, ptr %pprev51.i.sink.i, align 4
  br label %hlist_add_tail_rcu.exit

hlist_add_tail_rcu.exit:                          ; preds = %if.end48.sink.split.i, %if.else47.i.hlist_add_tail_rcu.exit_crit_edge
  %call154 = tail call i32 @br_mrp_switchdev_add(ptr noundef %br, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %hlist_add_tail_rcu.exit.cleanup_crit_edge, label %delete_mrp

hlist_add_tail_rcu.exit.cleanup_crit_edge:        ; preds = %hlist_add_tail_rcu.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

delete_mrp:                                       ; preds = %hlist_add_tail_rcu.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @br_mrp_del_impl(ptr noundef %br, ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %delete_mrp, %hlist_add_tail_rcu.exit.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %br_mrp_get_port.exit223.cleanup_crit_edge, %for.cond.i215.cleanup_crit_edge, %br_mrp_get_port.exit.cleanup_crit_edge, %for.cond.i209.cleanup_crit_edge, %for.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call154, %delete_mrp ], [ -22, %br_mrp_get_port.exit223.cleanup_crit_edge ], [ -22, %br_mrp_get_port.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false9.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ], [ 0, %hlist_add_tail_rcu.exit.cleanup_crit_edge ], [ -22, %for.cond.i215.cleanup_crit_edge ], [ -22, %for.cond.i209.cleanup_crit_edge ], [ -22, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @br_mrp_unique_ifindex(ptr noundef %br, i32 noundef %ifindex) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true2, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true2.do.end_crit_edge, label %land.lhs.true5

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true2
  %.b110 = load i1, ptr @br_mrp_unique_ifindex.__warned, align 1
  br i1 %.b110, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_unique_ifindex.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 89, ptr noundef nonnull @.str.9) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %mrp_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 47
  %0 = ptrtoint ptr %mrp_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %mrp.0111 = load volatile ptr, ptr %mrp_list, align 4
  %tobool14.not112 = icmp eq ptr %mrp.0111, null
  br i1 %tobool14.not112, label %do.end.cleanup85_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup85_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup85

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %do.end.for.body_crit_edge
  %mrp.0113 = phi ptr [ %mrp.0, %for.inc.critedge.for.body_crit_edge ], [ %mrp.0111, %do.end.for.body_crit_edge ]
  %call16 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call16, label %for.body.do.end25_crit_edge, label %land.lhs.true17

for.body.do.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

land.lhs.true17:                                  ; preds = %for.body
  %call18 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true17.do.end25_crit_edge, label %land.lhs.true20

land.lhs.true17.do.end25_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

land.lhs.true20:                                  ; preds = %land.lhs.true17
  %.b104109 = load i1, ptr @br_mrp_unique_ifindex.__warned.10, align 1
  br i1 %.b104109, label %land.lhs.true20.do.end25_crit_edge, label %if.then22

land.lhs.true20.do.end25_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_unique_ifindex.__warned.10, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 92, ptr noundef nonnull @.str.8) #7
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %land.lhs.true20.do.end25_crit_edge, %land.lhs.true17.do.end25_crit_edge, %for.body.do.end25_crit_edge
  %p_port = getelementptr inbounds %struct.br_mrp, ptr %mrp.0113, i32 0, i32 1
  %1 = ptrtoint ptr %p_port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p_port, align 4
  %tobool27.not = icmp eq ptr %2, null
  br i1 %tobool27.not, label %do.end25.do.body32_crit_edge, label %land.lhs.true28

do.end25.do.body32_crit_edge:                     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body32

land.lhs.true28:                                  ; preds = %do.end25
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %ifindex29 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %ifindex29 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ifindex29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %ifindex)
  %cmp = icmp eq i32 %6, %ifindex
  br i1 %cmp, label %land.lhs.true28.cleanup85_crit_edge, label %land.lhs.true28.do.body32_crit_edge

land.lhs.true28.do.body32_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body32

land.lhs.true28.cleanup85_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup85

do.body32:                                        ; preds = %land.lhs.true28.do.body32_crit_edge, %do.end25.do.body32_crit_edge
  %call33 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call33, label %do.body32.do.end42_crit_edge, label %land.lhs.true34

do.body32.do.end42_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

land.lhs.true34:                                  ; preds = %do.body32
  %call35 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.lhs.true34.do.end42_crit_edge, label %land.lhs.true37

land.lhs.true34.do.end42_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

land.lhs.true37:                                  ; preds = %land.lhs.true34
  %.b105108 = load i1, ptr @br_mrp_unique_ifindex.__warned.11, align 1
  br i1 %.b105108, label %land.lhs.true37.do.end42_crit_edge, label %if.then39

land.lhs.true37.do.end42_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

if.then39:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_unique_ifindex.__warned.11, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 96, ptr noundef nonnull @.str.8) #7
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %land.lhs.true37.do.end42_crit_edge, %land.lhs.true34.do.end42_crit_edge, %do.body32.do.end42_crit_edge
  %s_port = getelementptr inbounds %struct.br_mrp, ptr %mrp.0113, i32 0, i32 2
  %7 = ptrtoint ptr %s_port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_port, align 4
  %tobool44.not = icmp eq ptr %8, null
  br i1 %tobool44.not, label %do.end42.do.body51_crit_edge, label %land.lhs.true45

do.end42.do.body51_crit_edge:                     ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body51

land.lhs.true45:                                  ; preds = %do.end42
  %dev46 = getelementptr inbounds %struct.net_bridge_port, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev46, align 4
  %ifindex47 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %ifindex47 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ifindex47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %ifindex)
  %cmp48 = icmp eq i32 %12, %ifindex
  br i1 %cmp48, label %land.lhs.true45.cleanup85_crit_edge, label %land.lhs.true45.do.body51_crit_edge

land.lhs.true45.do.body51_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body51

land.lhs.true45.cleanup85_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup85

do.body51:                                        ; preds = %land.lhs.true45.do.body51_crit_edge, %do.end42.do.body51_crit_edge
  %call52 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call52, label %do.body51.do.end61_crit_edge, label %land.lhs.true53

do.body51.do.end61_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end61

land.lhs.true53:                                  ; preds = %do.body51
  %call54 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %land.lhs.true53.do.end61_crit_edge, label %land.lhs.true56

land.lhs.true53.do.end61_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end61

land.lhs.true56:                                  ; preds = %land.lhs.true53
  %.b106107 = load i1, ptr @br_mrp_unique_ifindex.__warned.12, align 1
  br i1 %.b106107, label %land.lhs.true56.do.end61_crit_edge, label %if.then58

land.lhs.true56.do.end61_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end61

if.then58:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_unique_ifindex.__warned.12, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 100, ptr noundef nonnull @.str.8) #7
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %land.lhs.true56.do.end61_crit_edge, %land.lhs.true53.do.end61_crit_edge, %do.body51.do.end61_crit_edge
  %i_port = getelementptr inbounds %struct.br_mrp, ptr %mrp.0113, i32 0, i32 3
  %13 = ptrtoint ptr %i_port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_port, align 4
  %tobool63.not = icmp eq ptr %14, null
  br i1 %tobool63.not, label %do.end61.for.inc.critedge_crit_edge, label %land.lhs.true64

do.end61.for.inc.critedge_crit_edge:              ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.critedge

land.lhs.true64:                                  ; preds = %do.end61
  %dev65 = getelementptr inbounds %struct.net_bridge_port, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev65, align 4
  %ifindex66 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 17
  %17 = ptrtoint ptr %ifindex66 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ifindex66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %ifindex)
  %cmp67 = icmp eq i32 %18, %ifindex
  br i1 %cmp67, label %land.lhs.true64.cleanup85_crit_edge, label %land.lhs.true64.for.inc.critedge_crit_edge

land.lhs.true64.for.inc.critedge_crit_edge:       ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.critedge

land.lhs.true64.cleanup85_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup85

for.inc.critedge:                                 ; preds = %land.lhs.true64.for.inc.critedge_crit_edge, %do.end61.for.inc.critedge_crit_edge
  %19 = ptrtoint ptr %mrp.0113 to i32
  call void @__asan_load4_noabort(i32 %19)
  %mrp.0 = load volatile ptr, ptr %mrp.0113, align 4
  %tobool14.not = icmp eq ptr %mrp.0, null
  br i1 %tobool14.not, label %for.inc.critedge.cleanup85_crit_edge, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.critedge.cleanup85_crit_edge:             ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup85

cleanup85:                                        ; preds = %for.inc.critedge.cleanup85_crit_edge, %land.lhs.true64.cleanup85_crit_edge, %land.lhs.true45.cleanup85_crit_edge, %land.lhs.true28.cleanup85_crit_edge, %do.end.cleanup85_crit_edge
  %tobool14.not.lcssa = phi i1 [ true, %do.end.cleanup85_crit_edge ], [ true, %for.inc.critedge.cleanup85_crit_edge ], [ false, %land.lhs.true28.cleanup85_crit_edge ], [ false, %land.lhs.true45.cleanup85_crit_edge ], [ false, %land.lhs.true64.cleanup85_crit_edge ]
  ret i1 %tobool14.not.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_add_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @br_mrp_test_work_expired(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %test_end = getelementptr i8, ptr %work, i32 104
  %1 = ptrtoint ptr %test_end to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %test_end, align 4
  %sub = sub i32 %0, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %test_count_miss = getelementptr i8, ptr %work, i32 108
  %3 = ptrtoint ptr %test_count_miss to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %test_count_miss, align 4
  %test_max_miss = getelementptr i8, ptr %work, i32 112
  %5 = ptrtoint ptr %test_max_miss to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %test_max_miss, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp1 = icmp ult i32 %4, %6
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add nuw i32 %4, 1
  %7 = ptrtoint ptr %test_count_miss to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %inc, ptr %test_count_miss, align 4
  br label %if.end7

if.else:                                          ; preds = %if.end
  %ring_state = getelementptr i8, ptr %work, i32 -24
  %8 = ptrtoint ptr %ring_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ring_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp4 = icmp eq i32 %9, 1
  br i1 %cmp4, label %if.else.if.then5_crit_edge, label %lor.lhs.false

if.else.if.then5_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.else
  %test_monitor = getelementptr i8, ptr %work, i32 116
  %10 = ptrtoint ptr %test_monitor to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %test_monitor, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end7_crit_edge, label %lor.lhs.false.if.then5_crit_edge

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.else.if.then5_crit_edge
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %lor.lhs.false.if.end7_crit_edge, %if.then2
  %notify_open.0.off0 = phi i1 [ false, %if.then2 ], [ true, %if.then5 ], [ false, %lor.lhs.false.if.end7_crit_edge ]
  %12 = tail call i32 @llvm.read_register.i32(metadata !67) #7
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !82
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end7.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end7.rcu_read_lock.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end7
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end7.rcu_read_lock.exit_crit_edge
  %p_port = getelementptr i8, ptr %work, i32 -52
  %16 = ptrtoint ptr %p_port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %p_port, align 4
  %call10 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end19_crit_edge

rcu_read_lock.exit.do.end19_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call12 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end19_crit_edge, label %land.lhs.true14

land.lhs.true.do.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

land.lhs.true14:                                  ; preds = %land.lhs.true
  %.b112 = load i1, ptr @br_mrp_test_work_expired.__warned, align 1
  br i1 %.b112, label %land.lhs.true14.do.end19_crit_edge, label %if.then16

land.lhs.true14.do.end19_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_test_work_expired.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 309, ptr noundef nonnull @.str.13) #7
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %land.lhs.true14.do.end19_crit_edge, %land.lhs.true.do.end19_crit_edge, %rcu_read_lock.exit.do.end19_crit_edge
  %tobool21.not = icmp eq ptr %17, null
  br i1 %tobool21.not, label %do.end19.if.end38_crit_edge, label %if.then22

do.end19.if.end38_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then22:                                        ; preds = %do.end19
  %test_monitor23 = getelementptr i8, ptr %work, i32 116
  %18 = ptrtoint ptr %test_monitor23 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %test_monitor23, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool24.not = icmp eq i8 %19, 0
  br i1 %tobool24.not, label %if.then25, label %if.then22.if.end31_crit_edge

if.then22.if.end31_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then25:                                        ; preds = %if.then22
  %call26 = tail call fastcc ptr @br_mrp_alloc_test_skb(ptr noundef %add.ptr, ptr noundef nonnull %17, i32 noundef 0)
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.then25.out_crit_edge, label %if.end29

if.then25.out_crit_edge:                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end29:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call26, i32 0, i32 19
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call26, i32 0, i32 18
  %22 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call26, i32 0, i32 15, i32 0, i32 20
  %24 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i, ptr %network_header.i, align 4
  %call30 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call26) #7
  br label %if.end31

if.end31:                                         ; preds = %if.end29, %if.then22.if.end31_crit_edge
  br i1 %notify_open.0.off0, label %land.lhs.true33, label %if.end31.if.end38_crit_edge

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

land.lhs.true33:                                  ; preds = %if.end31
  %ring_role_offloaded = getelementptr i8, ptr %work, i32 -28
  %25 = ptrtoint ptr %ring_role_offloaded to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ring_role_offloaded, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool34.not = icmp eq i8 %26, 0
  br i1 %tobool34.not, label %if.then35, label %land.lhs.true33.if.end38_crit_edge

land.lhs.true33.if.end38_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then35:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %17, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %call36 = tail call i32 @br_mrp_ring_port_open(ptr noundef %28, i8 noundef zeroext 1) #7
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %land.lhs.true33.if.end38_crit_edge, %if.end31.if.end38_crit_edge, %do.end19.if.end38_crit_edge
  %s_port = getelementptr i8, ptr %work, i32 -48
  %29 = ptrtoint ptr %s_port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %s_port, align 4
  %call44 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.lhs.true46, label %if.end38.do.end54_crit_edge

if.end38.do.end54_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54

land.lhs.true46:                                  ; preds = %if.end38
  %call47 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true46.do.end54_crit_edge, label %land.lhs.true49

land.lhs.true46.do.end54_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54

land.lhs.true49:                                  ; preds = %land.lhs.true46
  %.b110111 = load i1, ptr @br_mrp_test_work_expired.__warned.16, align 1
  br i1 %.b110111, label %land.lhs.true49.do.end54_crit_edge, label %if.then51

land.lhs.true49.do.end54_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54

if.then51:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_test_work_expired.__warned.16, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 325, ptr noundef nonnull @.str.13) #7
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %land.lhs.true49.do.end54_crit_edge, %land.lhs.true46.do.end54_crit_edge, %if.end38.do.end54_crit_edge
  %tobool56.not = icmp eq ptr %30, null
  br i1 %tobool56.not, label %do.end54.out_crit_edge, label %if.then57

do.end54.out_crit_edge:                           ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then57:                                        ; preds = %do.end54
  %test_monitor58 = getelementptr i8, ptr %work, i32 116
  %31 = ptrtoint ptr %test_monitor58 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %test_monitor58, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool59.not = icmp eq i8 %32, 0
  br i1 %tobool59.not, label %if.then60, label %if.then57.if.end66_crit_edge

if.then57.if.end66_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then60:                                        ; preds = %if.then57
  %call61 = tail call fastcc ptr @br_mrp_alloc_test_skb(ptr noundef %add.ptr, ptr noundef nonnull %30, i32 noundef 1)
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %if.then60.out_crit_edge, label %if.end64

if.then60.out_crit_edge:                          ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end64:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  %data.i115 = getelementptr inbounds %struct.sk_buff, ptr %call61, i32 0, i32 19
  %33 = ptrtoint ptr %data.i115 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i115, align 4
  %head.i116 = getelementptr inbounds %struct.sk_buff, ptr %call61, i32 0, i32 18
  %35 = ptrtoint ptr %head.i116 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i116, align 8
  %sub.ptr.lhs.cast.i117 = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast.i118 = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i119 = sub i32 %sub.ptr.lhs.cast.i117, %sub.ptr.rhs.cast.i118
  %conv.i120 = trunc i32 %sub.ptr.sub.i119 to i16
  %network_header.i121 = getelementptr inbounds %struct.sk_buff, ptr %call61, i32 0, i32 15, i32 0, i32 20
  %37 = ptrtoint ptr %network_header.i121 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i120, ptr %network_header.i121, align 4
  %call65 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call61) #7
  br label %if.end66

if.end66:                                         ; preds = %if.end64, %if.then57.if.end66_crit_edge
  br i1 %notify_open.0.off0, label %land.lhs.true68, label %if.end66.out_crit_edge

if.end66.out_crit_edge:                           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true68:                                  ; preds = %if.end66
  %ring_role_offloaded69 = getelementptr i8, ptr %work, i32 -28
  %38 = ptrtoint ptr %ring_role_offloaded69 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ring_role_offloaded69, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool70.not = icmp eq i8 %39, 0
  br i1 %tobool70.not, label %if.then71, label %land.lhs.true68.out_crit_edge

land.lhs.true68.out_crit_edge:                    ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then71:                                        ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #9
  %dev72 = getelementptr inbounds %struct.net_bridge_port, ptr %30, i32 0, i32 1
  %40 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev72, align 4
  %call73 = tail call i32 @br_mrp_ring_port_open(ptr noundef %41, i8 noundef zeroext 1) #7
  br label %out

out:                                              ; preds = %if.then71, %land.lhs.true68.out_crit_edge, %if.end66.out_crit_edge, %if.then60.out_crit_edge, %do.end54.out_crit_edge, %if.then25.out_crit_edge
  %call.i122 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i122, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i125

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i125:                               ; preds = %out
  %call1.i123 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i123)
  %tobool.not.i124 = icmp eq i32 %call1.i123, 0
  br i1 %tobool.not.i124, label %land.lhs.true.i125.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i127

land.lhs.true.i125.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i125
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i127:                              ; preds = %land.lhs.true.i125
  %.b4.i126 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i126, label %land.lhs.true2.i127.rcu_read_unlock.exit_crit_edge, label %if.then.i128

land.lhs.true2.i127.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i127
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i128:                                     ; preds = %land.lhs.true2.i127
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i128, %land.lhs.true2.i127.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i125.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !83
  %42 = tail call i32 @llvm.read_register.i32(metadata !67) #7
  %and.i.i.i.i.i129 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i129 to ptr
  %preempt_count.i.i.i.i130 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i130 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i130, align 4
  %sub.i.i.i = add i32 %45, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i130, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %46 = load ptr, ptr @system_wq, align 4
  %test_interval = getelementptr i8, ptr %work, i32 100
  %47 = ptrtoint ptr %test_interval to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %test_interval, align 4
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %48) #7
  %call.i131 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %46, ptr noundef %work, i32 noundef %call3.i) #7
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @br_mrp_in_test_work_expired(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %in_test_end = getelementptr i8, ptr %work, i32 104
  %1 = ptrtoint ptr %in_test_end to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %in_test_end, align 4
  %sub = sub i32 %0, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_test_count_miss = getelementptr i8, ptr %work, i32 108
  %3 = ptrtoint ptr %in_test_count_miss to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %in_test_count_miss, align 4
  %in_test_max_miss = getelementptr i8, ptr %work, i32 112
  %5 = ptrtoint ptr %in_test_max_miss to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %in_test_max_miss, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp1 = icmp ult i32 %4, %6
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add nuw i32 %4, 1
  %7 = ptrtoint ptr %in_test_count_miss to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %inc, ptr %in_test_count_miss, align 4
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %in_state = getelementptr i8, ptr %work, i32 -128
  %8 = ptrtoint ptr %in_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %in_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp4 = icmp eq i32 %9, 1
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then2
  %notify_open.0.off0 = phi i1 [ false, %if.then2 ], [ %cmp4, %if.else ]
  %10 = tail call i32 @llvm.read_register.i32(metadata !67) #7
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !82
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end7.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end7.rcu_read_lock.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end7
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end7.rcu_read_lock.exit_crit_edge
  %p_port = getelementptr i8, ptr %work, i32 -172
  %14 = ptrtoint ptr %p_port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %p_port, align 4
  %call10 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end18_crit_edge

rcu_read_lock.exit.do.end18_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call11 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.do.end18_crit_edge, label %land.lhs.true13

land.lhs.true.do.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

land.lhs.true13:                                  ; preds = %land.lhs.true
  %.b146 = load i1, ptr @br_mrp_in_test_work_expired.__warned, align 1
  br i1 %.b146, label %land.lhs.true13.do.end18_crit_edge, label %if.then15

land.lhs.true13.do.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_in_test_work_expired.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 376, ptr noundef nonnull @.str.13) #7
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %land.lhs.true13.do.end18_crit_edge, %land.lhs.true.do.end18_crit_edge, %rcu_read_lock.exit.do.end18_crit_edge
  %tobool20.not = icmp eq ptr %15, null
  br i1 %tobool20.not, label %do.end18.if.end33_crit_edge, label %if.then21

do.end18.if.end33_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then21:                                        ; preds = %do.end18
  %call22 = tail call fastcc ptr @br_mrp_alloc_in_test_skb(ptr noundef %add.ptr, ptr noundef nonnull %15, i32 noundef 0)
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.then21.out_crit_edge, label %if.end25

if.then21.out_crit_edge:                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end25:                                         ; preds = %if.then21
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call22, i32 0, i32 19
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call22, i32 0, i32 18
  %18 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call22, i32 0, i32 15, i32 0, i32 20
  %20 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %network_header.i, align 4
  %call26 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call22) #7
  br i1 %notify_open.0.off0, label %land.lhs.true28, label %if.end25.if.end33_crit_edge

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

land.lhs.true28:                                  ; preds = %if.end25
  %in_role_offloaded = getelementptr i8, ptr %work, i32 -132
  %21 = ptrtoint ptr %in_role_offloaded to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %in_role_offloaded, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool29.not = icmp eq i8 %22, 0
  br i1 %tobool29.not, label %if.then30, label %land.lhs.true28.if.end33_crit_edge

land.lhs.true28.if.end33_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then30:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %call31 = tail call i32 @br_mrp_in_port_open(ptr noundef %24, i8 noundef zeroext 1) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %land.lhs.true28.if.end33_crit_edge, %if.end25.if.end33_crit_edge, %do.end18.if.end33_crit_edge
  %s_port = getelementptr i8, ptr %work, i32 -168
  %25 = ptrtoint ptr %s_port to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %s_port, align 4
  %call39 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true41, label %if.end33.do.end49_crit_edge

if.end33.do.end49_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end49

land.lhs.true41:                                  ; preds = %if.end33
  %call42 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %land.lhs.true41.do.end49_crit_edge, label %land.lhs.true44

land.lhs.true41.do.end49_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end49

land.lhs.true44:                                  ; preds = %land.lhs.true41
  %.b142145 = load i1, ptr @br_mrp_in_test_work_expired.__warned.20, align 1
  br i1 %.b142145, label %land.lhs.true44.do.end49_crit_edge, label %if.then46

land.lhs.true44.do.end49_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end49

if.then46:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_in_test_work_expired.__warned.20, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 390, ptr noundef nonnull @.str.13) #7
  br label %do.end49

do.end49:                                         ; preds = %if.then46, %land.lhs.true44.do.end49_crit_edge, %land.lhs.true41.do.end49_crit_edge, %if.end33.do.end49_crit_edge
  %tobool51.not = icmp eq ptr %26, null
  br i1 %tobool51.not, label %do.end49.if.end66_crit_edge, label %if.then52

do.end49.if.end66_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then52:                                        ; preds = %do.end49
  %call53 = tail call fastcc ptr @br_mrp_alloc_in_test_skb(ptr noundef %add.ptr, ptr noundef nonnull %26, i32 noundef 1)
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %if.then52.out_crit_edge, label %if.end56

if.then52.out_crit_edge:                          ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end56:                                         ; preds = %if.then52
  %data.i149 = getelementptr inbounds %struct.sk_buff, ptr %call53, i32 0, i32 19
  %27 = ptrtoint ptr %data.i149 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i149, align 4
  %head.i150 = getelementptr inbounds %struct.sk_buff, ptr %call53, i32 0, i32 18
  %29 = ptrtoint ptr %head.i150 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i150, align 8
  %sub.ptr.lhs.cast.i151 = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i152 = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i153 = sub i32 %sub.ptr.lhs.cast.i151, %sub.ptr.rhs.cast.i152
  %conv.i154 = trunc i32 %sub.ptr.sub.i153 to i16
  %network_header.i155 = getelementptr inbounds %struct.sk_buff, ptr %call53, i32 0, i32 15, i32 0, i32 20
  %31 = ptrtoint ptr %network_header.i155 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i154, ptr %network_header.i155, align 4
  %call57 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call53) #7
  br i1 %notify_open.0.off0, label %land.lhs.true59, label %if.end56.if.end66_crit_edge

if.end56.if.end66_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

land.lhs.true59:                                  ; preds = %if.end56
  %in_role_offloaded60 = getelementptr i8, ptr %work, i32 -132
  %32 = ptrtoint ptr %in_role_offloaded60 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %in_role_offloaded60, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool61.not = icmp eq i8 %33, 0
  br i1 %tobool61.not, label %if.then62, label %land.lhs.true59.if.end66_crit_edge

land.lhs.true59.if.end66_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then62:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #9
  %dev63 = getelementptr inbounds %struct.net_bridge_port, ptr %26, i32 0, i32 1
  %34 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev63, align 4
  %call64 = tail call i32 @br_mrp_in_port_open(ptr noundef %35, i8 noundef zeroext 1) #7
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %land.lhs.true59.if.end66_crit_edge, %if.end56.if.end66_crit_edge, %do.end49.if.end66_crit_edge
  %i_port = getelementptr i8, ptr %work, i32 -164
  %36 = ptrtoint ptr %i_port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %i_port, align 4
  %call72 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %land.lhs.true74, label %if.end66.do.end82_crit_edge

if.end66.do.end82_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

land.lhs.true74:                                  ; preds = %if.end66
  %call75 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %land.lhs.true74.do.end82_crit_edge, label %land.lhs.true77

land.lhs.true74.do.end82_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

land.lhs.true77:                                  ; preds = %land.lhs.true74
  %.b143144 = load i1, ptr @br_mrp_in_test_work_expired.__warned.21, align 1
  br i1 %.b143144, label %land.lhs.true77.do.end82_crit_edge, label %if.then79

land.lhs.true77.do.end82_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

if.then79:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_in_test_work_expired.__warned.21, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 404, ptr noundef nonnull @.str.13) #7
  br label %do.end82

do.end82:                                         ; preds = %if.then79, %land.lhs.true77.do.end82_crit_edge, %land.lhs.true74.do.end82_crit_edge, %if.end66.do.end82_crit_edge
  %tobool84.not = icmp eq ptr %37, null
  br i1 %tobool84.not, label %do.end82.out_crit_edge, label %if.then85

do.end82.out_crit_edge:                           ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then85:                                        ; preds = %do.end82
  %call86 = tail call fastcc ptr @br_mrp_alloc_in_test_skb(ptr noundef %add.ptr, ptr noundef nonnull %37, i32 noundef 2)
  %tobool87.not = icmp eq ptr %call86, null
  br i1 %tobool87.not, label %if.then85.out_crit_edge, label %if.end89

if.then85.out_crit_edge:                          ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end89:                                         ; preds = %if.then85
  %data.i156 = getelementptr inbounds %struct.sk_buff, ptr %call86, i32 0, i32 19
  %38 = ptrtoint ptr %data.i156 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i156, align 4
  %head.i157 = getelementptr inbounds %struct.sk_buff, ptr %call86, i32 0, i32 18
  %40 = ptrtoint ptr %head.i157 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i157, align 8
  %sub.ptr.lhs.cast.i158 = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i159 = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i160 = sub i32 %sub.ptr.lhs.cast.i158, %sub.ptr.rhs.cast.i159
  %conv.i161 = trunc i32 %sub.ptr.sub.i160 to i16
  %network_header.i162 = getelementptr inbounds %struct.sk_buff, ptr %call86, i32 0, i32 15, i32 0, i32 20
  %42 = ptrtoint ptr %network_header.i162 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i161, ptr %network_header.i162, align 4
  %call90 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call86) #7
  br i1 %notify_open.0.off0, label %land.lhs.true92, label %if.end89.out_crit_edge

if.end89.out_crit_edge:                           ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true92:                                  ; preds = %if.end89
  %in_role_offloaded93 = getelementptr i8, ptr %work, i32 -132
  %43 = ptrtoint ptr %in_role_offloaded93 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %in_role_offloaded93, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool94.not = icmp eq i8 %44, 0
  br i1 %tobool94.not, label %if.then95, label %land.lhs.true92.out_crit_edge

land.lhs.true92.out_crit_edge:                    ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then95:                                        ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #9
  %dev96 = getelementptr inbounds %struct.net_bridge_port, ptr %37, i32 0, i32 1
  %45 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev96, align 4
  %call97 = tail call i32 @br_mrp_in_port_open(ptr noundef %46, i8 noundef zeroext 1) #7
  br label %out

out:                                              ; preds = %if.then95, %land.lhs.true92.out_crit_edge, %if.end89.out_crit_edge, %if.then85.out_crit_edge, %do.end82.out_crit_edge, %if.then52.out_crit_edge, %if.then21.out_crit_edge
  %call.i163 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i163, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i166

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i166:                               ; preds = %out
  %call1.i164 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i164)
  %tobool.not.i165 = icmp eq i32 %call1.i164, 0
  br i1 %tobool.not.i165, label %land.lhs.true.i166.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i168

land.lhs.true.i166.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i166
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i168:                              ; preds = %land.lhs.true.i166
  %.b4.i167 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i167, label %land.lhs.true2.i168.rcu_read_unlock.exit_crit_edge, label %if.then.i169

land.lhs.true2.i168.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i168
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i169:                                     ; preds = %land.lhs.true2.i168
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i169, %land.lhs.true2.i168.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i166.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !83
  %47 = tail call i32 @llvm.read_register.i32(metadata !67) #7
  %and.i.i.i.i.i170 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i170 to ptr
  %preempt_count.i.i.i.i171 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i171 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i171, align 4
  %sub.i.i.i = add i32 %50, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i171, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %51 = load ptr, ptr @system_wq, align 4
  %in_test_interval = getelementptr i8, ptr %work, i32 100
  %52 = ptrtoint ptr %in_test_interval to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %in_test_interval, align 4
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %53) #7
  %call.i172 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %51, ptr noundef %work, i32 noundef %call3.i) #7
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_mrp_switchdev_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @br_mrp_del_impl(ptr noundef %br, ptr noundef %mrp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %test_work = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 15
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %test_work) #7
  %call1 = tail call i32 @br_mrp_switchdev_send_ring_test(ptr noundef %br, ptr noundef %mrp, i32 noundef 0, i8 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false) #7
  %in_test_work = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 21
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %in_test_work) #7
  %call3 = tail call i32 @br_mrp_switchdev_send_in_test(ptr noundef %br, ptr noundef %mrp, i32 noundef 0, i8 noundef zeroext 0, i32 noundef 0) #7
  %call4 = tail call i32 @br_mrp_switchdev_set_ring_role(ptr noundef %br, ptr noundef %mrp, i32 noundef 0) #7
  %call5 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call5, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true7

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b289 = load i1, ptr @br_mrp_del_impl.__warned, align 1
  br i1 %.b289, label %land.lhs.true7.do.end_crit_edge, label %if.then

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_del_impl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 443, ptr noundef nonnull @.str.8) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true7.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %i_port = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 3
  %0 = ptrtoint ptr %i_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_port, align 4
  %tobool9.not = icmp eq ptr %1, null
  br i1 %tobool9.not, label %do.end.if.end12_crit_edge, label %if.then10

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %in_id = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 5
  %2 = ptrtoint ptr %in_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %in_id, align 4
  %ring_id = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 4
  %4 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ring_id, align 4
  %call11 = tail call i32 @br_mrp_switchdev_set_in_role(ptr noundef %br, ptr noundef %mrp, i16 noundef zeroext %3, i32 noundef %5, i32 noundef 0) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.end.if.end12_crit_edge
  %call13 = tail call i32 @br_mrp_switchdev_del(ptr noundef %br, ptr noundef %mrp) #7
  %call15 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call15, label %if.end12.do.end24_crit_edge, label %land.lhs.true16

if.end12.do.end24_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

land.lhs.true16:                                  ; preds = %if.end12
  %call17 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true16.do.end24_crit_edge, label %land.lhs.true19

land.lhs.true16.do.end24_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %.b283288 = load i1, ptr @br_mrp_del_impl.__warned.22, align 1
  br i1 %.b283288, label %land.lhs.true19.do.end24_crit_edge, label %if.then21

land.lhs.true19.do.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_del_impl.__warned.22, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 451, ptr noundef nonnull @.str.8) #7
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %land.lhs.true19.do.end24_crit_edge, %land.lhs.true16.do.end24_crit_edge, %if.end12.do.end24_crit_edge
  %p_port = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 1
  %6 = ptrtoint ptr %p_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p_port, align 4
  %tobool26.not = icmp eq ptr %7, null
  br i1 %tobool26.not, label %do.end24.do.body72_crit_edge, label %if.then27

do.end24.do.body72_crit_edge:                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body72

if.then27:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_lock_bh(ptr noundef %br) #7
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %conv = select i1 %tobool.i.not, i8 0, i8 3
  %state29 = getelementptr inbounds %struct.net_bridge_port, ptr %7, i32 0, i32 8
  %12 = ptrtoint ptr %state29 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %state29, align 1
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %7, i32 0, i32 4
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, -131073
  store i32 %and, ptr %flags, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %br) #7
  %conv31 = zext i8 %conv to i32
  %call32 = tail call i32 @br_mrp_port_switchdev_set_state(ptr noundef nonnull %7, i32 noundef %conv31) #7
  %15 = ptrtoint ptr %p_port to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr null, ptr %p_port, align 4
  br label %do.body72

do.body72:                                        ; preds = %if.then27, %do.end24.do.body72_crit_edge
  %call73 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call73, label %do.body72.do.end82_crit_edge, label %land.lhs.true74

do.body72.do.end82_crit_edge:                     ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

land.lhs.true74:                                  ; preds = %do.body72
  %call75 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %land.lhs.true74.do.end82_crit_edge, label %land.lhs.true77

land.lhs.true74.do.end82_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

land.lhs.true77:                                  ; preds = %land.lhs.true74
  %.b284287 = load i1, ptr @br_mrp_del_impl.__warned.23, align 1
  br i1 %.b284287, label %land.lhs.true77.do.end82_crit_edge, label %if.then79

land.lhs.true77.do.end82_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

if.then79:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_del_impl.__warned.23, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 463, ptr noundef nonnull @.str.8) #7
  br label %do.end82

do.end82:                                         ; preds = %if.then79, %land.lhs.true77.do.end82_crit_edge, %land.lhs.true74.do.end82_crit_edge, %do.body72.do.end82_crit_edge
  %s_port = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 2
  %16 = ptrtoint ptr %s_port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_port, align 4
  %tobool84.not = icmp eq ptr %17, null
  br i1 %tobool84.not, label %do.end82.do.body140_crit_edge, label %if.then85

do.end82.do.body140_crit_edge:                    ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body140

if.then85:                                        ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_lock_bh(ptr noundef %br) #7
  %dev87 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %18 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev87, align 4
  %state.i290 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %state.i290 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state.i290, align 4
  %and1.i.i291 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i291)
  %tobool.i292.not = icmp eq i32 %and1.i.i291, 0
  %conv91 = select i1 %tobool.i292.not, i8 0, i8 3
  %state92 = getelementptr inbounds %struct.net_bridge_port, ptr %17, i32 0, i32 8
  %22 = ptrtoint ptr %state92 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv91, ptr %state92, align 1
  %flags93 = getelementptr inbounds %struct.net_bridge_port, ptr %17, i32 0, i32 4
  %23 = ptrtoint ptr %flags93 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags93, align 4
  %and94 = and i32 %24, -131073
  store i32 %and94, ptr %flags93, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %br) #7
  %conv96 = zext i8 %conv91 to i32
  %call97 = tail call i32 @br_mrp_port_switchdev_set_state(ptr noundef nonnull %17, i32 noundef %conv96) #7
  %25 = ptrtoint ptr %s_port to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr null, ptr %s_port, align 4
  br label %do.body140

do.body140:                                       ; preds = %if.then85, %do.end82.do.body140_crit_edge
  %call141 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call141, label %do.body140.do.end150_crit_edge, label %land.lhs.true142

do.body140.do.end150_crit_edge:                   ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end150

land.lhs.true142:                                 ; preds = %do.body140
  %call143 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %land.lhs.true142.do.end150_crit_edge, label %land.lhs.true145

land.lhs.true142.do.end150_crit_edge:             ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end150

land.lhs.true145:                                 ; preds = %land.lhs.true142
  %.b285286 = load i1, ptr @br_mrp_del_impl.__warned.24, align 1
  br i1 %.b285286, label %land.lhs.true145.do.end150_crit_edge, label %if.then147

land.lhs.true145.do.end150_crit_edge:             ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end150

if.then147:                                       ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_del_impl.__warned.24, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 475, ptr noundef nonnull @.str.8) #7
  br label %do.end150

do.end150:                                        ; preds = %if.then147, %land.lhs.true145.do.end150_crit_edge, %land.lhs.true142.do.end150_crit_edge, %do.body140.do.end150_crit_edge
  %26 = ptrtoint ptr %i_port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_port, align 4
  %tobool153.not = icmp eq ptr %27, null
  br i1 %tobool153.not, label %do.end150.if.end208_crit_edge, label %if.then154

do.end150.if.end208_crit_edge:                    ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end208

if.then154:                                       ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_lock_bh(ptr noundef %br) #7
  %dev156 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %28 = ptrtoint ptr %dev156 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev156, align 4
  %state.i293 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %state.i293 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %state.i293, align 4
  %and1.i.i294 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i294)
  %tobool.i295.not = icmp eq i32 %and1.i.i294, 0
  %conv160 = select i1 %tobool.i295.not, i8 0, i8 3
  %state161 = getelementptr inbounds %struct.net_bridge_port, ptr %27, i32 0, i32 8
  %32 = ptrtoint ptr %state161 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv160, ptr %state161, align 1
  %flags162 = getelementptr inbounds %struct.net_bridge_port, ptr %27, i32 0, i32 4
  %33 = ptrtoint ptr %flags162 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags162, align 4
  %and163 = and i32 %34, -131073
  store i32 %and163, ptr %flags162, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %br) #7
  %conv165 = zext i8 %conv160 to i32
  %call166 = tail call i32 @br_mrp_port_switchdev_set_state(ptr noundef nonnull %27, i32 noundef %conv165) #7
  %35 = ptrtoint ptr %i_port to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr null, ptr %i_port, align 4
  br label %if.end208

if.end208:                                        ; preds = %if.then154, %do.end150.if.end208_crit_edge
  %36 = ptrtoint ptr %mrp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mrp, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %mrp, i32 0, i32 1
  %38 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pprev2.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %37, ptr %39, align 4
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %if.end208.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

if.end208.hlist_del_rcu.exit_crit_edge:           ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %37, i32 0, i32 1
  %41 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %if.end208.hlist_del_rcu.exit_crit_edge
  %42 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %tobool210.not = icmp eq ptr %mrp, null
  br i1 %tobool210.not, label %hlist_del_rcu.exit.if.end215_crit_edge, label %do.end214

hlist_del_rcu.exit.if.end215_crit_edge:           ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end215

do.end214:                                        ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #9
  %rcu = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 27
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 300 to ptr)) #7
  br label %if.end215

if.end215:                                        ; preds = %do.end214, %hlist_del_rcu.exit.if.end215_crit_edge
  %mrp_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 47
  %43 = ptrtoint ptr %mrp_list to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %mrp_list, align 4
  %tobool.not.i.not = icmp eq ptr %44, null
  br i1 %tobool.not.i.not, label %if.then220, label %if.end215.if.end221_crit_edge

if.end215.if.end221_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end221

if.then220:                                       ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @br_del_frame(ptr noundef %br, ptr noundef nonnull @mrp_frame_type) #7
  br label %if.end221

if.end221:                                        ; preds = %if.then220, %if.end215.if.end221_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_mrp_port_del(ptr noundef %br, ptr noundef readnone %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i, label %entry.do.end.i_crit_edge, label %land.lhs.true.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true2.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true2.i.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true2.i.do.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true2.i
  %.b60.i = load i1, ptr @br_mrp_find_port.__warned, align 1
  br i1 %.b60.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_find_port.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 115, ptr noundef nonnull @.str.9) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true2.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %mrp_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 47
  br label %for.cond.i

for.cond.i:                                       ; preds = %lor.lhs.false26.i.for.cond.i_crit_edge, %do.end.i
  %mrp.0.in.i = phi ptr [ %mrp_list.i, %do.end.i ], [ %mrp.0.i, %lor.lhs.false26.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %mrp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %mrp.0.i = load volatile ptr, ptr %mrp.0.in.i, align 4
  %tobool14.not.i = icmp eq ptr %mrp.0.i, null
  br i1 %tobool14.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %p_port.i = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %p_port.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %p_port.i, align 4
  %cmp.i = icmp eq ptr %2, %p
  br i1 %cmp.i, label %for.body.i.if.end_crit_edge, label %lor.lhs.false.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.i:                                  ; preds = %for.body.i
  %s_port.i = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 2
  %3 = ptrtoint ptr %s_port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %s_port.i, align 4
  %cmp25.i = icmp eq ptr %4, %p
  br i1 %cmp25.i, label %lor.lhs.false.i.if.end_crit_edge, label %lor.lhs.false26.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false26.i:                                ; preds = %lor.lhs.false.i
  %i_port.i = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 3
  %5 = ptrtoint ptr %i_port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %i_port.i, align 4
  %cmp32.i = icmp eq ptr %6, %p
  br i1 %cmp32.i, label %lor.lhs.false26.i.if.end_crit_edge, label %lor.lhs.false26.i.for.cond.i_crit_edge

lor.lhs.false26.i.for.cond.i_crit_edge:           ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

lor.lhs.false26.i.if.end_crit_edge:               ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false26.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %for.body.i.if.end_crit_edge
  tail call fastcc void @br_mrp_del_impl(ptr noundef %br, ptr noundef nonnull %mrp.0.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.cond.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_mrp_del(ptr noundef %br, ptr nocapture noundef readonly %instance) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %instance, align 4
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i, label %entry.do.end.i_crit_edge, label %land.lhs.true.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true2.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true2.i.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true2.i.do.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true2.i
  %.b39.i = load i1, ptr @br_mrp_find_id.__warned, align 1
  br i1 %.b39.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_find_id.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 58, ptr noundef nonnull @.str.9) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true2.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %mrp_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 47
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %mrp.0.in.i = phi ptr [ %mrp_list.i, %do.end.i ], [ %mrp.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %mrp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %mrp.0.i = load volatile ptr, ptr %mrp.0.in.i, align 4
  %tobool14.not.i = icmp eq ptr %mrp.0.i, null
  br i1 %tobool14.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %ring_id15.i = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 4
  %3 = ptrtoint ptr %ring_id15.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ring_id15.i, align 4
  %cmp.i = icmp eq i32 %4, %1
  br i1 %cmp.i, label %if.end, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @br_mrp_del_impl(ptr noundef %br, ptr noundef nonnull %mrp.0.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_mrp_set_port_state(ptr noundef %p, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %state)
  %cmp = icmp eq i32 %state, 2
  %. = select i1 %cmp, i32 3, i32 4
  %conv = trunc i32 %. to i8
  %state4 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 8
  %4 = ptrtoint ptr %state4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %state4, align 1
  %5 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %6) #7
  %call = tail call i32 @br_mrp_port_switchdev_set_state(ptr noundef nonnull %p, i32 noundef %.) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_mrp_port_switchdev_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_mrp_set_port_role(ptr noundef %p, i32 noundef %role) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i, label %if.end.do.end.i_crit_edge, label %land.lhs.true.i

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true2.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true2.i.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true2.i.do.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true2.i
  %.b60.i = load i1, ptr @br_mrp_find_port.__warned, align 1
  br i1 %.b60.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_find_port.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 115, ptr noundef nonnull @.str.9) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true2.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %mrp_list.i = getelementptr inbounds %struct.net_bridge, ptr %3, i32 0, i32 47
  br label %for.cond.i

for.cond.i:                                       ; preds = %lor.lhs.false26.i.for.cond.i_crit_edge, %do.end.i
  %mrp.0.in.i = phi ptr [ %mrp_list.i, %do.end.i ], [ %mrp.0.i, %lor.lhs.false26.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %mrp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %mrp.0.i = load volatile ptr, ptr %mrp.0.in.i, align 4
  %tobool14.not.i = icmp eq ptr %mrp.0.i, null
  br i1 %tobool14.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %p_port.i = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %p_port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %p_port.i, align 4
  %cmp.i = icmp eq ptr %6, %p
  br i1 %cmp.i, label %for.body.i.if.end4_crit_edge, label %lor.lhs.false.i

for.body.i.if.end4_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

lor.lhs.false.i:                                  ; preds = %for.body.i
  %s_port.i = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 2
  %7 = ptrtoint ptr %s_port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %s_port.i, align 4
  %cmp25.i = icmp eq ptr %8, %p
  br i1 %cmp25.i, label %lor.lhs.false.i.if.end4_crit_edge, label %lor.lhs.false26.i

lor.lhs.false.i.if.end4_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

lor.lhs.false26.i:                                ; preds = %lor.lhs.false.i
  %i_port.i = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 3
  %9 = ptrtoint ptr %i_port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %i_port.i, align 4
  %cmp32.i = icmp eq ptr %10, %p
  br i1 %cmp32.i, label %lor.lhs.false26.i.if.end4_crit_edge, label %lor.lhs.false26.i.for.cond.i_crit_edge

lor.lhs.false26.i.for.cond.i_crit_edge:           ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

lor.lhs.false26.i.if.end4_crit_edge:              ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end4:                                          ; preds = %lor.lhs.false26.i.if.end4_crit_edge, %lor.lhs.false.i.if.end4_crit_edge, %for.body.i.if.end4_crit_edge
  %11 = zext i32 %role to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %role, label %if.end4.cleanup_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body39
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %p_port.i.le = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !84
  br label %sw.epilog

do.body39:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !85
  %s_port67 = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body39, %do.body
  %s_port67.sink = phi ptr [ %s_port67, %do.body39 ], [ %p_port.i.le, %do.body ]
  %12 = ptrtoint ptr %s_port67.sink to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %p, ptr %s_port67.sink, align 4
  %call79 = tail call i32 @br_mrp_port_switchdev_set_role(ptr noundef nonnull %p, i32 noundef %role) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end4.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_mrp_port_switchdev_set_role(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_mrp_set_ring_state(ptr noundef %br, ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i, label %entry.do.end.i_crit_edge, label %land.lhs.true.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true2.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true2.i.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true2.i.do.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true2.i
  %.b39.i = load i1, ptr @br_mrp_find_id.__warned, align 1
  br i1 %.b39.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_find_id.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 58, ptr noundef nonnull @.str.9) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true2.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %mrp_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 47
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %mrp.0.in.i = phi ptr [ %mrp_list.i, %do.end.i ], [ %mrp.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %mrp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %mrp.0.i = load volatile ptr, ptr %mrp.0.in.i, align 4
  %tobool14.not.i = icmp eq ptr %mrp.0.i, null
  br i1 %tobool14.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %ring_id15.i = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 4
  %3 = ptrtoint ptr %ring_id15.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ring_id15.i, align 4
  %cmp.i = icmp eq i32 %4, %1
  br i1 %cmp.i, label %if.end, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.end:                                           ; preds = %for.body.i
  %ring_state = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 9
  %5 = ptrtoint ptr %ring_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ring_state, align 4
  %ring_state1 = getelementptr inbounds %struct.br_mrp_ring_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %ring_state1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ring_state1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not = icmp eq i32 %6, %8
  br i1 %cmp.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ring_transitions = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 10
  %9 = ptrtoint ptr %ring_transitions to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ring_transitions, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %ring_transitions, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %11 = ptrtoint ptr %ring_state1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ring_state1, align 4
  %13 = ptrtoint ptr %ring_state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %ring_state, align 4
  %14 = load i32, ptr %ring_state1, align 4
  %call7 = tail call i32 @br_mrp_switchdev_set_ring_state(ptr noundef %br, ptr noundef nonnull %mrp.0.i, i32 noundef %14) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_mrp_switchdev_set_ring_state(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_mrp_set_ring_role(ptr noundef %br, ptr nocapture noundef readonly %role) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %role, align 4
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i, label %entry.do.end.i_crit_edge, label %land.lhs.true.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true2.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true2.i.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true2.i.do.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true2.i
  %.b39.i = load i1, ptr @br_mrp_find_id.__warned, align 1
  br i1 %.b39.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_find_id.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 58, ptr noundef nonnull @.str.9) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true2.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %mrp_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 47
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %mrp.0.in.i = phi ptr [ %mrp_list.i, %do.end.i ], [ %mrp.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %mrp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %mrp.0.i = load volatile ptr, ptr %mrp.0.in.i, align 4
  %tobool14.not.i = icmp eq ptr %mrp.0.i, null
  br i1 %tobool14.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %ring_id15.i = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 4
  %3 = ptrtoint ptr %ring_id15.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ring_id15.i, align 4
  %cmp.i = icmp eq i32 %4, %1
  br i1 %cmp.i, label %if.end, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.end:                                           ; preds = %for.body.i
  %ring_role = getelementptr inbounds %struct.br_mrp_ring_role, ptr %role, i32 0, i32 1
  %5 = ptrtoint ptr %ring_role to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ring_role, align 4
  %ring_role1 = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 7
  %7 = ptrtoint ptr %ring_role1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %ring_role1, align 4
  %8 = load i32, ptr %ring_role, align 4
  %call3 = tail call i32 @br_mrp_switchdev_set_ring_role(ptr noundef %br, ptr noundef nonnull %mrp.0.i, i32 noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp6 = icmp ne i32 %call3, 1
  %conv = zext i1 %cmp6 to i8
  %ring_role_offloaded = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 8
  %9 = ptrtoint ptr %ring_role_offloaded to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %ring_role_offloaded, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_mrp_switchdev_set_ring_role(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_mrp_start_test(ptr noundef %br, ptr nocapture noundef readonly %test) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %test, align 4
  %call.i48 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i48, label %entry.do.end.i_crit_edge, label %land.lhs.true.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true2.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %call3.i49 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i49)
  %tobool4.not.i = icmp eq i32 %call3.i49, 0
  br i1 %tobool4.not.i, label %land.lhs.true2.i.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true2.i.do.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true2.i
  %.b39.i = load i1, ptr @br_mrp_find_id.__warned, align 1
  br i1 %.b39.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then.i50

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then.i50:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_find_id.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 58, ptr noundef nonnull @.str.9) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i50, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true2.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %mrp_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 47
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %mrp.0.in.i = phi ptr [ %mrp_list.i, %do.end.i ], [ %mrp.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %mrp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %mrp.0.i = load volatile ptr, ptr %mrp.0.in.i, align 4
  %tobool14.not.i = icmp eq ptr %mrp.0.i, null
  br i1 %tobool14.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %ring_id15.i = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 4
  %3 = ptrtoint ptr %ring_id15.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ring_id15.i, align 4
  %cmp.i51 = icmp eq i32 %4, %1
  br i1 %cmp.i51, label %if.end, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.end:                                           ; preds = %for.body.i
  %interval = getelementptr inbounds %struct.br_mrp_start_test, ptr %test, i32 0, i32 1
  %5 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %interval, align 4
  %max_miss = getelementptr inbounds %struct.br_mrp_start_test, ptr %test, i32 0, i32 2
  %7 = ptrtoint ptr %max_miss to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_miss, align 4
  %conv = trunc i32 %8 to i8
  %period = getelementptr inbounds %struct.br_mrp_start_test, ptr %test, i32 0, i32 3
  %9 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %period, align 4
  %monitor = getelementptr inbounds %struct.br_mrp_start_test, ptr %test, i32 0, i32 4
  %11 = ptrtoint ptr %monitor to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %monitor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool1 = icmp ne i32 %12, 0
  %call2 = tail call i32 @br_mrp_switchdev_send_ring_test(ptr noundef %br, ptr noundef nonnull %mrp.0.i, i32 noundef %6, i8 noundef zeroext %conv, i32 noundef %10, i1 noundef zeroext %tobool1) #7
  %13 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %call2, label %if.end9 [
    i32 0, label %if.end.cleanup_crit_edge
    i32 2, label %if.then8
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %interval, align 4
  %test_interval = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 16
  %16 = ptrtoint ptr %test_interval to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %test_interval, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %18 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %period, align 4
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %19) #7
  %add = add i32 %call3.i, %17
  %test_end = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 17
  %20 = ptrtoint ptr %test_end to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %test_end, align 4
  %21 = ptrtoint ptr %max_miss to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_miss, align 4
  %test_max_miss = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 19
  %23 = ptrtoint ptr %test_max_miss to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %test_max_miss, align 4
  %24 = ptrtoint ptr %monitor to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %monitor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool15 = icmp ne i32 %25, 0
  %test_monitor = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 20
  %frombool = zext i1 %tobool15 to i8
  %26 = ptrtoint ptr %test_monitor to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool, ptr %test_monitor, align 4
  %test_count_miss = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 18
  %27 = ptrtoint ptr %test_count_miss to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %test_count_miss, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %28 = load ptr, ptr @system_wq, align 4
  %test_work = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 15
  %29 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %interval, align 4
  %call3.i44 = tail call i32 @__usecs_to_jiffies(i32 noundef %30) #7
  %call.i52 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %test_work, i32 noundef %call3.i44) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %if.end.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.end9 ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_mrp_switchdev_send_ring_test(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_mrp_set_in_state(ptr noundef %br, ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %in_id = getelementptr inbounds %struct.br_mrp_in_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %in_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %in_id, align 4
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i, label %entry.do.end.i_crit_edge, label %land.lhs.true.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true2.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true2.i.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true2.i.do.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true2.i
  %.b40.i = load i1, ptr @br_mrp_find_in_id.__warned, align 1
  br i1 %.b40.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_find_in_id.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 74, ptr noundef nonnull @.str.9) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true2.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %mrp_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 47
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %mrp.0.in.i = phi ptr [ %mrp_list.i, %do.end.i ], [ %mrp.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %mrp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %mrp.0.i = load volatile ptr, ptr %mrp.0.in.i, align 4
  %tobool14.not.i = icmp eq ptr %mrp.0.i, null
  br i1 %tobool14.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %in_id15.i = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 5
  %3 = ptrtoint ptr %in_id15.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %in_id15.i, align 4
  %cmp.i = icmp eq i16 %4, %1
  br i1 %cmp.i, label %if.end, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.end:                                           ; preds = %for.body.i
  %in_state = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 13
  %5 = ptrtoint ptr %in_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %in_state, align 4
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not = icmp eq i32 %6, %8
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %in_transitions = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 14
  %9 = ptrtoint ptr %in_transitions to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %in_transitions, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %in_transitions, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  %13 = ptrtoint ptr %in_state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %in_state, align 4
  %14 = load i32, ptr %state, align 4
  %call8 = tail call i32 @br_mrp_switchdev_set_in_state(ptr noundef %br, ptr noundef nonnull %mrp.0.i, i32 noundef %14) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_mrp_switchdev_set_in_state(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_mrp_set_in_role(ptr noundef %br, ptr nocapture noundef readonly %role) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %role, align 4
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i, label %entry.do.end.i_crit_edge, label %land.lhs.true.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true2.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true2.i.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true2.i.do.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true2.i
  %.b39.i = load i1, ptr @br_mrp_find_id.__warned, align 1
  br i1 %.b39.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_find_id.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 58, ptr noundef nonnull @.str.9) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true2.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %mrp_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 47
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %mrp.0.in.i = phi ptr [ %mrp_list.i, %do.end.i ], [ %mrp.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %mrp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %mrp.0.i = load volatile ptr, ptr %mrp.0.in.i, align 4
  %tobool14.not.i = icmp eq ptr %mrp.0.i, null
  br i1 %tobool14.not.i, label %for.cond.i.cleanup142_crit_edge, label %for.body.i

for.cond.i.cleanup142_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup142

for.body.i:                                       ; preds = %for.cond.i
  %ring_id15.i = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 4
  %3 = ptrtoint ptr %ring_id15.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ring_id15.i, align 4
  %cmp.i = icmp eq i32 %4, %1
  br i1 %cmp.i, label %if.end, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.end:                                           ; preds = %for.body.i
  %i_ifindex = getelementptr inbounds %struct.br_mrp_in_role, ptr %role, i32 0, i32 2
  %5 = ptrtoint ptr %i_ifindex to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_ifindex, align 4
  %port_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  br label %for.cond.i189

for.cond.i189:                                    ; preds = %for.body.i190.for.cond.i189_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %port_list.i, %if.end ], [ %.pn.i, %for.body.i190.for.cond.i189_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %port_list.i
  br i1 %cmp.not.i, label %for.cond.i189.cleanup142_crit_edge, label %for.body.i190

for.cond.i189.cleanup142_crit_edge:               ; preds = %for.cond.i189
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup142

for.body.i190:                                    ; preds = %for.cond.i189
  %dev.i = getelementptr i8, ptr %.pn.i, i32 -8
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %ifindex2.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %ifindex2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ifindex2.i, align 4
  %cmp3.i = icmp eq i32 %11, %6
  br i1 %cmp3.i, label %br_mrp_get_port.exit, label %for.body.i190.for.cond.i189_crit_edge

for.body.i190.for.cond.i189_crit_edge:            ; preds = %for.body.i190
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i189

br_mrp_get_port.exit:                             ; preds = %for.body.i190
  %port.0.le.i = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool2.not = icmp eq ptr %port.0.le.i, null
  br i1 %tobool2.not, label %br_mrp_get_port.exit.cleanup142_crit_edge, label %if.end4

br_mrp_get_port.exit.cleanup142_crit_edge:        ; preds = %br_mrp_get_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup142

if.end4:                                          ; preds = %br_mrp_get_port.exit
  %in_role = getelementptr inbounds %struct.br_mrp_in_role, ptr %role, i32 0, i32 1
  %12 = ptrtoint ptr %in_role to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %in_role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then5, label %if.end64

if.then5:                                         ; preds = %if.end4
  %call6 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call6, label %if.then5.do.end_crit_edge, label %land.lhs.true

if.then5.do.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %if.then5
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true9

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b188 = load i1, ptr @br_mrp_set_in_role.__warned, align 1
  br i1 %.b188, label %land.lhs.true9.do.end_crit_edge, label %if.then11

land.lhs.true9.do.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_set_in_role.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 774, ptr noundef nonnull @.str.8) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %land.lhs.true9.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.then5.do.end_crit_edge
  %i_port = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 3
  %14 = ptrtoint ptr %i_port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_port, align 4
  %tobool13.not = icmp eq ptr %15, null
  br i1 %tobool13.not, label %do.end.cleanup142_crit_edge, label %if.end15

do.end.cleanup142_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup142

if.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %in_test_work = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 21
  %call16 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %in_test_work) #7
  %call17 = tail call i32 @br_mrp_switchdev_send_in_test(ptr noundef %br, ptr noundef nonnull %mrp.0.i, i32 noundef 0, i8 noundef zeroext 0, i32 noundef 0) #7
  tail call void @_raw_spin_lock_bh(ptr noundef %br) #7
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %conv = select i1 %tobool.i.not, i8 0, i8 3
  %state19 = getelementptr inbounds %struct.net_bridge_port, ptr %15, i32 0, i32 8
  %20 = ptrtoint ptr %state19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %state19, align 1
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %15, i32 0, i32 4
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %and = and i32 %22, -131073
  store i32 %and, ptr %flags, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %br) #7
  %conv21 = zext i8 %conv to i32
  %call22 = tail call i32 @br_mrp_port_switchdev_set_state(ptr noundef nonnull %15, i32 noundef %conv21) #7
  %23 = ptrtoint ptr %i_port to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr null, ptr %i_port, align 4
  %24 = ptrtoint ptr %in_role to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %in_role, align 4
  %in_role63 = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 11
  %26 = ptrtoint ptr %in_role63 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %in_role63, align 4
  %in_id = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 5
  %27 = ptrtoint ptr %in_id to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %in_id, align 4
  br label %cleanup142

if.end64:                                         ; preds = %if.end4
  %call66 = tail call fastcc zeroext i1 @br_mrp_unique_ifindex(ptr noundef %br, i32 noundef %6)
  br i1 %call66, label %if.end68, label %if.end64.cleanup142_crit_edge

if.end64.cleanup142_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup142

if.end68:                                         ; preds = %if.end64
  %i_port73 = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 3
  %28 = ptrtoint ptr %i_port73 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %i_port73, align 4
  %tobool75.not = icmp eq ptr %29, null
  br i1 %tobool75.not, label %if.end77, label %if.end68.cleanup142_crit_edge

if.end68.cleanup142_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup142

if.end77:                                         ; preds = %if.end68
  %30 = ptrtoint ptr %i_ifindex to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_ifindex, align 4
  br label %for.cond.i195

for.cond.i195:                                    ; preds = %for.body.i199.for.cond.i195_crit_edge, %if.end77
  %.pn.in.i192 = phi ptr [ %port_list.i, %if.end77 ], [ %.pn.i193, %for.body.i199.for.cond.i195_crit_edge ]
  %32 = ptrtoint ptr %.pn.in.i192 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn.i193 = load ptr, ptr %.pn.in.i192, align 4
  %cmp.not.i194 = icmp eq ptr %.pn.i193, %port_list.i
  br i1 %cmp.not.i194, label %for.cond.i195.br_mrp_get_port.exit203_crit_edge, label %for.body.i199

for.cond.i195.br_mrp_get_port.exit203_crit_edge:  ; preds = %for.cond.i195
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_mrp_get_port.exit203

for.body.i199:                                    ; preds = %for.cond.i195
  %dev.i196 = getelementptr i8, ptr %.pn.i193, i32 -8
  %33 = ptrtoint ptr %dev.i196 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i196, align 4
  %ifindex2.i197 = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 17
  %35 = ptrtoint ptr %ifindex2.i197 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ifindex2.i197, align 4
  %cmp3.i198 = icmp eq i32 %36, %31
  br i1 %cmp3.i198, label %for.end.split.loop.exit.i201, label %for.body.i199.for.cond.i195_crit_edge

for.body.i199.for.cond.i195_crit_edge:            ; preds = %for.body.i199
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i195

for.end.split.loop.exit.i201:                     ; preds = %for.body.i199
  call void @__sanitizer_cov_trace_pc() #9
  %port.0.le.i200 = getelementptr i8, ptr %.pn.i193, i32 -12
  br label %br_mrp_get_port.exit203

br_mrp_get_port.exit203:                          ; preds = %for.end.split.loop.exit.i201, %for.cond.i195.br_mrp_get_port.exit203_crit_edge
  %res.0.i202 = phi ptr [ %port.0.le.i200, %for.end.split.loop.exit.i201 ], [ null, %for.cond.i195.br_mrp_get_port.exit203_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef %br) #7
  %state81 = getelementptr inbounds %struct.net_bridge_port, ptr %res.0.i202, i32 0, i32 8
  %37 = ptrtoint ptr %state81 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 3, ptr %state81, align 1
  %flags82 = getelementptr inbounds %struct.net_bridge_port, ptr %res.0.i202, i32 0, i32 4
  %38 = ptrtoint ptr %flags82 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags82, align 4
  %or = or i32 %39, 131072
  store i32 %or, ptr %flags82, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %br) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !86
  %40 = ptrtoint ptr %i_port73 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %res.0.i202, ptr %i_port73, align 4
  %41 = ptrtoint ptr %in_role to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %in_role, align 4
  %in_role127 = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 11
  %43 = ptrtoint ptr %in_role127 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %in_role127, align 4
  %in_id128 = getelementptr inbounds %struct.br_mrp_in_role, ptr %role, i32 0, i32 3
  %44 = ptrtoint ptr %in_id128 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %in_id128, align 4
  %in_id129 = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 5
  %46 = ptrtoint ptr %in_id129 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %in_id129, align 4
  %47 = load i16, ptr %in_id128, align 4
  %48 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %role, align 4
  %50 = load i32, ptr %in_role, align 4
  %call133 = tail call i32 @br_mrp_switchdev_set_in_role(ptr noundef %br, ptr noundef nonnull %mrp.0.i, i16 noundef zeroext %47, i32 noundef %49, i32 noundef %50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %cmp134 = icmp eq i32 %call133, 0
  br i1 %cmp134, label %br_mrp_get_port.exit203.cleanup142_crit_edge, label %if.end137

br_mrp_get_port.exit203.cleanup142_crit_edge:     ; preds = %br_mrp_get_port.exit203
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup142

if.end137:                                        ; preds = %br_mrp_get_port.exit203
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call133)
  %cmp138 = icmp ne i32 %call133, 1
  %conv141 = zext i1 %cmp138 to i8
  %in_role_offloaded = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 12
  %51 = ptrtoint ptr %in_role_offloaded to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv141, ptr %in_role_offloaded, align 4
  br label %cleanup142

cleanup142:                                       ; preds = %if.end137, %br_mrp_get_port.exit203.cleanup142_crit_edge, %if.end68.cleanup142_crit_edge, %if.end64.cleanup142_crit_edge, %if.end15, %do.end.cleanup142_crit_edge, %br_mrp_get_port.exit.cleanup142_crit_edge, %for.cond.i189.cleanup142_crit_edge, %for.cond.i.cleanup142_crit_edge
  %retval.1 = phi i32 [ 0, %if.end137 ], [ -22, %br_mrp_get_port.exit.cleanup142_crit_edge ], [ 0, %if.end15 ], [ -22, %do.end.cleanup142_crit_edge ], [ -22, %if.end64.cleanup142_crit_edge ], [ -22, %if.end68.cleanup142_crit_edge ], [ -95, %br_mrp_get_port.exit203.cleanup142_crit_edge ], [ -22, %for.cond.i189.cleanup142_crit_edge ], [ -22, %for.cond.i.cleanup142_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_mrp_switchdev_send_in_test(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_mrp_switchdev_set_in_role(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_mrp_start_in_test(ptr noundef %br, ptr nocapture noundef readonly %in_test) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %in_id = getelementptr inbounds %struct.br_mrp_start_in_test, ptr %in_test, i32 0, i32 3
  %0 = ptrtoint ptr %in_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %in_id, align 4
  %call.i48 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i48, label %entry.do.end.i_crit_edge, label %land.lhs.true.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true2.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %call3.i49 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i49)
  %tobool4.not.i = icmp eq i32 %call3.i49, 0
  br i1 %tobool4.not.i, label %land.lhs.true2.i.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true2.i.do.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true2.i
  %.b40.i = load i1, ptr @br_mrp_find_in_id.__warned, align 1
  br i1 %.b40.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then.i50

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then.i50:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_find_in_id.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 74, ptr noundef nonnull @.str.9) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i50, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true2.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %mrp_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 47
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %mrp.0.in.i = phi ptr [ %mrp_list.i, %do.end.i ], [ %mrp.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %mrp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %mrp.0.i = load volatile ptr, ptr %mrp.0.in.i, align 4
  %tobool14.not.i = icmp eq ptr %mrp.0.i, null
  br i1 %tobool14.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %in_id15.i = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 5
  %3 = ptrtoint ptr %in_id15.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %in_id15.i, align 4
  %cmp.i51 = icmp eq i16 %4, %1
  br i1 %cmp.i51, label %if.end, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.end:                                           ; preds = %for.body.i
  %in_role = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 11
  %5 = ptrtoint ptr %in_role to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %in_role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.not = icmp eq i32 %6, 2
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %in_test to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %in_test, align 4
  %max_miss = getelementptr inbounds %struct.br_mrp_start_in_test, ptr %in_test, i32 0, i32 1
  %9 = ptrtoint ptr %max_miss to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_miss, align 4
  %conv4 = trunc i32 %10 to i8
  %period = getelementptr inbounds %struct.br_mrp_start_in_test, ptr %in_test, i32 0, i32 2
  %11 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %period, align 4
  %call5 = tail call i32 @br_mrp_switchdev_send_in_test(ptr noundef %br, ptr noundef nonnull %mrp.0.i, i32 noundef %8, i8 noundef zeroext %conv4, i32 noundef %12) #7
  %13 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %call5, label %if.end13 [
    i32 0, label %if.end3.cleanup_crit_edge
    i32 2, label %if.then12
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %in_test to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %in_test, align 4
  %in_test_interval = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 22
  %16 = ptrtoint ptr %in_test_interval to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %in_test_interval, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %18 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %period, align 4
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %19) #7
  %add = add i32 %call3.i, %17
  %in_test_end = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 23
  %20 = ptrtoint ptr %in_test_end to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %in_test_end, align 4
  %21 = ptrtoint ptr %max_miss to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_miss, align 4
  %in_test_max_miss = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 25
  %23 = ptrtoint ptr %in_test_max_miss to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %in_test_max_miss, align 4
  %in_test_count_miss = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 24
  %24 = ptrtoint ptr %in_test_count_miss to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %in_test_count_miss, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %25 = load ptr, ptr @system_wq, align 4
  %in_test_work = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 21
  %26 = ptrtoint ptr %in_test to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %in_test, align 4
  %call3.i44 = tail call i32 @__usecs_to_jiffies(i32 noundef %27) #7
  %call.i52 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %in_test_work, i32 noundef %call3.i44) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then12, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then12 ], [ 0, %if.end13 ], [ -22, %if.end.cleanup_crit_edge ], [ -95, %if.end3.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @br_mrp_enabled(ptr noundef %br) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mrp_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 47
  %0 = ptrtoint ptr %mrp_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mrp_list, align 4
  %tobool.not.i = icmp ne ptr %1, null
  ret i1 %tobool.not.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_mrp_process(ptr noundef %p, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end, !prof !87

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @br_mrp_rcv(ptr noundef %p, ptr noundef %skb)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_mrp_rcv(ptr noundef readonly %p, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %_hdr.i61 = alloca %struct.br_mrp_tlv_hdr, align 1
  %_hdr.i43 = alloca %struct.br_mrp_tlv_hdr, align 1
  %_test_hdr.i = alloca %struct.br_mrp_ring_test_hdr, align 2
  %_hdr.i25 = alloca %struct.br_mrp_tlv_hdr, align 1
  %_hdr.i10 = alloca %struct.br_mrp_tlv_hdr, align 1
  %_hdr.i = alloca %struct.br_mrp_tlv_hdr, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 8
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.cleanup188_crit_edge, label %if.end

entry.cleanup188_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup188

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i, label %if.end.do.end.i_crit_edge, label %land.lhs.true.i

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true2.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true2.i.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true2.i.do.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true2.i
  %.b60.i = load i1, ptr @br_mrp_find_port.__warned, align 1
  br i1 %.b60.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_find_port.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 115, ptr noundef nonnull @.str.9) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true2.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %mrp_list.i = getelementptr inbounds %struct.net_bridge, ptr %3, i32 0, i32 47
  br label %for.cond.i

for.cond.i:                                       ; preds = %lor.lhs.false26.i.for.cond.i_crit_edge, %do.end.i
  %mrp.0.in.i = phi ptr [ %mrp_list.i, %do.end.i ], [ %mrp.0.i, %lor.lhs.false26.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %mrp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %mrp.0.i = load volatile ptr, ptr %mrp.0.in.i, align 4
  %tobool14.not.i = icmp eq ptr %mrp.0.i, null
  br i1 %tobool14.not.i, label %for.cond.i.cleanup188_crit_edge, label %for.body.i

for.cond.i.cleanup188_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup188

for.body.i:                                       ; preds = %for.cond.i
  %p_port.i = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %p_port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %p_port.i, align 4
  %cmp.i = icmp eq ptr %6, %p
  br i1 %cmp.i, label %for.body.i.if.end7_crit_edge, label %lor.lhs.false.i

for.body.i.if.end7_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

lor.lhs.false.i:                                  ; preds = %for.body.i
  %s_port.i = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 2
  %7 = ptrtoint ptr %s_port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %s_port.i, align 4
  %cmp25.i = icmp eq ptr %8, %p
  br i1 %cmp25.i, label %lor.lhs.false.i.if.end7_crit_edge, label %lor.lhs.false26.i

lor.lhs.false.i.if.end7_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

lor.lhs.false26.i:                                ; preds = %lor.lhs.false.i
  %i_port.i = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 3
  %9 = ptrtoint ptr %i_port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %i_port.i, align 4
  %cmp32.i = icmp eq ptr %10, %p
  br i1 %cmp32.i, label %lor.lhs.false26.i.if.end7_crit_edge, label %lor.lhs.false26.i.for.cond.i_crit_edge

lor.lhs.false26.i.for.cond.i_crit_edge:           ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

lor.lhs.false26.i.if.end7_crit_edge:              ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7:                                          ; preds = %lor.lhs.false26.i.if.end7_crit_edge, %lor.lhs.false.i.if.end7_crit_edge, %for.body.i.if.end7_crit_edge
  %p_port.i.le = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %p_port.i.le to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %p_port.i.le, align 4
  %call10 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true, label %if.end7.do.end19_crit_edge

if.end7.do.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

land.lhs.true:                                    ; preds = %if.end7
  %call12 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end19_crit_edge, label %land.lhs.true14

land.lhs.true.do.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

land.lhs.true14:                                  ; preds = %land.lhs.true
  %.b3 = load i1, ptr @br_mrp_rcv.__warned, align 1
  br i1 %.b3, label %land.lhs.true14.do.end19_crit_edge, label %if.then16

land.lhs.true14.do.end19_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_rcv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1091, ptr noundef nonnull @.str.13) #7
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %land.lhs.true14.do.end19_crit_edge, %land.lhs.true.do.end19_crit_edge, %if.end7.do.end19_crit_edge
  %tobool21.not = icmp eq ptr %12, null
  br i1 %tobool21.not, label %do.end19.cleanup188_crit_edge, label %if.end23

do.end19.cleanup188_crit_edge:                    ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup188

if.end23:                                         ; preds = %do.end19
  %s_port28 = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %s_port28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %s_port28, align 4
  %call30 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true32, label %if.end23.do.end40_crit_edge

if.end23.do.end40_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40

land.lhs.true32:                                  ; preds = %if.end23
  %call33 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true32.do.end40_crit_edge, label %land.lhs.true35

land.lhs.true32.do.end40_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %.b2652 = load i1, ptr @br_mrp_rcv.__warned.14, align 1
  br i1 %.b2652, label %land.lhs.true35.do.end40_crit_edge, label %if.then37

land.lhs.true35.do.end40_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40

if.then37:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_rcv.__warned.14, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1096, ptr noundef nonnull @.str.13) #7
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %land.lhs.true35.do.end40_crit_edge, %land.lhs.true32.do.end40_crit_edge, %if.end23.do.end40_crit_edge
  %tobool42.not = icmp eq ptr %14, null
  br i1 %tobool42.not, label %do.end40.cleanup188_crit_edge, label %if.end44

do.end40.cleanup188_crit_edge:                    ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup188

if.end44:                                         ; preds = %do.end40
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %_hdr.i) #7
  %15 = ptrtoint ptr %_hdr.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %_hdr.i, align 1, !annotation !88
  %16 = getelementptr inbounds %struct.br_mrp_tlv_hdr, ptr %_hdr.i, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %16, align 1, !annotation !88
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %18 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %20 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_len.i.i.i, align 8
  %.neg35.i = add i32 %19, -2
  %sub.i4.i.i = sub i32 %.neg35.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i4.i.i)
  %cmp.not.i.i.i = icmp slt i32 %sub.i4.i.i, 2
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %skb_header_pointer.exit.i, !prof !89

if.end.i.i.i:                                     ; preds = %if.end44
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.if.end59_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.if.end59_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 2, ptr noundef nonnull %_hdr.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.if.end59_crit_edge, label %lor.lhs.false.i.i.i.if.end.i_crit_edge

lor.lhs.false.i.i.i.if.end.i_crit_edge:           ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

lor.lhs.false.i.i.i.if.end59_crit_edge:           ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

skb_header_pointer.exit.i:                        ; preds = %if.end44
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 2
  %tobool.not.i9 = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i9, label %skb_header_pointer.exit.i.if.end59_crit_edge, label %skb_header_pointer.exit.i.if.end.i_crit_edge

skb_header_pointer.exit.i.if.end.i_crit_edge:     ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

skb_header_pointer.exit.i.if.end59_crit_edge:     ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.end.i:                                         ; preds = %skb_header_pointer.exit.i.if.end.i_crit_edge, %lor.lhs.false.i.i.i.if.end.i_crit_edge
  %retval.0.i.i34.i = phi ptr [ %add.ptr.i.i.i, %skb_header_pointer.exit.i.if.end.i_crit_edge ], [ %_hdr.i, %lor.lhs.false.i.i.i.if.end.i_crit_edge ]
  %24 = ptrtoint ptr %retval.0.i.i34.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %retval.0.i.i34.i, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %25, label %if.end.i.if.end59_crit_edge [
    i8 2, label %if.end.i.if.then46_crit_edge
    i8 3, label %if.end.i.if.then46_crit_edge156
    i8 4, label %if.end.i.if.then46_crit_edge157
    i8 5, label %if.end.i.if.then46_crit_edge158
    i8 127, label %if.end.i.if.then46_crit_edge159
  ]

if.end.i.if.then46_crit_edge159:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

if.end.i.if.then46_crit_edge158:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

if.end.i.if.then46_crit_edge157:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

if.end.i.if.then46_crit_edge156:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

if.end.i.if.then46_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

if.end.i.if.end59_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then46:                                        ; preds = %if.end.i.if.then46_crit_edge, %if.end.i.if.then46_crit_edge156, %if.end.i.if.then46_crit_edge157, %if.end.i.if.then46_crit_edge158, %if.end.i.if.then46_crit_edge159
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_hdr.i) #7
  %ring_role = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 7
  %27 = ptrtoint ptr %ring_role to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ring_role, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %28, label %if.then46.if.then180_crit_edge [
    i32 2, label %if.then49
    i32 3, label %if.then54
  ]

if.then46.if.then180_crit_edge:                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then180

if.then49:                                        ; preds = %if.then46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %_hdr.i10) #7
  %30 = ptrtoint ptr %_hdr.i10 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %_hdr.i10, align 1, !annotation !88
  %31 = getelementptr inbounds %struct.br_mrp_tlv_hdr, ptr %_hdr.i10, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %31, align 1, !annotation !88
  %33 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i.i.i, align 4
  %35 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_len.i.i.i, align 8
  %.neg18.i = add i32 %34, -2
  %sub.i4.i.i13 = sub i32 %.neg18.i, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i4.i.i13)
  %cmp.not.i.i.i14 = icmp slt i32 %sub.i4.i.i13, 2
  br i1 %cmp.not.i.i.i14, label %if.end.i.i.i16, label %skb_header_pointer.exit.i23, !prof !89

if.end.i.i.i16:                                   ; preds = %if.then49
  %tobool2.not.i.i.i15 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i15, label %if.end.i.i.i16.br_mrp_mrm_process.exit_crit_edge, label %lor.lhs.false.i.i.i19

if.end.i.i.i16.br_mrp_mrm_process.exit_crit_edge: ; preds = %if.end.i.i.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_mrp_mrm_process.exit

lor.lhs.false.i.i.i19:                            ; preds = %if.end.i.i.i16
  %call.i.i.i17 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 2, ptr noundef nonnull %_hdr.i10, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i17)
  %cmp3.i.i.i18 = icmp slt i32 %call.i.i.i17, 0
  br i1 %cmp3.i.i.i18, label %lor.lhs.false.i.i.i19.br_mrp_mrm_process.exit_crit_edge, label %lor.lhs.false.i.i.i19.if.end.i24_crit_edge

lor.lhs.false.i.i.i19.if.end.i24_crit_edge:       ; preds = %lor.lhs.false.i.i.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i24

lor.lhs.false.i.i.i19.br_mrp_mrm_process.exit_crit_edge: ; preds = %lor.lhs.false.i.i.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_mrp_mrm_process.exit

skb_header_pointer.exit.i23:                      ; preds = %if.then49
  %data.i.i20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %37 = ptrtoint ptr %data.i.i20 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i.i20, align 4
  %add.ptr.i.i.i21 = getelementptr i8, ptr %38, i32 2
  %tobool.not.i22 = icmp eq ptr %add.ptr.i.i.i21, null
  br i1 %tobool.not.i22, label %skb_header_pointer.exit.i23.br_mrp_mrm_process.exit_crit_edge, label %skb_header_pointer.exit.i23.if.end.i24_crit_edge

skb_header_pointer.exit.i23.if.end.i24_crit_edge: ; preds = %skb_header_pointer.exit.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i24

skb_header_pointer.exit.i23.br_mrp_mrm_process.exit_crit_edge: ; preds = %skb_header_pointer.exit.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_mrp_mrm_process.exit

if.end.i24:                                       ; preds = %skb_header_pointer.exit.i23.if.end.i24_crit_edge, %lor.lhs.false.i.i.i19.if.end.i24_crit_edge
  %retval.0.i.i17.i = phi ptr [ %add.ptr.i.i.i21, %skb_header_pointer.exit.i23.if.end.i24_crit_edge ], [ %_hdr.i10, %lor.lhs.false.i.i.i19.if.end.i24_crit_edge ]
  %39 = ptrtoint ptr %retval.0.i.i17.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %retval.0.i.i17.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %40)
  %cmp.not.i = icmp eq i8 %40, 2
  br i1 %cmp.not.i, label %if.end3.i, label %if.end.i24.br_mrp_mrm_process.exit_crit_edge

if.end.i24.br_mrp_mrm_process.exit_crit_edge:     ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_mrp_mrm_process.exit

if.end3.i:                                        ; preds = %if.end.i24
  %test_count_miss.i = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 18
  %41 = ptrtoint ptr %test_count_miss.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %test_count_miss.i, align 4
  %ring_state.i = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 9
  %42 = ptrtoint ptr %ring_state.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ring_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp4.not.i = icmp eq i32 %43, 1
  br i1 %cmp4.not.i, label %if.end3.i.br_mrp_mrm_process.exit_crit_edge, label %if.then6.i

if.end3.i.br_mrp_mrm_process.exit_crit_edge:      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_mrp_mrm_process.exit

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  %call7.i = call i32 @br_mrp_ring_port_open(ptr noundef %45, i8 noundef zeroext 0) #7
  br label %br_mrp_mrm_process.exit

br_mrp_mrm_process.exit:                          ; preds = %if.then6.i, %if.end3.i.br_mrp_mrm_process.exit_crit_edge, %if.end.i24.br_mrp_mrm_process.exit_crit_edge, %skb_header_pointer.exit.i23.br_mrp_mrm_process.exit_crit_edge, %lor.lhs.false.i.i.i19.br_mrp_mrm_process.exit_crit_edge, %if.end.i.i.i16.br_mrp_mrm_process.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_hdr.i10) #7
  br label %cleanup188

if.then54:                                        ; preds = %if.then46
  %test_monitor = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 20
  %46 = ptrtoint ptr %test_monitor to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %test_monitor, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool55.not = icmp eq i8 %47, 0
  br i1 %tobool55.not, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @br_mrp_mrm_process(ptr noundef nonnull %mrp.0.i, ptr noundef %p, ptr noundef %skb)
  br label %cleanup188

if.end57:                                         ; preds = %if.then54
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %_test_hdr.i) #7
  %48 = call ptr @memset(ptr %_test_hdr.i, i32 255, i32 18)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %_hdr.i25) #7
  %49 = ptrtoint ptr %_hdr.i25 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %_hdr.i25, align 1, !annotation !88
  %50 = getelementptr inbounds %struct.br_mrp_tlv_hdr, ptr %_hdr.i25, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -1, ptr %50, align 1, !annotation !88
  %52 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len.i.i.i, align 4
  %54 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data_len.i.i.i, align 8
  %.neg30.i = add i32 %53, -2
  %sub.i4.i.i28 = sub i32 %.neg30.i, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i4.i.i28)
  %cmp.not.i.i.i29 = icmp slt i32 %sub.i4.i.i28, 2
  br i1 %cmp.not.i.i.i29, label %if.end.i.i.i31, label %skb_header_pointer.exit.i38, !prof !89

if.end.i.i.i31:                                   ; preds = %if.end57
  %tobool2.not.i.i.i30 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i30, label %if.end.i.i.i31.br_mrp_mra_process.exit_crit_edge, label %lor.lhs.false.i.i.i34

if.end.i.i.i31.br_mrp_mra_process.exit_crit_edge: ; preds = %if.end.i.i.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_mrp_mra_process.exit

lor.lhs.false.i.i.i34:                            ; preds = %if.end.i.i.i31
  %call.i.i.i32 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 2, ptr noundef nonnull %_hdr.i25, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i32)
  %cmp3.i.i.i33 = icmp slt i32 %call.i.i.i32, 0
  br i1 %cmp3.i.i.i33, label %lor.lhs.false.i.i.i34.br_mrp_mra_process.exit_crit_edge, label %lor.lhs.false.i.i.i34.if.end.i40_crit_edge

lor.lhs.false.i.i.i34.if.end.i40_crit_edge:       ; preds = %lor.lhs.false.i.i.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i40

lor.lhs.false.i.i.i34.br_mrp_mra_process.exit_crit_edge: ; preds = %lor.lhs.false.i.i.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_mrp_mra_process.exit

skb_header_pointer.exit.i38:                      ; preds = %if.end57
  %data.i.i35 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %56 = ptrtoint ptr %data.i.i35 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i.i35, align 4
  %add.ptr.i.i.i36 = getelementptr i8, ptr %57, i32 2
  %tobool.not.i37 = icmp eq ptr %add.ptr.i.i.i36, null
  br i1 %tobool.not.i37, label %skb_header_pointer.exit.i38.br_mrp_mra_process.exit_crit_edge, label %skb_header_pointer.exit.i38.if.end.i40_crit_edge

skb_header_pointer.exit.i38.if.end.i40_crit_edge: ; preds = %skb_header_pointer.exit.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i40

skb_header_pointer.exit.i38.br_mrp_mra_process.exit_crit_edge: ; preds = %skb_header_pointer.exit.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_mrp_mra_process.exit

if.end.i40:                                       ; preds = %skb_header_pointer.exit.i38.if.end.i40_crit_edge, %lor.lhs.false.i.i.i34.if.end.i40_crit_edge
  %retval.0.i.i21.i = phi ptr [ %add.ptr.i.i.i36, %skb_header_pointer.exit.i38.if.end.i40_crit_edge ], [ %_hdr.i25, %lor.lhs.false.i.i.i34.if.end.i40_crit_edge ]
  %58 = ptrtoint ptr %retval.0.i.i21.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %retval.0.i.i21.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %59)
  %cmp.not.i39 = icmp eq i8 %59, 2
  br i1 %cmp.not.i39, label %if.end3.i41, label %if.end.i40.br_mrp_mra_process.exit_crit_edge

if.end.i40.br_mrp_mra_process.exit_crit_edge:     ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_mrp_mra_process.exit

if.end3.i41:                                      ; preds = %if.end.i40
  %60 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len.i.i.i, align 4
  %62 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %data_len.i.i.i, align 8
  %.neg32.i = add i32 %61, -4
  %sub.i4.i3.i = sub i32 %.neg32.i, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %sub.i4.i3.i)
  %cmp.not.i.i4.i = icmp slt i32 %sub.i4.i3.i, 18
  br i1 %cmp.not.i.i4.i, label %if.end.i.i9.i, label %skb_header_pointer.exit15.i, !prof !89

if.end.i.i9.i:                                    ; preds = %if.end3.i41
  %tobool2.not.i.i8.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i8.i, label %if.end.i.i9.i.br_mrp_mra_process.exit_crit_edge, label %lor.lhs.false.i.i13.i

if.end.i.i9.i.br_mrp_mra_process.exit_crit_edge:  ; preds = %if.end.i.i9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_mrp_mra_process.exit

lor.lhs.false.i.i13.i:                            ; preds = %if.end.i.i9.i
  %call.i.i10.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 4, ptr noundef nonnull %_test_hdr.i, i32 noundef 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i10.i)
  %cmp3.i.i11.i = icmp slt i32 %call.i.i10.i, 0
  br i1 %cmp3.i.i11.i, label %lor.lhs.false.i.i13.i.br_mrp_mra_process.exit_crit_edge, label %lor.lhs.false.i.i13.i.if.end7.i_crit_edge

lor.lhs.false.i.i13.i.if.end7.i_crit_edge:        ; preds = %lor.lhs.false.i.i13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

lor.lhs.false.i.i13.i.br_mrp_mra_process.exit_crit_edge: ; preds = %lor.lhs.false.i.i13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_mrp_mra_process.exit

skb_header_pointer.exit15.i:                      ; preds = %if.end3.i41
  %data.i5.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %64 = ptrtoint ptr %data.i5.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i5.i, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %65, i32 4
  %tobool5.not.i = icmp eq ptr %add.ptr.i.i6.i, null
  br i1 %tobool5.not.i, label %skb_header_pointer.exit15.i.br_mrp_mra_process.exit_crit_edge, label %skb_header_pointer.exit15.i.if.end7.i_crit_edge

skb_header_pointer.exit15.i.if.end7.i_crit_edge:  ; preds = %skb_header_pointer.exit15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

skb_header_pointer.exit15.i.br_mrp_mra_process.exit_crit_edge: ; preds = %skb_header_pointer.exit15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_mrp_mra_process.exit

if.end7.i:                                        ; preds = %skb_header_pointer.exit15.i.if.end7.i_crit_edge, %lor.lhs.false.i.i13.i.if.end7.i_crit_edge
  %retval.0.i.i1428.i = phi ptr [ %add.ptr.i.i6.i, %skb_header_pointer.exit15.i.if.end7.i_crit_edge ], [ %_test_hdr.i, %lor.lhs.false.i.i13.i.if.end7.i_crit_edge ]
  %66 = ptrtoint ptr %retval.0.i.i1428.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %retval.0.i.i1428.i, align 1
  %prio2.i.i = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 6
  %68 = ptrtoint ptr %prio2.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %prio2.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %67, i16 %69)
  %cmp.i.i = icmp ult i16 %67, %69
  br i1 %cmp.i.i, label %if.end7.i.if.then9.i_crit_edge, label %lor.lhs.false.i.i

if.end7.i.if.then9.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i

lor.lhs.false.i.i:                                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_cmp2(i16 %67, i16 %69)
  %cmp8.i.i = icmp eq i16 %67, %69
  br i1 %cmp8.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.br_mrp_mra_process.exit_crit_edge

lor.lhs.false.i.i.br_mrp_mra_process.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_mrp_mra_process.exit

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %sa.i.i = getelementptr inbounds %struct.br_mrp_ring_test_hdr, ptr %retval.0.i.i1428.i, i32 0, i32 1
  %70 = ptrtoint ptr %sa.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %sa.i.i, align 1
  %conv.i.i.i = zext i8 %71 to i64
  %arrayidx.1.i.i.i = getelementptr %struct.br_mrp_ring_test_hdr, ptr %retval.0.i.i1428.i, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.1.i.i.i, align 1
  %conv.1.i.i.i = zext i8 %73 to i64
  %74 = shl nuw nsw i64 %conv.i.i.i, 16
  %75 = shl nuw nsw i64 %conv.1.i.i.i, 8
  %shl.2.i.i.i = or i64 %75, %74
  %arrayidx.2.i.i.i = getelementptr %struct.br_mrp_ring_test_hdr, ptr %retval.0.i.i1428.i, i32 0, i32 1, i32 2
  %76 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.2.i.i.i, align 1
  %conv.2.i.i.i = zext i8 %77 to i64
  %or.2.i.i.i = or i64 %shl.2.i.i.i, %conv.2.i.i.i
  %arrayidx.3.i.i.i = getelementptr %struct.br_mrp_ring_test_hdr, ptr %retval.0.i.i1428.i, i32 0, i32 1, i32 3
  %78 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.3.i.i.i, align 1
  %conv.3.i.i.i = zext i8 %79 to i64
  %arrayidx.4.i.i.i = getelementptr %struct.br_mrp_ring_test_hdr, ptr %retval.0.i.i1428.i, i32 0, i32 1, i32 4
  %80 = ptrtoint ptr %arrayidx.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.4.i.i.i, align 1
  %conv.4.i.i.i = zext i8 %81 to i64
  %82 = shl nuw nsw i64 %or.2.i.i.i, 24
  %83 = shl nuw nsw i64 %conv.3.i.i.i, 16
  %84 = shl nuw nsw i64 %conv.4.i.i.i, 8
  %85 = or i64 %84, %83
  %shl.5.i.i.i = or i64 %85, %82
  %arrayidx.5.i.i.i = getelementptr %struct.br_mrp_ring_test_hdr, ptr %retval.0.i.i1428.i, i32 0, i32 1, i32 5
  %86 = ptrtoint ptr %arrayidx.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.5.i.i.i, align 1
  %conv.5.i.i.i = zext i8 %87 to i64
  %or.5.i.i.i = or i64 %shl.5.i.i.i, %conv.5.i.i.i
  %dev.i.i = getelementptr inbounds %struct.net_bridge, ptr %3, i32 0, i32 3
  %88 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev.i.i, align 4
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %89, i32 0, i32 86
  %90 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev_addr.i.i, align 64
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %91, align 1
  %conv.i16.i.i = zext i8 %93 to i64
  %arrayidx.1.i17.i.i = getelementptr i8, ptr %91, i32 1
  %94 = ptrtoint ptr %arrayidx.1.i17.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.1.i17.i.i, align 1
  %conv.1.i18.i.i = zext i8 %95 to i64
  %96 = shl nuw nsw i64 %conv.i16.i.i, 16
  %97 = shl nuw nsw i64 %conv.1.i18.i.i, 8
  %shl.2.i19.i.i = or i64 %97, %96
  %arrayidx.2.i20.i.i = getelementptr i8, ptr %91, i32 2
  %98 = ptrtoint ptr %arrayidx.2.i20.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.2.i20.i.i, align 1
  %conv.2.i21.i.i = zext i8 %99 to i64
  %or.2.i22.i.i = or i64 %shl.2.i19.i.i, %conv.2.i21.i.i
  %arrayidx.3.i23.i.i = getelementptr i8, ptr %91, i32 3
  %100 = ptrtoint ptr %arrayidx.3.i23.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.3.i23.i.i, align 1
  %conv.3.i24.i.i = zext i8 %101 to i64
  %arrayidx.4.i26.i.i = getelementptr i8, ptr %91, i32 4
  %102 = ptrtoint ptr %arrayidx.4.i26.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx.4.i26.i.i, align 1
  %conv.4.i27.i.i = zext i8 %103 to i64
  %104 = shl nuw nsw i64 %or.2.i22.i.i, 24
  %105 = shl nuw nsw i64 %conv.3.i24.i.i, 16
  %106 = shl nuw nsw i64 %conv.4.i27.i.i, 8
  %107 = or i64 %106, %105
  %shl.5.i29.i.i = or i64 %107, %104
  %arrayidx.5.i30.i.i = getelementptr i8, ptr %91, i32 5
  %108 = ptrtoint ptr %arrayidx.5.i30.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx.5.i30.i.i, align 1
  %conv.5.i31.i.i = zext i8 %109 to i64
  %or.5.i32.i.i = or i64 %shl.5.i29.i.i, %conv.5.i31.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.5.i.i.i, i64 %or.5.i32.i.i)
  %cmp11.i.i = icmp ult i64 %or.5.i.i.i, %or.5.i32.i.i
  br i1 %cmp11.i.i, label %land.lhs.true.i.i.if.then9.i_crit_edge, label %land.lhs.true.i.i.br_mrp_mra_process.exit_crit_edge

land.lhs.true.i.i.br_mrp_mra_process.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_mrp_mra_process.exit

land.lhs.true.i.i.if.then9.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i

if.then9.i:                                       ; preds = %land.lhs.true.i.i.if.then9.i_crit_edge, %if.end7.i.if.then9.i_crit_edge
  %test_count_miss.i42 = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 18
  %110 = ptrtoint ptr %test_count_miss.i42 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %test_count_miss.i42, align 4
  br label %br_mrp_mra_process.exit

br_mrp_mra_process.exit:                          ; preds = %if.then9.i, %land.lhs.true.i.i.br_mrp_mra_process.exit_crit_edge, %lor.lhs.false.i.i.br_mrp_mra_process.exit_crit_edge, %skb_header_pointer.exit15.i.br_mrp_mra_process.exit_crit_edge, %lor.lhs.false.i.i13.i.br_mrp_mra_process.exit_crit_edge, %if.end.i.i9.i.br_mrp_mra_process.exit_crit_edge, %if.end.i40.br_mrp_mra_process.exit_crit_edge, %skb_header_pointer.exit.i38.br_mrp_mra_process.exit_crit_edge, %lor.lhs.false.i.i.i34.br_mrp_mra_process.exit_crit_edge, %if.end.i.i.i31.br_mrp_mra_process.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_hdr.i25) #7
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %_test_hdr.i) #7
  br label %if.then180

if.end59:                                         ; preds = %if.end.i.if.end59_crit_edge, %skb_header_pointer.exit.i.if.end59_crit_edge, %lor.lhs.false.i.i.i.if.end59_crit_edge, %if.end.i.i.i.if.end59_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_hdr.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %_hdr.i43) #7
  %111 = ptrtoint ptr %_hdr.i43 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 -1, ptr %_hdr.i43, align 1, !annotation !88
  %112 = getelementptr inbounds %struct.br_mrp_tlv_hdr, ptr %_hdr.i43, i32 0, i32 1
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 -1, ptr %112, align 1, !annotation !88
  %114 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %len.i.i.i, align 4
  %116 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %data_len.i.i.i, align 8
  %.neg35.i46 = add i32 %115, -2
  %sub.i4.i.i47 = sub i32 %.neg35.i46, %117
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i4.i.i47)
  %cmp.not.i.i.i48 = icmp slt i32 %sub.i4.i.i47, 2
  br i1 %cmp.not.i.i.i48, label %if.end.i.i.i50, label %skb_header_pointer.exit.i57, !prof !89

if.end.i.i.i50:                                   ; preds = %if.end59
  %tobool2.not.i.i.i49 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i49, label %if.end.i.i.i50.br_mrp_in_frame.exit.thread_crit_edge, label %lor.lhs.false.i.i.i53

if.end.i.i.i50.br_mrp_in_frame.exit.thread_crit_edge: ; preds = %if.end.i.i.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_mrp_in_frame.exit.thread

lor.lhs.false.i.i.i53:                            ; preds = %if.end.i.i.i50
  %call.i.i.i51 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 2, ptr noundef nonnull %_hdr.i43, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i51)
  %cmp3.i.i.i52 = icmp slt i32 %call.i.i.i51, 0
  br i1 %cmp3.i.i.i52, label %lor.lhs.false.i.i.i53.br_mrp_in_frame.exit.thread_crit_edge, label %lor.lhs.false.i.i.i53.br_mrp_in_frame.exit_crit_edge

lor.lhs.false.i.i.i53.br_mrp_in_frame.exit_crit_edge: ; preds = %lor.lhs.false.i.i.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_mrp_in_frame.exit

lor.lhs.false.i.i.i53.br_mrp_in_frame.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_mrp_in_frame.exit.thread

skb_header_pointer.exit.i57:                      ; preds = %if.end59
  %data.i.i54 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %118 = ptrtoint ptr %data.i.i54 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %data.i.i54, align 4
  %add.ptr.i.i.i55 = getelementptr i8, ptr %119, i32 2
  %tobool.not.i56 = icmp eq ptr %add.ptr.i.i.i55, null
  br i1 %tobool.not.i56, label %skb_header_pointer.exit.i57.br_mrp_in_frame.exit.thread_crit_edge, label %skb_header_pointer.exit.i57.br_mrp_in_frame.exit_crit_edge

skb_header_pointer.exit.i57.br_mrp_in_frame.exit_crit_edge: ; preds = %skb_header_pointer.exit.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_mrp_in_frame.exit

skb_header_pointer.exit.i57.br_mrp_in_frame.exit.thread_crit_edge: ; preds = %skb_header_pointer.exit.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_mrp_in_frame.exit.thread

br_mrp_in_frame.exit.thread:                      ; preds = %skb_header_pointer.exit.i57.br_mrp_in_frame.exit.thread_crit_edge, %lor.lhs.false.i.i.i53.br_mrp_in_frame.exit.thread_crit_edge, %if.end.i.i.i50.br_mrp_in_frame.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_hdr.i43) #7
  br label %if.then180

br_mrp_in_frame.exit:                             ; preds = %skb_header_pointer.exit.i57.br_mrp_in_frame.exit_crit_edge, %lor.lhs.false.i.i.i53.br_mrp_in_frame.exit_crit_edge
  %retval.0.i.i34.i58 = phi ptr [ %add.ptr.i.i.i55, %skb_header_pointer.exit.i57.br_mrp_in_frame.exit_crit_edge ], [ %_hdr.i43, %lor.lhs.false.i.i.i53.br_mrp_in_frame.exit_crit_edge ]
  %120 = ptrtoint ptr %retval.0.i.i34.i58 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %retval.0.i.i34.i58, align 1
  %.off.i = add i8 %121, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_hdr.i43) #7
  br i1 %switch.i, label %if.then61, label %br_mrp_in_frame.exit.if.then180_crit_edge

br_mrp_in_frame.exit.if.then180_crit_edge:        ; preds = %br_mrp_in_frame.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then180

if.then61:                                        ; preds = %br_mrp_in_frame.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %_hdr.i61) #7
  %122 = ptrtoint ptr %_hdr.i61 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 -1, ptr %_hdr.i61, align 1, !annotation !88
  %123 = getelementptr inbounds %struct.br_mrp_tlv_hdr, ptr %_hdr.i61, i32 0, i32 1
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 -1, ptr %123, align 1, !annotation !88
  %125 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %len.i.i.i, align 4
  %127 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %data_len.i.i.i, align 8
  %.neg9.i = add i32 %126, -2
  %sub.i4.i.i64 = sub i32 %.neg9.i, %128
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i4.i.i64)
  %cmp.not.i.i.i65 = icmp slt i32 %sub.i4.i.i64, 2
  br i1 %cmp.not.i.i.i65, label %if.end.i.i.i67, label %skb_header_pointer.exit.i74, !prof !89

if.end.i.i.i67:                                   ; preds = %if.then61
  %tobool2.not.i.i.i66 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i66, label %if.end.i.i.i67.br_mrp_get_frame_type.exit_crit_edge, label %lor.lhs.false.i.i.i70

if.end.i.i.i67.br_mrp_get_frame_type.exit_crit_edge: ; preds = %if.end.i.i.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_mrp_get_frame_type.exit

lor.lhs.false.i.i.i70:                            ; preds = %if.end.i.i.i67
  %call.i.i.i68 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 2, ptr noundef nonnull %_hdr.i61, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i68)
  %cmp3.i.i.i69 = icmp slt i32 %call.i.i.i68, 0
  br i1 %cmp3.i.i.i69, label %lor.lhs.false.i.i.i70.br_mrp_get_frame_type.exit_crit_edge, label %lor.lhs.false.i.i.i70.if.end.i75_crit_edge

lor.lhs.false.i.i.i70.if.end.i75_crit_edge:       ; preds = %lor.lhs.false.i.i.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i75

lor.lhs.false.i.i.i70.br_mrp_get_frame_type.exit_crit_edge: ; preds = %lor.lhs.false.i.i.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_mrp_get_frame_type.exit

skb_header_pointer.exit.i74:                      ; preds = %if.then61
  %data.i.i71 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %129 = ptrtoint ptr %data.i.i71 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %data.i.i71, align 4
  %add.ptr.i.i.i72 = getelementptr i8, ptr %130, i32 2
  %tobool.not.i73 = icmp eq ptr %add.ptr.i.i.i72, null
  br i1 %tobool.not.i73, label %skb_header_pointer.exit.i74.br_mrp_get_frame_type.exit_crit_edge, label %skb_header_pointer.exit.i74.if.end.i75_crit_edge

skb_header_pointer.exit.i74.if.end.i75_crit_edge: ; preds = %skb_header_pointer.exit.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i75

skb_header_pointer.exit.i74.br_mrp_get_frame_type.exit_crit_edge: ; preds = %skb_header_pointer.exit.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_mrp_get_frame_type.exit

if.end.i75:                                       ; preds = %skb_header_pointer.exit.i74.if.end.i75_crit_edge, %lor.lhs.false.i.i.i70.if.end.i75_crit_edge
  %retval.0.i.i8.i = phi ptr [ %add.ptr.i.i.i72, %skb_header_pointer.exit.i74.if.end.i75_crit_edge ], [ %_hdr.i61, %lor.lhs.false.i.i.i70.if.end.i75_crit_edge ]
  %131 = ptrtoint ptr %retval.0.i.i8.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %retval.0.i.i8.i, align 1
  br label %br_mrp_get_frame_type.exit

br_mrp_get_frame_type.exit:                       ; preds = %if.end.i75, %skb_header_pointer.exit.i74.br_mrp_get_frame_type.exit_crit_edge, %lor.lhs.false.i.i.i70.br_mrp_get_frame_type.exit_crit_edge, %if.end.i.i.i67.br_mrp_get_frame_type.exit_crit_edge
  %retval.0.i76 = phi i8 [ %132, %if.end.i75 ], [ -1, %skb_header_pointer.exit.i74.br_mrp_get_frame_type.exit_crit_edge ], [ -1, %if.end.i.i.i67.br_mrp_get_frame_type.exit_crit_edge ], [ -1, %lor.lhs.false.i.i.i70.br_mrp_get_frame_type.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_hdr.i61) #7
  %i_port67 = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 3
  %133 = ptrtoint ptr %i_port67 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile ptr, ptr %i_port67, align 4
  %call69 = call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %land.lhs.true71, label %br_mrp_get_frame_type.exit.do.end79_crit_edge

br_mrp_get_frame_type.exit.do.end79_crit_edge:    ; preds = %br_mrp_get_frame_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end79

land.lhs.true71:                                  ; preds = %br_mrp_get_frame_type.exit
  %call72 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %land.lhs.true71.do.end79_crit_edge, label %land.lhs.true74

land.lhs.true71.do.end79_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end79

land.lhs.true74:                                  ; preds = %land.lhs.true71
  %.b2661 = load i1, ptr @br_mrp_rcv.__warned.15, align 1
  br i1 %.b2661, label %land.lhs.true74.do.end79_crit_edge, label %if.then76

land.lhs.true74.do.end79_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end79

if.then76:                                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_mrp_rcv.__warned.15, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1129, ptr noundef nonnull @.str.13) #7
  br label %do.end79

do.end79:                                         ; preds = %if.then76, %land.lhs.true74.do.end79_crit_edge, %land.lhs.true71.do.end79_crit_edge, %br_mrp_get_frame_type.exit.do.end79_crit_edge
  %cmp.i77 = icmp eq ptr %12, %p
  %cmp1.i = icmp eq ptr %14, %p
  %or.cond.i = or i1 %cmp.i77, %cmp1.i
  br i1 %or.cond.i, label %land.lhs.true83, label %do.end79.if.end93_crit_edge

do.end79.if.end93_crit_edge:                      ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

land.lhs.true83:                                  ; preds = %do.end79
  %135 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %136)
  %cmp86 = icmp eq i8 %136, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %retval.0.i76)
  %cmp90 = icmp eq i8 %retval.0.i76, 6
  %or.cond = select i1 %cmp86, i1 %cmp90, i1 false
  br i1 %or.cond, label %land.lhs.true83.cleanup188_crit_edge, label %land.lhs.true83.if.end93_crit_edge

land.lhs.true83.if.end93_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

land.lhs.true83.cleanup188_crit_edge:             ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup188

if.end93:                                         ; preds = %land.lhs.true83.if.end93_crit_edge, %do.end79.if.end93_crit_edge
  %ring_role.i = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 7
  %137 = ptrtoint ptr %ring_role.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %ring_role.i, align 4
  %139 = zext i32 %138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %138, label %if.end93.if.end109_crit_edge [
    i32 2, label %if.end93.land.lhs.true96_crit_edge
    i32 3, label %land.lhs.true.i79
  ]

if.end93.land.lhs.true96_crit_edge:               ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true96

if.end93.if.end109_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

land.lhs.true.i79:                                ; preds = %if.end93
  %test_monitor.i = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 20
  %140 = ptrtoint ptr %test_monitor.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %test_monitor.i, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool.not.i78 = icmp eq i8 %141, 0
  br i1 %tobool.not.i78, label %land.lhs.true.i79.land.lhs.true96_crit_edge, label %land.lhs.true.i79.land.lhs.true.i88_crit_edge

land.lhs.true.i79.land.lhs.true.i88_crit_edge:    ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i88

land.lhs.true.i79.land.lhs.true96_crit_edge:      ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true96

land.lhs.true96:                                  ; preds = %land.lhs.true.i79.land.lhs.true96_crit_edge, %if.end93.land.lhs.true96_crit_edge
  br i1 %or.cond.i, label %land.lhs.true99, label %land.lhs.true96.if.end109_crit_edge

land.lhs.true96.if.end109_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

land.lhs.true99:                                  ; preds = %land.lhs.true96
  %state100 = getelementptr inbounds %struct.net_bridge_port, ptr %14, i32 0, i32 8
  %142 = ptrtoint ptr %state100 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %state100, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %143)
  %cmp102.not = icmp eq i8 %143, 3
  br i1 %cmp102.not, label %lor.lhs.false, label %land.lhs.true99.if.then108_crit_edge

land.lhs.true99.if.then108_crit_edge:             ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then108

lor.lhs.false:                                    ; preds = %land.lhs.true99
  %state104 = getelementptr inbounds %struct.net_bridge_port, ptr %12, i32 0, i32 8
  %144 = ptrtoint ptr %state104 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %state104, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %145)
  %cmp106.not = icmp eq i8 %145, 3
  br i1 %cmp106.not, label %lor.lhs.false.if.end109_crit_edge, label %lor.lhs.false.if.then108_crit_edge

lor.lhs.false.if.then108_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then108

lor.lhs.false.if.end109_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then108:                                       ; preds = %lor.lhs.false.if.then108_crit_edge, %land.lhs.true99.if.then108_crit_edge
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %lor.lhs.false.if.end109_crit_edge, %land.lhs.true96.if.end109_crit_edge, %if.end93.if.end109_crit_edge
  %s_dst.0 = phi ptr [ null, %if.then108 ], [ %14, %lor.lhs.false.if.end109_crit_edge ], [ %14, %land.lhs.true96.if.end109_crit_edge ], [ %14, %if.end93.if.end109_crit_edge ]
  %p_dst.0 = phi ptr [ null, %if.then108 ], [ %12, %lor.lhs.false.if.end109_crit_edge ], [ %12, %land.lhs.true96.if.end109_crit_edge ], [ %12, %if.end93.if.end109_crit_edge ]
  %146 = zext i32 %138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %138, label %if.end109.if.end116_crit_edge [
    i32 1, label %if.end109.land.lhs.true112_crit_edge
    i32 3, label %if.end109.land.lhs.true.i88_crit_edge
  ]

if.end109.land.lhs.true.i88_crit_edge:            ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i88

if.end109.land.lhs.true112_crit_edge:             ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true112

if.end109.if.end116_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

land.lhs.true.i88:                                ; preds = %if.end109.land.lhs.true.i88_crit_edge, %land.lhs.true.i79.land.lhs.true.i88_crit_edge
  %p_dst.0113 = phi ptr [ %p_dst.0, %if.end109.land.lhs.true.i88_crit_edge ], [ %12, %land.lhs.true.i79.land.lhs.true.i88_crit_edge ]
  %s_dst.0110 = phi ptr [ %s_dst.0, %if.end109.land.lhs.true.i88_crit_edge ], [ %14, %land.lhs.true.i79.land.lhs.true.i88_crit_edge ]
  %test_monitor.i86 = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 20
  %147 = ptrtoint ptr %test_monitor.i86 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %test_monitor.i86, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool.not.i87 = icmp eq i8 %148, 0
  br i1 %tobool.not.i87, label %land.lhs.true.i88.if.end116_crit_edge, label %land.lhs.true.i88.land.lhs.true112_crit_edge

land.lhs.true.i88.land.lhs.true112_crit_edge:     ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true112

land.lhs.true.i88.if.end116_crit_edge:            ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

land.lhs.true112:                                 ; preds = %land.lhs.true.i88.land.lhs.true112_crit_edge, %if.end109.land.lhs.true112_crit_edge
  %p_dst.0114.ph = phi ptr [ %p_dst.0113, %land.lhs.true.i88.land.lhs.true112_crit_edge ], [ %p_dst.0, %if.end109.land.lhs.true112_crit_edge ]
  %s_dst.0111.ph = phi ptr [ %s_dst.0110, %land.lhs.true.i88.land.lhs.true112_crit_edge ], [ %s_dst.0, %if.end109.land.lhs.true112_crit_edge ]
  %in_role = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 11
  %149 = ptrtoint ptr %in_role to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %in_role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp113 = icmp eq i32 %150, 0
  br i1 %cmp113, label %land.lhs.true112.forward_crit_edge, label %land.lhs.true112.if.end116_crit_edge

land.lhs.true112.if.end116_crit_edge:             ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

land.lhs.true112.forward_crit_edge:               ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #9
  br label %forward

if.end116:                                        ; preds = %land.lhs.true112.if.end116_crit_edge, %land.lhs.true.i88.if.end116_crit_edge, %if.end109.if.end116_crit_edge
  %s_dst.0111121 = phi ptr [ %s_dst.0111.ph, %land.lhs.true112.if.end116_crit_edge ], [ %s_dst.0110, %land.lhs.true.i88.if.end116_crit_edge ], [ %s_dst.0, %if.end109.if.end116_crit_edge ]
  %p_dst.0114119 = phi ptr [ %p_dst.0114.ph, %land.lhs.true112.if.end116_crit_edge ], [ %p_dst.0113, %land.lhs.true.i88.if.end116_crit_edge ], [ %p_dst.0, %if.end109.if.end116_crit_edge ]
  %in_role117 = getelementptr inbounds %struct.br_mrp, ptr %mrp.0.i, i32 0, i32 11
  %151 = ptrtoint ptr %in_role117 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %in_role117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %152)
  %cmp118 = icmp eq i32 %152, 2
  br i1 %cmp118, label %if.then120, label %if.end116.if.end142_crit_edge

if.end116.if.end142_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142

if.then120:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %retval.0.i76)
  %cmp122 = icmp eq i8 %retval.0.i76, 6
  br i1 %cmp122, label %if.then124, label %if.else134

if.then124:                                       ; preds = %if.then120
  %call125 = call fastcc zeroext i1 @br_mrp_mim_process(ptr noundef nonnull %mrp.0.i, ptr noundef %p, ptr noundef %skb)
  %spec.select = select i1 %or.cond.i, ptr null, ptr %134
  %cmp.i94 = icmp eq ptr %134, %p
  %or.cond136 = select i1 %call125, i1 true, i1 %cmp.i94
  br i1 %or.cond136, label %if.then124.cleanup188_crit_edge, label %if.then124.if.end142thread-pre-split_crit_edge

if.then124.if.end142thread-pre-split_crit_edge:   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142thread-pre-split

if.then124.cleanup188_crit_edge:                  ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup188

if.else134:                                       ; preds = %if.then120
  %spec.select4 = select i1 %or.cond.i, ptr null, ptr %134
  %cmp.i98 = icmp eq ptr %134, %p
  br i1 %cmp.i98, label %if.else134.cleanup188_crit_edge, label %if.else134.if.end142thread-pre-split_crit_edge

if.else134.if.end142thread-pre-split_crit_edge:   ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142thread-pre-split

if.else134.cleanup188_crit_edge:                  ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup188

if.end142thread-pre-split:                        ; preds = %if.else134.if.end142thread-pre-split_crit_edge, %if.then124.if.end142thread-pre-split_crit_edge
  %i_dst.2.ph = phi ptr [ %spec.select4, %if.else134.if.end142thread-pre-split_crit_edge ], [ %spec.select, %if.then124.if.end142thread-pre-split_crit_edge ]
  %153 = ptrtoint ptr %in_role117 to i32
  call void @__asan_load4_noabort(i32 %153)
  %.pr = load i32, ptr %in_role117, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.end142thread-pre-split, %if.end116.if.end142_crit_edge
  %154 = phi i32 [ %.pr, %if.end142thread-pre-split ], [ %152, %if.end116.if.end142_crit_edge ]
  %i_dst.2 = phi ptr [ %i_dst.2.ph, %if.end142thread-pre-split ], [ %134, %if.end116.if.end142_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %154)
  %cmp144 = icmp ne i32 %154, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %retval.0.i76)
  %cmp148 = icmp eq i8 %retval.0.i76, 6
  %or.cond137 = select i1 %cmp144, i1 true, i1 %cmp148
  br i1 %or.cond137, label %if.end142.forward_crit_edge, label %if.end151

if.end142.forward_crit_edge:                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %forward

if.end151:                                        ; preds = %if.end142
  %155 = and i8 %retval.0.i76, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %155)
  %switch = icmp eq i8 %155, 8
  %or.cond6 = select i1 %or.cond.i, i1 %switch, i1 false
  br i1 %or.cond6, label %if.end151.forward_crit_edge, label %if.end163

if.end151.forward_crit_edge:                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  br label %forward

if.end163:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %retval.0.i76)
  %cmp168 = icmp eq i8 %retval.0.i76, 10
  %or.cond5 = select i1 %or.cond.i, i1 %cmp168, i1 false
  %s_dst.1 = select i1 %or.cond5, ptr null, ptr %s_dst.0111121
  %p_dst.1 = select i1 %or.cond5, ptr null, ptr %p_dst.0114119
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %retval.0.i76)
  %cmp173 = icmp eq i8 %retval.0.i76, 7
  br i1 %cmp173, label %if.end163.forward_crit_edge, label %if.end163.cleanup188_crit_edge

if.end163.cleanup188_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup188

if.end163.forward_crit_edge:                      ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %forward

forward:                                          ; preds = %if.end163.forward_crit_edge, %if.end151.forward_crit_edge, %if.end142.forward_crit_edge, %land.lhs.true112.forward_crit_edge
  %i_dst.4 = phi ptr [ %134, %land.lhs.true112.forward_crit_edge ], [ %i_dst.2, %if.end142.forward_crit_edge ], [ %i_dst.2, %if.end151.forward_crit_edge ], [ null, %if.end163.forward_crit_edge ]
  %s_dst.3 = phi ptr [ %s_dst.0111.ph, %land.lhs.true112.forward_crit_edge ], [ %s_dst.0111121, %if.end142.forward_crit_edge ], [ %s_dst.0111121, %if.end151.forward_crit_edge ], [ %s_dst.1, %if.end163.forward_crit_edge ]
  %p_dst.3 = phi ptr [ %p_dst.0114.ph, %land.lhs.true112.forward_crit_edge ], [ %p_dst.0114119, %if.end142.forward_crit_edge ], [ %p_dst.0114119, %if.end151.forward_crit_edge ], [ %p_dst.1, %if.end163.forward_crit_edge ]
  %tobool179.not = icmp eq ptr %p_dst.3, null
  br i1 %tobool179.not, label %forward.if.end181_crit_edge, label %forward.if.then180_crit_edge

forward.if.then180_crit_edge:                     ; preds = %forward
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then180

forward.if.end181_crit_edge:                      ; preds = %forward
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end181

if.then180:                                       ; preds = %forward.if.then180_crit_edge, %br_mrp_in_frame.exit.if.then180_crit_edge, %br_mrp_in_frame.exit.thread, %br_mrp_mra_process.exit, %if.then46.if.then180_crit_edge
  %p_dst.3135 = phi ptr [ %p_dst.3, %forward.if.then180_crit_edge ], [ %12, %br_mrp_mra_process.exit ], [ %12, %br_mrp_in_frame.exit.if.then180_crit_edge ], [ %12, %if.then46.if.then180_crit_edge ], [ %12, %br_mrp_in_frame.exit.thread ]
  %s_dst.3133 = phi ptr [ %s_dst.3, %forward.if.then180_crit_edge ], [ %14, %br_mrp_mra_process.exit ], [ %14, %br_mrp_in_frame.exit.if.then180_crit_edge ], [ %14, %if.then46.if.then180_crit_edge ], [ %14, %br_mrp_in_frame.exit.thread ]
  %i_dst.4131 = phi ptr [ %i_dst.4, %forward.if.then180_crit_edge ], [ null, %br_mrp_mra_process.exit ], [ null, %br_mrp_in_frame.exit.if.then180_crit_edge ], [ null, %if.then46.if.then180_crit_edge ], [ null, %br_mrp_in_frame.exit.thread ]
  call void @br_forward(ptr noundef nonnull %p_dst.3135, ptr noundef %skb, i1 noundef zeroext true, i1 noundef zeroext false) #7
  br label %if.end181

if.end181:                                        ; preds = %if.then180, %forward.if.end181_crit_edge
  %s_dst.3134 = phi ptr [ %s_dst.3133, %if.then180 ], [ %s_dst.3, %forward.if.end181_crit_edge ]
  %i_dst.4132 = phi ptr [ %i_dst.4131, %if.then180 ], [ %i_dst.4, %forward.if.end181_crit_edge ]
  %tobool182.not = icmp eq ptr %s_dst.3134, null
  br i1 %tobool182.not, label %if.end181.if.end184_crit_edge, label %if.then183

if.end181.if.end184_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end184

if.then183:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #9
  call void @br_forward(ptr noundef nonnull %s_dst.3134, ptr noundef %skb, i1 noundef zeroext true, i1 noundef zeroext false) #7
  br label %if.end184

if.end184:                                        ; preds = %if.then183, %if.end181.if.end184_crit_edge
  %tobool185.not = icmp eq ptr %i_dst.4132, null
  br i1 %tobool185.not, label %if.end184.cleanup188_crit_edge, label %if.then186

if.end184.cleanup188_crit_edge:                   ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup188

if.then186:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #9
  call void @br_forward(ptr noundef nonnull %i_dst.4132, ptr noundef %skb, i1 noundef zeroext true, i1 noundef zeroext false) #7
  br label %cleanup188

cleanup188:                                       ; preds = %if.then186, %if.end184.cleanup188_crit_edge, %if.end163.cleanup188_crit_edge, %if.else134.cleanup188_crit_edge, %if.then124.cleanup188_crit_edge, %land.lhs.true83.cleanup188_crit_edge, %if.then56, %br_mrp_mrm_process.exit, %do.end40.cleanup188_crit_edge, %do.end19.cleanup188_crit_edge, %for.cond.i.cleanup188_crit_edge, %entry.cleanup188_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup188_crit_edge ], [ 0, %do.end19.cleanup188_crit_edge ], [ 0, %do.end40.cleanup188_crit_edge ], [ 1, %if.end184.cleanup188_crit_edge ], [ 1, %if.then186 ], [ 1, %if.then56 ], [ 1, %br_mrp_mrm_process.exit ], [ 1, %land.lhs.true83.cleanup188_crit_edge ], [ 1, %if.then124.cleanup188_crit_edge ], [ 1, %if.else134.cleanup188_crit_edge ], [ 1, %if.end163.cleanup188_crit_edge ], [ 0, %for.cond.i.cleanup188_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @br_mrp_mrm_process(ptr nocapture noundef %mrp, ptr nocapture noundef readonly %port, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %_hdr = alloca %struct.br_mrp_tlv_hdr, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %_hdr) #7
  %0 = ptrtoint ptr %_hdr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %_hdr, align 1, !annotation !88
  %1 = getelementptr inbounds %struct.br_mrp_tlv_hdr, ptr %_hdr, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !88
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %5 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_len.i.i, align 8
  %.neg18 = add i32 %4, -2
  %sub.i4.i = sub i32 %.neg18, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !89

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 2, ptr noundef nonnull %_hdr, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 2
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i17 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end_crit_edge ], [ %_hdr, %lor.lhs.false.i.i.if.end_crit_edge ]
  %9 = ptrtoint ptr %retval.0.i.i17 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %retval.0.i.i17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp.not = icmp eq i8 %10, 2
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %test_count_miss = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 18
  %11 = ptrtoint ptr %test_count_miss to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %test_count_miss, align 4
  %ring_state = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 9
  %12 = ptrtoint ptr %ring_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ring_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp4.not = icmp eq i32 %13, 1
  br i1 %cmp4.not, label %if.end3.cleanup_crit_edge, label %if.then6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %port, i32 0, i32 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call7 = call i32 @br_mrp_ring_port_open(ptr noundef %15, i8 noundef zeroext 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_hdr) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @br_mrp_mim_process(ptr nocapture noundef %mrp, ptr nocapture noundef readonly %port, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %_in_hdr = alloca %struct.br_mrp_in_test_hdr, align 2
  %_hdr = alloca %struct.br_mrp_tlv_hdr, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %_in_hdr) #7
  %0 = call ptr @memset(ptr %_in_hdr, i32 255, i32 18)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %_hdr) #7
  %1 = ptrtoint ptr %_hdr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %_hdr, align 1, !annotation !88
  %2 = getelementptr inbounds %struct.br_mrp_tlv_hdr, ptr %_hdr, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !88
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  %.neg48 = add i32 %5, -2
  %sub.i4.i = sub i32 %.neg48, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !89

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 2, ptr noundef nonnull %_hdr, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 2
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %10 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i, align 4
  %12 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i, align 8
  %.neg50 = add i32 %11, -4
  %sub.i4.i23 = sub i32 %.neg50, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %sub.i4.i23)
  %cmp.not.i.i24 = icmp slt i32 %sub.i4.i23, 18
  br i1 %cmp.not.i.i24, label %if.end.i.i29, label %skb_header_pointer.exit35, !prof !89

if.end.i.i29:                                     ; preds = %if.end
  %tobool2.not.i.i28 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i28, label %if.end.i.i29.cleanup_crit_edge, label %lor.lhs.false.i.i33

if.end.i.i29.cleanup_crit_edge:                   ; preds = %if.end.i.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i.i33:                              ; preds = %if.end.i.i29
  %call.i.i30 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 4, ptr noundef nonnull %_in_hdr, i32 noundef 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30)
  %cmp3.i.i31 = icmp slt i32 %call.i.i30, 0
  br i1 %cmp3.i.i31, label %lor.lhs.false.i.i33.cleanup_crit_edge, label %lor.lhs.false.i.i33.if.end4_crit_edge

lor.lhs.false.i.i33.if.end4_crit_edge:            ; preds = %lor.lhs.false.i.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

lor.lhs.false.i.i33.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

skb_header_pointer.exit35:                        ; preds = %if.end
  %data.i25 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data.i25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i25, align 4
  %add.ptr.i.i26 = getelementptr i8, ptr %15, i32 4
  %tobool2.not = icmp eq ptr %add.ptr.i.i26, null
  br i1 %tobool2.not, label %skb_header_pointer.exit35.cleanup_crit_edge, label %skb_header_pointer.exit35.if.end4_crit_edge

skb_header_pointer.exit35.if.end4_crit_edge:      ; preds = %skb_header_pointer.exit35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

skb_header_pointer.exit35.cleanup_crit_edge:      ; preds = %skb_header_pointer.exit35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %skb_header_pointer.exit35.if.end4_crit_edge, %lor.lhs.false.i.i33.if.end4_crit_edge
  %retval.0.i.i3447 = phi ptr [ %add.ptr.i.i26, %skb_header_pointer.exit35.if.end4_crit_edge ], [ %_in_hdr, %lor.lhs.false.i.i33.if.end4_crit_edge ]
  %in_id = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 5
  %16 = ptrtoint ptr %in_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %in_id, align 4
  %18 = ptrtoint ptr %retval.0.i.i3447 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %retval.0.i.i3447, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %19)
  %cmp.not = icmp eq i16 %17, %19
  br i1 %cmp.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %in_test_count_miss = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 24
  %20 = ptrtoint ptr %in_test_count_miss to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %in_test_count_miss, align 4
  %in_state = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 13
  %21 = ptrtoint ptr %in_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %in_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp9.not = icmp eq i32 %22, 1
  br i1 %cmp9.not, label %if.end8.cleanup_crit_edge, label %if.then11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %port, i32 0, i32 1
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %call12 = call i32 @br_mrp_in_port_open(ptr noundef %24, i8 noundef zeroext 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %skb_header_pointer.exit35.cleanup_crit_edge, %lor.lhs.false.i.i33.cleanup_crit_edge, %if.end.i.i29.cleanup_crit_edge, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %skb_header_pointer.exit.cleanup_crit_edge ], [ false, %skb_header_pointer.exit35.cleanup_crit_edge ], [ false, %if.end4.cleanup_crit_edge ], [ true, %if.then11 ], [ true, %if.end8.cleanup_crit_edge ], [ false, %if.end.i.i.cleanup_crit_edge ], [ false, %lor.lhs.false.i.i.cleanup_crit_edge ], [ false, %if.end.i.i29.cleanup_crit_edge ], [ false, %lor.lhs.false.i.i33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_hdr) #7
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %_in_hdr) #7
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_forward(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_mrp_ring_port_open(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_mrp_in_port_open(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @br_mrp_alloc_test_skb(ptr nocapture noundef %mrp, ptr noundef readonly %p, i32 noundef %port_role) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 200, i32 noundef 2592) #7
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = getelementptr inbounds %struct.anon.4, ptr %call.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %6, align 8
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 18
  %8 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -30493, ptr %protocol.i, align 8
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 6
  %9 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 7, ptr %priority.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 14
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %13, i32 14
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call1.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i, i32 noundef 14) #7
  %14 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 18173440, ptr %call1.i, align 4
  %add.ptr1.i16.i = getelementptr i8, ptr %call1.i, i32 4
  %15 = ptrtoint ptr %add.ptr1.i16.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %add.ptr1.i16.i, align 2
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %call1.i, i32 0, i32 1
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 4
  %18 = ptrtoint ptr %h_source.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %h_source.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %3, i32 4
  %19 = ptrtoint ptr %add.ptr.i17.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i17.i, align 2
  %add.ptr1.i18.i = getelementptr %struct.ethhdr, ptr %call1.i, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %add.ptr1.i18.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %add.ptr1.i18.i, align 2
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %call1.i, i32 0, i32 2
  %22 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 -30493, ptr %h_proto.i, align 1
  %call3.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2) #7
  %23 = ptrtoint ptr %call3.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %call3.i, align 2
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2) #7
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %call.i, align 1
  %length2.i = getelementptr inbounds %struct.br_mrp_tlv_hdr, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %length2.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 18, ptr %length2.i, align 1
  %call4 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 18) #7
  %prio = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 6
  %26 = ptrtoint ptr %prio to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %prio, align 2
  %28 = ptrtoint ptr %call4 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %call4, align 1
  %sa = getelementptr inbounds %struct.br_mrp_ring_test_hdr, ptr %call4, i32 0, i32 1
  %29 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %p, align 8
  %dev6 = getelementptr inbounds %struct.net_bridge, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev6, align 4
  %dev_addr7 = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 86
  %33 = ptrtoint ptr %dev_addr7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_addr7, align 64
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %37 = ptrtoint ptr %sa to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %sa, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 4
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.br_mrp_ring_test_hdr, ptr %call4, i32 0, i32 1, i32 4
  %40 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %add.ptr1.i, align 2
  %conv = trunc i32 %port_role to i16
  %port_role8 = getelementptr inbounds %struct.br_mrp_ring_test_hdr, ptr %call4, i32 0, i32 2
  %41 = ptrtoint ptr %port_role8 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %conv, ptr %port_role8, align 1
  %ring_state = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 9
  %42 = ptrtoint ptr %ring_state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ring_state, align 4
  %conv9 = trunc i32 %43 to i16
  %state = getelementptr inbounds %struct.br_mrp_ring_test_hdr, ptr %call4, i32 0, i32 3
  %44 = ptrtoint ptr %state to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %conv9, ptr %state, align 1
  %ring_transitions = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 10
  %45 = ptrtoint ptr %ring_transitions to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ring_transitions, align 4
  %conv10 = trunc i32 %46 to i16
  %transitions = getelementptr inbounds %struct.br_mrp_ring_test_hdr, ptr %call4, i32 0, i32 4
  %47 = ptrtoint ptr %transitions to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 %conv10, ptr %transitions, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %call11 = tail call i32 @jiffies_to_msecs(i32 noundef %48) #7
  %timestamp = getelementptr inbounds %struct.br_mrp_ring_test_hdr, ptr %call4, i32 0, i32 5
  %49 = ptrtoint ptr %timestamp to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %call11, ptr %timestamp, align 1
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2) #7
  %50 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %call.i.i, align 1
  %length2.i.i = getelementptr inbounds %struct.br_mrp_tlv_hdr, ptr %call.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 18, ptr %length2.i.i, align 1
  %call.i42 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 18) #7
  %seq_id.i.i = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 26
  %52 = ptrtoint ptr %seq_id.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %seq_id.i.i, align 4
  %inc.i.i = add i32 %53, 1
  store i32 %inc.i.i, ptr %seq_id.i.i, align 4
  %conv.i = trunc i32 %inc.i.i to i16
  %54 = ptrtoint ptr %call.i42 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i, ptr %call.i42, align 2
  %domain.i = getelementptr inbounds %struct.br_mrp_common_hdr, ptr %call.i42, i32 0, i32 1
  %55 = call ptr @memset(ptr %domain.i, i32 255, i32 16)
  %ring_role = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 7
  %56 = ptrtoint ptr %ring_role to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ring_role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %57)
  %cmp = icmp eq i32 %57, 3
  br i1 %cmp, label %if.then13, label %if.end3.if.end18_crit_edge

if.end3.if.end18_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then13:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %call.i43 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2) #7
  %58 = ptrtoint ptr %call.i43 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 127, ptr %call.i43, align 1
  %length2.i44 = getelementptr inbounds %struct.br_mrp_tlv_hdr, ptr %call.i43, i32 0, i32 1
  %59 = ptrtoint ptr %length2.i44 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 11, ptr %length2.i44, align 1
  %call14 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #7
  %60 = call ptr @memset(ptr %call14, i32 0, i32 3)
  %call15 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #7
  %61 = call ptr @memset(ptr %call15, i32 0, i32 3)
  %call16 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2) #7
  %62 = ptrtoint ptr %call16 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 3, ptr %call16, align 1
  %call17 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end3.if.end18_crit_edge
  %call.i45 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2) #7
  %63 = ptrtoint ptr %call.i45 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %call.i45, align 1
  %length2.i46 = getelementptr inbounds %struct.br_mrp_tlv_hdr, ptr %call.i45, i32 0, i32 1
  %64 = ptrtoint ptr %length2.i46 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %length2.i46, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i.i.i, %if.end18 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @br_mrp_alloc_in_test_skb(ptr nocapture noundef %mrp, ptr noundef readonly %p, i32 noundef %port_role) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 200, i32 noundef 2592) #7
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = getelementptr inbounds %struct.anon.4, ptr %call.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %6, align 8
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 18
  %8 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -30493, ptr %protocol.i, align 8
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 6
  %9 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 7, ptr %priority.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 14
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %13, i32 14
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call1.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i.i, i32 noundef 14) #7
  %14 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 18173440, ptr %call1.i, align 4
  %add.ptr1.i16.i = getelementptr i8, ptr %call1.i, i32 4
  %15 = ptrtoint ptr %add.ptr1.i16.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 3, ptr %add.ptr1.i16.i, align 2
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %call1.i, i32 0, i32 1
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 4
  %18 = ptrtoint ptr %h_source.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %h_source.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %3, i32 4
  %19 = ptrtoint ptr %add.ptr.i17.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i17.i, align 2
  %add.ptr1.i18.i = getelementptr %struct.ethhdr, ptr %call1.i, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %add.ptr1.i18.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %add.ptr1.i18.i, align 2
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %call1.i, i32 0, i32 2
  %22 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 -30493, ptr %h_proto.i, align 1
  %call3.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2) #7
  %23 = ptrtoint ptr %call3.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %call3.i, align 2
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2) #7
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 6, ptr %call.i, align 1
  %length2.i = getelementptr inbounds %struct.br_mrp_tlv_hdr, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %length2.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 18, ptr %length2.i, align 1
  %call4 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 18) #7
  %in_id = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 5
  %26 = ptrtoint ptr %in_id to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %in_id, align 4
  %28 = ptrtoint ptr %call4 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %call4, align 1
  %sa = getelementptr inbounds %struct.br_mrp_in_test_hdr, ptr %call4, i32 0, i32 1
  %29 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %p, align 8
  %dev5 = getelementptr inbounds %struct.net_bridge, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev5, align 4
  %dev_addr6 = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 86
  %33 = ptrtoint ptr %dev_addr6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_addr6, align 64
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %37 = ptrtoint ptr %sa to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %sa, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 4
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.br_mrp_in_test_hdr, ptr %call4, i32 0, i32 1, i32 4
  %40 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %add.ptr1.i, align 2
  %conv = trunc i32 %port_role to i16
  %port_role7 = getelementptr inbounds %struct.br_mrp_in_test_hdr, ptr %call4, i32 0, i32 2
  %41 = ptrtoint ptr %port_role7 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %conv, ptr %port_role7, align 1
  %in_state = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 13
  %42 = ptrtoint ptr %in_state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %in_state, align 4
  %conv8 = trunc i32 %43 to i16
  %state = getelementptr inbounds %struct.br_mrp_in_test_hdr, ptr %call4, i32 0, i32 3
  %44 = ptrtoint ptr %state to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %conv8, ptr %state, align 1
  %in_transitions = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 14
  %45 = ptrtoint ptr %in_transitions to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %in_transitions, align 4
  %conv9 = trunc i32 %46 to i16
  %transitions = getelementptr inbounds %struct.br_mrp_in_test_hdr, ptr %call4, i32 0, i32 4
  %47 = ptrtoint ptr %transitions to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 %conv9, ptr %transitions, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %call10 = tail call i32 @jiffies_to_msecs(i32 noundef %48) #7
  %timestamp = getelementptr inbounds %struct.br_mrp_in_test_hdr, ptr %call4, i32 0, i32 5
  %49 = ptrtoint ptr %timestamp to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %call10, ptr %timestamp, align 1
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2) #7
  %50 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %call.i.i, align 1
  %length2.i.i = getelementptr inbounds %struct.br_mrp_tlv_hdr, ptr %call.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 18, ptr %length2.i.i, align 1
  %call.i28 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 18) #7
  %seq_id.i.i = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 26
  %52 = ptrtoint ptr %seq_id.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %seq_id.i.i, align 4
  %inc.i.i = add i32 %53, 1
  store i32 %inc.i.i, ptr %seq_id.i.i, align 4
  %conv.i = trunc i32 %inc.i.i to i16
  %54 = ptrtoint ptr %call.i28 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i, ptr %call.i28, align 2
  %domain.i = getelementptr inbounds %struct.br_mrp_common_hdr, ptr %call.i28, i32 0, i32 1
  %55 = call ptr @memset(ptr %domain.i, i32 255, i32 16)
  %call.i29 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2) #7
  %56 = ptrtoint ptr %call.i29 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %call.i29, align 1
  %length2.i30 = getelementptr inbounds %struct.br_mrp_tlv_hdr, ptr %call.i29, i32 0, i32 1
  %57 = ptrtoint ptr %length2.i30 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %length2.i30, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i.i.i, %if.end3 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_mrp_switchdev_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_del_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !9, !10, !12, !13, !14, !16, !17, !19, !21, !23, !25, !27, !29, !30, !32, !34, !36, !38, !40, !41, !42, !44, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65}
!llvm.named.register.sp = !{!67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @br_mrp_add.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/bridge/br_mrp.c", i32 543, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @br_mrp_add.__key.1, !1, !"__key", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @br_mrp_add.__key.3, !6, !"__key", i1 false, i1 false}
!6 = !{!"../net/bridge/br_mrp.c", i32 544, i32 2}
!7 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @br_mrp_add.__key.5, !6, !"__key", i1 false, i1 false}
!9 = !{ptr @.str.6, !6, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../net/bridge/br_mrp.c", i32 774, i32 7}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../net/bridge/br_mrp.c", i32 57, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/bridge/br_mrp.c", i32 88, i32 2}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/bridge/br_mrp.c", i32 92, i32 7}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/bridge/br_mrp.c", i32 96, i32 7}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../net/bridge/br_mrp.c", i32 100, i32 7}
!25 = !{ptr @mrp_frame_type, !26, !"mrp_frame_type", i1 false, i1 false}
!26 = !{!"../net/bridge/br_mrp.c", i32 11, i32 29}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../net/bridge/br_mrp.c", i32 1091, i32 11}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../net/bridge/br_mrp.c", i32 1096, i32 11}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../net/bridge/br_mrp.c", i32 1129, i32 12}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../net/bridge/br_mrp.c", i32 309, i32 6}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../net/bridge/br_mrp.c", i32 325, i32 6}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"mrp_test_dmac", i1 false, i1 false}
!43 = !{!"../net/bridge/br_mrp.c", i32 6, i32 17}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../net/bridge/br_mrp.c", i32 376, i32 6}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../net/bridge/br_mrp.c", i32 390, i32 6}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../net/bridge/br_mrp.c", i32 404, i32 6}
!53 = distinct !{null, !54, !"mrp_in_test_dmac", i1 false, i1 false}
!54 = !{!"../net/bridge/br_mrp.c", i32 7, i32 17}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../net/bridge/br_mrp.c", i32 443, i32 6}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../net/bridge/br_mrp.c", i32 451, i32 6}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../net/bridge/br_mrp.c", i32 463, i32 6}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../net/bridge/br_mrp.c", i32 475, i32 6}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../net/bridge/br_mrp.c", i32 114, i32 2}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../net/bridge/br_mrp.c", i32 73, i32 2}
!67 = !{!"sp"}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i64 2158103954}
!78 = !{i64 2158111427}
!79 = !{i64 2149795892}
!80 = !{i64 2149780855}
!81 = !{i8 0, i8 2}
!82 = !{i64 2149679244}
!83 = !{i64 2149679510}
!84 = !{i64 2158121722}
!85 = !{i64 2158129109}
!86 = !{i64 2158148344}
!87 = !{!"branch_weights", i32 2000, i32 1}
!88 = !{!"auto-init"}
!89 = !{!"branch_weights", i32 1, i32 2000}
