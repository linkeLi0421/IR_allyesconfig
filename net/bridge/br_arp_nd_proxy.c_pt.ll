; ModuleID = '/llk/IR_all_yes/net/bridge/br_arp_nd_proxy.c_pt.bc'
source_filename = "../net/bridge/br_arp_nd_proxy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.144, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%union.anon.144 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.br_ip = type { %union.anon.145, %union.anon.146, i16, i16 }
%union.anon.145 = type { %struct.in6_addr }
%union.anon.146 = type { %struct.in6_addr }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.sk_buff = type { %union.anon.3, %union.anon.6, %union.anon.114, [48 x i8], %union.anon.115, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.117, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.6 = type { ptr }
%union.anon.114 = type { i64 }
%union.anon.115 = type { %struct.anon.116 }
%struct.anon.116 = type { i32, ptr }
%union.anon.117 = type { %struct.anon.118 }
%struct.anon.118 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.119, i32, i32, i32, i16, i16, %union.anon.121, i32, %union.anon.122, %union.anon.123, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.119 = type { i32 }
%union.anon.121 = type { i32 }
%union.anon.122 = type { i32 }
%union.anon.123 = type { i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.143, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.143 = type { ptr }
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
%struct.arphdr = type { i16, i16, i8, i8, i16 }
%struct.net_bridge_port = type { ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i8, i8, i16, i8, i8, i16, i16, %struct.bridge_id, %struct.bridge_id, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.kobject, %struct.callback_head, %struct.net_bridge_mcast_port, ptr, i32, i32, %struct.hlist_head, [16 x i8], ptr, i32, i32, %struct.netdev_phys_item_id, i16, i16, %struct.bridge_stp_xstats }
%struct.net_bridge_mcast_port = type { ptr, ptr, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, i8 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.bridge_stp_xstats = type { i64, i64, i64, i64, i64, i64 }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.net_bridge_fdb_entry = type { %struct.rhash_head, ptr, %struct.net_bridge_fdb_key, %struct.hlist_node, i32, [100 x i8], i32, i32, %struct.callback_head, [112 x i8] }
%struct.rhash_head = type { ptr }
%struct.net_bridge_fdb_key = type { %struct.mac_addr, i16 }
%struct.mac_addr = type { [6 x i8] }
%struct.netdev_nested_priv = type { i8, ptr }
%struct.net_bridge_vlan_group = type { %struct.rhashtable, %struct.rhashtable, %struct.list_head, i16, i16, i8 }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.155 }
%union.anon.155 = type { [1 x i32] }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.nd_msg = type { %struct.icmp6hdr, %struct.in6_addr, [0 x i8] }
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }

@arp_tbl = external dso_local global %struct.neigh_table, align 4
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@__in_dev_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@br_arp_send.__UNIQUE_ID_ddebug578 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bridge\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"br_arp_send\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"net/bridge/br_arp_nd_proxy.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"arp send dev %s dst %pI4 dst_hw %pM src %pI4 src_hw %pM\0A\00", [39 x i8] zeroinitializer }, align 32
@nbp_vlan_group_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/bridge/br_private.h\00", [40 x i8] zeroinitializer }, align 32
@br_vlan_group_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_nd_send.__UNIQUE_ID_ddebug579 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.7, ptr @.str.4, ptr @.str.8, i8 0, i8 89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"br_nd_send\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"nd send dev %s dst %pI6 dst_hw %pM src %pI6 src_hw %pM\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 135, i64 136]
@___asan_gen_.13 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 232, i32 9 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 54, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [27 x i8] c"../net/bridge/br_private.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 1489, i32 9 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [32 x i8] c"../net/bridge/br_arp_nd_proxy.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 356, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_recalculate_neigh_suppress_enabled(ptr noundef %br) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %port_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  %flags = getelementptr i8, ptr %.pn, i32 8
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 32768
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %3 = xor i1 %cmp.not, true
  tail call void @br_opt_toggle(ptr noundef %br, i32 noundef 10, i1 noundef zeroext %3) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_opt_toggle(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_do_proxy_suppress_arp(ptr noundef %skb, ptr noundef %br, i16 noundef zeroext %vid, ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %tip = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tip) #6
  %proxyarp_replied = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %proxyarp_replied to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %proxyarp_replied, align 1
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %proxyarp_replied, align 1
  %flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %and = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup140_crit_edge

entry.cleanup140_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup140

lor.lhs.false:                                    ; preds = %entry
  %type.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %6)
  %cond.i = icmp ne i16 %6, 24
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 56
  %7 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %addr_len.i, align 1
  %conv1.i = zext i8 %8 to i32
  %add5.i = zext i1 %cond.i to i32
  %retval.0.in.i = shl nuw nsw i32 %conv1.i, %add5.i
  %retval.0.i = add nuw nsw i32 %retval.0.in.i, 16
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %11 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %10, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %retval.0.i, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.if.end_crit_edge, !prof !28

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %retval.0.i)
  %cmp3.i = icmp ult i32 %10, %retval.0.i
  br i1 %cmp3.i, label %if.end.i.cleanup140_crit_edge, label %pskb_may_pull.exit, !prof !28

if.end.i.cleanup140_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup140

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %retval.0.i, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #6
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup140_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

pskb_may_pull.exit.cleanup140_crit_edge:          ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup140

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %15 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %16 to i32
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %conv.i.i
  %ar_pro = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %ar_pro to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ar_pro, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %18)
  %cmp.not = icmp eq i16 %18, 2048
  br i1 %cmp.not, label %lor.lhs.false5, label %if.end.cleanup140_crit_edge

if.end.cleanup140_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup140

lor.lhs.false5:                                   ; preds = %if.end
  %ar_hln = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %ar_hln to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ar_hln, align 2
  %21 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %addr_len.i, align 1
  %conv7 = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %22)
  %cmp8.not = icmp eq i8 %20, %22
  br i1 %cmp8.not, label %lor.lhs.false10, label %lor.lhs.false5.cleanup140_crit_edge

lor.lhs.false5.cleanup140_crit_edge:              ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup140

lor.lhs.false10:                                  ; preds = %lor.lhs.false5
  %ar_pln = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %ar_pln to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ar_pln, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %24)
  %cmp12.not = icmp eq i8 %24, 4
  br i1 %cmp12.not, label %if.end15, label %lor.lhs.false10.cleanup140_crit_edge

lor.lhs.false10.cleanup140_crit_edge:             ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup140

if.end15:                                         ; preds = %lor.lhs.false10
  %add.ptr = getelementptr i8, ptr %add.ptr.i.i, i32 8
  %add.ptr18 = getelementptr i8, ptr %add.ptr, i32 %conv7
  %25 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %sip.0.copyload = load i32, ptr %add.ptr18, align 1
  %add.ptr19 = getelementptr i8, ptr %add.ptr18, i32 4
  %add.ptr22 = getelementptr i8, ptr %add.ptr19, i32 %conv7
  %26 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %add.ptr22, align 1
  %28 = ptrtoint ptr %tip to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %tip, align 4
  %and.i = and i32 %27, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 2130706432, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 2130706432
  %and.i209 = and i32 %27, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i209)
  %cmp.i210 = icmp eq i32 %and.i209, -536870912
  %or.cond = or i1 %cmp.i, %cmp.i210
  br i1 %or.cond, label %if.end15.cleanup140_crit_edge, label %if.end29

if.end15.cleanup140_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup140

if.end29:                                         ; preds = %if.end15
  %options.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 4
  %29 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %options.i, align 4
  %31 = and i32 %30, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool31.not = icmp eq i32 %31, 0
  br i1 %tobool31.not, label %if.end29.if.end61_crit_edge, label %if.then32

if.end29.if.end61_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then32:                                        ; preds = %if.end29
  %tobool33.not = icmp eq ptr %p, null
  br i1 %tobool33.not, label %if.then32.if.end38_crit_edge, label %land.lhs.true

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

land.lhs.true:                                    ; preds = %if.then32
  %flags34 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %32 = ptrtoint ptr %flags34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags34, align 4
  %and35 = and i32 %33, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %land.lhs.true.if.end38_crit_edge, label %land.lhs.true.cleanup140_crit_edge

land.lhs.true.cleanup140_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup140

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.end38:                                         ; preds = %land.lhs.true.if.end38_crit_edge, %if.then32.if.end38_crit_edge
  %ar_op = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %ar_op to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ar_op, align 2
  %.off = add i16 %35, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %if.end38.if.end61_crit_edge, label %land.lhs.true47

if.end38.if.end61_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

land.lhs.true47:                                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sip.0.copyload)
  %cmp.i211 = icmp eq i32 %sip.0.copyload, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sip.0.copyload, i32 %27)
  %cmp51 = icmp eq i32 %sip.0.copyload, %27
  %or.cond221 = select i1 %cmp.i211, i1 true, i1 %cmp51
  br i1 %or.cond221, label %if.then53, label %land.lhs.true47.if.end61_crit_edge

land.lhs.true47.if.end61_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then53:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %proxyarp_replied to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load57 = load i8, ptr %proxyarp_replied, align 1
  %bf.set59 = or i8 %bf.load57, 64
  store i8 %bf.set59, ptr %proxyarp_replied, align 1
  br label %cleanup140

if.end61:                                         ; preds = %land.lhs.true47.if.end61_crit_edge, %if.end38.if.end61_crit_edge, %if.end29.if.end61_crit_edge
  %ar_op62 = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %37 = ptrtoint ptr %ar_op62 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %ar_op62, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %38)
  %cmp64.not = icmp eq i16 %38, 1
  br i1 %cmp64.not, label %if.end67, label %if.end61.cleanup140_crit_edge

if.end61.cleanup140_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup140

if.end67:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %cmp69.not = icmp eq i16 %vid, 0
  br i1 %cmp69.not, label %if.end67.if.end77_crit_edge, label %if.then71

if.end67.if.end77_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then71:                                        ; preds = %if.end67
  %39 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev1, align 4
  %vlan_proto = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %41 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vlan_proto, align 8
  %call73 = tail call ptr @__vlan_find_dev_deep_rcu(ptr noundef %40, i16 noundef zeroext %42, i16 noundef zeroext %vid) #6
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %if.then71.cleanup140_crit_edge, label %if.then71.if.end77_crit_edge

if.then71.if.end77_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then71.cleanup140_crit_edge:                   ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup140

if.end77:                                         ; preds = %if.then71.if.end77_crit_edge, %if.end67.if.end77_crit_edge
  %vlandev.0 = phi ptr [ %call73, %if.then71.if.end77_crit_edge ], [ %1, %if.end67.if.end77_crit_edge ]
  %43 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %options.i, align 4
  %45 = and i32 %44, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool79.not = icmp eq i32 %45, 0
  br i1 %tobool79.not, label %if.end77.if.end90_crit_edge, label %land.lhs.true80

if.end77.if.end90_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

land.lhs.true80:                                  ; preds = %if.end77
  %46 = ptrtoint ptr %tip to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tip, align 4
  %call81 = tail call fastcc zeroext i1 @br_is_local_ip(ptr noundef %vlandev.0, i32 noundef %47)
  br i1 %call81, label %if.then83, label %land.lhs.true80.if.end90_crit_edge

land.lhs.true80.if.end90_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

if.then83:                                        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %proxyarp_replied to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load87 = load i8, ptr %proxyarp_replied, align 1
  %bf.set89 = or i8 %bf.load87, 64
  store i8 %bf.set89, ptr %proxyarp_replied, align 1
  br label %cleanup140

if.end90:                                         ; preds = %land.lhs.true80.if.end90_crit_edge, %if.end77.if.end90_crit_edge
  %call91 = call ptr @neigh_lookup(ptr noundef nonnull @arp_tbl, ptr noundef nonnull %tip, ptr noundef %vlandev.0) #6
  %tobool92.not = icmp eq ptr %call91, null
  br i1 %tobool92.not, label %if.end90.cleanup140_crit_edge, label %if.then93

if.end90.cleanup140_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup140

if.then93:                                        ; preds = %if.end90
  %nud_state = getelementptr inbounds %struct.neighbour, ptr %call91, i32 0, i32 12
  %49 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %nud_state, align 8
  %51 = and i8 %50, -34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool96.not = icmp eq i8 %51, 0
  br i1 %tobool96.not, label %if.then97, label %if.end98

if.then97:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @neigh_release(ptr noundef nonnull %call91)
  br label %cleanup140

if.end98:                                         ; preds = %if.then93
  %ha = getelementptr inbounds %struct.neighbour, ptr %call91, i32 0, i32 18
  %call100 = call ptr @br_fdb_find_rcu(ptr noundef %br, ptr noundef %ha, i16 noundef zeroext %vid) #6
  %tobool101.not = icmp eq ptr %call100, null
  br i1 %tobool101.not, label %if.end98.if.end138_crit_edge, label %if.then102

if.end98.if.end138_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end138

if.then102:                                       ; preds = %if.end98
  %tobool103.not = icmp eq ptr %p, null
  br i1 %tobool103.not, label %if.then102.lor.lhs.false108_crit_edge, label %land.lhs.true104

if.then102.lor.lhs.false108_crit_edge:            ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false108

land.lhs.true104:                                 ; preds = %if.then102
  %flags105 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %52 = ptrtoint ptr %flags105 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags105, align 4
  %and106 = and i32 %53, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %land.lhs.true104.lor.lhs.false108_crit_edge, label %land.lhs.true104.if.then115_crit_edge

land.lhs.true104.if.then115_crit_edge:            ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then115

land.lhs.true104.lor.lhs.false108_crit_edge:      ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %land.lhs.true104.lor.lhs.false108_crit_edge, %if.then102.lor.lhs.false108_crit_edge
  %dst = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call100, i32 0, i32 1
  %54 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dst, align 4
  %tobool109.not = icmp eq ptr %55, null
  br i1 %tobool109.not, label %lor.lhs.false108.lor.lhs.false127_crit_edge, label %land.lhs.true110

lor.lhs.false108.lor.lhs.false127_crit_edge:      ; preds = %lor.lhs.false108
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false127

land.lhs.true110:                                 ; preds = %lor.lhs.false108
  %flags112 = getelementptr inbounds %struct.net_bridge_port, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %flags112 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags112, align 4
  %and113 = and i32 %57, 33792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %land.lhs.true110.lor.lhs.false127_crit_edge, label %land.lhs.true110.if.then115_crit_edge

land.lhs.true110.if.then115_crit_edge:            ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then115

land.lhs.true110.lor.lhs.false127_crit_edge:      ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false127

if.then115:                                       ; preds = %land.lhs.true110.if.then115_crit_edge, %land.lhs.true104.if.then115_crit_edge
  %58 = getelementptr inbounds %struct.anon.4, ptr %skb, i32 0, i32 2
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %61 = ptrtoint ptr %tip to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tip, align 4
  br i1 %cmp69.not, label %if.then117, label %if.else

if.then117:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @br_arp_send(ptr noundef %br, ptr noundef %p, ptr noundef %60, i32 noundef %sip.0.copyload, i32 noundef %62, ptr noundef %add.ptr, ptr noundef %ha, ptr noundef %add.ptr, i16 noundef zeroext 0, i16 noundef zeroext 0)
  br label %if.then130

if.else:                                          ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #8
  %vlan_proto122 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %63 = ptrtoint ptr %vlan_proto122 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %vlan_proto122, align 8
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %65 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %vlan_tci, align 2
  call fastcc void @br_arp_send(ptr noundef %br, ptr noundef %p, ptr noundef %60, i32 noundef %sip.0.copyload, i32 noundef %62, ptr noundef %add.ptr, ptr noundef %ha, ptr noundef %add.ptr, i16 noundef zeroext %64, i16 noundef zeroext %66)
  br label %if.then130

lor.lhs.false127:                                 ; preds = %land.lhs.true110.lor.lhs.false127_crit_edge, %lor.lhs.false108.lor.lhs.false127_crit_edge
  %67 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %options.i, align 4
  %69 = and i32 %68, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool129.not = icmp eq i32 %69, 0
  br i1 %tobool129.not, label %lor.lhs.false127.if.end138_crit_edge, label %lor.lhs.false127.if.then130_crit_edge

lor.lhs.false127.if.then130_crit_edge:            ; preds = %lor.lhs.false127
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then130

lor.lhs.false127.if.end138_crit_edge:             ; preds = %lor.lhs.false127
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end138

if.then130:                                       ; preds = %lor.lhs.false127.if.then130_crit_edge, %if.else, %if.then117
  %70 = ptrtoint ptr %proxyarp_replied to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load134 = load i8, ptr %proxyarp_replied, align 1
  %bf.set136 = or i8 %bf.load134, 64
  store i8 %bf.set136, ptr %proxyarp_replied, align 1
  br label %if.end138

if.end138:                                        ; preds = %if.then130, %lor.lhs.false127.if.end138_crit_edge, %if.end98.if.end138_crit_edge
  call fastcc void @neigh_release(ptr noundef nonnull %call91)
  br label %cleanup140

cleanup140:                                       ; preds = %if.end138, %if.then97, %if.end90.cleanup140_crit_edge, %if.then83, %if.then71.cleanup140_crit_edge, %if.end61.cleanup140_crit_edge, %if.then53, %land.lhs.true.cleanup140_crit_edge, %if.end15.cleanup140_crit_edge, %lor.lhs.false10.cleanup140_crit_edge, %lor.lhs.false5.cleanup140_crit_edge, %if.end.cleanup140_crit_edge, %pskb_may_pull.exit.cleanup140_crit_edge, %if.end.i.cleanup140_crit_edge, %entry.cleanup140_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tip) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__vlan_find_dev_deep_rcu(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @br_is_local_ip(ptr noundef %dev, i32 noundef %ip) unnamed_addr #0 align 64 {
entry:
  %ip.addr = alloca i32, align 4
  %priv = alloca %struct.netdev_nested_priv, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %ip, ptr %ip.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %priv) #6
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 72057594037927935, ptr %priv, align 8, !annotation !29
  %data = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ip.addr, ptr %data, align 4
  %ip_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 78
  %3 = ptrtoint ptr %ip_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %ip_ptr.i.i, align 32
  %call.i.i = call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.__in_dev_get_rcu.exit.i_crit_edge

entry.__in_dev_get_rcu.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__in_dev_get_rcu.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call2.i.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.__in_dev_get_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.__in_dev_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__in_dev_get_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b9.i.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.__in_dev_get_rcu.exit.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.__in_dev_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__in_dev_get_rcu.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 232, ptr noundef nonnull @.str.1) #6
  br label %__in_dev_get_rcu.exit.i

__in_dev_get_rcu.exit.i:                          ; preds = %if.then.i.i, %land.lhs.true4.i.i.__in_dev_get_rcu.exit.i_crit_edge, %land.lhs.true.i.i.__in_dev_get_rcu.exit.i_crit_edge, %entry.__in_dev_get_rcu.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %__in_dev_get_rcu.exit.i.br_chk_addr_ip.exit_crit_edge, label %if.then.i

__in_dev_get_rcu.exit.i.br_chk_addr_ip.exit_crit_edge: ; preds = %__in_dev_get_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_chk_addr_ip.exit

if.then.i:                                        ; preds = %__in_dev_get_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %5 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nd_net.i.i, align 4
  %call2.i = call i32 @inet_confirm_addr(ptr noundef %6, ptr noundef nonnull %4, i32 noundef 0, i32 noundef %ip, i32 noundef 254) #6
  br label %br_chk_addr_ip.exit

br_chk_addr_ip.exit:                              ; preds = %if.then.i, %__in_dev_get_rcu.exit.i.br_chk_addr_ip.exit_crit_edge
  %addr.0.i = phi i32 [ %call2.i, %if.then.i ], [ 0, %__in_dev_get_rcu.exit.i.br_chk_addr_ip.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %addr.0.i, i32 %ip)
  %cmp.i.not = icmp eq i32 %addr.0.i, %ip
  br i1 %cmp.i.not, label %br_chk_addr_ip.exit.cleanup_crit_edge, label %if.end

br_chk_addr_ip.exit.cleanup_crit_edge:            ; preds = %br_chk_addr_ip.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %br_chk_addr_ip.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = call i32 @netdev_walk_all_upper_dev_rcu(ptr noundef %dev, ptr noundef nonnull @br_chk_addr_ip, ptr noundef nonnull %priv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp ne i32 %call1, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %br_chk_addr_ip.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %br_chk_addr_ip.exit.cleanup_crit_edge ], [ %tobool2.not, %if.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %priv) #6
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @neigh_release(ptr noundef %neigh) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %refcnt = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #6, !srcloc !31
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !32

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @neigh_destroy(ptr noundef %neigh) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @br_fdb_find_rcu(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @br_arp_send(ptr noundef %br, ptr noundef %p, ptr noundef %dev, i32 noundef %dest_ip, i32 noundef %src_ip, ptr noundef %dest_hw, ptr noundef %src_hw, ptr noundef %target_hw, i16 noundef zeroext %vlan_proto, i16 noundef zeroext %vlan_tci) unnamed_addr #0 align 64 {
entry:
  %dest_ip.addr = alloca i32, align 4
  %src_ip.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dest_ip.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %dest_ip, ptr %dest_ip.addr, align 4
  %1 = ptrtoint ptr %src_ip.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %src_ip, ptr %src_ip.addr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @br_arp_send.__UNIQUE_ID_ddebug578, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@br_arp_send, %if.then)) #6
          to label %do.end5 [label %if.then], !srcloc !34

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @br_arp_send.__UNIQUE_ID_ddebug578, ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %dev, ptr noundef nonnull %dest_ip.addr, ptr noundef %dest_hw, ptr noundef nonnull %src_ip.addr, ptr noundef %src_hw) #6
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vlan_tci)
  %tobool6.not = icmp eq i16 %vlan_tci, 0
  %2 = ptrtoint ptr %dest_ip.addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dest_ip.addr, align 4
  %4 = ptrtoint ptr %src_ip.addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_ip.addr, align 4
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #8
  call void @arp_send(i32 noundef 2, i32 noundef 2054, i32 noundef %3, ptr noundef %dev, i32 noundef %5, ptr noundef %dest_hw, ptr noundef %src_hw, ptr noundef %target_hw) #6
  br label %cleanup

if.end8:                                          ; preds = %do.end5
  %call9 = call ptr @arp_create(i32 noundef 2, i32 noundef 2054, i32 noundef %3, ptr noundef %dev, i32 noundef %5, ptr noundef %dest_hw, ptr noundef %src_hw, ptr noundef %target_hw) #6
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %tobool13.not = icmp eq ptr %p, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  %vlgrp.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 5
  %6 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %vlgrp.i, align 8
  %call.i = call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then14.if.end17_crit_edge

if.then14.if.end17_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.lhs.true.i:                                  ; preds = %if.then14
  %call2.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end17_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.if.end17_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @nbp_vlan_group_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.if.end17_crit_edge, label %land.lhs.true4.i.if.end17.sink.split_crit_edge

land.lhs.true4.i.if.end17.sink.split_crit_edge:   ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.sink.split

land.lhs.true4.i.if.end17_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.else:                                          ; preds = %if.end12
  %vlgrp.i59 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 7
  %8 = ptrtoint ptr %vlgrp.i59 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %vlgrp.i59, align 4
  %call.i60 = call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool.not.i61 = icmp eq i32 %call.i60, 0
  br i1 %tobool.not.i61, label %land.lhs.true.i64, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.lhs.true.i64:                                ; preds = %if.else
  %call2.i62 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i62)
  %tobool3.not.i63 = icmp eq i32 %call2.i62, 0
  br i1 %tobool3.not.i63, label %land.lhs.true.i64.if.end17_crit_edge, label %land.lhs.true4.i66

land.lhs.true.i64.if.end17_crit_edge:             ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.lhs.true4.i66:                               ; preds = %land.lhs.true.i64
  %.b9.i65 = load i1, ptr @br_vlan_group_rcu.__warned, align 1
  br i1 %.b9.i65, label %land.lhs.true4.i66.if.end17_crit_edge, label %land.lhs.true4.i66.if.end17.sink.split_crit_edge

land.lhs.true4.i66.if.end17.sink.split_crit_edge: ; preds = %land.lhs.true4.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.sink.split

land.lhs.true4.i66.if.end17_crit_edge:            ; preds = %land.lhs.true4.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end17.sink.split:                              ; preds = %land.lhs.true4.i66.if.end17.sink.split_crit_edge, %land.lhs.true4.i.if.end17.sink.split_crit_edge
  %br_vlan_group_rcu.__warned.sink = phi ptr [ @nbp_vlan_group_rcu.__warned, %land.lhs.true4.i.if.end17.sink.split_crit_edge ], [ @br_vlan_group_rcu.__warned, %land.lhs.true4.i66.if.end17.sink.split_crit_edge ]
  %.sink = phi i32 [ 1489, %land.lhs.true4.i.if.end17.sink.split_crit_edge ], [ 1483, %land.lhs.true4.i66.if.end17.sink.split_crit_edge ]
  %vg.0.ph = phi ptr [ %7, %land.lhs.true4.i.if.end17.sink.split_crit_edge ], [ %9, %land.lhs.true4.i66.if.end17.sink.split_crit_edge ]
  %10 = ptrtoint ptr %br_vlan_group_rcu.__warned.sink to i32
  call void @__asan_store1_noabort(i32 %10)
  store i1 true, ptr %br_vlan_group_rcu.__warned.sink, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef %.sink, ptr noundef nonnull @.str.1) #6
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %land.lhs.true4.i66.if.end17_crit_edge, %land.lhs.true.i64.if.end17_crit_edge, %if.else.if.end17_crit_edge, %land.lhs.true4.i.if.end17_crit_edge, %land.lhs.true.i.if.end17_crit_edge, %if.then14.if.end17_crit_edge
  %vg.0 = phi ptr [ %7, %if.then14.if.end17_crit_edge ], [ %7, %land.lhs.true.i.if.end17_crit_edge ], [ %7, %land.lhs.true4.i.if.end17_crit_edge ], [ %9, %if.else.if.end17_crit_edge ], [ %9, %land.lhs.true.i64.if.end17_crit_edge ], [ %9, %land.lhs.true4.i66.if.end17_crit_edge ], [ %vg.0.ph, %if.end17.sink.split ]
  %tobool.not.i68 = icmp eq ptr %vg.0, null
  br i1 %tobool.not.i68, label %if.end17.br_get_pvid.exit_crit_edge, label %do.end.i

if.end17.br_get_pvid.exit_crit_edge:              ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_get_pvid.exit

do.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !35
  %pvid.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 4
  %11 = ptrtoint ptr %pvid.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %pvid.i, align 2
  br label %br_get_pvid.exit

br_get_pvid.exit:                                 ; preds = %do.end.i, %if.end17.br_get_pvid.exit_crit_edge
  %retval.0.i69 = phi i16 [ %12, %do.end.i ], [ 0, %if.end17.br_get_pvid.exit_crit_edge ]
  %13 = and i16 %vlan_tci, 4095
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i69, i16 %13)
  %cmp = icmp eq i16 %retval.0.i69, %13
  br i1 %cmp, label %br_get_pvid.exit.if.end25_crit_edge, label %if.then24

br_get_pvid.exit.if.end25_crit_edge:              ; preds = %br_get_pvid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then24:                                        ; preds = %br_get_pvid.exit
  call void @__sanitizer_cov_trace_pc() #8
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 15, i32 0, i32 9
  %14 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %vlan_proto, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 15, i32 0, i32 10
  %15 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %vlan_tci, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 15, i32 0, i32 3
  %16 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %vlan_present.i, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %br_get_pvid.exit.if.end25_crit_edge
  br i1 %tobool13.not, label %if.else28, label %if.then27

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  call void @arp_xmit(ptr noundef nonnull %call9) #6
  br label %cleanup

if.else28:                                        ; preds = %if.end25
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 19
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 18
  %19 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 15, i32 0, i32 21
  %21 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 15, i32 0, i32 20
  %22 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %23 to i32
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %conv.i.i
  %sub.ptr.lhs.cast.i71 = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i73 = sub i32 %sub.ptr.lhs.cast.i71, %sub.ptr.lhs.cast.i
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 6
  %24 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len1.i, align 4
  %sub.i = sub i32 %25, %sub.ptr.sub.i73
  store i32 %sub.i, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 7
  %26 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %27)
  %cmp.i = icmp ult i32 %sub.i, %27
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !28

do.body4.i:                                       ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #6, !srcloc !36
  unreachable

__skb_pull.exit:                                  ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %18, i32 %sub.ptr.sub.i73
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr.i, ptr %data.i, align 4
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 15
  %29 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, 6655
  %bf.set = or i16 %bf.clear, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  %call34 = call i32 @netif_rx_ni(ptr noundef nonnull %call9) #6
  br label %cleanup

cleanup:                                          ; preds = %__skb_pull.exit, %if.then27, %if.end8.cleanup_crit_edge, %if.then7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @br_is_nd_neigh_msg(ptr noundef %skb, ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add = add i32 %sub.ptr.sub.i, 40
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i, align 8
  %add.neg = sub i32 -40, %sub.ptr.sub.i
  %.neg23 = sub i32 %7, %9
  %sub.i1.i = add i32 %.neg23, %add.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 23
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i, !prof !32

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i20 = getelementptr i8, ptr %5, i32 %add
  br label %skb_header_pointer.exit

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = tail call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add, ptr noundef %msg, i32 noundef 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.skb_header_pointer.exit_crit_edge

lor.lhs.false.i.i.skb_header_pointer.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_header_pointer.exit

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %lor.lhs.false.i.i.skb_header_pointer.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi ptr [ %add.ptr.i.i20, %if.then.i.i ], [ %msg, %lor.lhs.false.i.i.skb_header_pointer.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not, label %skb_header_pointer.exit.cleanup_crit_edge, label %if.end

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %skb_header_pointer.exit
  %icmp6_code = getelementptr inbounds %struct.icmp6hdr, ptr %retval.0.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %icmp6_code to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %icmp6_code, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.not = icmp eq i8 %11, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %retval.0.i.i, align 4
  %.off = add i8 %13, 121
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  %spec.select = select i1 %switch, ptr %retval.0.i.i, ptr null
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end.cleanup_crit_edge, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %skb_header_pointer.exit.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ], [ null, %if.end.i.i.cleanup_crit_edge ], [ null, %lor.lhs.false.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_do_suppress_nd(ptr nocapture noundef %skb, ptr noundef %br, i16 noundef zeroext %vid, ptr noundef %p, ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  %priv.i = alloca %struct.netdev_nested_priv, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %proxyarp_replied = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %proxyarp_replied to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %proxyarp_replied, align 1
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %proxyarp_replied, align 1
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup100_crit_edge

land.lhs.true.cleanup100_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup100

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %msg, align 4
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %if.end.cleanup100_crit_edge [
    i8 -120, label %land.lhs.true4
    i8 -121, label %if.end23
  ]

if.end.cleanup100_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup100

land.lhs.true4:                                   ; preds = %if.end
  %icmp6_dataun = getelementptr inbounds %struct.icmp6hdr, ptr %msg, i32 0, i32 3
  %8 = ptrtoint ptr %icmp6_dataun to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load6 = load i32, ptr %icmp6_dataun, align 4
  %9 = and i32 %bf.load6, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not = icmp eq i32 %9, 0
  br i1 %tobool8.not, label %if.then9, label %land.lhs.true4.cleanup100_crit_edge

land.lhs.true4.cleanup100_crit_edge:              ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup100

if.then9:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  %bf.set15 = or i8 %bf.load, 64
  %10 = ptrtoint ptr %proxyarp_replied to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %bf.set15, ptr %proxyarp_replied, align 1
  br label %cleanup100

if.end23:                                         ; preds = %if.end
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %13 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %14 to i32
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %conv.i.i
  %saddr24 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %saddr24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %saddr24, align 4
  %arrayidx2.i = getelementptr [4 x i32], ptr %saddr24, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %18, %16
  %arrayidx4.i = getelementptr [4 x i32], ptr %saddr24, i32 0, i32 2
  %19 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %20
  %arrayidx7.i = getelementptr [4 x i32], ptr %saddr24, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  br i1 %cmp.i, label %if.end23.if.then30_crit_edge, label %lor.lhs.false

if.end23.if.then30_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

lor.lhs.false:                                    ; preds = %if.end23
  %daddr25 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %saddr24, ptr noundef dereferenceable(16) %daddr25, i32 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool29.not = icmp eq i32 %bcmp, 0
  br i1 %tobool29.not, label %lor.lhs.false.if.then30_crit_edge, label %if.end37

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false.if.then30_crit_edge, %if.end23.if.then30_crit_edge
  %bf.set36 = or i8 %bf.load, 64
  %23 = ptrtoint ptr %proxyarp_replied to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %bf.set36, ptr %proxyarp_replied, align 1
  br label %cleanup100

if.end37:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %cmp39.not = icmp eq i16 %vid, 0
  br i1 %cmp39.not, label %if.end37.if.end47_crit_edge, label %if.then41

if.end37.if.end47_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then41:                                        ; preds = %if.end37
  %24 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev1, align 4
  %vlan_proto = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %26 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vlan_proto, align 8
  %call43 = tail call ptr @__vlan_find_dev_deep_rcu(ptr noundef %25, i16 noundef zeroext %27, i16 noundef zeroext %vid) #6
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %if.then41.cleanup100_crit_edge, label %if.then41.if.end47_crit_edge

if.then41.if.end47_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then41.cleanup100_crit_edge:                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup100

if.end47:                                         ; preds = %if.then41.if.end47_crit_edge, %if.end37.if.end47_crit_edge
  %vlandev.0 = phi ptr [ %call43, %if.then41.if.end47_crit_edge ], [ %1, %if.end37.if.end47_crit_edge ]
  %target = getelementptr inbounds %struct.nd_msg, ptr %msg, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %priv.i) #6
  %28 = ptrtoint ptr %priv.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 72057594037927935, ptr %priv.i, align 8, !annotation !29
  %data.i = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv.i, i32 0, i32 1
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %target, ptr %data.i, align 4
  %nd_net.i.i.i = getelementptr inbounds %struct.net_device, ptr %vlandev.0, i32 0, i32 127
  %30 = ptrtoint ptr %nd_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nd_net.i.i.i, align 4
  %call1.i.i = tail call i32 @ipv6_chk_addr(ptr noundef %31, ptr noundef %target, ptr noundef %vlandev.0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.not.i, label %br_is_local_ip6.exit, label %br_is_local_ip6.exit.thread

br_is_local_ip6.exit.thread:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %priv.i) #6
  br label %if.then49

br_is_local_ip6.exit:                             ; preds = %if.end47
  %call1.i = call i32 @netdev_walk_all_upper_dev_rcu(ptr noundef %vlandev.0, ptr noundef nonnull @br_chk_addr_ip6, ptr noundef nonnull %priv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i.not = icmp eq i32 %call1.i, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %priv.i) #6
  br i1 %tobool2.not.i.not, label %if.end56, label %br_is_local_ip6.exit.if.then49_crit_edge

br_is_local_ip6.exit.if.then49_crit_edge:         ; preds = %br_is_local_ip6.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then49

if.then49:                                        ; preds = %br_is_local_ip6.exit.if.then49_crit_edge, %br_is_local_ip6.exit.thread
  %32 = ptrtoint ptr %proxyarp_replied to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load53 = load i8, ptr %proxyarp_replied, align 1
  %bf.set55 = or i8 %bf.load53, 64
  store i8 %bf.set55, ptr %proxyarp_replied, align 1
  br label %cleanup100

if.end56:                                         ; preds = %br_is_local_ip6.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %33 = load ptr, ptr @ipv6_stub, align 4
  %nd_tbl = getelementptr inbounds %struct.ipv6_stub, ptr %33, i32 0, i32 20
  %34 = ptrtoint ptr %nd_tbl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %nd_tbl, align 4
  %call58 = call ptr @neigh_lookup(ptr noundef %35, ptr noundef %target, ptr noundef %vlandev.0) #6
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %if.end56.cleanup100_crit_edge, label %if.then60

if.end56.cleanup100_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup100

if.then60:                                        ; preds = %if.end56
  %nud_state = getelementptr inbounds %struct.neighbour, ptr %call58, i32 0, i32 12
  %36 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %nud_state, align 8
  %38 = and i8 %37, -34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool63.not = icmp eq i8 %38, 0
  br i1 %tobool63.not, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @neigh_release(ptr noundef nonnull %call58)
  br label %cleanup100

if.end65:                                         ; preds = %if.then60
  %ha = getelementptr inbounds %struct.neighbour, ptr %call58, i32 0, i32 18
  %call67 = call ptr @br_fdb_find_rcu(ptr noundef %br, ptr noundef %ha, i16 noundef zeroext %vid) #6
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %if.end65.if.end98_crit_edge, label %if.then69

if.end65.if.end98_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

if.then69:                                        ; preds = %if.end65
  %dst = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call67, i32 0, i32 1
  %39 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dst, align 4
  %tobool70.not = icmp eq ptr %40, null
  br i1 %tobool70.not, label %if.then69.lor.lhs.false87_crit_edge, label %land.lhs.true71

if.then69.lor.lhs.false87_crit_edge:              ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false87

land.lhs.true71:                                  ; preds = %if.then69
  %flags73 = getelementptr inbounds %struct.net_bridge_port, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %flags73 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags73, align 4
  %and74 = and i32 %42, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %land.lhs.true71.lor.lhs.false87_crit_edge, label %if.then76

land.lhs.true71.lor.lhs.false87_crit_edge:        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false87

if.then76:                                        ; preds = %land.lhs.true71
  br i1 %cmp39.not, label %if.else82, label %if.then80

if.then80:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  %vlan_proto81 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %43 = ptrtoint ptr %vlan_proto81 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vlan_proto81, align 8
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %45 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vlan_tci, align 2
  call fastcc void @br_nd_send(ptr noundef %br, ptr noundef %p, ptr noundef %skb, ptr noundef nonnull %call58, i16 noundef zeroext %44, i16 noundef zeroext %46, ptr noundef %msg)
  br label %if.then90

if.else82:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @br_nd_send(ptr noundef %br, ptr noundef %p, ptr noundef %skb, ptr noundef nonnull %call58, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %msg)
  br label %if.then90

lor.lhs.false87:                                  ; preds = %land.lhs.true71.lor.lhs.false87_crit_edge, %if.then69.lor.lhs.false87_crit_edge
  %options.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 4
  %47 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %options.i, align 4
  %49 = and i32 %48, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool89.not = icmp eq i32 %49, 0
  br i1 %tobool89.not, label %lor.lhs.false87.if.end98_crit_edge, label %lor.lhs.false87.if.then90_crit_edge

lor.lhs.false87.if.then90_crit_edge:              ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then90

lor.lhs.false87.if.end98_crit_edge:               ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

if.then90:                                        ; preds = %lor.lhs.false87.if.then90_crit_edge, %if.else82, %if.then80
  %50 = ptrtoint ptr %proxyarp_replied to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load94 = load i8, ptr %proxyarp_replied, align 1
  %bf.set96 = or i8 %bf.load94, 64
  store i8 %bf.set96, ptr %proxyarp_replied, align 1
  br label %if.end98

if.end98:                                         ; preds = %if.then90, %lor.lhs.false87.if.end98_crit_edge, %if.end65.if.end98_crit_edge
  call fastcc void @neigh_release(ptr noundef nonnull %call58)
  br label %cleanup100

cleanup100:                                       ; preds = %if.end98, %if.then64, %if.end56.cleanup100_crit_edge, %if.then49, %if.then41.cleanup100_crit_edge, %if.then30, %if.then9, %land.lhs.true4.cleanup100_crit_edge, %if.end.cleanup100_crit_edge, %land.lhs.true.cleanup100_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @br_nd_send(ptr noundef %br, ptr noundef %p, ptr nocapture noundef readonly %request, ptr noundef %n, i16 noundef zeroext %vlan_proto, i16 noundef zeroext %vlan_tci, ptr noundef %ns) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.4, ptr %request, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %4 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 21
  %5 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %needed_headroom, align 8
  %conv1 = zext i16 %6 to i32
  %add = add nuw nsw i32 %conv1, %conv
  %and = and i32 %add, 131056
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 22
  %7 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %needed_tailroom, align 2
  %conv6 = zext i16 %8 to i32
  %add5 = add nuw nsw i32 %conv6, 88
  %add7 = add nuw nsw i32 %add5, %and
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add7, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %9 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -31011, ptr %protocol, align 8
  %10 = getelementptr inbounds %struct.anon.4, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %10, align 8
  %12 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hard_header_len, align 2
  %conv12 = zext i16 %13 to i32
  %14 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %needed_headroom, align 8
  %conv14 = zext i16 %15 to i32
  %add15 = add nuw nsw i32 %conv14, %conv12
  %and16 = and i32 %add15, 131056
  %add17 = add nuw nsw i32 %and16, 16
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %add17
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %19, i32 %add17
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call18 = tail call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef 14) #6
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %22 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 21
  %24 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %head.i.i254 = getelementptr inbounds %struct.sk_buff, ptr %request, i32 0, i32 18
  %25 = ptrtoint ptr %head.i.i254 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i254, align 8
  %mac_header.i.i255 = getelementptr inbounds %struct.sk_buff, ptr %request, i32 0, i32 15, i32 0, i32 21
  %27 = ptrtoint ptr %mac_header.i.i255 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %mac_header.i.i255, align 2
  %conv.i.i256 = zext i16 %28 to i32
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %conv.i.i256
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %len20 = getelementptr inbounds %struct.sk_buff, ptr %request, i32 0, i32 6
  %29 = ptrtoint ptr %len20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len20, align 4
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %request, i32 0, i32 15, i32 0, i32 20
  %31 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i258 = zext i16 %32 to i32
  %add.ptr.i.i259 = getelementptr i8, ptr %26, i32 %conv.i.i258
  %data.i260 = getelementptr inbounds %struct.sk_buff, ptr %request, i32 0, i32 19
  %33 = ptrtoint ptr %data.i260 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i260, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i259 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %34 to i32
  %add22.neg = add i32 %30, -65
  %sub = add i32 %add22.neg, %sub.ptr.rhs.cast.i
  %sub24 = sub i32 %sub, %sub.ptr.lhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub24)
  %cmp336 = icmp sgt i32 %sub24, 0
  br i1 %cmp336, label %if.end10.for.body_crit_edge, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end10.for.body_crit_edge
  %i.0337 = phi i32 [ %add44, %for.inc.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %add26 = or i32 %i.0337, 1
  %arrayidx = getelementptr %struct.nd_msg, ptr %ns, i32 0, i32 2, i32 %add26
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool27.not = icmp eq i8 %36, 0
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef %call.i, i32 noundef 0) #6
  br label %cleanup

if.end29:                                         ; preds = %for.body
  %arrayidx31 = getelementptr %struct.nd_msg, ptr %ns, i32 0, i32 2, i32 %i.0337
  %37 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp33 = icmp eq i8 %38, 1
  br i1 %cmp33, label %if.then35, label %for.inc

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %opt.le = getelementptr inbounds %struct.nd_msg, ptr %ns, i32 0, i32 2
  %add.ptr = getelementptr i8, ptr %opt.le, i32 %i.0337
  %add.ptr38 = getelementptr i8, ptr %add.ptr, i32 2
  br label %for.end

for.inc:                                          ; preds = %if.end29
  %conv43 = zext i8 %36 to i32
  %shl = shl nuw nsw i32 %conv43, 3
  %add44 = add i32 %shl, %i.0337
  %cmp = icmp slt i32 %add44, %sub24
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then35, %if.end10.for.end_crit_edge
  %daddr.0 = phi ptr [ %add.ptr38, %if.then35 ], [ %h_source, %if.end10.for.end_crit_edge ], [ %h_source, %for.inc.for.end_crit_edge ]
  %conv.i.i263 = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i264 = getelementptr i8, ptr %23, i32 %conv.i.i263
  %39 = ptrtoint ptr %daddr.0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %daddr.0, align 4
  %41 = ptrtoint ptr %add.ptr.i.i264 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %add.ptr.i.i264, align 4
  %add.ptr.i265 = getelementptr i8, ptr %daddr.0, i32 4
  %42 = ptrtoint ptr %add.ptr.i265 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr.i265, align 2
  %add.ptr1.i266 = getelementptr i8, ptr %add.ptr.i.i264, i32 4
  %44 = ptrtoint ptr %add.ptr1.i266 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %add.ptr1.i266, align 2
  %45 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %head.i.i, align 8
  %47 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i269 = zext i16 %48 to i32
  %add.ptr.i.i270 = getelementptr i8, ptr %46, i32 %conv.i.i269
  %h_source48 = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i270, i32 0, i32 1
  %ha = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 18
  %49 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ha, align 4
  %51 = ptrtoint ptr %h_source48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %h_source48, align 4
  %add.ptr.i271 = getelementptr %struct.neighbour, ptr %n, i32 0, i32 18, i32 4
  %52 = ptrtoint ptr %add.ptr.i271 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %add.ptr.i271, align 2
  %add.ptr1.i272 = getelementptr i8, ptr %h_source48, i32 4
  %54 = ptrtoint ptr %add.ptr1.i272 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %add.ptr1.i272, align 2
  %55 = load ptr, ptr %head.i.i, align 8
  %56 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i275 = zext i16 %56 to i32
  %add.ptr.i.i276 = getelementptr i8, ptr %55, i32 %conv.i.i275
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i276, i32 0, i32 2
  %57 = ptrtoint ptr %h_proto to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 -31011, ptr %h_proto, align 1
  %58 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 -31011, ptr %protocol, align 8
  %call53 = tail call ptr @skb_pull(ptr noundef nonnull %call.i, i32 noundef 14) #6
  %59 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i, align 4
  %61 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i279 = ptrtoint ptr %60 to i32
  %sub.ptr.rhs.cast.i.i280 = ptrtoint ptr %62 to i32
  %sub.ptr.sub.i.i281 = sub i32 %sub.ptr.lhs.cast.i.i279, %sub.ptr.rhs.cast.i.i280
  %conv.i.i282 = trunc i32 %sub.ptr.sub.i.i281 to i16
  %network_header.i.i283 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %63 = ptrtoint ptr %network_header.i.i283 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv.i.i282, ptr %network_header.i.i283, align 4
  %call54 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 40) #6
  %64 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %head.i.i, align 8
  %66 = ptrtoint ptr %network_header.i.i283 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %network_header.i.i283, align 4
  %conv.i.i286 = zext i16 %67 to i32
  %add.ptr.i.i287 = getelementptr i8, ptr %65, i32 %conv.i.i286
  %68 = call ptr @memset(ptr %add.ptr.i.i287, i32 0, i32 40)
  %69 = ptrtoint ptr %add.ptr.i.i287 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 96, ptr %add.ptr.i.i287, align 4
  %70 = ptrtoint ptr %head.i.i254 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %head.i.i254, align 8
  %72 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i290 = zext i16 %73 to i32
  %add.ptr.i.i291 = getelementptr i8, ptr %71, i32 %conv.i.i290
  %74 = ptrtoint ptr %add.ptr.i.i291 to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load57 = load i8, ptr %add.ptr.i.i291, align 4
  %bf.clear58 = and i8 %bf.load57, 15
  %bf.set61 = or i8 %bf.clear58, 96
  store i8 %bf.set61, ptr %add.ptr.i.i287, align 4
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i287, i32 0, i32 3
  %75 = ptrtoint ptr %nexthdr to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 58, ptr %nexthdr, align 2
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i287, i32 0, i32 4
  %76 = ptrtoint ptr %hop_limit to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -1, ptr %hop_limit, align 1
  %daddr62 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i287, i32 0, i32 6
  %77 = load ptr, ptr %head.i.i254, align 8
  %78 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i294 = zext i16 %78 to i32
  %add.ptr.i.i295 = getelementptr i8, ptr %77, i32 %conv.i.i294
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i295, i32 0, i32 5
  %79 = call ptr @memcpy(ptr %daddr62, ptr %saddr, i32 16)
  %saddr64 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i287, i32 0, i32 5
  %primary_key = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 27
  %80 = call ptr @memcpy(ptr %saddr64, ptr %primary_key, i32 16)
  %call66 = tail call ptr @skb_pull(ptr noundef nonnull %call.i, i32 noundef 40) #6
  %81 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data.i, align 4
  %83 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i298 = ptrtoint ptr %82 to i32
  %sub.ptr.rhs.cast.i.i299 = ptrtoint ptr %84 to i32
  %sub.ptr.sub.i.i300 = sub i32 %sub.ptr.lhs.cast.i.i298, %sub.ptr.rhs.cast.i.i299
  %conv.i.i301 = trunc i32 %sub.ptr.sub.i.i300 to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 19
  %85 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv.i.i301, ptr %transport_header.i.i, align 2
  %call68 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 32) #6
  %86 = call ptr @memset(ptr %call68, i32 0, i32 32)
  %87 = ptrtoint ptr %call68 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 -120, ptr %call68, align 4
  %flags = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 16
  %88 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags, align 4
  %icmp6_dataun = getelementptr inbounds %struct.icmp6hdr, ptr %call68, i32 0, i32 3
  %90 = shl i32 %89, 24
  %bf.shl = and i32 %90, -2147483648
  %bf.set86 = or i32 %bf.shl, 1610612736
  %91 = ptrtoint ptr %icmp6_dataun to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %bf.set86, ptr %icmp6_dataun, align 4
  %target = getelementptr inbounds %struct.nd_msg, ptr %call68, i32 0, i32 1
  %target87 = getelementptr inbounds %struct.nd_msg, ptr %ns, i32 0, i32 1
  %92 = call ptr @memcpy(ptr %target, ptr %target87, i32 16)
  %opt88 = getelementptr inbounds %struct.nd_msg, ptr %call68, i32 0, i32 2
  %arrayidx89 = getelementptr %struct.nd_msg, ptr %call68, i32 1, i32 0, i32 2
  %93 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ha, align 4
  %95 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %arrayidx89, align 4
  %96 = ptrtoint ptr %add.ptr.i271 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %add.ptr.i271, align 2
  %add.ptr1.i303 = getelementptr i8, ptr %arrayidx89, i32 4
  %98 = ptrtoint ptr %add.ptr1.i303 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %add.ptr1.i303, align 2
  %99 = ptrtoint ptr %opt88 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 2, ptr %opt88, align 4
  %arrayidx96 = getelementptr %struct.nd_msg, ptr %call68, i32 1, i32 0, i32 1
  %100 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %arrayidx96, align 1
  %call101 = tail call i32 @csum_partial(ptr noundef %call68, i32 noundef 32, i32 noundef 0) #6
  %call.i304 = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr64, ptr noundef %daddr62, i32 noundef 32, i32 noundef 58, i32 noundef %call101) #6
  %101 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i304) #10, !srcloc !37
  %neg.i.i = xor i32 %101, -1
  %shr.i.i = lshr i32 %neg.i.i, 16
  %conv.i.i305 = trunc i32 %shr.i.i to i16
  %icmp6_cksum = getelementptr inbounds %struct.icmp6hdr, ptr %call68, i32 0, i32 2
  %102 = ptrtoint ptr %icmp6_cksum to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %conv.i.i305, ptr %icmp6_cksum, align 2
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i287, i32 0, i32 2
  %103 = ptrtoint ptr %payload_len to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 32, ptr %payload_len, align 4
  %call106 = tail call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef 40) #6
  %call107 = tail call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef 14) #6
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %104 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %104)
  %bf.load108 = load i16, ptr %ip_summed, align 8
  %bf.clear109 = and i16 %bf.load108, -1537
  %bf.set110 = or i16 %bf.clear109, 512
  store i16 %bf.set110, ptr %ip_summed, align 8
  %tobool111.not = icmp eq ptr %p, null
  br i1 %tobool111.not, label %if.else, label %if.then112

if.then112:                                       ; preds = %for.end
  %vlgrp.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 5
  %105 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile ptr, ptr %vlgrp.i, align 8
  %call.i306 = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i306)
  %tobool.not.i = icmp eq i32 %call.i306, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then112.if.end115_crit_edge

if.then112.if.end115_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

land.lhs.true.i:                                  ; preds = %if.then112
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end115_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.if.end115_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @nbp_vlan_group_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.if.end115_crit_edge, label %land.lhs.true4.i.if.end115.sink.split_crit_edge

land.lhs.true4.i.if.end115.sink.split_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115.sink.split

land.lhs.true4.i.if.end115_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

if.else:                                          ; preds = %for.end
  %vlgrp.i307 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 7
  %107 = ptrtoint ptr %vlgrp.i307 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile ptr, ptr %vlgrp.i307, align 4
  %call.i308 = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i308)
  %tobool.not.i309 = icmp eq i32 %call.i308, 0
  br i1 %tobool.not.i309, label %land.lhs.true.i312, label %if.else.if.end115_crit_edge

if.else.if.end115_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

land.lhs.true.i312:                               ; preds = %if.else
  %call2.i310 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i310)
  %tobool3.not.i311 = icmp eq i32 %call2.i310, 0
  br i1 %tobool3.not.i311, label %land.lhs.true.i312.if.end115_crit_edge, label %land.lhs.true4.i314

land.lhs.true.i312.if.end115_crit_edge:           ; preds = %land.lhs.true.i312
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

land.lhs.true4.i314:                              ; preds = %land.lhs.true.i312
  %.b9.i313 = load i1, ptr @br_vlan_group_rcu.__warned, align 1
  br i1 %.b9.i313, label %land.lhs.true4.i314.if.end115_crit_edge, label %land.lhs.true4.i314.if.end115.sink.split_crit_edge

land.lhs.true4.i314.if.end115.sink.split_crit_edge: ; preds = %land.lhs.true4.i314
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115.sink.split

land.lhs.true4.i314.if.end115_crit_edge:          ; preds = %land.lhs.true4.i314
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

if.end115.sink.split:                             ; preds = %land.lhs.true4.i314.if.end115.sink.split_crit_edge, %land.lhs.true4.i.if.end115.sink.split_crit_edge
  %br_vlan_group_rcu.__warned.sink = phi ptr [ @nbp_vlan_group_rcu.__warned, %land.lhs.true4.i.if.end115.sink.split_crit_edge ], [ @br_vlan_group_rcu.__warned, %land.lhs.true4.i314.if.end115.sink.split_crit_edge ]
  %.sink = phi i32 [ 1489, %land.lhs.true4.i.if.end115.sink.split_crit_edge ], [ 1483, %land.lhs.true4.i314.if.end115.sink.split_crit_edge ]
  %vg.0.ph = phi ptr [ %106, %land.lhs.true4.i.if.end115.sink.split_crit_edge ], [ %108, %land.lhs.true4.i314.if.end115.sink.split_crit_edge ]
  %109 = ptrtoint ptr %br_vlan_group_rcu.__warned.sink to i32
  call void @__asan_store1_noabort(i32 %109)
  store i1 true, ptr %br_vlan_group_rcu.__warned.sink, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef %.sink, ptr noundef nonnull @.str.1) #6
  br label %if.end115

if.end115:                                        ; preds = %if.end115.sink.split, %land.lhs.true4.i314.if.end115_crit_edge, %land.lhs.true.i312.if.end115_crit_edge, %if.else.if.end115_crit_edge, %land.lhs.true4.i.if.end115_crit_edge, %land.lhs.true.i.if.end115_crit_edge, %if.then112.if.end115_crit_edge
  %vg.0 = phi ptr [ %106, %if.then112.if.end115_crit_edge ], [ %106, %land.lhs.true.i.if.end115_crit_edge ], [ %106, %land.lhs.true4.i.if.end115_crit_edge ], [ %108, %if.else.if.end115_crit_edge ], [ %108, %land.lhs.true.i312.if.end115_crit_edge ], [ %108, %land.lhs.true4.i314.if.end115_crit_edge ], [ %vg.0.ph, %if.end115.sink.split ]
  %tobool.not.i316 = icmp eq ptr %vg.0, null
  br i1 %tobool.not.i316, label %if.end115.br_get_pvid.exit_crit_edge, label %do.end.i

if.end115.br_get_pvid.exit_crit_edge:             ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_get_pvid.exit

do.end.i:                                         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !35
  %pvid.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 4
  %110 = ptrtoint ptr %pvid.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %pvid.i, align 2
  br label %br_get_pvid.exit

br_get_pvid.exit:                                 ; preds = %do.end.i, %if.end115.br_get_pvid.exit_crit_edge
  %retval.0.i317 = phi i16 [ %111, %do.end.i ], [ 0, %if.end115.br_get_pvid.exit_crit_edge ]
  %112 = and i16 %vlan_tci, 4095
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i317, i16 %112)
  %cmp120 = icmp eq i16 %retval.0.i317, %112
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vlan_tci)
  %tobool124.not253 = icmp eq i16 %vlan_tci, 0
  %tobool124.not = or i1 %tobool124.not253, %cmp120
  br i1 %tobool124.not, label %br_get_pvid.exit.do.body127_crit_edge, label %if.then125

br_get_pvid.exit.do.body127_crit_edge:            ; preds = %br_get_pvid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body127

if.then125:                                       ; preds = %br_get_pvid.exit
  call void @__sanitizer_cov_trace_pc() #8
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 9
  %113 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %vlan_proto, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 10
  %114 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %vlan_tci, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 3
  %115 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %vlan_present.i, align 2
  br label %do.body127

do.body127:                                       ; preds = %if.then125, %br_get_pvid.exit.do.body127_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @br_nd_send.__UNIQUE_ID_ddebug579, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@br_nd_send, %if.then132)) #6
          to label %do.end140 [label %if.then132], !srcloc !34

if.then132:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @br_nd_send.__UNIQUE_ID_ddebug579, ptr noundef nonnull %2, ptr noundef nonnull @.str.8, ptr noundef nonnull %2, ptr noundef %daddr62, ptr noundef %daddr.0, ptr noundef %saddr64, ptr noundef %ha) #6
  br label %do.end140

do.end140:                                        ; preds = %if.then132, %do.body127
  br i1 %tobool111.not, label %if.else144, label %if.then142

if.then142:                                       ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #8
  %call143 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call.i) #6
  br label %cleanup

if.else144:                                       ; preds = %do.end140
  %116 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data.i, align 4
  %118 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i319 = ptrtoint ptr %117 to i32
  %sub.ptr.rhs.cast.i320 = ptrtoint ptr %119 to i32
  %sub.ptr.sub.i321 = sub i32 %sub.ptr.lhs.cast.i319, %sub.ptr.rhs.cast.i320
  %conv.i = trunc i32 %sub.ptr.sub.i321 to i16
  %120 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %conv.i, ptr %mac_header.i.i, align 2
  %121 = ptrtoint ptr %network_header.i.i283 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %network_header.i.i283, align 4
  %conv.i.i324 = zext i16 %122 to i32
  %add.ptr.i.i325 = getelementptr i8, ptr %119, i32 %conv.i.i324
  %sub.ptr.lhs.cast.i327 = ptrtoint ptr %add.ptr.i.i325 to i32
  %sub.ptr.sub.i329 = sub i32 %sub.ptr.lhs.cast.i327, %sub.ptr.lhs.cast.i319
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %123 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %len1.i, align 4
  %sub.i = sub i32 %124, %sub.ptr.sub.i329
  store i32 %sub.i, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %125 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %126)
  %cmp.i = icmp ult i32 %sub.i, %126
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !28

do.body4.i:                                       ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #6, !srcloc !36
  unreachable

__skb_pull.exit:                                  ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i331 = getelementptr i8, ptr %117, i32 %sub.ptr.sub.i329
  %127 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %add.ptr.i331, ptr %data.i, align 4
  %128 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %128)
  %bf.load148 = load i16, ptr %ip_summed, align 8
  %bf.clear149 = and i16 %bf.load148, 6655
  %bf.set150 = or i16 %bf.clear149, 512
  store i16 %bf.set150, ptr %ip_summed, align 8
  %call154 = tail call i32 @netif_rx_ni(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %__skb_pull.exit, %if.then142, %if.then28, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_chk_addr_ip(ptr noundef %dev, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 78
  %4 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ip_ptr.i, align 32
  %call.i = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.__in_dev_get_rcu.exit_crit_edge

entry.__in_dev_get_rcu.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__in_dev_get_rcu.exit

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__in_dev_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, label %if.then.i

land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__in_dev_get_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 232, ptr noundef nonnull @.str.1) #6
  br label %__in_dev_get_rcu.exit

__in_dev_get_rcu.exit:                            ; preds = %if.then.i, %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, %land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge, %entry.__in_dev_get_rcu.exit_crit_edge
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %__in_dev_get_rcu.exit.if.end_crit_edge, label %if.then

__in_dev_get_rcu.exit.if.end_crit_edge:           ; preds = %__in_dev_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %__in_dev_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %6 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nd_net.i, align 4
  %call2 = tail call i32 @inet_confirm_addr(ptr noundef %7, ptr noundef nonnull %5, i32 noundef 0, i32 noundef %3, i32 noundef 254) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %__in_dev_get_rcu.exit.if.end_crit_edge
  %addr.0 = phi i32 [ %call2, %if.then ], [ 0, %__in_dev_get_rcu.exit.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %addr.0, i32 %3)
  %cmp = icmp eq i32 %addr.0, %3
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_walk_all_upper_dev_rcu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_confirm_addr(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arp_send(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @arp_create(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arp_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_chk_addr_ip6(ptr noundef %dev, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %call1 = tail call i32 @ipv6_chk_addr(ptr noundef %3, ptr noundef %1, ptr noundef %dev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp ne i32 %call1, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !12, !13, !15, !17, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../include/linux/inetdevice.h", i32 232, i32 9}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/bridge/br_arp_nd_proxy.c", i32 54, i32 2}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @br_arp_send.__UNIQUE_ID_ddebug578, !5, !"__UNIQUE_ID_ddebug578", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../net/bridge/br_private.h", i32 1489, i32 9}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/bridge/br_private.h", i32 1483, i32 9}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/bridge/br_arp_nd_proxy.c", i32 356, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @br_nd_send.__UNIQUE_ID_ddebug579, !16, !"__UNIQUE_ID_ddebug579", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{!"auto-init"}
!30 = !{i64 2148308989}
!31 = !{i64 2148223453, i64 2148223485, i64 2148223514, i64 2148223548, i64 2148223579, i64 2148223602}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i64 2149815592}
!34 = !{i64 2148701273, i64 2148701278, i64 2148701291, i64 2148701335, i64 2148701369, i64 2148701390}
!35 = !{i64 2158038314}
!36 = !{i64 2154949825, i64 2154950313, i64 2154949862, i64 2154949918, i64 2154949952, i64 2154949976, i64 2154950017, i64 2154950038, i64 2154950066, i64 2154950100}
!37 = !{i64 6894834}
