; ModuleID = '/llk/IR_all_yes/drivers/net/bonding/bond_netlink.c_pt.bc'
source_filename = "../drivers/net/bonding/bond_netlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bond_opt_value = type { ptr, i64, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.115, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.26 }
%union.anon.26 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.22 }
%union.anon.22 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.115 = type { ptr }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ad_info = type { i16, i16, i16, i16, [6 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.bonding = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i8, ptr, [16 x i8], %struct.list_head, ptr, %struct.ad_bond_info, %struct.alb_bond_info, %struct.bond_params, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.rtnl_link_stats64, %struct.list_head, %struct.spinlock, ptr }
%struct.ad_bond_info = type { %struct.ad_system, %struct.bond_3ad_stats, %struct.atomic_t, i16 }
%struct.ad_system = type { i16, %struct.mac_addr }
%struct.mac_addr = type { [6 x i8] }
%struct.bond_3ad_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.alb_bond_info = type { ptr, i32, %struct.atomic_t, i32, i32, ptr, i32, i8, ptr, i8, i32, i32, i32, i8 }
%struct.bond_params = type { i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, [16 x i32], i32, i32, i32, i32, i32, i32, %struct.reciprocal_value, i16, i16, [8 x i8] }
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.slave = type { ptr, ptr, i32, i32, i32, [16 x i32], i8, i8, i8, i8, i32, i32, i32, i16, [32 x i8], ptr, %struct.tlb_slave_info, ptr, %struct.delayed_work, %struct.kobject, %struct.rtnl_link_stats64 }
%struct.tlb_slave_info = type { i32, i32 }
%struct.ad_slave_info = type { %struct.aggregator, %struct.port, %struct.bond_3ad_stats, i16 }
%struct.aggregator = type { %struct.mac_addr, i16, i8, i16, i16, %struct.mac_addr, i16, i16, i16, i16, ptr, ptr, i16, i16 }
%struct.port = type { i16, i16, %struct.mac_addr, i16, i16, i8, i16, i16, i8, i8, %struct.port_params, %struct.port_params, i8, i16, i32, i16, i32, i16, i32, i16, i32, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, i32, %struct.lacpdu }
%struct.port_params = type { %struct.mac_addr, i16, i16, i16, i16, i16 }
%struct.lacpdu = type { i8, i8, i8, i8, i16, %struct.mac_addr, i16, i16, i16, i8, [3 x i8], i8, i8, i16, %struct.mac_addr, i16, i16, i16, i8, [3 x i8], i8, i8, i16, [12 x i8], i8, i8, [50 x i8] }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bond\00", [27 x i8] zeroinitializer }, align 32
@bond_policy = internal constant { [31 x %struct.nla_policy], [40 x i8] } { [31 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 6, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.29 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@bond_slave_policy = internal constant { [9 x %struct.nla_policy], [56 x i8] } { [9 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [56 x i8] zeroinitializer }, align 32
@bond_link_ops = dso_local global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str, i32 1352, ptr null, ptr @bond_setup, i8 0, i32 30, ptr @bond_policy, ptr @bond_validate, ptr @bond_newlink, ptr @bond_changelink, ptr null, ptr @bond_get_size, ptr @bond_fill_info, ptr null, ptr null, ptr @bond_get_num_tx_queues, ptr @bond_get_num_tx_queues, i32 8, ptr @bond_slave_policy, ptr @bond_slave_changelink, ptr @bond_get_slave_size, ptr @bond_fill_slave_info, ptr null, ptr @bond_get_linkxstats_size, ptr @bond_fill_linkxstats }, section ".data..read_mostly", align 4
@__UNIQUE_ID_alias351 = internal constant [29 x i8] c"bonding.alias=rtnl-link-bond\00", section ".modinfo", align 1
@.str.1 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ARP monitoring cannot be used with MII monitoring\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Removing last arp target with arp_interval on\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ARP validating cannot be used with MII monitoring\0A\00", [45 x i8] zeroinitializer }, align 32
@bond_fill_info.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/net/bonding/bond_netlink.c\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@bond_option_active_slave_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/bonding.h\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s:%u\0A\00", [25 x i8] zeroinitializer }, align 32
@bond_fill_slave_info.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bond_fill_linkxstats.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 784, i32 12 }
@___asan_gen_.18 = private unnamed_addr constant [12 x i8] c"bond_policy\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 82, i32 32 }
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"bond_slave_policy\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 116, i32 32 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 183, i32 24 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 241, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 271, i32 27 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 279, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 606, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 695, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [25 x i8] c"../include/net/bonding.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 349, i32 24 }
@___asan_gen_.55 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 723, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 991, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [38 x i8] c"../drivers/net/bonding/bond_netlink.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 149, i32 48 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_alias351, ptr @.str, ptr @bond_policy, ptr @bond_slave_policy, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_policy to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_slave_policy to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local void @bond_setup(ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bond_validate(ptr nocapture noundef readonly %tb, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp.not = icmp eq i16 %3, 10
  br i1 %cmp.not, label %if.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %if.then
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %or.i.i = or i32 %5, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.return_crit_edge, label %is_valid_ether_addr.exit.if.end8_crit_edge

is_valid_ether_addr.exit.if.end8_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

is_valid_ether_addr.exit.return_crit_edge:        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end8:                                          ; preds = %is_valid_ether_addr.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  br label %return

return:                                           ; preds = %if.end8, %is_valid_ether_addr.exit.return_crit_edge, %if.end.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %if.then.return_crit_edge ], [ -99, %is_valid_ether_addr.exit.return_crit_edge ], [ -99, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_newlink(ptr nocapture noundef readnone %src_net, ptr noundef %bond_dev, ptr nocapture noundef readnone %tb, ptr noundef %data, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bond_changelink(ptr noundef %bond_dev, ptr noundef %tb, ptr noundef %data, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_netdevice(ptr noundef %bond_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %bond_dev, i32 2304
  tail call void @netif_carrier_off(ptr noundef %bond_dev) #10
  tail call void @bond_work_init_all(ptr noundef %add.ptr.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then2 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_changelink(ptr noundef %bond_dev, ptr nocapture noundef readnone %tb, ptr noundef readonly %data, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %tmp.i = alloca i64, align 8
  %newval = alloca %struct.bond_opt_value, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bond_dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %newval) #10
  %0 = call ptr @memset(ptr %newval, i32 255, i32 24)
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup471_crit_edge, label %if.end

entry.cleanup471_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %data, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end.if.end10_crit_edge, label %if.then2

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then2:                                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %add.ptr.i.i, align 1
  %5 = zext i8 %4 to i64
  %6 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %7 = ptrtoint ptr %value1.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %5, ptr %value1.i, align 8
  %call6 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then2.if.end10_crit_edge, label %if.then2.cleanup471_crit_edge

if.then2.cleanup471_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.then2.if.end10_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end10:                                         ; preds = %if.then2.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %err.0 = phi i32 [ 0, %if.then2.if.end10_crit_edge ], [ -1, %if.end.if.end10_crit_edge ]
  %arrayidx11 = getelementptr ptr, ptr %data, i32 2
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %if.end10.if.end33_crit_edge, label %if.then13

if.end10.if.end33_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then13:                                        ; preds = %if.end10
  %add.ptr.i.i723 = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i723 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i723, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %if.then13.cleanup28_crit_edge, label %if.then17

if.then13.cleanup28_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup28

if.then17:                                        ; preds = %if.then13
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %bond_dev, i32 0, i32 127
  %12 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nd_net.i, align 4
  %call19 = call ptr @__dev_get_by_index(ptr noundef %13, i32 noundef %11) #10
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then17.cleanup471_crit_edge, label %if.then17.cleanup28_crit_edge

if.then17.cleanup28_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup28

if.then17.cleanup471_crit_edge:                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

cleanup28:                                        ; preds = %if.then17.cleanup28_crit_edge, %if.then13.cleanup28_crit_edge
  %active_slave.0 = phi ptr [ @.str.1, %if.then13.cleanup28_crit_edge ], [ %call19, %if.then17.cleanup28_crit_edge ]
  %14 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i724 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %15 = ptrtoint ptr %value1.i724 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -1, ptr %value1.i724, align 8
  %16 = ptrtoint ptr %newval to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %active_slave.0, ptr %newval, align 8
  %call24 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 18, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %cleanup28.if.end33_crit_edge, label %cleanup28.cleanup471_crit_edge

cleanup28.cleanup471_crit_edge:                   ; preds = %cleanup28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

cleanup28.if.end33_crit_edge:                     ; preds = %cleanup28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end33:                                         ; preds = %cleanup28.if.end33_crit_edge, %if.end10.if.end33_crit_edge
  %err.2 = phi i32 [ 0, %cleanup28.if.end33_crit_edge ], [ %err.0, %if.end10.if.end33_crit_edge ]
  %arrayidx34 = getelementptr ptr, ptr %data, i32 3
  %17 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx34, align 4
  %tobool35.not = icmp eq ptr %18, null
  br i1 %tobool35.not, label %if.end33.if.end44_crit_edge, label %if.then36

if.end33.if.end44_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then36:                                        ; preds = %if.end33
  %add.ptr.i.i725 = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i725 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i725, align 4
  %21 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i726 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %conv39 = sext i32 %20 to i64
  %22 = ptrtoint ptr %value1.i726 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv39, ptr %value1.i726, align 8
  %call40 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 14, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then36.if.end44_crit_edge, label %if.then36.cleanup471_crit_edge

if.then36.cleanup471_crit_edge:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.then36.if.end44_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.end44:                                         ; preds = %if.then36.if.end44_crit_edge, %if.end33.if.end44_crit_edge
  %err.3 = phi i32 [ 0, %if.then36.if.end44_crit_edge ], [ %err.2, %if.end33.if.end44_crit_edge ]
  %miimon.0 = phi i32 [ %20, %if.then36.if.end44_crit_edge ], [ 0, %if.end33.if.end44_crit_edge ]
  %arrayidx45 = getelementptr ptr, ptr %data, i32 4
  %23 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx45, align 4
  %tobool46.not = icmp eq ptr %24, null
  br i1 %tobool46.not, label %if.end44.if.end58_crit_edge, label %if.then47

if.end44.if.end58_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then47:                                        ; preds = %if.end44
  %add.ptr.i.i727 = getelementptr i8, ptr %24, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i727 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i.i727, align 4
  %27 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i728 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %conv50 = sext i32 %26 to i64
  %28 = ptrtoint ptr %value1.i728 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv50, ptr %value1.i728, align 8
  %call51 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 9, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then47.if.end58_crit_edge, label %if.then47.cleanup471_crit_edge

if.then47.cleanup471_crit_edge:                   ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.then47.if.end58_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.end58:                                         ; preds = %if.then47.if.end58_crit_edge, %if.end44.if.end58_crit_edge
  %err.4 = phi i32 [ 0, %if.then47.if.end58_crit_edge ], [ %err.3, %if.end44.if.end58_crit_edge ]
  %arrayidx59 = getelementptr ptr, ptr %data, i32 5
  %29 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx59, align 4
  %tobool60.not = icmp eq ptr %30, null
  br i1 %tobool60.not, label %if.end58.if.end72_crit_edge, label %if.then61

if.end58.if.end72_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then61:                                        ; preds = %if.end58
  %add.ptr.i.i733 = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i733 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i733, align 4
  %33 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i734 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %conv64 = sext i32 %32 to i64
  %34 = ptrtoint ptr %value1.i734 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv64, ptr %value1.i734, align 8
  %call65 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 8, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then61.if.end72_crit_edge, label %if.then61.cleanup471_crit_edge

if.then61.cleanup471_crit_edge:                   ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.then61.if.end72_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.end72:                                         ; preds = %if.then61.if.end72_crit_edge, %if.end58.if.end72_crit_edge
  %err.5 = phi i32 [ 0, %if.then61.if.end72_crit_edge ], [ %err.4, %if.end58.if.end72_crit_edge ]
  %arrayidx73 = getelementptr ptr, ptr %data, i32 28
  %35 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx73, align 4
  %tobool74.not = icmp eq ptr %36, null
  br i1 %tobool74.not, label %if.end72.if.end86_crit_edge, label %if.then75

if.end72.if.end86_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.then75:                                        ; preds = %if.end72
  %add.ptr.i.i739 = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i739 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i739, align 4
  %39 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i740 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %conv78 = sext i32 %38 to i64
  %40 = ptrtoint ptr %value1.i740 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv78, ptr %value1.i740, align 8
  %call79 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 29, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.then75.if.end86_crit_edge, label %if.then75.cleanup471_crit_edge

if.then75.cleanup471_crit_edge:                   ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.then75.if.end86_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.end86:                                         ; preds = %if.then75.if.end86_crit_edge, %if.end72.if.end86_crit_edge
  %err.6 = phi i32 [ 0, %if.then75.if.end86_crit_edge ], [ %err.5, %if.end72.if.end86_crit_edge ]
  %arrayidx87 = getelementptr ptr, ptr %data, i32 6
  %41 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx87, align 4
  %tobool88.not = icmp eq ptr %42, null
  br i1 %tobool88.not, label %if.end86.if.end101_crit_edge, label %if.then89

if.end86.if.end101_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.then89:                                        ; preds = %if.end86
  %add.ptr.i.i745 = getelementptr i8, ptr %42, i32 4
  %43 = ptrtoint ptr %add.ptr.i.i745 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %add.ptr.i.i745, align 1
  %45 = zext i8 %44 to i64
  %46 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i746 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %47 = ptrtoint ptr %value1.i746 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %45, ptr %value1.i746, align 8
  %call94 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 17, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.then89.if.end101_crit_edge, label %if.then89.cleanup471_crit_edge

if.then89.cleanup471_crit_edge:                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.then89.if.end101_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.end101:                                        ; preds = %if.then89.if.end101_crit_edge, %if.end86.if.end101_crit_edge
  %err.7 = phi i32 [ 0, %if.then89.if.end101_crit_edge ], [ %err.6, %if.end86.if.end101_crit_edge ]
  %arrayidx102 = getelementptr ptr, ptr %data, i32 7
  %48 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx102, align 4
  %tobool103.not = icmp eq ptr %49, null
  br i1 %tobool103.not, label %if.end101.if.end119_crit_edge, label %if.then104

if.end101.if.end119_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

if.then104:                                       ; preds = %if.end101
  %add.ptr.i.i748 = getelementptr i8, ptr %49, i32 4
  %50 = ptrtoint ptr %add.ptr.i.i748 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i.i748, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool107.not = icmp eq i32 %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %miimon.0)
  %tobool108.not = icmp eq i32 %miimon.0, 0
  %or.cond = select i1 %tobool107.not, i1 true, i1 %tobool108.not
  br i1 %or.cond, label %if.end110, label %cleanup116.thread

cleanup116.thread:                                ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %53, ptr noundef nonnull @.str.2) #13
  br label %cleanup471

if.end110:                                        ; preds = %if.then104
  %54 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i749 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %conv111 = sext i32 %51 to i64
  %55 = ptrtoint ptr %value1.i749 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv111, ptr %value1.i749, align 8
  %call112 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 6, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end110.if.end119_crit_edge, label %if.end110.cleanup471_crit_edge

if.end110.cleanup471_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.end110.if.end119_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

if.end119:                                        ; preds = %if.end110.if.end119_crit_edge, %if.end101.if.end119_crit_edge
  %err.9 = phi i32 [ 0, %if.end110.if.end119_crit_edge ], [ %err.7, %if.end101.if.end119_crit_edge ]
  %arrayidx120 = getelementptr ptr, ptr %data, i32 8
  %56 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx120, align 4
  %tobool121.not = icmp eq ptr %57, null
  br i1 %tobool121.not, label %if.end119.if.end160_crit_edge, label %if.then122

if.end119.if.end160_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end160

if.then122:                                       ; preds = %if.end119
  call void @bond_option_arp_ip_targets_clear(ptr noundef %add.ptr.i) #10
  %58 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx120, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %59, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %61)
  %cmp.i755875 = icmp ugt i16 %61, 7
  br i1 %cmp.i755875, label %land.lhs.true.i.lr.ph, label %if.then122.land.lhs.true146_crit_edge

if.then122.land.lhs.true146_crit_edge:            ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true146

land.lhs.true.i.lr.ph:                            ; preds = %if.then122
  %conv.i = zext i16 %61 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %add.ptr.i754 = getelementptr i8, ptr %59, i32 4
  %value1.i760 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %62 = ptrtoint ptr %add.ptr.i754 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %add.ptr.i754, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %63)
  %cmp1.i900 = icmp ult i16 %63, 4
  %conv.i756901 = zext i16 %63 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i756901)
  %cmp5.i.not902 = icmp ult i32 %sub.i, %conv.i756901
  %or.cond873903 = select i1 %cmp1.i900, i1 true, i1 %cmp5.i.not902
  br i1 %or.cond873903, label %land.lhs.true.i.lr.ph.for.end_crit_edge, label %land.lhs.true.i.lr.ph.for.body_crit_edge

land.lhs.true.i.lr.ph.for.body_crit_edge:         ; preds = %land.lhs.true.i.lr.ph
  br label %for.body

land.lhs.true.i.lr.ph.for.end_crit_edge:          ; preds = %land.lhs.true.i.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true.i:                                  ; preds = %for.inc
  %add.ptr.i764 = getelementptr i8, ptr %attr.0878904, i32 %and.i
  %64 = ptrtoint ptr %add.ptr.i764 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %add.ptr.i764, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %65)
  %cmp1.i = icmp ult i16 %65, 4
  %conv.i756 = zext i16 %65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %conv.i756)
  %cmp5.i.not = icmp ult i32 %sub1.i, %conv.i756
  %or.cond873 = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond873, label %land.lhs.true.i.for.end_crit_edge, label %land.lhs.true.i.for.body_crit_edge

land.lhs.true.i.for.body_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

land.lhs.true.i.for.end_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %land.lhs.true.i.for.body_crit_edge, %land.lhs.true.i.lr.ph.for.body_crit_edge
  %rem.0876906 = phi i32 [ %sub1.i, %land.lhs.true.i.for.body_crit_edge ], [ %sub.i, %land.lhs.true.i.lr.ph.for.body_crit_edge ]
  %i.0877905 = phi i32 [ %inc, %land.lhs.true.i.for.body_crit_edge ], [ 0, %land.lhs.true.i.lr.ph.for.body_crit_edge ]
  %attr.0878904 = phi ptr [ %add.ptr.i764, %land.lhs.true.i.for.body_crit_edge ], [ %add.ptr.i754, %land.lhs.true.i.lr.ph.for.body_crit_edge ]
  %66 = ptrtoint ptr %attr.0878904 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %attr.0878904, align 2
  %68 = and i16 %67, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %68)
  %cmp130 = icmp eq i16 %68, 4
  br i1 %cmp130, label %for.body.cleanup471_crit_edge, label %if.end133

for.body.cleanup471_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.end133:                                        ; preds = %for.body
  %add.ptr.i.i759 = getelementptr i8, ptr %attr.0878904, i32 4
  %69 = ptrtoint ptr %add.ptr.i.i759 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %add.ptr.i.i759, align 4
  %conv135 = zext i32 %70 to i64
  %71 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %72 = ptrtoint ptr %value1.i760 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %conv135, ptr %value1.i760, align 8
  %call136 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 7, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %for.inc, label %if.end133.for.end_crit_edge

if.end133.for.end_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %if.end133
  %inc = add i32 %i.0877905, 1
  %73 = ptrtoint ptr %attr.0878904 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %attr.0878904, align 2
  %conv.i762 = zext i16 %74 to i32
  %sub.i763 = add nuw nsw i32 %conv.i762, 3
  %and.i = and i32 %sub.i763, 131068
  %sub1.i = sub nsw i32 %rem.0876906, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub1.i)
  %cmp.i755 = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i755, label %land.lhs.true.i, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end133.for.end_crit_edge, %land.lhs.true.i.for.end_crit_edge, %land.lhs.true.i.lr.ph.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %land.lhs.true.i.lr.ph.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ], [ %inc, %land.lhs.true.i.for.end_crit_edge ], [ %i.0877905, %if.end133.for.end_crit_edge ]
  %err.12 = phi i32 [ %err.9, %land.lhs.true.i.lr.ph.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ], [ 0, %land.lhs.true.i.for.end_crit_edge ], [ %call136, %if.end133.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa)
  %cmp144 = icmp eq i32 %i.0.lcssa, 0
  br i1 %cmp144, label %for.end.land.lhs.true146_crit_edge, label %for.end.if.end151_crit_edge

for.end.if.end151_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end151

for.end.land.lhs.true146_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true146

land.lhs.true146:                                 ; preds = %for.end.land.lhs.true146_crit_edge, %if.then122.land.lhs.true146_crit_edge
  %err.12889 = phi i32 [ %err.12, %for.end.land.lhs.true146_crit_edge ], [ %err.9, %if.then122.land.lhs.true146_crit_edge ]
  %arp_interval147 = getelementptr i8, ptr %bond_dev, i32 2624
  %75 = ptrtoint ptr %arp_interval147 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arp_interval147, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool148.not = icmp eq i32 %76, 0
  br i1 %tobool148.not, label %land.lhs.true146.if.end151_crit_edge, label %if.then149

land.lhs.true146.if.end151_crit_edge:             ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end151

if.then149:                                       ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %78, ptr noundef nonnull @.str.3) #13
  br label %if.end151

if.end151:                                        ; preds = %if.then149, %land.lhs.true146.if.end151_crit_edge, %for.end.if.end151_crit_edge
  %err.12888 = phi i32 [ %err.12889, %if.then149 ], [ %err.12889, %land.lhs.true146.if.end151_crit_edge ], [ %err.12, %for.end.if.end151_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.12888)
  %tobool152.not = icmp eq i32 %err.12888, 0
  br i1 %tobool152.not, label %if.end151.if.end160_crit_edge, label %if.end151.cleanup471_crit_edge

if.end151.cleanup471_crit_edge:                   ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.end151.if.end160_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end160

if.end160:                                        ; preds = %if.end151.if.end160_crit_edge, %if.end119.if.end160_crit_edge
  %arrayidx161 = getelementptr ptr, ptr %data, i32 9
  %79 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx161, align 4
  %tobool162.not = icmp eq ptr %80, null
  br i1 %tobool162.not, label %if.end160.if.end180_crit_edge, label %if.then163

if.end160.if.end180_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end180

if.then163:                                       ; preds = %if.end160
  %add.ptr.i.i765 = getelementptr i8, ptr %80, i32 4
  %81 = ptrtoint ptr %add.ptr.i.i765 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %add.ptr.i.i765, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool166.not = icmp eq i32 %82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %miimon.0)
  %tobool168.not = icmp eq i32 %miimon.0, 0
  %or.cond721 = select i1 %tobool166.not, i1 true, i1 %tobool168.not
  br i1 %or.cond721, label %if.end171, label %cleanup177.thread

cleanup177.thread:                                ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %84, ptr noundef nonnull @.str.4) #13
  br label %cleanup471

if.end171:                                        ; preds = %if.then163
  %85 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i766 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %conv172 = sext i32 %82 to i64
  %86 = ptrtoint ptr %value1.i766 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %conv172, ptr %value1.i766, align 8
  %call173 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 3, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.end171.if.end180_crit_edge, label %if.end171.cleanup471_crit_edge

if.end171.cleanup471_crit_edge:                   ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.end171.if.end180_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end180

if.end180:                                        ; preds = %if.end171.if.end180_crit_edge, %if.end160.if.end180_crit_edge
  %arrayidx181 = getelementptr ptr, ptr %data, i32 10
  %87 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx181, align 4
  %tobool182.not = icmp eq ptr %88, null
  br i1 %tobool182.not, label %if.end180.if.end194_crit_edge, label %if.then183

if.end180.if.end194_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end194

if.then183:                                       ; preds = %if.end180
  %add.ptr.i.i771 = getelementptr i8, ptr %88, i32 4
  %89 = ptrtoint ptr %add.ptr.i.i771 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %add.ptr.i.i771, align 4
  %91 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i772 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %conv186 = sext i32 %90 to i64
  %92 = ptrtoint ptr %value1.i772 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %conv186, ptr %value1.i772, align 8
  %call187 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 4, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.then183.if.end194_crit_edge, label %if.then183.cleanup471_crit_edge

if.then183.cleanup471_crit_edge:                  ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.then183.if.end194_crit_edge:                   ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end194

if.end194:                                        ; preds = %if.then183.if.end194_crit_edge, %if.end180.if.end194_crit_edge
  %arrayidx195 = getelementptr ptr, ptr %data, i32 11
  %93 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx195, align 4
  %tobool196.not = icmp eq ptr %94, null
  br i1 %tobool196.not, label %if.end194.if.end218_crit_edge, label %if.then197

if.end194.if.end218_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end218

if.then197:                                       ; preds = %if.end194
  %add.ptr.i.i777 = getelementptr i8, ptr %94, i32 4
  %95 = ptrtoint ptr %add.ptr.i.i777 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr.i.i777, align 4
  %nd_net.i778 = getelementptr inbounds %struct.net_device, ptr %bond_dev, i32 0, i32 127
  %97 = ptrtoint ptr %nd_net.i778 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %nd_net.i778, align 4
  %call203 = call ptr @__dev_get_by_index(ptr noundef %98, i32 noundef %96) #10
  %tobool204.not = icmp eq ptr %call203, null
  %spec.select = select i1 %tobool204.not, ptr @.str.1, ptr %call203
  %99 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i779 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %100 = ptrtoint ptr %value1.i779 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 -1, ptr %value1.i779, align 8
  %101 = ptrtoint ptr %newval to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %spec.select, ptr %newval, align 8
  %call209 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 15, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %if.then197.if.end218_crit_edge, label %if.then197.cleanup471_crit_edge

if.then197.cleanup471_crit_edge:                  ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.then197.if.end218_crit_edge:                   ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end218

if.end218:                                        ; preds = %if.then197.if.end218_crit_edge, %if.end194.if.end218_crit_edge
  %arrayidx219 = getelementptr ptr, ptr %data, i32 12
  %102 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx219, align 4
  %tobool220.not = icmp eq ptr %103, null
  br i1 %tobool220.not, label %if.end218.if.end233_crit_edge, label %if.then221

if.end218.if.end233_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end233

if.then221:                                       ; preds = %if.end218
  %add.ptr.i.i781 = getelementptr i8, ptr %103, i32 4
  %104 = ptrtoint ptr %add.ptr.i.i781 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %add.ptr.i.i781, align 1
  %106 = zext i8 %105 to i64
  %107 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i782 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %108 = ptrtoint ptr %value1.i782 to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %106, ptr %value1.i782, align 8
  %call226 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 16, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226)
  %tobool227.not = icmp eq i32 %call226, 0
  br i1 %tobool227.not, label %if.then221.if.end233_crit_edge, label %if.then221.cleanup471_crit_edge

if.then221.cleanup471_crit_edge:                  ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.then221.if.end233_crit_edge:                   ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end233

if.end233:                                        ; preds = %if.then221.if.end233_crit_edge, %if.end218.if.end233_crit_edge
  %arrayidx234 = getelementptr ptr, ptr %data, i32 13
  %109 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx234, align 4
  %tobool235.not = icmp eq ptr %110, null
  br i1 %tobool235.not, label %if.end233.if.end248_crit_edge, label %if.then236

if.end233.if.end248_crit_edge:                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end248

if.then236:                                       ; preds = %if.end233
  %add.ptr.i.i784 = getelementptr i8, ptr %110, i32 4
  %111 = ptrtoint ptr %add.ptr.i.i784 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %add.ptr.i.i784, align 1
  %113 = zext i8 %112 to i64
  %114 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i785 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %115 = ptrtoint ptr %value1.i785 to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %113, ptr %value1.i785, align 8
  %call241 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 5, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call241)
  %tobool242.not = icmp eq i32 %call241, 0
  br i1 %tobool242.not, label %if.then236.if.end248_crit_edge, label %if.then236.cleanup471_crit_edge

if.then236.cleanup471_crit_edge:                  ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.then236.if.end248_crit_edge:                   ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end248

if.end248:                                        ; preds = %if.then236.if.end248_crit_edge, %if.end233.if.end248_crit_edge
  %arrayidx249 = getelementptr ptr, ptr %data, i32 14
  %116 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx249, align 4
  %tobool250.not = icmp eq ptr %117, null
  br i1 %tobool250.not, label %if.end248.if.end263_crit_edge, label %if.then251

if.end248.if.end263_crit_edge:                    ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end263

if.then251:                                       ; preds = %if.end248
  %add.ptr.i.i787 = getelementptr i8, ptr %117, i32 4
  %118 = ptrtoint ptr %add.ptr.i.i787 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %add.ptr.i.i787, align 1
  %120 = zext i8 %119 to i64
  %121 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i788 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %122 = ptrtoint ptr %value1.i788 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %120, ptr %value1.i788, align 8
  %call256 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 2, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call256)
  %tobool257.not = icmp eq i32 %call256, 0
  br i1 %tobool257.not, label %if.then251.if.end263_crit_edge, label %if.then251.cleanup471_crit_edge

if.then251.cleanup471_crit_edge:                  ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.then251.if.end263_crit_edge:                   ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end263

if.end263:                                        ; preds = %if.then251.if.end263_crit_edge, %if.end248.if.end263_crit_edge
  %arrayidx264 = getelementptr ptr, ptr %data, i32 15
  %123 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx264, align 4
  %tobool265.not = icmp eq ptr %124, null
  br i1 %tobool265.not, label %if.end263.if.end277_crit_edge, label %if.then266

if.end263.if.end277_crit_edge:                    ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end277

if.then266:                                       ; preds = %if.end263
  %add.ptr.i.i790 = getelementptr i8, ptr %124, i32 4
  %125 = ptrtoint ptr %add.ptr.i.i790 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %add.ptr.i.i790, align 4
  %127 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i791 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %conv269 = sext i32 %126 to i64
  %128 = ptrtoint ptr %value1.i791 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %conv269, ptr %value1.i791, align 8
  %call270 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 21, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call270)
  %tobool271.not = icmp eq i32 %call270, 0
  br i1 %tobool271.not, label %if.then266.if.end277_crit_edge, label %if.then266.cleanup471_crit_edge

if.then266.cleanup471_crit_edge:                  ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.then266.if.end277_crit_edge:                   ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end277

if.end277:                                        ; preds = %if.then266.if.end277_crit_edge, %if.end263.if.end277_crit_edge
  %arrayidx278 = getelementptr ptr, ptr %data, i32 16
  %129 = ptrtoint ptr %arrayidx278 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx278, align 4
  %tobool279.not = icmp eq ptr %130, null
  br i1 %tobool279.not, label %if.end277.if.end292_crit_edge, label %if.then280

if.end277.if.end292_crit_edge:                    ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end292

if.then280:                                       ; preds = %if.end277
  %add.ptr.i.i796 = getelementptr i8, ptr %130, i32 4
  %131 = ptrtoint ptr %add.ptr.i.i796 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %add.ptr.i.i796, align 1
  %133 = zext i8 %132 to i64
  %134 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i797 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %135 = ptrtoint ptr %value1.i797 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %133, ptr %value1.i797, align 8
  %call285 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 13, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call285)
  %tobool286.not = icmp eq i32 %call285, 0
  br i1 %tobool286.not, label %if.then280.if.end292_crit_edge, label %if.then280.cleanup471_crit_edge

if.then280.cleanup471_crit_edge:                  ; preds = %if.then280
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.then280.if.end292_crit_edge:                   ; preds = %if.then280
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end292

if.end292:                                        ; preds = %if.then280.if.end292_crit_edge, %if.end277.if.end292_crit_edge
  %arrayidx293 = getelementptr ptr, ptr %data, i32 17
  %136 = ptrtoint ptr %arrayidx293 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx293, align 4
  %tobool294.not = icmp eq ptr %137, null
  br i1 %tobool294.not, label %if.end292.if.end307_crit_edge, label %if.then295

if.end292.if.end307_crit_edge:                    ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end307

if.then295:                                       ; preds = %if.end292
  %add.ptr.i.i799 = getelementptr i8, ptr %137, i32 4
  %138 = ptrtoint ptr %add.ptr.i.i799 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %add.ptr.i.i799, align 1
  %140 = zext i8 %139 to i64
  %141 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i800 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %142 = ptrtoint ptr %value1.i800 to i32
  call void @__asan_store8_noabort(i32 %142)
  store i64 %140, ptr %value1.i800, align 8
  %call300 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 20, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call300)
  %tobool301.not = icmp eq i32 %call300, 0
  br i1 %tobool301.not, label %if.then295.if.end307_crit_edge, label %if.then295.cleanup471_crit_edge

if.then295.cleanup471_crit_edge:                  ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.then295.if.end307_crit_edge:                   ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end307

if.end307:                                        ; preds = %if.then295.if.end307_crit_edge, %if.end292.if.end307_crit_edge
  %arrayidx308 = getelementptr ptr, ptr %data, i32 18
  %143 = ptrtoint ptr %arrayidx308 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx308, align 4
  %tobool309.not = icmp eq ptr %144, null
  br i1 %tobool309.not, label %if.end307.if.end321_crit_edge, label %if.then310

if.end307.if.end321_crit_edge:                    ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end321

if.then310:                                       ; preds = %if.end307
  %add.ptr.i.i802 = getelementptr i8, ptr %144, i32 4
  %145 = ptrtoint ptr %add.ptr.i.i802 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %add.ptr.i.i802, align 4
  %147 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i803 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %conv313 = sext i32 %146 to i64
  %148 = ptrtoint ptr %value1.i803 to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %conv313, ptr %value1.i803, align 8
  %call314 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 11, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call314)
  %tobool315.not = icmp eq i32 %call314, 0
  br i1 %tobool315.not, label %if.then310.if.end321_crit_edge, label %if.then310.cleanup471_crit_edge

if.then310.cleanup471_crit_edge:                  ; preds = %if.then310
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.then310.if.end321_crit_edge:                   ; preds = %if.then310
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end321

if.end321:                                        ; preds = %if.then310.if.end321_crit_edge, %if.end307.if.end321_crit_edge
  %arrayidx322 = getelementptr ptr, ptr %data, i32 19
  %149 = ptrtoint ptr %arrayidx322 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx322, align 4
  %tobool323.not = icmp eq ptr %150, null
  br i1 %tobool323.not, label %if.end321.if.end335_crit_edge, label %if.then324

if.end321.if.end335_crit_edge:                    ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end335

if.then324:                                       ; preds = %if.end321
  %add.ptr.i.i808 = getelementptr i8, ptr %150, i32 4
  %151 = ptrtoint ptr %add.ptr.i.i808 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %add.ptr.i.i808, align 4
  %153 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i809 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %conv327 = sext i32 %152 to i64
  %154 = ptrtoint ptr %value1.i809 to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 %conv327, ptr %value1.i809, align 8
  %call328 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 22, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call328)
  %tobool329.not = icmp eq i32 %call328, 0
  br i1 %tobool329.not, label %if.then324.if.end335_crit_edge, label %if.then324.cleanup471_crit_edge

if.then324.cleanup471_crit_edge:                  ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.then324.if.end335_crit_edge:                   ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end335

if.end335:                                        ; preds = %if.then324.if.end335_crit_edge, %if.end321.if.end335_crit_edge
  %arrayidx336 = getelementptr ptr, ptr %data, i32 20
  %155 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx336, align 4
  %tobool337.not = icmp eq ptr %156, null
  br i1 %tobool337.not, label %if.end335.if.end349_crit_edge, label %if.then338

if.end335.if.end349_crit_edge:                    ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end349

if.then338:                                       ; preds = %if.end335
  %add.ptr.i.i814 = getelementptr i8, ptr %156, i32 4
  %157 = ptrtoint ptr %add.ptr.i.i814 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %add.ptr.i.i814, align 4
  %159 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i815 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %conv341 = sext i32 %158 to i64
  %160 = ptrtoint ptr %value1.i815 to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 %conv341, ptr %value1.i815, align 8
  %call342 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 1, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call342)
  %tobool343.not = icmp eq i32 %call342, 0
  br i1 %tobool343.not, label %if.then338.if.end349_crit_edge, label %if.then338.cleanup471_crit_edge

if.then338.cleanup471_crit_edge:                  ; preds = %if.then338
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.then338.if.end349_crit_edge:                   ; preds = %if.then338
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end349

if.end349:                                        ; preds = %if.then338.if.end349_crit_edge, %if.end335.if.end349_crit_edge
  %arrayidx350 = getelementptr ptr, ptr %data, i32 29
  %161 = ptrtoint ptr %arrayidx350 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx350, align 4
  %tobool351.not = icmp eq ptr %162, null
  br i1 %tobool351.not, label %if.end349.if.end364_crit_edge, label %if.then352

if.end349.if.end364_crit_edge:                    ; preds = %if.end349
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end364

if.then352:                                       ; preds = %if.end349
  %add.ptr.i.i820 = getelementptr i8, ptr %162, i32 4
  %163 = ptrtoint ptr %add.ptr.i.i820 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %add.ptr.i.i820, align 1
  %165 = zext i8 %164 to i64
  %166 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i821 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %167 = ptrtoint ptr %value1.i821 to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %165, ptr %value1.i821, align 8
  %call357 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 30, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call357)
  %tobool358.not = icmp eq i32 %call357, 0
  br i1 %tobool358.not, label %if.then352.if.end364_crit_edge, label %if.then352.cleanup471_crit_edge

if.then352.cleanup471_crit_edge:                  ; preds = %if.then352
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.then352.if.end364_crit_edge:                   ; preds = %if.then352
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end364

if.end364:                                        ; preds = %if.then352.if.end364_crit_edge, %if.end349.if.end364_crit_edge
  %arrayidx365 = getelementptr ptr, ptr %data, i32 21
  %168 = ptrtoint ptr %arrayidx365 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx365, align 4
  %tobool366.not = icmp eq ptr %169, null
  br i1 %tobool366.not, label %if.end364.if.end379_crit_edge, label %if.then367

if.end364.if.end379_crit_edge:                    ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end379

if.then367:                                       ; preds = %if.end364
  %add.ptr.i.i823 = getelementptr i8, ptr %169, i32 4
  %170 = ptrtoint ptr %add.ptr.i.i823 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %add.ptr.i.i823, align 1
  %172 = zext i8 %171 to i64
  %173 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i824 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %174 = ptrtoint ptr %value1.i824 to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 %172, ptr %value1.i824, align 8
  %call372 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 10, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call372)
  %tobool373.not = icmp eq i32 %call372, 0
  br i1 %tobool373.not, label %if.then367.if.end379_crit_edge, label %if.then367.cleanup471_crit_edge

if.then367.cleanup471_crit_edge:                  ; preds = %if.then367
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.then367.if.end379_crit_edge:                   ; preds = %if.then367
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end379

if.end379:                                        ; preds = %if.then367.if.end379_crit_edge, %if.end364.if.end379_crit_edge
  %arrayidx380 = getelementptr ptr, ptr %data, i32 22
  %175 = ptrtoint ptr %arrayidx380 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx380, align 4
  %tobool381.not = icmp eq ptr %176, null
  br i1 %tobool381.not, label %if.end379.if.end394_crit_edge, label %if.then382

if.end379.if.end394_crit_edge:                    ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end394

if.then382:                                       ; preds = %if.end379
  %add.ptr.i.i826 = getelementptr i8, ptr %176, i32 4
  %177 = ptrtoint ptr %add.ptr.i.i826 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %add.ptr.i.i826, align 1
  %179 = zext i8 %178 to i64
  %180 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i827 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %181 = ptrtoint ptr %value1.i827 to i32
  call void @__asan_store8_noabort(i32 %181)
  store i64 %179, ptr %value1.i827, align 8
  %call387 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 12, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call387)
  %tobool388.not = icmp eq i32 %call387, 0
  br i1 %tobool388.not, label %if.then382.if.end394_crit_edge, label %if.then382.cleanup471_crit_edge

if.then382.cleanup471_crit_edge:                  ; preds = %if.then382
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.then382.if.end394_crit_edge:                   ; preds = %if.then382
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end394

if.end394:                                        ; preds = %if.then382.if.end394_crit_edge, %if.end379.if.end394_crit_edge
  %arrayidx395 = getelementptr ptr, ptr %data, i32 24
  %182 = ptrtoint ptr %arrayidx395 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %arrayidx395, align 4
  %tobool396.not = icmp eq ptr %183, null
  br i1 %tobool396.not, label %if.end394.if.end409_crit_edge, label %if.then397

if.end394.if.end409_crit_edge:                    ; preds = %if.end394
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end409

if.then397:                                       ; preds = %if.end394
  %add.ptr.i.i829 = getelementptr i8, ptr %183, i32 4
  %184 = ptrtoint ptr %add.ptr.i.i829 to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %add.ptr.i.i829, align 2
  %186 = zext i16 %185 to i64
  %187 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i830 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %188 = ptrtoint ptr %value1.i830 to i32
  call void @__asan_store8_noabort(i32 %188)
  store i64 %186, ptr %value1.i830, align 8
  %call402 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 25, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call402)
  %tobool403.not = icmp eq i32 %call402, 0
  br i1 %tobool403.not, label %if.then397.if.end409_crit_edge, label %if.then397.cleanup471_crit_edge

if.then397.cleanup471_crit_edge:                  ; preds = %if.then397
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.then397.if.end409_crit_edge:                   ; preds = %if.then397
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end409

if.end409:                                        ; preds = %if.then397.if.end409_crit_edge, %if.end394.if.end409_crit_edge
  %arrayidx410 = getelementptr ptr, ptr %data, i32 25
  %189 = ptrtoint ptr %arrayidx410 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %arrayidx410, align 4
  %tobool411.not = icmp eq ptr %190, null
  br i1 %tobool411.not, label %if.end409.if.end424_crit_edge, label %if.then412

if.end409.if.end424_crit_edge:                    ; preds = %if.end409
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end424

if.then412:                                       ; preds = %if.end409
  %add.ptr.i.i832 = getelementptr i8, ptr %190, i32 4
  %191 = ptrtoint ptr %add.ptr.i.i832 to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %add.ptr.i.i832, align 2
  %193 = zext i16 %192 to i64
  %194 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i833 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %195 = ptrtoint ptr %value1.i833 to i32
  call void @__asan_store8_noabort(i32 %195)
  store i64 %193, ptr %value1.i833, align 8
  %call417 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 27, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call417)
  %tobool418.not = icmp eq i32 %call417, 0
  br i1 %tobool418.not, label %if.then412.if.end424_crit_edge, label %if.then412.cleanup471_crit_edge

if.then412.cleanup471_crit_edge:                  ; preds = %if.then412
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.then412.if.end424_crit_edge:                   ; preds = %if.then412
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end424

if.end424:                                        ; preds = %if.then412.if.end424_crit_edge, %if.end409.if.end424_crit_edge
  %arrayidx425 = getelementptr ptr, ptr %data, i32 26
  %196 = ptrtoint ptr %arrayidx425 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %arrayidx425, align 4
  %tobool426.not = icmp eq ptr %197, null
  br i1 %tobool426.not, label %if.end424.if.end440_crit_edge, label %if.then427

if.end424.if.end440_crit_edge:                    ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end440

if.then427:                                       ; preds = %if.end424
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %197, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %199)
  %cmp430.not = icmp eq i16 %199, 10
  br i1 %cmp430.not, label %if.end433, label %if.then427.cleanup471_crit_edge

if.then427.cleanup471_crit_edge:                  ; preds = %if.then427
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.end433:                                        ; preds = %if.then427
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #10
  %200 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %200)
  store i64 -1, ptr %tmp.i, align 8, !annotation !51
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef nonnull %197, i32 noundef 8) #10
  %201 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #10
  %203 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i837 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %204 = ptrtoint ptr %value1.i837 to i32
  call void @__asan_store8_noabort(i32 %204)
  store i64 %202, ptr %value1.i837, align 8
  %call436 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 26, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call436)
  %tobool437.not = icmp eq i32 %call436, 0
  br i1 %tobool437.not, label %if.end433.if.end440_crit_edge, label %if.end433.cleanup471_crit_edge

if.end433.cleanup471_crit_edge:                   ; preds = %if.end433
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.end433.if.end440_crit_edge:                    ; preds = %if.end433
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end440

if.end440:                                        ; preds = %if.end433.if.end440_crit_edge, %if.end424.if.end440_crit_edge
  %arrayidx441 = getelementptr ptr, ptr %data, i32 27
  %205 = ptrtoint ptr %arrayidx441 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %arrayidx441, align 4
  %tobool442.not = icmp eq ptr %206, null
  br i1 %tobool442.not, label %if.end440.if.end455_crit_edge, label %if.then443

if.end440.if.end455_crit_edge:                    ; preds = %if.end440
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end455

if.then443:                                       ; preds = %if.end440
  %add.ptr.i.i842 = getelementptr i8, ptr %206, i32 4
  %207 = ptrtoint ptr %add.ptr.i.i842 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %add.ptr.i.i842, align 1
  %209 = zext i8 %208 to i64
  %210 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i843 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %211 = ptrtoint ptr %value1.i843 to i32
  call void @__asan_store8_noabort(i32 %211)
  store i64 %209, ptr %value1.i843, align 8
  %call448 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 24, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call448)
  %tobool449.not = icmp eq i32 %call448, 0
  br i1 %tobool449.not, label %if.then443.if.end455_crit_edge, label %if.then443.cleanup471_crit_edge

if.then443.cleanup471_crit_edge:                  ; preds = %if.then443
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.then443.if.end455_crit_edge:                   ; preds = %if.then443
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end455

if.end455:                                        ; preds = %if.then443.if.end455_crit_edge, %if.end440.if.end455_crit_edge
  %arrayidx456 = getelementptr ptr, ptr %data, i32 30
  %212 = ptrtoint ptr %arrayidx456 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %arrayidx456, align 4
  %tobool457.not = icmp eq ptr %213, null
  br i1 %tobool457.not, label %if.end455.if.end470_crit_edge, label %if.then458

if.end455.if.end470_crit_edge:                    ; preds = %if.end455
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end470

if.then458:                                       ; preds = %if.end455
  %add.ptr.i.i845 = getelementptr i8, ptr %213, i32 4
  %214 = ptrtoint ptr %add.ptr.i.i845 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %add.ptr.i.i845, align 1
  %216 = zext i8 %215 to i64
  %217 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i846 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %218 = ptrtoint ptr %value1.i846 to i32
  call void @__asan_store8_noabort(i32 %218)
  store i64 %216, ptr %value1.i846, align 8
  %call463 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 31, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call463)
  %tobool464.not = icmp eq i32 %call463, 0
  br i1 %tobool464.not, label %if.then458.if.end470_crit_edge, label %if.then458.cleanup471_crit_edge

if.then458.cleanup471_crit_edge:                  ; preds = %if.then458
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup471

if.then458.if.end470_crit_edge:                   ; preds = %if.then458
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end470

if.end470:                                        ; preds = %if.then458.if.end470_crit_edge, %if.end455.if.end470_crit_edge
  br label %cleanup471

cleanup471:                                       ; preds = %if.end470, %if.then458.cleanup471_crit_edge, %if.then443.cleanup471_crit_edge, %if.end433.cleanup471_crit_edge, %if.then427.cleanup471_crit_edge, %if.then412.cleanup471_crit_edge, %if.then397.cleanup471_crit_edge, %if.then382.cleanup471_crit_edge, %if.then367.cleanup471_crit_edge, %if.then352.cleanup471_crit_edge, %if.then338.cleanup471_crit_edge, %if.then324.cleanup471_crit_edge, %if.then310.cleanup471_crit_edge, %if.then295.cleanup471_crit_edge, %if.then280.cleanup471_crit_edge, %if.then266.cleanup471_crit_edge, %if.then251.cleanup471_crit_edge, %if.then236.cleanup471_crit_edge, %if.then221.cleanup471_crit_edge, %if.then197.cleanup471_crit_edge, %if.then183.cleanup471_crit_edge, %if.end171.cleanup471_crit_edge, %cleanup177.thread, %if.end151.cleanup471_crit_edge, %for.body.cleanup471_crit_edge, %if.end110.cleanup471_crit_edge, %cleanup116.thread, %if.then89.cleanup471_crit_edge, %if.then75.cleanup471_crit_edge, %if.then61.cleanup471_crit_edge, %if.then47.cleanup471_crit_edge, %if.then36.cleanup471_crit_edge, %cleanup28.cleanup471_crit_edge, %if.then17.cleanup471_crit_edge, %if.then2.cleanup471_crit_edge, %entry.cleanup471_crit_edge
  %retval.56 = phi i32 [ 0, %if.end470 ], [ %call463, %if.then458.cleanup471_crit_edge ], [ %call448, %if.then443.cleanup471_crit_edge ], [ %call417, %if.then412.cleanup471_crit_edge ], [ %call402, %if.then397.cleanup471_crit_edge ], [ %call387, %if.then382.cleanup471_crit_edge ], [ %call372, %if.then367.cleanup471_crit_edge ], [ %call357, %if.then352.cleanup471_crit_edge ], [ %call342, %if.then338.cleanup471_crit_edge ], [ %call328, %if.then324.cleanup471_crit_edge ], [ %call314, %if.then310.cleanup471_crit_edge ], [ %call300, %if.then295.cleanup471_crit_edge ], [ %call285, %if.then280.cleanup471_crit_edge ], [ %call270, %if.then266.cleanup471_crit_edge ], [ %call256, %if.then251.cleanup471_crit_edge ], [ %call241, %if.then236.cleanup471_crit_edge ], [ %call226, %if.then221.cleanup471_crit_edge ], [ %call209, %if.then197.cleanup471_crit_edge ], [ %call187, %if.then183.cleanup471_crit_edge ], [ %call173, %if.end171.cleanup471_crit_edge ], [ %call112, %if.end110.cleanup471_crit_edge ], [ %call94, %if.then89.cleanup471_crit_edge ], [ %call79, %if.then75.cleanup471_crit_edge ], [ %call65, %if.then61.cleanup471_crit_edge ], [ %call51, %if.then47.cleanup471_crit_edge ], [ %call24, %cleanup28.cleanup471_crit_edge ], [ %call6, %if.then2.cleanup471_crit_edge ], [ 0, %entry.cleanup471_crit_edge ], [ %call40, %if.then36.cleanup471_crit_edge ], [ -22, %if.then427.cleanup471_crit_edge ], [ %call436, %if.end433.cleanup471_crit_edge ], [ -22, %cleanup116.thread ], [ -22, %cleanup177.thread ], [ -19, %if.then17.cleanup471_crit_edge ], [ %err.12888, %if.end151.cleanup471_crit_edge ], [ -22, %for.body.cleanup471_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %newval) #10
  ret i32 %retval.56
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bond_get_size(ptr nocapture noundef readnone %bond_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 416
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_fill_info(ptr noundef %skb, ptr noundef %bond_dev) #2 align 64 {
entry:
  %tmp.i385 = alloca i16, align 2
  %tmp.i383 = alloca i16, align 2
  %tmp.i381 = alloca i16, align 2
  %tmp.i379 = alloca i16, align 2
  %tmp.i373 = alloca i16, align 2
  %tmp.i371 = alloca i16, align 2
  %tmp.i369 = alloca i8, align 1
  %tmp.i367 = alloca i8, align 1
  %tmp.i365 = alloca i8, align 1
  %tmp.i363 = alloca i8, align 1
  %tmp.i361 = alloca i8, align 1
  %tmp.i359 = alloca i32, align 4
  %tmp.i357 = alloca i32, align 4
  %tmp.i355 = alloca i32, align 4
  %tmp.i353 = alloca i8, align 1
  %tmp.i351 = alloca i8, align 1
  %tmp.i349 = alloca i32, align 4
  %tmp.i347 = alloca i8, align 1
  %tmp.i345 = alloca i8, align 1
  %tmp.i343 = alloca i8, align 1
  %tmp.i341 = alloca i32, align 4
  %tmp.i339 = alloca i32, align 4
  %tmp.i337 = alloca i32, align 4
  %tmp.i334 = alloca i32, align 4
  %tmp.i332 = alloca i32, align 4
  %tmp.i330 = alloca i8, align 1
  %tmp.i328 = alloca i32, align 4
  %tmp.i326 = alloca i32, align 4
  %tmp.i324 = alloca i32, align 4
  %tmp.i322 = alloca i32, align 4
  %tmp.i320 = alloca i32, align 4
  %tmp.i = alloca i8, align 1
  %info = alloca %struct.ad_info, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bond_dev, i32 2304
  %params = getelementptr i8, ptr %bond_dev, i32 2608
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %params, align 8
  %conv = trunc i32 %1 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #10
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup227_crit_edge

entry.cleanup227_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

if.end:                                           ; preds = %entry
  %3 = call i32 @llvm.read_register.i32(metadata !41) #10
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !52
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %if.end.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.rcu_read_lock.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.rcu_read_lock.exit.i_crit_edge
  %curr_active_slave.i.i = getelementptr i8, ptr %bond_dev, i32 2308
  %7 = ptrtoint ptr %curr_active_slave.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %curr_active_slave.i.i, align 4
  %call.i3.i = call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i3.i, label %rcu_read_lock.exit.i.do.end8.i.i_crit_edge, label %lor.lhs.false.i.i

rcu_read_lock.exit.i.do.end8.i.i_crit_edge:       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i
  %call2.i.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i4.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i, label %lor.lhs.false.i.i.do.end8.i.i_crit_edge

lor.lhs.false.i.i.do.end8.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i.i

land.lhs.true.i5.i:                               ; preds = %lor.lhs.false.i.i
  %call3.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i5.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i5.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i5.i
  %.b15.i.i = load i1, ptr @bond_option_active_slave_get_rcu.__warned, align 1
  br i1 %.b15.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i6.i

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i.i

if.then.i6.i:                                     ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @bond_option_active_slave_get_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 349, ptr noundef nonnull @.str.10) #10
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i6.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i5.i.do.end8.i.i_crit_edge, %lor.lhs.false.i.i.do.end8.i.i_crit_edge, %rcu_read_lock.exit.i.do.end8.i.i_crit_edge
  %9 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %params, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %do.end8.i.i.cond.end.i_crit_edge [
    i32 1, label %do.end8.i.i.bond_uses_primary.exit.i.i_crit_edge
    i32 5, label %do.end8.i.i.bond_uses_primary.exit.i.i_crit_edge425
    i32 6, label %do.end8.i.i.bond_uses_primary.exit.i.i_crit_edge426
  ]

do.end8.i.i.bond_uses_primary.exit.i.i_crit_edge426: ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bond_uses_primary.exit.i.i

do.end8.i.i.bond_uses_primary.exit.i.i_crit_edge425: ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bond_uses_primary.exit.i.i

do.end8.i.i.bond_uses_primary.exit.i.i_crit_edge: ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bond_uses_primary.exit.i.i

do.end8.i.i.cond.end.i_crit_edge:                 ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

bond_uses_primary.exit.i.i:                       ; preds = %do.end8.i.i.bond_uses_primary.exit.i.i_crit_edge, %do.end8.i.i.bond_uses_primary.exit.i.i_crit_edge425, %do.end8.i.i.bond_uses_primary.exit.i.i_crit_edge426
  %tobool12.not.i.i = icmp eq ptr %8, null
  br i1 %tobool12.not.i.i, label %bond_uses_primary.exit.i.i.cond.end.i_crit_edge, label %bond_option_active_slave_get_rcu.exit.i

bond_uses_primary.exit.i.i.cond.end.i_crit_edge:  ; preds = %bond_uses_primary.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

bond_option_active_slave_get_rcu.exit.i:          ; preds = %bond_uses_primary.exit.i.i
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %8, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %bond_option_active_slave_get_rcu.exit.i.cond.end.i_crit_edge, label %cond.true.i

bond_option_active_slave_get_rcu.exit.i.cond.end.i_crit_edge: ; preds = %bond_option_active_slave_get_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.true.i:                                      ; preds = %bond_option_active_slave_get_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %ifindex1.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %ifindex1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ifindex1.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %bond_option_active_slave_get_rcu.exit.i.cond.end.i_crit_edge, %bond_uses_primary.exit.i.i.cond.end.i_crit_edge, %do.end8.i.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %15, %cond.true.i ], [ 0, %bond_option_active_slave_get_rcu.exit.i.cond.end.i_crit_edge ], [ 0, %bond_uses_primary.exit.i.i.cond.end.i_crit_edge ], [ 0, %do.end8.i.i.cond.end.i_crit_edge ]
  %call.i7.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i7.i, label %cond.end.i.bond_option_active_slave_get_ifindex.exit_crit_edge, label %land.lhs.true.i10.i

cond.end.i.bond_option_active_slave_get_ifindex.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bond_option_active_slave_get_ifindex.exit

land.lhs.true.i10.i:                              ; preds = %cond.end.i
  %call1.i8.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8.i)
  %tobool.not.i9.i = icmp eq i32 %call1.i8.i, 0
  br i1 %tobool.not.i9.i, label %land.lhs.true.i10.i.bond_option_active_slave_get_ifindex.exit_crit_edge, label %land.lhs.true2.i12.i

land.lhs.true.i10.i.bond_option_active_slave_get_ifindex.exit_crit_edge: ; preds = %land.lhs.true.i10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bond_option_active_slave_get_ifindex.exit

land.lhs.true2.i12.i:                             ; preds = %land.lhs.true.i10.i
  %.b4.i11.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11.i, label %land.lhs.true2.i12.i.bond_option_active_slave_get_ifindex.exit_crit_edge, label %if.then.i13.i

land.lhs.true2.i12.i.bond_option_active_slave_get_ifindex.exit_crit_edge: ; preds = %land.lhs.true2.i12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bond_option_active_slave_get_ifindex.exit

if.then.i13.i:                                    ; preds = %land.lhs.true2.i12.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.11) #10
  br label %bond_option_active_slave_get_ifindex.exit

bond_option_active_slave_get_ifindex.exit:        ; preds = %if.then.i13.i, %land.lhs.true2.i12.i.bond_option_active_slave_get_ifindex.exit_crit_edge, %land.lhs.true.i10.i.bond_option_active_slave_get_ifindex.exit_crit_edge, %cond.end.i.bond_option_active_slave_get_ifindex.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !53
  %16 = call i32 @llvm.read_register.i32(metadata !41) #10
  %and.i.i.i.i.i14.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i14.i to ptr
  %preempt_count.i.i.i.i15.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i15.i, align 4
  %sub.i.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i15.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool3.not = icmp eq i32 %cond.i, 0
  br i1 %tobool3.not, label %bond_option_active_slave_get_ifindex.exit.if.end7_crit_edge, label %land.lhs.true

bond_option_active_slave_get_ifindex.exit.if.end7_crit_edge: ; preds = %bond_option_active_slave_get_ifindex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %bond_option_active_slave_get_ifindex.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i320) #10
  %20 = ptrtoint ptr %tmp.i320 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond.i, ptr %tmp.i320, align 4
  %call.i321 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i320) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i320) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i321)
  %tobool5.not = icmp eq i32 %call.i321, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true.cleanup227_crit_edge

land.lhs.true.cleanup227_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %bond_option_active_slave_get_ifindex.exit.if.end7_crit_edge
  %miimon = getelementptr i8, ptr %bond_dev, i32 2616
  %21 = ptrtoint ptr %miimon to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %miimon, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i322) #10
  %23 = ptrtoint ptr %tmp.i322 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %tmp.i322, align 4
  %call.i323 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i322) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i322) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i323)
  %tobool10.not = icmp eq i32 %call.i323, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup227_crit_edge

if.end7.cleanup227_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

if.end12:                                         ; preds = %if.end7
  %updelay = getelementptr i8, ptr %bond_dev, i32 2644
  %24 = ptrtoint ptr %updelay to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %updelay, align 4
  %26 = ptrtoint ptr %miimon to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %miimon, align 8
  %mul = mul i32 %27, %25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i324) #10
  %28 = ptrtoint ptr %tmp.i324 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul, ptr %tmp.i324, align 4
  %call.i325 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i324) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i324) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i325)
  %tobool17.not = icmp eq i32 %call.i325, 0
  br i1 %tobool17.not, label %if.end19, label %if.end12.cleanup227_crit_edge

if.end12.cleanup227_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

if.end19:                                         ; preds = %if.end12
  %downdelay = getelementptr i8, ptr %bond_dev, i32 2648
  %29 = ptrtoint ptr %downdelay to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %downdelay, align 8
  %31 = ptrtoint ptr %miimon to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %miimon, align 8
  %mul23 = mul i32 %32, %30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i326) #10
  %33 = ptrtoint ptr %tmp.i326 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul23, ptr %tmp.i326, align 4
  %call.i327 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i326) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i326) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i327)
  %tobool25.not = icmp eq i32 %call.i327, 0
  br i1 %tobool25.not, label %if.end27, label %if.end19.cleanup227_crit_edge

if.end19.cleanup227_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

if.end27:                                         ; preds = %if.end19
  %peer_notif_delay = getelementptr i8, ptr %bond_dev, i32 2652
  %34 = ptrtoint ptr %peer_notif_delay to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %peer_notif_delay, align 4
  %36 = ptrtoint ptr %miimon to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %miimon, align 8
  %mul31 = mul i32 %37, %35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i328) #10
  %38 = ptrtoint ptr %tmp.i328 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %mul31, ptr %tmp.i328, align 4
  %call.i329 = call i32 @nla_put(ptr noundef %skb, i32 noundef 28, i32 noundef 4, ptr noundef nonnull %tmp.i328) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i328) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i329)
  %tobool33.not = icmp eq i32 %call.i329, 0
  br i1 %tobool33.not, label %if.end35, label %if.end27.cleanup227_crit_edge

if.end27.cleanup227_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

if.end35:                                         ; preds = %if.end27
  %use_carrier = getelementptr i8, ptr %bond_dev, i32 2636
  %39 = ptrtoint ptr %use_carrier to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %use_carrier, align 4
  %conv37 = trunc i32 %40 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i330) #10
  %41 = ptrtoint ptr %tmp.i330 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv37, ptr %tmp.i330, align 1
  %call.i331 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %tmp.i330) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i330) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i331)
  %tobool39.not = icmp eq i32 %call.i331, 0
  br i1 %tobool39.not, label %if.end41, label %if.end35.cleanup227_crit_edge

if.end35.cleanup227_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

if.end41:                                         ; preds = %if.end35
  %arp_interval = getelementptr i8, ptr %bond_dev, i32 2624
  %42 = ptrtoint ptr %arp_interval to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arp_interval, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i332) #10
  %44 = ptrtoint ptr %tmp.i332 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %tmp.i332, align 4
  %call.i333 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i332) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i332) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i333)
  %tobool44.not = icmp eq i32 %call.i333, 0
  br i1 %tobool44.not, label %if.end46, label %if.end41.cleanup227_crit_edge

if.end41.cleanup227_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

if.end46:                                         ; preds = %if.end41
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %45 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tail.i.i, align 8
  %call1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool48.not402 = icmp eq ptr %46, null
  %tobool48.not = select i1 %cmp.i, i1 true, i1 %tobool48.not402
  br i1 %tobool48.not, label %if.end46.cleanup227_crit_edge, label %if.end46.for.body.outer_crit_edge

if.end46.for.body.outer_crit_edge:                ; preds = %if.end46
  br label %for.body.outer

if.end46.cleanup227_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

for.body.outer:                                   ; preds = %for.inc.thread.for.body.outer_crit_edge, %if.end46.for.body.outer_crit_edge
  %tobool63.not = phi i1 [ false, %for.inc.thread.for.body.outer_crit_edge ], [ true, %if.end46.for.body.outer_crit_edge ]
  %i.0399.ph = phi i32 [ %inc404, %for.inc.thread.for.body.outer_crit_edge ], [ 0, %if.end46.for.body.outer_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.outer
  %i.0399 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %i.0399.ph, %for.body.outer ]
  %arrayidx = getelementptr %struct.bonding, ptr %add.ptr.i, i32 0, i32 19, i32 19, i32 %i.0399
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool53.not = icmp eq i32 %48, 0
  br i1 %tobool53.not, label %for.inc, label %if.then54

if.then54:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i334) #10
  %49 = ptrtoint ptr %tmp.i334 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %tmp.i334, align 4
  %call.i335 = call i32 @nla_put(ptr noundef %skb, i32 noundef %i.0399, i32 noundef 4, ptr noundef nonnull %tmp.i334) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i334) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i335)
  %tobool59.not = icmp eq i32 %call.i335, 0
  br i1 %tobool59.not, label %for.inc.thread, label %if.then54.cleanup227_crit_edge

if.then54.cleanup227_crit_edge:                   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0399, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.thread:                                   ; preds = %if.then54
  %inc404 = add nuw nsw i32 %i.0399, 1
  %exitcond.not405 = icmp eq i32 %inc404, 16
  br i1 %exitcond.not405, label %for.inc.thread.if.then64_crit_edge, label %for.inc.thread.for.body.outer_crit_edge

for.inc.thread.for.body.outer_crit_edge:          ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.outer

for.inc.thread.if.then64_crit_edge:               ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

for.end:                                          ; preds = %for.inc
  br i1 %tobool63.not, label %if.else, label %for.end.if.then64_crit_edge

for.end.if.then64_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

if.then64:                                        ; preds = %for.end.if.then64_crit_edge, %for.inc.thread.if.then64_crit_edge
  %50 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %51 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %46 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %52 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i, ptr %46, align 2
  br label %if.end66

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @nla_nest_cancel(ptr noundef %skb, ptr noundef nonnull %46)
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.then64
  %arp_validate = getelementptr i8, ptr %bond_dev, i32 2628
  %53 = ptrtoint ptr %arp_validate to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arp_validate, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i337) #10
  %55 = ptrtoint ptr %tmp.i337 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %tmp.i337, align 4
  %call.i338 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i337) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i337) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i338)
  %tobool69.not = icmp eq i32 %call.i338, 0
  br i1 %tobool69.not, label %if.end71, label %if.end66.cleanup227_crit_edge

if.end66.cleanup227_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

if.end71:                                         ; preds = %if.end66
  %arp_all_targets = getelementptr i8, ptr %bond_dev, i32 2632
  %56 = ptrtoint ptr %arp_all_targets to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arp_all_targets, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i339) #10
  %58 = ptrtoint ptr %tmp.i339 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %tmp.i339, align 4
  %call.i340 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i339) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i339) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i340)
  %tobool74.not = icmp eq i32 %call.i340, 0
  br i1 %tobool74.not, label %do.body, label %if.end71.cleanup227_crit_edge

if.end71.cleanup227_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

do.body:                                          ; preds = %if.end71
  %call77 = call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call77, label %do.body.do.end_crit_edge, label %land.lhs.true78

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true78:                                  ; preds = %do.body
  %call79 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %land.lhs.true78.do.end_crit_edge, label %land.lhs.true81

land.lhs.true78.do.end_crit_edge:                 ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true81:                                  ; preds = %land.lhs.true78
  %.b317 = load i1, ptr @bond_fill_info.__warned, align 1
  br i1 %.b317, label %land.lhs.true81.do.end_crit_edge, label %if.then83

land.lhs.true81.do.end_crit_edge:                 ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then83:                                        ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @bond_fill_info.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 606, ptr noundef nonnull @.str.6) #10
  br label %do.end

do.end:                                           ; preds = %if.then83, %land.lhs.true81.do.end_crit_edge, %land.lhs.true78.do.end_crit_edge, %do.body.do.end_crit_edge
  %primary_slave = getelementptr i8, ptr %bond_dev, i32 2316
  %59 = ptrtoint ptr %primary_slave to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %primary_slave, align 4
  %tobool85.not = icmp eq ptr %60, null
  br i1 %tobool85.not, label %do.end.if.end91_crit_edge, label %land.lhs.true86

do.end.if.end91_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

land.lhs.true86:                                  ; preds = %do.end
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 8
  %ifindex87 = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 17
  %63 = ptrtoint ptr %ifindex87 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ifindex87, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i341) #10
  %65 = ptrtoint ptr %tmp.i341 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %tmp.i341, align 4
  %call.i342 = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i341) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i341) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i342)
  %tobool89.not = icmp eq i32 %call.i342, 0
  br i1 %tobool89.not, label %land.lhs.true86.if.end91_crit_edge, label %land.lhs.true86.cleanup227_crit_edge

land.lhs.true86.cleanup227_crit_edge:             ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

land.lhs.true86.if.end91_crit_edge:               ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.end91:                                         ; preds = %land.lhs.true86.if.end91_crit_edge, %do.end.if.end91_crit_edge
  %primary_reselect = getelementptr i8, ptr %bond_dev, i32 2688
  %66 = ptrtoint ptr %primary_reselect to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %primary_reselect, align 8
  %conv93 = trunc i32 %67 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i343) #10
  %68 = ptrtoint ptr %tmp.i343 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv93, ptr %tmp.i343, align 1
  %call.i344 = call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef 1, ptr noundef nonnull %tmp.i343) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i343) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i344)
  %tobool95.not = icmp eq i32 %call.i344, 0
  br i1 %tobool95.not, label %if.end97, label %if.end91.cleanup227_crit_edge

if.end91.cleanup227_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

if.end97:                                         ; preds = %if.end91
  %fail_over_mac = getelementptr i8, ptr %bond_dev, i32 2640
  %69 = ptrtoint ptr %fail_over_mac to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fail_over_mac, align 8
  %conv99 = trunc i32 %70 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i345) #10
  %71 = ptrtoint ptr %tmp.i345 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv99, ptr %tmp.i345, align 1
  %call.i346 = call i32 @nla_put(ptr noundef %skb, i32 noundef 13, i32 noundef 1, ptr noundef nonnull %tmp.i345) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i345) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i346)
  %tobool101.not = icmp eq i32 %call.i346, 0
  br i1 %tobool101.not, label %if.end103, label %if.end97.cleanup227_crit_edge

if.end97.cleanup227_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

if.end103:                                        ; preds = %if.end97
  %xmit_policy = getelementptr i8, ptr %bond_dev, i32 2612
  %72 = ptrtoint ptr %xmit_policy to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %xmit_policy, align 4
  %conv105 = trunc i32 %73 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i347) #10
  %74 = ptrtoint ptr %tmp.i347 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv105, ptr %tmp.i347, align 1
  %call.i348 = call i32 @nla_put(ptr noundef %skb, i32 noundef 14, i32 noundef 1, ptr noundef nonnull %tmp.i347) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i347) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i348)
  %tobool107.not = icmp eq i32 %call.i348, 0
  br i1 %tobool107.not, label %if.end109, label %if.end103.cleanup227_crit_edge

if.end103.cleanup227_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

if.end109:                                        ; preds = %if.end103
  %resend_igmp = getelementptr i8, ptr %bond_dev, i32 2764
  %75 = ptrtoint ptr %resend_igmp to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %resend_igmp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i349) #10
  %77 = ptrtoint ptr %tmp.i349 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %tmp.i349, align 4
  %call.i350 = call i32 @nla_put(ptr noundef %skb, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %tmp.i349) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i349) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i350)
  %tobool112.not = icmp eq i32 %call.i350, 0
  br i1 %tobool112.not, label %if.end114, label %if.end109.cleanup227_crit_edge

if.end109.cleanup227_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

if.end114:                                        ; preds = %if.end109
  %num_peer_notif = getelementptr i8, ptr %bond_dev, i32 2620
  %78 = ptrtoint ptr %num_peer_notif to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %num_peer_notif, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i351) #10
  %80 = ptrtoint ptr %tmp.i351 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %tmp.i351, align 1
  %call.i352 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %tmp.i351) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i351) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i352)
  %tobool117.not = icmp eq i32 %call.i352, 0
  br i1 %tobool117.not, label %if.end119, label %if.end114.cleanup227_crit_edge

if.end114.cleanup227_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

if.end119:                                        ; preds = %if.end114
  %all_slaves_active = getelementptr i8, ptr %bond_dev, i32 2760
  %81 = ptrtoint ptr %all_slaves_active to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %all_slaves_active, align 8
  %conv121 = trunc i32 %82 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i353) #10
  %83 = ptrtoint ptr %tmp.i353 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv121, ptr %tmp.i353, align 1
  %call.i354 = call i32 @nla_put(ptr noundef %skb, i32 noundef 17, i32 noundef 1, ptr noundef nonnull %tmp.i353) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i353) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i354)
  %tobool123.not = icmp eq i32 %call.i354, 0
  br i1 %tobool123.not, label %if.end125, label %if.end119.cleanup227_crit_edge

if.end119.cleanup227_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

if.end125:                                        ; preds = %if.end119
  %min_links = getelementptr i8, ptr %bond_dev, i32 2664
  %84 = ptrtoint ptr %min_links to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %min_links, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i355) #10
  %86 = ptrtoint ptr %tmp.i355 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %tmp.i355, align 4
  %call.i356 = call i32 @nla_put(ptr noundef %skb, i32 noundef 18, i32 noundef 4, ptr noundef nonnull %tmp.i355) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i355) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i356)
  %tobool128.not = icmp eq i32 %call.i356, 0
  br i1 %tobool128.not, label %if.end130, label %if.end125.cleanup227_crit_edge

if.end125.cleanup227_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

if.end130:                                        ; preds = %if.end125
  %lp_interval = getelementptr i8, ptr %bond_dev, i32 2768
  %87 = ptrtoint ptr %lp_interval to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %lp_interval, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i357) #10
  %89 = ptrtoint ptr %tmp.i357 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %tmp.i357, align 4
  %call.i358 = call i32 @nla_put(ptr noundef %skb, i32 noundef 19, i32 noundef 4, ptr noundef nonnull %tmp.i357) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i357) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i358)
  %tobool133.not = icmp eq i32 %call.i358, 0
  br i1 %tobool133.not, label %if.end135, label %if.end130.cleanup227_crit_edge

if.end130.cleanup227_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

if.end135:                                        ; preds = %if.end130
  %packets_per_slave137 = getelementptr i8, ptr %bond_dev, i32 2772
  %90 = ptrtoint ptr %packets_per_slave137 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %packets_per_slave137, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i359) #10
  %92 = ptrtoint ptr %tmp.i359 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %tmp.i359, align 4
  %call.i360 = call i32 @nla_put(ptr noundef %skb, i32 noundef 20, i32 noundef 4, ptr noundef nonnull %tmp.i359) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i359) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i360)
  %tobool139.not = icmp eq i32 %call.i360, 0
  br i1 %tobool139.not, label %if.end141, label %if.end135.cleanup227_crit_edge

if.end135.cleanup227_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

if.end141:                                        ; preds = %if.end135
  %lacp_active = getelementptr i8, ptr %bond_dev, i32 2656
  %93 = ptrtoint ptr %lacp_active to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %lacp_active, align 8
  %conv143 = trunc i32 %94 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i361) #10
  %95 = ptrtoint ptr %tmp.i361 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv143, ptr %tmp.i361, align 1
  %call.i362 = call i32 @nla_put(ptr noundef %skb, i32 noundef 29, i32 noundef 1, ptr noundef nonnull %tmp.i361) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i361) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i362)
  %tobool145.not = icmp eq i32 %call.i362, 0
  br i1 %tobool145.not, label %if.end147, label %if.end141.cleanup227_crit_edge

if.end141.cleanup227_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

if.end147:                                        ; preds = %if.end141
  %lacp_fast = getelementptr i8, ptr %bond_dev, i32 2660
  %96 = ptrtoint ptr %lacp_fast to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %lacp_fast, align 4
  %conv149 = trunc i32 %97 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i363) #10
  %98 = ptrtoint ptr %tmp.i363 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv149, ptr %tmp.i363, align 1
  %call.i364 = call i32 @nla_put(ptr noundef %skb, i32 noundef 21, i32 noundef 1, ptr noundef nonnull %tmp.i363) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i363) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i364)
  %tobool151.not = icmp eq i32 %call.i364, 0
  br i1 %tobool151.not, label %if.end153, label %if.end147.cleanup227_crit_edge

if.end147.cleanup227_crit_edge:                   ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

if.end153:                                        ; preds = %if.end147
  %ad_select = getelementptr i8, ptr %bond_dev, i32 2668
  %99 = ptrtoint ptr %ad_select to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ad_select, align 4
  %conv155 = trunc i32 %100 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i365) #10
  %101 = ptrtoint ptr %tmp.i365 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv155, ptr %tmp.i365, align 1
  %call.i366 = call i32 @nla_put(ptr noundef %skb, i32 noundef 22, i32 noundef 1, ptr noundef nonnull %tmp.i365) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i365) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i366)
  %tobool157.not = icmp eq i32 %call.i366, 0
  br i1 %tobool157.not, label %if.end159, label %if.end153.cleanup227_crit_edge

if.end153.cleanup227_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

if.end159:                                        ; preds = %if.end153
  %tlb_dynamic_lb = getelementptr i8, ptr %bond_dev, i32 2776
  %102 = ptrtoint ptr %tlb_dynamic_lb to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tlb_dynamic_lb, align 8
  %conv161 = trunc i32 %103 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i367) #10
  %104 = ptrtoint ptr %tmp.i367 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv161, ptr %tmp.i367, align 1
  %call.i368 = call i32 @nla_put(ptr noundef %skb, i32 noundef 27, i32 noundef 1, ptr noundef nonnull %tmp.i367) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i367) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i368)
  %tobool163.not = icmp eq i32 %call.i368, 0
  br i1 %tobool163.not, label %if.end165, label %if.end159.cleanup227_crit_edge

if.end159.cleanup227_crit_edge:                   ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

if.end165:                                        ; preds = %if.end159
  %missed_max = getelementptr i8, ptr %bond_dev, i32 2621
  %105 = ptrtoint ptr %missed_max to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %missed_max, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i369) #10
  %107 = ptrtoint ptr %tmp.i369 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %tmp.i369, align 1
  %call.i370 = call i32 @nla_put(ptr noundef %skb, i32 noundef 30, i32 noundef 1, ptr noundef nonnull %tmp.i369) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i369) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i370)
  %tobool168.not = icmp eq i32 %call.i370, 0
  br i1 %tobool168.not, label %if.end170, label %if.end165.cleanup227_crit_edge

if.end165.cleanup227_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

if.end170:                                        ; preds = %if.end165
  %108 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %params, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %109)
  %cmp173 = icmp eq i32 %109, 4
  br i1 %cmp173, label %if.then175, label %if.end170.cleanup227_crit_edge

if.end170.cleanup227_crit_edge:                   ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

if.then175:                                       ; preds = %if.end170
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %info) #10
  %110 = getelementptr inbounds %struct.ad_info, ptr %info, i32 0, i32 1
  %111 = getelementptr inbounds %struct.ad_info, ptr %info, i32 0, i32 2
  %112 = getelementptr inbounds %struct.ad_info, ptr %info, i32 0, i32 3
  %113 = getelementptr inbounds %struct.ad_info, ptr %info, i32 0, i32 4
  %114 = call ptr @memset(ptr %info, i32 255, i32 14)
  %call176 = call zeroext i1 @capable(i32 noundef 12) #10
  br i1 %call176, label %if.then177, label %if.then175.if.end193_crit_edge

if.then175.if.end193_crit_edge:                   ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end193

if.then177:                                       ; preds = %if.then175
  %ad_actor_sys_prio = getelementptr i8, ptr %bond_dev, i32 2788
  %115 = ptrtoint ptr %ad_actor_sys_prio to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %ad_actor_sys_prio, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i371) #10
  %117 = ptrtoint ptr %tmp.i371 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %tmp.i371, align 2
  %call.i372 = call i32 @nla_put(ptr noundef %skb, i32 noundef 24, i32 noundef 2, ptr noundef nonnull %tmp.i371) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i371) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i372)
  %tobool180.not = icmp eq i32 %call.i372, 0
  br i1 %tobool180.not, label %if.end182, label %if.then177.cleanup223.thread_crit_edge

if.then177.cleanup223.thread_crit_edge:           ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup223.thread

if.end182:                                        ; preds = %if.then177
  %ad_user_port_key = getelementptr i8, ptr %bond_dev, i32 2790
  %118 = ptrtoint ptr %ad_user_port_key to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %ad_user_port_key, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i373) #10
  %120 = ptrtoint ptr %tmp.i373 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %119, ptr %tmp.i373, align 2
  %call.i374 = call i32 @nla_put(ptr noundef %skb, i32 noundef 25, i32 noundef 2, ptr noundef nonnull %tmp.i373) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i373) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i374)
  %tobool185.not = icmp eq i32 %call.i374, 0
  br i1 %tobool185.not, label %if.end187, label %if.end182.cleanup223.thread_crit_edge

if.end182.cleanup223.thread_crit_edge:            ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup223.thread

if.end187:                                        ; preds = %if.end182
  %ad_actor_system = getelementptr i8, ptr %bond_dev, i32 2792
  %call189 = call i32 @nla_put(ptr noundef %skb, i32 noundef 26, i32 noundef 6, ptr noundef %ad_actor_system) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.end187.if.end193_crit_edge, label %if.end187.cleanup223.thread_crit_edge

if.end187.cleanup223.thread_crit_edge:            ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup223.thread

if.end187.if.end193_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end193

if.end193:                                        ; preds = %if.end187.if.end193_crit_edge, %if.then175.if.end193_crit_edge
  %call194 = call i32 @bond_3ad_get_active_agg_info(ptr noundef %add.ptr.i, ptr noundef nonnull %info) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %if.then196, label %if.end193._crit_edge

if.end193._crit_edge:                             ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %138

if.then196:                                       ; preds = %if.end193
  %121 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %tail.i.i, align 8
  %call1.i376 = call i32 @nla_put(ptr noundef %skb, i32 noundef 23, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i376)
  %cmp.i377 = icmp slt i32 %call1.i376, 0
  %tobool198.not397 = icmp eq ptr %122, null
  %tobool198.not = select i1 %cmp.i377, i1 true, i1 %tobool198.not397
  br i1 %tobool198.not, label %if.then196.cleanup223.thread_crit_edge, label %if.end200

if.then196.cleanup223.thread_crit_edge:           ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup223.thread

if.end200:                                        ; preds = %if.then196
  %123 = ptrtoint ptr %info to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %info, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i379) #10
  %125 = ptrtoint ptr %tmp.i379 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %tmp.i379, align 2
  %call.i380 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i379) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i379) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i380)
  %tobool202.not = icmp eq i32 %call.i380, 0
  br i1 %tobool202.not, label %if.end204, label %if.end200.cleanup223.thread_crit_edge

if.end200.cleanup223.thread_crit_edge:            ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup223.thread

if.end204:                                        ; preds = %if.end200
  %126 = ptrtoint ptr %110 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %110, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i381) #10
  %128 = ptrtoint ptr %tmp.i381 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %127, ptr %tmp.i381, align 2
  %call.i382 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i381) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i381) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i382)
  %tobool206.not = icmp eq i32 %call.i382, 0
  br i1 %tobool206.not, label %if.end208, label %if.end204.cleanup223.thread_crit_edge

if.end204.cleanup223.thread_crit_edge:            ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup223.thread

if.end208:                                        ; preds = %if.end204
  %129 = ptrtoint ptr %111 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %111, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i383) #10
  %131 = ptrtoint ptr %tmp.i383 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %130, ptr %tmp.i383, align 2
  %call.i384 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %tmp.i383) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i383) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i384)
  %tobool210.not = icmp eq i32 %call.i384, 0
  br i1 %tobool210.not, label %if.end212, label %if.end208.cleanup223.thread_crit_edge

if.end208.cleanup223.thread_crit_edge:            ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup223.thread

if.end212:                                        ; preds = %if.end208
  %132 = ptrtoint ptr %112 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %112, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i385) #10
  %134 = ptrtoint ptr %tmp.i385 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %133, ptr %tmp.i385, align 2
  %call.i386 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %tmp.i385) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i385) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i386)
  %tobool214.not = icmp eq i32 %call.i386, 0
  br i1 %tobool214.not, label %if.end216, label %if.end212.cleanup223.thread_crit_edge

if.end212.cleanup223.thread_crit_edge:            ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup223.thread

if.end216:                                        ; preds = %if.end212
  %call217 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 6, ptr noundef %113) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %tobool218.not = icmp eq i32 %call217, 0
  br i1 %tobool218.not, label %cleanup, label %if.end216.cleanup223.thread_crit_edge

if.end216.cleanup223.thread_crit_edge:            ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup223.thread

cleanup:                                          ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #12
  %135 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i388 = ptrtoint ptr %136 to i32
  %sub.ptr.rhs.cast.i389 = ptrtoint ptr %122 to i32
  %sub.ptr.sub.i390 = sub i32 %sub.ptr.lhs.cast.i388, %sub.ptr.rhs.cast.i389
  %conv.i391 = trunc i32 %sub.ptr.sub.i390 to i16
  %137 = ptrtoint ptr %122 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %conv.i391, ptr %122, align 2
  br label %138

cleanup223.thread:                                ; preds = %if.end216.cleanup223.thread_crit_edge, %if.end212.cleanup223.thread_crit_edge, %if.end208.cleanup223.thread_crit_edge, %if.end204.cleanup223.thread_crit_edge, %if.end200.cleanup223.thread_crit_edge, %if.then196.cleanup223.thread_crit_edge, %if.end187.cleanup223.thread_crit_edge, %if.end182.cleanup223.thread_crit_edge, %if.then177.cleanup223.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %info) #10
  br label %cleanup227

138:                                              ; preds = %cleanup, %if.end193._crit_edge
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %info) #10
  br label %cleanup227

cleanup227:                                       ; preds = %138, %cleanup223.thread, %if.end170.cleanup227_crit_edge, %if.end165.cleanup227_crit_edge, %if.end159.cleanup227_crit_edge, %if.end153.cleanup227_crit_edge, %if.end147.cleanup227_crit_edge, %if.end141.cleanup227_crit_edge, %if.end135.cleanup227_crit_edge, %if.end130.cleanup227_crit_edge, %if.end125.cleanup227_crit_edge, %if.end119.cleanup227_crit_edge, %if.end114.cleanup227_crit_edge, %if.end109.cleanup227_crit_edge, %if.end103.cleanup227_crit_edge, %if.end97.cleanup227_crit_edge, %if.end91.cleanup227_crit_edge, %land.lhs.true86.cleanup227_crit_edge, %if.end71.cleanup227_crit_edge, %if.end66.cleanup227_crit_edge, %if.then54.cleanup227_crit_edge, %if.end46.cleanup227_crit_edge, %if.end41.cleanup227_crit_edge, %if.end35.cleanup227_crit_edge, %if.end27.cleanup227_crit_edge, %if.end19.cleanup227_crit_edge, %if.end12.cleanup227_crit_edge, %if.end7.cleanup227_crit_edge, %land.lhs.true.cleanup227_crit_edge, %entry.cleanup227_crit_edge
  %retval.0 = phi i32 [ 0, %if.end170.cleanup227_crit_edge ], [ -90, %if.end165.cleanup227_crit_edge ], [ -90, %if.end159.cleanup227_crit_edge ], [ -90, %if.end153.cleanup227_crit_edge ], [ -90, %if.end147.cleanup227_crit_edge ], [ -90, %if.end141.cleanup227_crit_edge ], [ -90, %if.end135.cleanup227_crit_edge ], [ -90, %if.end130.cleanup227_crit_edge ], [ -90, %if.end125.cleanup227_crit_edge ], [ -90, %if.end119.cleanup227_crit_edge ], [ -90, %if.end114.cleanup227_crit_edge ], [ -90, %if.end109.cleanup227_crit_edge ], [ -90, %if.end103.cleanup227_crit_edge ], [ -90, %if.end97.cleanup227_crit_edge ], [ -90, %if.end91.cleanup227_crit_edge ], [ -90, %land.lhs.true86.cleanup227_crit_edge ], [ -90, %if.end71.cleanup227_crit_edge ], [ -90, %if.end66.cleanup227_crit_edge ], [ -90, %if.end46.cleanup227_crit_edge ], [ -90, %if.end41.cleanup227_crit_edge ], [ -90, %if.end35.cleanup227_crit_edge ], [ -90, %if.end27.cleanup227_crit_edge ], [ -90, %if.end19.cleanup227_crit_edge ], [ -90, %if.end12.cleanup227_crit_edge ], [ -90, %if.end7.cleanup227_crit_edge ], [ -90, %land.lhs.true.cleanup227_crit_edge ], [ -90, %entry.cleanup227_crit_edge ], [ 0, %138 ], [ -90, %cleanup223.thread ], [ -90, %if.then54.cleanup227_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bond_get_num_tx_queues() #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_slave_changelink(ptr noundef %bond_dev, ptr noundef %slave_dev, ptr nocapture noundef readnone %tb, ptr noundef readonly %data, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %newval = alloca %struct.bond_opt_value, align 8
  %queue_id_str = alloca [23 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bond_dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %newval) #10
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup14_crit_edge, label %if.end

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup14

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %data, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end13_crit_edge, label %if.then2

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then2:                                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %add.ptr.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %queue_id_str) #10
  %conv = zext i16 %3 to i32
  %4 = call ptr @memset(ptr %queue_id_str, i32 255, i32 23)
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %queue_id_str, i32 noundef 23, ptr noundef nonnull @.str.13, ptr noundef %slave_dev, i32 noundef %conv)
  %5 = call ptr @memset(ptr %newval, i32 0, i32 24)
  %value1.i = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %6 = ptrtoint ptr %value1.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %value1.i, align 8
  %7 = ptrtoint ptr %newval to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %queue_id_str, ptr %newval, align 8
  %call8 = call i32 @__bond_opt_set(ptr noundef %add.ptr.i, i32 noundef 19, ptr noundef nonnull %newval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %queue_id_str) #10
  br i1 %tobool9.not, label %if.then2.if.end13_crit_edge, label %if.then2.cleanup14_crit_edge

if.then2.cleanup14_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup14

if.then2.if.end13_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end13:                                         ; preds = %if.then2.if.end13_crit_edge, %if.end.if.end13_crit_edge
  br label %cleanup14

cleanup14:                                        ; preds = %if.end13, %if.then2.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %retval.1 = phi i32 [ 0, %if.end13 ], [ %call8, %if.then2.cleanup14_crit_edge ], [ 0, %entry.cleanup14_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %newval) #10
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bond_get_slave_size(ptr nocapture noundef readnone %bond_dev, ptr nocapture noundef readnone %slave_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 92
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_fill_slave_info(ptr noundef %skb, ptr nocapture noundef readnone %bond_dev, ptr nocapture noundef readonly %slave_dev) #2 align 64 {
entry:
  %tmp.i77 = alloca i16, align 2
  %tmp.i75 = alloca i8, align 1
  %tmp.i73 = alloca i16, align 2
  %tmp.i71 = alloca i16, align 2
  %tmp.i69 = alloca i32, align 4
  %tmp.i67 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b65 = load i1, ptr @bond_fill_slave_info.__warned, align 1
  br i1 %.b65, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @bond_fill_slave_info.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 36, ptr noundef nonnull @.str.6) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %rx_handler_data = getelementptr inbounds %struct.net_device, ptr %slave_dev, i32 0, i32 95
  %0 = ptrtoint ptr %rx_handler_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_handler_data, align 4
  %backup.i = getelementptr inbounds %struct.slave, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %backup.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %backup.i, align 2
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #10
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bf.lshr.i, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.cleanup47_crit_edge

do.end.cleanup47_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup47

if.end8:                                          ; preds = %do.end
  %link = getelementptr inbounds %struct.slave, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %link, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i67) #10
  %6 = ptrtoint ptr %tmp.i67 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %tmp.i67, align 1
  %call.i68 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i67) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i67) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool10.not = icmp eq i32 %call.i68, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup47_crit_edge

if.end8.cleanup47_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup47

if.end12:                                         ; preds = %if.end8
  %link_failure_count = getelementptr inbounds %struct.slave, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %link_failure_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %link_failure_count, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i69) #10
  %9 = ptrtoint ptr %tmp.i69 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i69, align 4
  %call.i70 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i69) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i69) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool14.not = icmp eq i32 %call.i70, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup47_crit_edge

if.end12.cleanup47_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup47

if.end16:                                         ; preds = %if.end12
  %addr_len = getelementptr inbounds %struct.net_device, ptr %slave_dev, i32 0, i32 56
  %10 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr_len, align 1
  %conv17 = zext i8 %11 to i32
  %perm_hwaddr = getelementptr inbounds %struct.slave, ptr %1, i32 0, i32 14
  %call18 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef %conv17, ptr noundef %perm_hwaddr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.cleanup47_crit_edge

if.end16.cleanup47_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup47

if.end21:                                         ; preds = %if.end16
  %queue_id = getelementptr inbounds %struct.slave, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %queue_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %queue_id, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i71) #10
  %14 = ptrtoint ptr %tmp.i71 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %tmp.i71, align 2
  %call.i72 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 2, ptr noundef nonnull %tmp.i71) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i71) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool23.not = icmp eq i32 %call.i72, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup47_crit_edge

if.end21.cleanup47_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup47

if.end25:                                         ; preds = %if.end21
  %bond = getelementptr inbounds %struct.slave, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bond, align 4
  %params = getelementptr inbounds %struct.bonding, ptr %16, i32 0, i32 19
  %17 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %params, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp = icmp eq i32 %18, 4
  br i1 %cmp, label %if.then27, label %if.end25.cleanup47_crit_edge

if.end25.cleanup47_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup47

if.then27:                                        ; preds = %if.end25
  %ad_info = getelementptr inbounds %struct.slave, ptr %1, i32 0, i32 15
  %19 = ptrtoint ptr %ad_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ad_info, align 8
  %aggregator = getelementptr inbounds %struct.ad_slave_info, ptr %20, i32 0, i32 1, i32 29
  %21 = ptrtoint ptr %aggregator to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %aggregator, align 4
  %tobool30.not = icmp eq ptr %22, null
  br i1 %tobool30.not, label %if.then27.cleanup47_crit_edge, label %if.then31

if.then27.cleanup47_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup47

if.then31:                                        ; preds = %if.then27
  %aggregator_identifier = getelementptr inbounds %struct.aggregator, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %aggregator_identifier to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %aggregator_identifier, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i73) #10
  %25 = ptrtoint ptr %tmp.i73 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %tmp.i73, align 2
  %call.i74 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %tmp.i73) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i73) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool33.not = icmp eq i32 %call.i74, 0
  br i1 %tobool33.not, label %if.end35, label %if.then31.cleanup.thread_crit_edge

if.then31.cleanup.thread_crit_edge:               ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end35:                                         ; preds = %if.then31
  %actor_oper_port_state = getelementptr inbounds %struct.ad_slave_info, ptr %20, i32 0, i32 1, i32 9
  %26 = ptrtoint ptr %actor_oper_port_state to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %actor_oper_port_state, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i75) #10
  %28 = ptrtoint ptr %tmp.i75 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %tmp.i75, align 1
  %call.i76 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 1, ptr noundef nonnull %tmp.i75) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i75) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool37.not = icmp eq i32 %call.i76, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.cleanup.thread_crit_edge

if.end35.cleanup.thread_crit_edge:                ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end39:                                         ; preds = %if.end35
  %port_state = getelementptr inbounds %struct.ad_slave_info, ptr %20, i32 0, i32 1, i32 11, i32 5
  %29 = ptrtoint ptr %port_state to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %port_state, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i77) #10
  %31 = ptrtoint ptr %tmp.i77 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %tmp.i77, align 2
  %call.i78 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 2, ptr noundef nonnull %tmp.i77) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i77) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool41.not = icmp eq i32 %call.i78, 0
  br i1 %tobool41.not, label %if.end39.cleanup47_crit_edge, label %if.end39.cleanup.thread_crit_edge

if.end39.cleanup.thread_crit_edge:                ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end39.cleanup47_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup47

cleanup.thread:                                   ; preds = %if.end39.cleanup.thread_crit_edge, %if.end35.cleanup.thread_crit_edge, %if.then31.cleanup.thread_crit_edge
  br label %cleanup47

cleanup47:                                        ; preds = %cleanup.thread, %if.end39.cleanup47_crit_edge, %if.then27.cleanup47_crit_edge, %if.end25.cleanup47_crit_edge, %if.end21.cleanup47_crit_edge, %if.end16.cleanup47_crit_edge, %if.end12.cleanup47_crit_edge, %if.end8.cleanup47_crit_edge, %do.end.cleanup47_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25.cleanup47_crit_edge ], [ 0, %if.then27.cleanup47_crit_edge ], [ 0, %if.end39.cleanup47_crit_edge ], [ -90, %cleanup.thread ], [ -90, %if.end21.cleanup47_crit_edge ], [ -90, %if.end16.cleanup47_crit_edge ], [ -90, %if.end12.cleanup47_crit_edge ], [ -90, %if.end8.cleanup47_crit_edge ], [ -90, %do.end.cleanup47_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_get_linkxstats_size(ptr nocapture noundef readnone %dev, i32 noundef %attr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %attr, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %switch = icmp eq i32 %0, 2
  br i1 %switch, label %sw.epilog, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @bond_3ad_stats_size() #10
  %add = add i32 %call, 4
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  %retval.0 = phi i32 [ %add, %sw.epilog ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_fill_linkxstats(ptr noundef %skb, ptr noundef %dev, ptr nocapture noundef readnone %prividx, i32 noundef %attr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %attr, label %entry.cleanup34_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %do.body
  ]

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %call2 = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call2, label %do.body.do.end_crit_edge, label %land.lhs.true

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b56 = load i1, ptr @bond_fill_linkxstats.__warned, align 1
  br i1 %.b56, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @bond_fill_linkxstats.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 745, ptr noundef nonnull @.str.6) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %rx_handler_data = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %1 = ptrtoint ptr %rx_handler_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rx_handler_data, align 4
  %tobool6.not = icmp eq ptr %2, null
  br i1 %tobool6.not, label %do.end.cleanup34_crit_edge, label %if.end8

do.end.cleanup34_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %bond9 = getelementptr inbounds %struct.slave, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %bond9 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bond9, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end8, %sw.bb
  %slave.0 = phi ptr [ %2, %if.end8 ], [ null, %sw.bb ]
  %bond.0 = phi ptr [ %4, %if.end8 ], [ %add.ptr.i, %sw.bb ]
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool11.not77 = icmp eq ptr %6, null
  %tobool11.not = select i1 %cmp.i, i1 true, i1 %tobool11.not77
  br i1 %tobool11.not, label %sw.epilog.cleanup34_crit_edge, label %if.end13

sw.epilog.cleanup34_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

if.end13:                                         ; preds = %sw.epilog
  %params = getelementptr inbounds %struct.bonding, ptr %bond.0, i32 0, i32 19
  %7 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %params, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp = icmp eq i32 %8, 4
  br i1 %cmp, label %if.then14, label %if.end13.cleanup34.sink.split_crit_edge

if.end13.cleanup34.sink.split_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34.sink.split

if.then14:                                        ; preds = %if.end13
  %tobool15.not = icmp eq ptr %slave.0, null
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %ad_info = getelementptr inbounds %struct.slave, ptr %slave.0, i32 0, i32 15
  %9 = ptrtoint ptr %ad_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ad_info, align 8
  %stats17 = getelementptr inbounds %struct.ad_slave_info, ptr %10, i32 0, i32 2
  br label %if.end20

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %stats19 = getelementptr inbounds %struct.bonding, ptr %bond.0, i32 0, i32 17, i32 1
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then16
  %stats.0 = phi ptr [ %stats17, %if.then16 ], [ %stats19, %if.else ]
  %11 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.i, align 8
  %call1.i58 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58)
  %cmp.i59 = icmp slt i32 %call1.i58, 0
  %tobool22.not78 = icmp eq ptr %12, null
  %tobool22.not = select i1 %cmp.i59, i1 true, i1 %tobool22.not78
  br i1 %tobool22.not, label %if.end20.cleanup34.sink.split_crit_edge, label %if.end25

if.end20.cleanup34.sink.split_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34.sink.split

if.end25:                                         ; preds = %if.end20
  %call26 = tail call i32 @bond_3ad_stats_fill(ptr noundef %skb, ptr noundef %stats.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end30, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end25
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %14, %12
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !54

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %15 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #10
  br label %cleanup34.sink.split

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i68 = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast.i69 = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i70 = sub i32 %sub.ptr.lhs.cast.i68, %sub.ptr.rhs.cast.i69
  %conv.i71 = trunc i32 %sub.ptr.sub.i70 to i16
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i71, ptr %12, align 2
  br label %cleanup34.sink.split

cleanup34.sink.split:                             ; preds = %if.end30, %nla_nest_cancel.exit, %if.end20.cleanup34.sink.split_crit_edge, %if.end13.cleanup34.sink.split_crit_edge
  %retval.1.ph = phi i32 [ -90, %nla_nest_cancel.exit ], [ -90, %if.end20.cleanup34.sink.split_crit_edge ], [ 0, %if.end30 ], [ 0, %if.end13.cleanup34.sink.split_crit_edge ]
  %20 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i, ptr %6, align 2
  br label %cleanup34

cleanup34:                                        ; preds = %cleanup34.sink.split, %sw.epilog.cleanup34_crit_edge, %do.end.cleanup34_crit_edge, %entry.cleanup34_crit_edge
  %retval.1 = phi i32 [ 0, %do.end.cleanup34_crit_edge ], [ -22, %entry.cleanup34_crit_edge ], [ -90, %sw.epilog.cleanup34_crit_edge ], [ %retval.1.ph, %cleanup34.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bond_netlink_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_link_register(ptr noundef nonnull @bond_link_ops) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bond_netlink_fini() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_link_unregister(ptr noundef nonnull @bond_link_ops) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @bond_work_init_all(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bond_opt_set(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bond_option_arp_ip_targets_clear(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nla_nest_cancel(ptr noundef %skb, ptr noundef %start) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not.i = icmp eq ptr %start, null
  br i1 %tobool.not.i, label %entry.nlmsg_trim.exit_crit_edge, label %if.then.i

entry.nlmsg_trim.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlmsg_trim.exit

if.then.i:                                        ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %1, %start
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !54

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %start to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #10
  br label %nlmsg_trim.exit

nlmsg_trim.exit:                                  ; preds = %if.end.i, %entry.nlmsg_trim.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bond_3ad_get_active_agg_info(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bond_3ad_stats_size() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bond_3ad_stats_fill(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !33, !35, !37, !39}
!llvm.named.register.sp = !{!41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/bonding/bond_netlink.c", i32 784, i32 12}
!2 = !{ptr @bond_link_ops, !3, !"bond_link_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/bonding/bond_netlink.c", i32 783, i32 22}
!4 = !{ptr @__UNIQUE_ID_alias351, !5, !"__UNIQUE_ID_alias351", i1 false, i1 false}
!5 = !{!"../drivers/net/bonding/bond_netlink.c", i32 816, i32 1}
!6 = !{ptr @bond_policy, !7, !"bond_policy", i1 false, i1 false}
!7 = !{!"../drivers/net/bonding/bond_netlink.c", i32 82, i32 32}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/bonding/bond_netlink.c", i32 183, i32 24}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/bonding/bond_netlink.c", i32 241, i32 26}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/bonding/bond_netlink.c", i32 271, i32 27}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/bonding/bond_netlink.c", i32 279, i32 26}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../drivers/net/bonding/bond_netlink.c", i32 606, i32 12}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/net/bonding.h", i32 349, i32 24}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/net/netlink.h", i32 991, i32 3}
!33 = !{ptr @bond_slave_policy, !34, !"bond_slave_policy", i1 false, i1 false}
!34 = !{!"../drivers/net/bonding/bond_netlink.c", i32 116, i32 32}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/bonding/bond_netlink.c", i32 149, i32 48}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../drivers/net/bonding/bond_netlink.c", i32 36, i32 24}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../drivers/net/bonding/bond_netlink.c", i32 745, i32 11}
!41 = !{!"sp"}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"auto-init"}
!52 = !{i64 2149377736}
!53 = !{i64 2149378002}
!54 = !{!"branch_weights", i32 1, i32 2000}
