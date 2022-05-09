; ModuleID = '/llk/IR_all_yes/net/bridge/br_stp.c_pt.bc'
source_filename = "../net/bridge/br_stp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+br_port_get_stp_state\22, \22a\22\09"
module asm "\09.weak\09__crc_br_port_get_stp_state\09\09\09\09"
module asm "\09.long\09__crc_br_port_get_stp_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_br_port_get_stp_state:\09\09\09\09\09"
module asm "\09.asciz \09\22br_port_get_stp_state\22\09\09\09\09\09"
module asm "__kstrtabns_br_port_get_stp_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+br_get_ageing_time\22, \22a\22\09"
module asm "\09.weak\09__crc_br_get_ageing_time\09\09\09\09"
module asm "\09.long\09__crc_br_get_ageing_time\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_br_get_ageing_time:\09\09\09\09\09"
module asm "\09.asciz \09\22br_get_ageing_time\22\09\09\09\09\09"
module asm "__kstrtabns_br_get_ageing_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.switchdev_attr = type { ptr, i32, i32, ptr, ptr, %union.anon.154 }
%union.anon.154 = type { %struct.switchdev_brport_flags }
%struct.switchdev_brport_flags = type { i32, i32 }
%struct.net_bridge_port = type { ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i8, i8, i16, i8, i8, i16, i16, %struct.bridge_id, %struct.bridge_id, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.kobject, %struct.callback_head, %struct.net_bridge_mcast_port, ptr, i32, i32, %struct.hlist_head, [16 x i8], ptr, i32, i32, %struct.netdev_phys_item_id, i16, i16, %struct.bridge_stp_xstats }
%struct.list_head = type { ptr, ptr }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.callback_head = type { ptr, ptr }
%struct.net_bridge_mcast_port = type { ptr, ptr, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, i8 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.hlist_head = type { ptr }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.bridge_stp_xstats = type { i64, i64, i64, i64, i64, i64 }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.143, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%union.anon.143 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.142 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.anon = type { [16 x i8], %struct.lockdep_map }
%struct.br_config_bpdu = type { i8, %struct.bridge_id, i32, %struct.bridge_id, i16, i32, i32, i32, i32 }

@br_set_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014%s: error setting offload STP state on port %u(%s)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"br_set_state\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/bridge/br_stp.c\00", [44 x i8] zeroinitializer }, align 32
@br_set_state._entry_ptr = internal global ptr @br_set_state._entry, section ".printk_index", align 4
@br_set_state._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: port %u(%s) entered %s state\0A\00", [60 x i8] zeroinitializer }, align 32
@br_set_state._entry_ptr.5 = internal global ptr @br_set_state._entry.3, section ".printk_index", align 4
@br_port_state_names = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], [44 x i8] zeroinitializer }, align 32
@br_port_get_stp_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@__kstrtab_br_port_get_stp_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_br_port_get_stp_state = external dso_local constant [0 x i8], align 1
@__ksymtab_br_port_get_stp_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @br_port_get_stp_state to i32), ptr @__kstrtab_br_port_get_stp_state, ptr @__kstrtabns_br_port_get_stp_state }, section "___ksymtab_gpl+br_port_get_stp_state", align 4
@br_get_port.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@br_transmit_tcn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015%s: root port %u not found for topology notice\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"br_transmit_tcn\00", [16 x i8] zeroinitializer }, align 32
@br_transmit_tcn._entry_ptr = internal global ptr @br_transmit_tcn._entry, section ".printk_index", align 4
@br_topology_change_detection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: topology change detected, %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"br_topology_change_detection\00", [35 x i8] zeroinitializer }, align 32
@br_topology_change_detection._entry_ptr = internal global ptr @br_topology_change_detection._entry, section ".printk_index", align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"propagating\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sending tcn bpdu\00", [47 x i8] zeroinitializer }, align 32
@br_received_tcn_bpdu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: port %u(%s) received tcn bpdu\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"br_received_tcn_bpdu\00", [43 x i8] zeroinitializer }, align 32
@br_received_tcn_bpdu._entry_ptr = internal global ptr @br_received_tcn_bpdu._entry, section ".printk_index", align 4
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_br_get_ageing_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_br_get_ageing_time = external dso_local constant [0 x i8], align 1
@__ksymtab_br_get_ageing_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @br_get_ageing_time to i32), ptr @__kstrtab_br_get_ageing_time, ptr @__kstrtabns_br_get_ageing_time }, section "___ksymtab_gpl+br_get_ageing_time", align 4
@__br_set_topology_change.__UNIQUE_ID_ddebug562 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 -89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bridge\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__br_set_topology_change\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: decreasing ageing time to %lu\0A\00", [61 x i8] zeroinitializer }, align 32
@__br_set_topology_change.__UNIQUE_ID_ddebug563 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.2, ptr @.str.19, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: restoring ageing time to %lu\0A\00", [62 x i8] zeroinitializer }, align 32
@__br_set_topology_change._entry = internal constant %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.2, i32 676, ptr null, ptr null }, align 1
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014%s: error offloading ageing time\0A\00", [60 x i8] zeroinitializer }, align 32
@__br_set_topology_change._entry_ptr = internal global ptr @__br_set_topology_change._entry, section ".printk_index", align 4
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"listening\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"learning\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"forwarding\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"blocking\00", [23 x i8] zeroinitializer }, align 32
@br_port_get_rtnl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/bridge/br_private.h\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@br_root_port_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015%s: port %u(%s) tried to become root port (blocked)\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"br_root_port_block\00", [45 x i8] zeroinitializer }, align 32
@br_root_port_block._entry_ptr = internal global ptr @br_root_port_block._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 4]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 48, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 51, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"br_port_state_names\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 21, i32 26 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 71, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 86, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 277, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 371, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 557, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 668, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 671, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 676, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 22, i32 24 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 23, i32 25 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 24, i32 24 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 25, i32 26 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 26, i32 24 }
@___asan_gen_.129 = private unnamed_addr constant [27 x i8] c"../net/bridge/br_private.h\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 422, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private constant [23 x i8] c"../net/bridge/br_stp.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 150, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__br_set_topology_change._entry, ptr @__br_set_topology_change._entry_ptr, ptr @__ksymtab_br_get_ageing_time, ptr @__ksymtab_br_port_get_stp_state, ptr @br_received_tcn_bpdu._entry, ptr @br_received_tcn_bpdu._entry_ptr, ptr @br_root_port_block._entry, ptr @br_root_port_block._entry_ptr, ptr @br_set_state._entry, ptr @br_set_state._entry.3, ptr @br_set_state._entry_ptr, ptr @br_set_state._entry_ptr.5, ptr @br_topology_change_detection._entry, ptr @br_topology_change_detection._entry_ptr, ptr @br_transmit_tcn._entry, ptr @br_transmit_tcn._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @br_port_state_names, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_set_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_set_state._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_port_state_names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_transmit_tcn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_topology_change_detection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_received_tcn_bpdu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_root_port_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_set_state(ptr nocapture noundef %p, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %attr = alloca %struct.switchdev_attr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %attr) #8
  %0 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 2
  %2 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 3
  %3 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 4
  %4 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %5 = getelementptr inbounds i8, ptr %attr, i32 20
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 -1, ptr %5, align 4
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %attr, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %0, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %1, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %2, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %3, align 4
  %conv = trunc i32 %state to i8
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %4, align 4
  %flags1 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %15 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags1, align 4
  %and = and i32 %16, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %state3 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 8
  %17 = ptrtoint ptr %state3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %state3, align 1
  %call = call i32 @switchdev_port_attr_set(ptr noundef %8, ptr noundef nonnull %attr, ptr noundef null) #8
  %18 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %do.end [
    i32 0, label %if.end.do.end16_crit_edge
    i32 -95, label %if.end.do.end16_crit_edge58
  ]

if.end.do.end16_crit_edge58:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

if.end.do.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %p, align 8
  %dev8 = getelementptr inbounds %struct.net_bridge, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev8, align 4
  %port_no = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 9
  %23 = ptrtoint ptr %port_no to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %port_no, align 2
  %conv9 = zext i16 %24 to i32
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %22, i32 noundef %conv9, ptr noundef %26) #11
  br label %if.end29

do.end16:                                         ; preds = %if.end.do.end16_crit_edge, %if.end.do.end16_crit_edge58
  %27 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %p, align 8
  %dev19 = getelementptr inbounds %struct.net_bridge, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev19, align 4
  %port_no22 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 9
  %31 = ptrtoint ptr %port_no22 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %port_no22, align 2
  %conv23 = zext i16 %32 to i32
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %35 = ptrtoint ptr %state3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %state3, align 1
  %idxprom = zext i8 %36 to i32
  %arrayidx = getelementptr [5 x ptr], ptr @br_port_state_names, i32 0, i32 %idxprom
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %30, i32 noundef %conv23, ptr noundef %34, ptr noundef %38) #11
  br label %if.end29

if.end29:                                         ; preds = %do.end16, %do.end
  %39 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %p, align 8
  %stp_enabled = getelementptr inbounds %struct.net_bridge, ptr %40, i32 0, i32 28
  %41 = ptrtoint ptr %stp_enabled to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %stp_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp31 = icmp eq i32 %42, 1
  br i1 %cmp31, label %if.then33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then33:                                        ; preds = %if.end29
  %43 = ptrtoint ptr %state3 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %state3, align 1
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %44, label %if.then33.cleanup_crit_edge [
    i8 4, label %sw.bb
    i8 3, label %sw.bb36
  ]

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %stp_xstats = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 36
  br label %cleanup.sink.split

sw.bb36:                                          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %transition_fwd = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 36, i32 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb36, %sw.bb
  %transition_fwd.sink57 = phi ptr [ %transition_fwd, %sw.bb36 ], [ %stp_xstats, %sw.bb ]
  %46 = ptrtoint ptr %transition_fwd.sink57 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %transition_fwd.sink57, align 8
  %inc38 = add i64 %47, 1
  store i64 %inc38, ptr %transition_fwd.sink57, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then33.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %attr) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_port_attr_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @br_port_get_stp_state(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b44 = load i1, ptr @br_port_get_stp_state.__already_done, align 1
  br i1 %.b44, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !79

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @br_port_get_stp_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 71) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %1, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end29.cleanup_crit_edge, label %do.body.i

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.i:                                        ; preds = %if.end29
  %call1.i = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call1.i, label %do.body.i.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true.i

do.body.i.br_port_get_rtnl.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %br_port_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %do.body.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.br_port_get_rtnl.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %br_port_get_rtnl.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @br_port_get_rtnl.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %br_port_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @br_port_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 422, ptr noundef nonnull @.str.27) #8
  br label %br_port_get_rtnl.exit

br_port_get_rtnl.exit:                            ; preds = %if.then.i, %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, %land.lhs.true.i.br_port_get_rtnl.exit_crit_edge, %do.body.i.br_port_get_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %2 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_handler_data.i, align 4
  %tobool38.not = icmp eq ptr %3, null
  br i1 %tobool38.not, label %br_port_get_rtnl.exit.cleanup_crit_edge, label %if.end40

br_port_get_rtnl.exit.cleanup_crit_edge:          ; preds = %br_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end40:                                         ; preds = %br_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.net_bridge_port, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %br_port_get_rtnl.exit.cleanup_crit_edge, %if.end29.cleanup_crit_edge
  %retval.0 = phi i8 [ %5, %if.end40 ], [ 0, %br_port_get_rtnl.exit.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @br_get_port(ptr noundef %br, i16 noundef zeroext %port_no) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map = getelementptr inbounds %struct.anon, ptr %br, i32 0, i32 1
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true3.do.end_crit_edge, label %land.lhs.true6

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %.b33 = load i1, ptr @br_get_port.__warned, align 1
  br i1 %.b33, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @br_get_port.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 87, ptr noundef nonnull @.str.7) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %port_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %.pn.in = phi ptr [ %port_list, %do.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %port_no13 = getelementptr i8, ptr %.pn, i32 22
  %1 = ptrtoint ptr %port_no13 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %port_no13, align 2
  %cmp15 = icmp eq i16 %2, %port_no
  br i1 %cmp15, label %cleanup.split.loop.exit34, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

cleanup.split.loop.exit34:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %p.0.le = getelementptr i8, ptr %.pn, i32 -12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit34, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %p.0.le, %cleanup.split.loop.exit34 ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_become_root_bridge(ptr noundef %br) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge_max_age = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 22
  %0 = ptrtoint ptr %bridge_max_age to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bridge_max_age, align 4
  %max_age = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 18
  %2 = ptrtoint ptr %max_age to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %max_age, align 4
  %bridge_hello_time = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 23
  %3 = ptrtoint ptr %bridge_hello_time to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bridge_hello_time, align 4
  %hello_time = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 19
  %5 = ptrtoint ptr %hello_time to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %hello_time, align 4
  %bridge_forward_delay = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 24
  %6 = ptrtoint ptr %bridge_forward_delay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bridge_forward_delay, align 4
  %forward_delay = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 20
  %8 = ptrtoint ptr %forward_delay to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %forward_delay, align 4
  tail call void @br_topology_change_detection(ptr noundef %br)
  %tcn_timer = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 39
  %call = tail call i32 @del_timer(ptr noundef %tcn_timer) #8
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %port_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  %13 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn15.i = load ptr, ptr %port_list.i, align 4
  %cmp.not17.i = icmp eq ptr %.pn15.i, %port_list.i
  br i1 %cmp.not17.i, label %if.then.br_config_bpdu_generation.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.br_config_bpdu_generation.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %br_config_bpdu_generation.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %.pn18.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn15.i, %if.then.for.body.i_crit_edge ]
  %p.019.i = getelementptr i8, ptr %.pn18.i, i32 -12
  %state.i = getelementptr i8, ptr %.pn18.i, i32 21
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp2.not.i = icmp eq i8 %15, 0
  br i1 %cmp2.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %designated_bridge.i.i = getelementptr i8, ptr %.pn18.i, i32 38
  %16 = ptrtoint ptr %p.019.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p.019.i, align 8
  %bridge_id.i.i = getelementptr inbounds %struct.net_bridge, ptr %17, i32 0, i32 14
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %designated_bridge.i.i, ptr noundef dereferenceable(8) %bridge_id.i.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %br_is_designated_port.exit.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

br_is_designated_port.exit.i:                     ; preds = %land.lhs.true.i
  %designated_port.i.i = getelementptr i8, ptr %.pn18.i, i32 28
  %18 = ptrtoint ptr %designated_port.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %designated_port.i.i, align 8
  %port_id.i.i = getelementptr i8, ptr %.pn18.i, i32 26
  %20 = ptrtoint ptr %port_id.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %port_id.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp.i.not.i = icmp eq i16 %19, %21
  br i1 %cmp.i.not.i, label %if.then.i, label %br_is_designated_port.exit.i.for.inc.i_crit_edge

br_is_designated_port.exit.i.for.inc.i_crit_edge: ; preds = %br_is_designated_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %br_is_designated_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @br_transmit_config(ptr noundef %p.019.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %br_is_designated_port.exit.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %22 = ptrtoint ptr %.pn18.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i = load ptr, ptr %.pn18.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %port_list.i
  br i1 %cmp.not.i, label %for.inc.i.br_config_bpdu_generation.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.br_config_bpdu_generation.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %br_config_bpdu_generation.exit

br_config_bpdu_generation.exit:                   ; preds = %for.inc.i.br_config_bpdu_generation.exit_crit_edge, %if.then.br_config_bpdu_generation.exit_crit_edge
  %hello_timer = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %24 = ptrtoint ptr %hello_time to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hello_time, align 4
  %add = add i32 %25, %23
  %call2 = tail call i32 @mod_timer(ptr noundef %hello_timer, i32 noundef %add) #8
  br label %if.end

if.end:                                           ; preds = %br_config_bpdu_generation.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_topology_change_detection(ptr noundef %br) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stp_enabled = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 28
  %0 = ptrtoint ptr %stp_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stp_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  %bridge_id.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 14
  %designated_root.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 13
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %bridge_id.i, ptr noundef dereferenceable(8) %designated_root.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i.not = icmp eq i32 %bcmp.i, 0
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %cond = select i1 %tobool.not.i.not, ptr @.str.12, ptr @.str.13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %3, ptr noundef nonnull %cond) #11
  br i1 %tobool.not.i.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__br_set_topology_change(ptr noundef %br, i8 noundef zeroext 1)
  %topology_change_timer = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %bridge_forward_delay = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 24
  %5 = ptrtoint ptr %bridge_forward_delay to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bridge_forward_delay, align 4
  %add = add i32 %6, %4
  %bridge_max_age = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 22
  %7 = ptrtoint ptr %bridge_max_age to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bridge_max_age, align 4
  br label %if.end11.sink.split

if.else:                                          ; preds = %do.end
  %topology_change_detected = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 16
  %9 = ptrtoint ptr %topology_change_detected to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %topology_change_detected, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not = icmp eq i8 %10, 0
  br i1 %tobool6.not, label %if.then7, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @br_transmit_tcn(ptr noundef %br)
  %tcn_timer = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %bridge_hello_time = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 23
  %12 = ptrtoint ptr %bridge_hello_time to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bridge_hello_time, align 4
  br label %if.end11.sink.split

if.end11.sink.split:                              ; preds = %if.then7, %if.then3
  %.sink25 = phi i32 [ %11, %if.then7 ], [ %8, %if.then3 ]
  %.sink = phi i32 [ %13, %if.then7 ], [ %add, %if.then3 ]
  %tcn_timer.sink = phi ptr [ %tcn_timer, %if.then7 ], [ %topology_change_timer, %if.then3 ]
  %add8 = add i32 %.sink, %.sink25
  %call9 = tail call i32 @mod_timer(ptr noundef %tcn_timer.sink, i32 noundef %add8) #8
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %if.else.if.end11_crit_edge
  %topology_change_detected12 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 16
  %14 = ptrtoint ptr %topology_change_detected12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %topology_change_detected12, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_config_bpdu_generation(ptr noundef readonly %br) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  %0 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn15 = load ptr, ptr %port_list, align 4
  %cmp.not17 = icmp eq ptr %.pn15, %port_list
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn18 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn15, %entry.for.body_crit_edge ]
  %p.019 = getelementptr i8, ptr %.pn18, i32 -12
  %state = getelementptr i8, ptr %.pn18, i32 21
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp2.not = icmp eq i8 %2, 0
  br i1 %cmp2.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %designated_bridge.i = getelementptr i8, ptr %.pn18, i32 38
  %3 = ptrtoint ptr %p.019 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p.019, align 8
  %bridge_id.i = getelementptr inbounds %struct.net_bridge, ptr %4, i32 0, i32 14
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %designated_bridge.i, ptr noundef dereferenceable(8) %bridge_id.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %br_is_designated_port.exit, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

br_is_designated_port.exit:                       ; preds = %land.lhs.true
  %designated_port.i = getelementptr i8, ptr %.pn18, i32 28
  %5 = ptrtoint ptr %designated_port.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %designated_port.i, align 8
  %port_id.i = getelementptr i8, ptr %.pn18, i32 26
  %7 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %port_id.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp.i.not = icmp eq i16 %6, %8
  br i1 %cmp.i.not, label %if.then, label %br_is_designated_port.exit.for.inc_crit_edge

br_is_designated_port.exit.for.inc_crit_edge:     ; preds = %br_is_designated_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %br_is_designated_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @br_transmit_config(ptr noundef %p.019)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %br_is_designated_port.exit.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %.pn18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn18, align 4
  %cmp.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_transmit_config(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %bpdu = alloca %struct.br_config_bpdu, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %bpdu) #8
  %0 = call ptr @memset(ptr %bpdu, i32 255, i32 44)
  %hold_timer = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 20
  %pprev.i.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 20, i32 0, i32 1
  %1 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %2, null
  br i1 %tobool.not.i.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %config_pending = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 11
  %3 = ptrtoint ptr %config_pending to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %config_pending, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p, align 8
  %topology_change = getelementptr inbounds %struct.net_bridge, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %topology_change to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %topology_change, align 4
  %8 = ptrtoint ptr %bpdu to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %bpdu, align 4
  %bf.shl = shl i8 %7, 7
  %bf.clear = and i8 %bf.load, 63
  %bf.set = or i8 %bf.clear, %bf.shl
  %topology_change_ack = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 10
  %9 = ptrtoint ptr %topology_change_ack to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %topology_change_ack, align 4
  %bf.value4 = shl i8 %10, 6
  %bf.shl5 = and i8 %bf.value4, 64
  %bf.set7 = or i8 %bf.shl5, %bf.set
  store i8 %bf.set7, ptr %bpdu, align 4
  %root = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 1
  %designated_root = getelementptr inbounds %struct.net_bridge, ptr %5, i32 0, i32 13
  %11 = ptrtoint ptr %designated_root to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %designated_root, align 4
  %13 = ptrtoint ptr %root to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %root, align 1
  %root_path_cost = getelementptr inbounds %struct.net_bridge, ptr %5, i32 0, i32 26
  %14 = ptrtoint ptr %root_path_cost to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %root_path_cost, align 4
  %root_path_cost9 = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 2
  %16 = ptrtoint ptr %root_path_cost9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %root_path_cost9, align 4
  %bridge_id = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 3
  %bridge_id10 = getelementptr inbounds %struct.net_bridge, ptr %5, i32 0, i32 14
  %17 = ptrtoint ptr %bridge_id10 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %bridge_id10, align 4
  %19 = ptrtoint ptr %bridge_id to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %18, ptr %bridge_id, align 4
  %port_id = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 12
  %20 = ptrtoint ptr %port_id to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %port_id, align 2
  %port_id11 = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 4
  %22 = ptrtoint ptr %port_id11 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %port_id11, align 4
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %bridge_id10, ptr noundef dereferenceable(8) %designated_root, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i.not, label %if.end.if.end18_crit_edge, label %if.else

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.else:                                          ; preds = %if.end
  %root_port = getelementptr inbounds %struct.net_bridge, ptr %5, i32 0, i32 17
  %23 = ptrtoint ptr %root_port to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %root_port, align 2
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 1
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i59 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i59, label %land.lhs.true.i, label %if.else.do.end.i_crit_edge

if.else.do.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.else
  %call1.i = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true3.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %land.lhs.true6.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true3.i
  %.b33.i = load i1, ptr @br_get_port.__warned, align 1
  br i1 %.b33.i, label %land.lhs.true6.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true6.i.do.end.i_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @br_get_port.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 87, ptr noundef nonnull @.str.7) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true6.i.do.end.i_crit_edge, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.else.do.end.i_crit_edge
  %port_list.i = getelementptr inbounds %struct.net_bridge, ptr %5, i32 0, i32 9
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %.pn.in.i = phi ptr [ %port_list.i, %do.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %25 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i = load volatile ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %port_list.i
  br i1 %cmp.not.i, label %for.cond.i.br_get_port.exit_crit_edge, label %for.body.i

for.cond.i.br_get_port.exit_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %br_get_port.exit

for.body.i:                                       ; preds = %for.cond.i
  %port_no13.i = getelementptr i8, ptr %.pn.i, i32 22
  %26 = ptrtoint ptr %port_no13.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %port_no13.i, align 2
  %cmp15.i = icmp eq i16 %27, %24
  br i1 %cmp15.i, label %cleanup.split.loop.exit34.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

cleanup.split.loop.exit34.i:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %p.0.le.i = getelementptr i8, ptr %.pn.i, i32 -12
  br label %br_get_port.exit

br_get_port.exit:                                 ; preds = %cleanup.split.loop.exit34.i, %for.cond.i.br_get_port.exit_crit_edge
  %retval.0.i = phi ptr [ %p.0.le.i, %cleanup.split.loop.exit34.i ], [ null, %for.cond.i.br_get_port.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %designated_age = getelementptr inbounds %struct.net_bridge_port, ptr %retval.0.i, i32 0, i32 18
  %29 = ptrtoint ptr %designated_age to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %designated_age, align 4
  %sub = add i32 %28, 1
  %add = sub i32 %sub, %30
  br label %if.end18

if.end18:                                         ; preds = %br_get_port.exit, %if.end.if.end18_crit_edge
  %add.sink = phi i32 [ %add, %br_get_port.exit ], [ 0, %if.end.if.end18_crit_edge ]
  %message_age17 = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 5
  %31 = ptrtoint ptr %message_age17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.sink, ptr %message_age17, align 4
  %max_age = getelementptr inbounds %struct.net_bridge, ptr %5, i32 0, i32 18
  %32 = ptrtoint ptr %max_age to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_age, align 4
  %max_age19 = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 6
  %34 = ptrtoint ptr %max_age19 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %max_age19, align 4
  %hello_time = getelementptr inbounds %struct.net_bridge, ptr %5, i32 0, i32 19
  %35 = ptrtoint ptr %hello_time to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hello_time, align 4
  %hello_time20 = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 7
  %37 = ptrtoint ptr %hello_time20 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %hello_time20, align 4
  %forward_delay = getelementptr inbounds %struct.net_bridge, ptr %5, i32 0, i32 20
  %38 = ptrtoint ptr %forward_delay to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %forward_delay, align 4
  %forward_delay21 = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 8
  %40 = ptrtoint ptr %forward_delay21 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %forward_delay21, align 4
  %message_age22 = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 5
  %41 = ptrtoint ptr %message_age22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %message_age22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %33)
  %cmp = icmp ult i32 %42, %33
  br i1 %cmp, label %if.then25, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then25:                                        ; preds = %if.end18
  call void @br_send_config_bpdu(ptr noundef %p, ptr noundef nonnull %bpdu) #8
  %43 = ptrtoint ptr %topology_change_ack to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %topology_change_ack, align 4
  %config_pending27 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 11
  %44 = ptrtoint ptr %config_pending27 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %config_pending27, align 1
  %45 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %p, align 8
  %stp_enabled = getelementptr inbounds %struct.net_bridge, ptr %46, i32 0, i32 28
  %47 = ptrtoint ptr %stp_enabled to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stp_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp29 = icmp eq i32 %48, 1
  br i1 %cmp29, label %if.then31, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then31:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %add33 = add i32 %49, 100
  %call34 = call i32 @round_jiffies(i32 noundef %add33) #8
  %call35 = call i32 @mod_timer(ptr noundef %hold_timer, i32 noundef %call34) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.then25.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %bpdu) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_send_config_bpdu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_transmit_tcn(ptr noundef %br) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_port = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 17
  %0 = ptrtoint ptr %root_port to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %root_port, align 2
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %br, i32 0, i32 1
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true3.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %land.lhs.true6.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true3.i
  %.b33.i = load i1, ptr @br_get_port.__warned, align 1
  br i1 %.b33.i, label %land.lhs.true6.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true6.i.do.end.i_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @br_get_port.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 87, ptr noundef nonnull @.str.7) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true6.i.do.end.i_crit_edge, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %port_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %.pn.in.i = phi ptr [ %port_list.i, %do.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load volatile ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %port_list.i
  br i1 %cmp.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %port_no13.i = getelementptr i8, ptr %.pn.i, i32 22
  %3 = ptrtoint ptr %port_no13.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %port_no13.i, align 2
  %cmp15.i = icmp eq i16 %4, %1
  br i1 %cmp15.i, label %br_get_port.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

br_get_port.exit:                                 ; preds = %for.body.i
  %p.0.le.i = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool.not = icmp eq ptr %p.0.le.i, null
  br i1 %tobool.not, label %br_get_port.exit.do.end_crit_edge, label %if.then

br_get_port.exit.do.end_crit_edge:                ; preds = %br_get_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %br_get_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @br_send_tcn_bpdu(ptr noundef nonnull %p.0.le.i) #8
  br label %if.end

do.end:                                           ; preds = %br_get_port.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %7 = ptrtoint ptr %root_port to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %root_port, align 2
  %conv = zext i16 %8 to i32
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %6, i32 noundef %conv) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_send_tcn_bpdu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__br_set_topology_change(ptr nocapture noundef %br, i8 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  %attr.i = alloca %struct.switchdev_attr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stp_enabled = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 28
  %0 = ptrtoint ptr %stp_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stp_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end43_crit_edge

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

land.lhs.true:                                    ; preds = %entry
  %topology_change = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 15
  %2 = ptrtoint ptr %topology_change to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %topology_change, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %val)
  %cmp2.not = icmp eq i8 %3, %val
  br i1 %cmp2.not, label %land.lhs.true.if.end43_crit_edge, label %if.then

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %val)
  %tobool.not = icmp eq i8 %val, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %forward_delay = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 20
  %4 = ptrtoint ptr %forward_delay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %forward_delay, align 4
  %mul = shl i32 %5, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__br_set_topology_change.__UNIQUE_ID_ddebug562, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__br_set_topology_change, %if.then8)) #8
          to label %if.end28 [label %if.then8], !srcloc !80

if.then8:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__br_set_topology_change.__UNIQUE_ID_ddebug562, ptr noundef nonnull @.str.18, ptr noundef %7, i32 noundef %mul) #8
  br label %if.end28

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %bridge_ageing_time = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 25
  %8 = ptrtoint ptr %bridge_ageing_time to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bridge_ageing_time, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__br_set_topology_change.__UNIQUE_ID_ddebug563, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__br_set_topology_change, %if.then21)) #8
          to label %if.end28 [label %if.then21], !srcloc !80

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev22 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %10 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__br_set_topology_change.__UNIQUE_ID_ddebug563, ptr noundef nonnull @.str.19, ptr noundef %11, i32 noundef %9) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then21, %if.else, %if.then8, %if.then4
  %t.0 = phi i32 [ %mul, %if.then8 ], [ %9, %if.then21 ], [ %mul, %if.then4 ], [ %9, %if.else ]
  %dev29 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %12 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev29, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %attr.i) #8
  %14 = getelementptr inbounds %struct.switchdev_attr, ptr %attr.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.switchdev_attr, ptr %attr.i, i32 0, i32 2
  %16 = getelementptr inbounds %struct.switchdev_attr, ptr %attr.i, i32 0, i32 3
  %17 = getelementptr inbounds %struct.switchdev_attr, ptr %attr.i, i32 0, i32 4
  %18 = getelementptr inbounds %struct.switchdev_attr, ptr %attr.i, i32 0, i32 5
  %19 = getelementptr inbounds i8, ptr %attr.i, i32 24
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %19, align 4
  %21 = ptrtoint ptr %attr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %13, ptr %attr.i, align 4
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 5, ptr %14, align 4
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 6, ptr %15, align 4
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %16, align 4
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %17, align 4
  %call.i = tail call i32 @jiffies_to_clock_t(i32 noundef %t.0) #8
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call.i, ptr %18, align 4
  %call1.i = call i32 @switchdev_port_attr_set(ptr noundef %13, ptr noundef nonnull %attr.i, ptr noundef null) #8
  %27 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %call1.i, label %__set_ageing_time.exit [
    i32 0, label %if.end28.__set_ageing_time.exit.thread_crit_edge
    i32 -95, label %if.end28.__set_ageing_time.exit.thread_crit_edge67
  ]

if.end28.__set_ageing_time.exit.thread_crit_edge67: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %__set_ageing_time.exit.thread

if.end28.__set_ageing_time.exit.thread_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %__set_ageing_time.exit.thread

__set_ageing_time.exit.thread:                    ; preds = %if.end28.__set_ageing_time.exit.thread_crit_edge, %if.end28.__set_ageing_time.exit.thread_crit_edge67
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %attr.i) #8
  %ageing_time = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 21
  %28 = ptrtoint ptr %ageing_time to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %t.0, ptr %ageing_time, align 4
  br label %if.end43

__set_ageing_time.exit:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %attr.i) #8
  %29 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev29, align 4
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %30) #11
  br label %if.end43

if.end43:                                         ; preds = %__set_ageing_time.exit, %__set_ageing_time.exit.thread, %land.lhs.true.if.end43_crit_edge, %entry.if.end43_crit_edge
  %topology_change44 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 15
  %31 = ptrtoint ptr %topology_change44 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %val, ptr %topology_change44, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_configuration_update(ptr noundef %br) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  %0 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn53.i = load ptr, ptr %port_list.i, align 4
  %cmp.not55.i = icmp eq ptr %.pn53.i, %port_list.i
  br i1 %cmp.not55.i, label %for.end.thread.i, label %for.body.lr.ph.i

for.end.thread.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %root_port1063.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 17
  %1 = ptrtoint ptr %root_port1063.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %root_port1063.i, align 2
  br label %if.then12.i

for.body.lr.ph.i:                                 ; preds = %entry
  %dev.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %forward_delay.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 20
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn58.i = phi ptr [ %.pn53.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %root_port.056.i = phi i16 [ 0, %for.body.lr.ph.i ], [ %root_port.1.i, %for.inc.i.for.body.i_crit_edge ]
  %p.059.i = getelementptr i8, ptr %.pn58.i, i32 -12
  %2 = ptrtoint ptr %p.059.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p.059.i, align 8
  %state.i.i = getelementptr i8, ptr %.pn58.i, i32 21
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i.i = icmp eq i8 %5, 0
  br i1 %cmp.i.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

lor.lhs.false.i.i:                                ; preds = %for.body.i
  %designated_bridge.i.i.i = getelementptr i8, ptr %.pn58.i, i32 38
  %bridge_id.i.i.i = getelementptr inbounds %struct.net_bridge, ptr %3, i32 0, i32 14
  %bcmp.i.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %designated_bridge.i.i.i, ptr noundef dereferenceable(8) %bridge_id.i.i.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %br_is_designated_port.exit.i.i, label %lor.lhs.false.i.i.if.end.i.i_crit_edge

lor.lhs.false.i.i.if.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

br_is_designated_port.exit.i.i:                   ; preds = %lor.lhs.false.i.i
  %designated_port.i.i.i = getelementptr i8, ptr %.pn58.i, i32 28
  %6 = ptrtoint ptr %designated_port.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %designated_port.i.i.i, align 8
  %port_id.i.i.i = getelementptr i8, ptr %.pn58.i, i32 26
  %8 = ptrtoint ptr %port_id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %port_id.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp.i.not.i.i = icmp eq i16 %7, %9
  br i1 %cmp.i.not.i.i, label %br_is_designated_port.exit.i.i.for.inc.i_crit_edge, label %br_is_designated_port.exit.i.i.if.end.i.i_crit_edge

br_is_designated_port.exit.i.i.if.end.i.i_crit_edge: ; preds = %br_is_designated_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

br_is_designated_port.exit.i.i.for.inc.i_crit_edge: ; preds = %br_is_designated_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i.i:                                       ; preds = %br_is_designated_port.exit.i.i.if.end.i.i_crit_edge, %lor.lhs.false.i.i.if.end.i.i_crit_edge
  %designated_root.i.i = getelementptr i8, ptr %.pn58.i, i32 30
  %call3.i.i = tail call i32 @memcmp(ptr noundef dereferenceable(8) %bridge_id.i.i.i, ptr noundef dereferenceable(8) %designated_root.i.i, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 1
  br i1 %cmp4.i.i, label %if.end.i.i.for.inc.i_crit_edge, label %if.end7.i.i

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %root_port.056.i)
  %tobool8.not.i.i = icmp eq i16 %root_port.056.i, 0
  br i1 %tobool8.not.i.i, label %if.end7.i.i.if.end.i_crit_edge, label %if.end10.i.i

if.end7.i.i.if.end.i_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end10.i.i:                                     ; preds = %if.end7.i.i
  %dep_map.i.i.i = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i102.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i102.i.i, label %land.lhs.true.i.i.i, label %if.end10.i.i.do.end.i.i.i_crit_edge

if.end10.i.i.do.end.i.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end10.i.i
  %call1.i.i.i = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true3.i.i.i, label %land.lhs.true.i.i.i.do.end.i.i.i_crit_edge

land.lhs.true.i.i.i.do.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %call4.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %land.lhs.true3.i.i.i.do.end.i.i.i_crit_edge, label %land.lhs.true6.i.i.i

land.lhs.true3.i.i.i.do.end.i.i.i_crit_edge:      ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i.i

land.lhs.true6.i.i.i:                             ; preds = %land.lhs.true3.i.i.i
  %.b33.i.i.i = load i1, ptr @br_get_port.__warned, align 1
  br i1 %.b33.i.i.i, label %land.lhs.true6.i.i.i.do.end.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true6.i.i.i.do.end.i.i.i_crit_edge:      ; preds = %land.lhs.true6.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true6.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @br_get_port.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 87, ptr noundef nonnull @.str.7) #8
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i, %land.lhs.true6.i.i.i.do.end.i.i.i_crit_edge, %land.lhs.true3.i.i.i.do.end.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end.i.i.i_crit_edge, %if.end10.i.i.do.end.i.i.i_crit_edge
  %port_list.i.i.i = getelementptr inbounds %struct.net_bridge, ptr %3, i32 0, i32 9
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %do.end.i.i.i
  %.pn.in.i.i.i = phi ptr [ %port_list.i.i.i, %do.end.i.i.i ], [ %.pn.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %10 = ptrtoint ptr %.pn.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i.i.i = load volatile ptr, ptr %.pn.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %port_list.i.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.br_get_port.exit.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.br_get_port.exit.i.i_crit_edge:    ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %br_get_port.exit.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %port_no13.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 22
  %11 = ptrtoint ptr %port_no13.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %port_no13.i.i.i, align 2
  %cmp15.i.i.i = icmp eq i16 %12, %root_port.056.i
  br i1 %cmp15.i.i.i, label %cleanup.split.loop.exit34.i.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.i

cleanup.split.loop.exit34.i.i.i:                  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %p.0.le.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 -12
  br label %br_get_port.exit.i.i

br_get_port.exit.i.i:                             ; preds = %cleanup.split.loop.exit34.i.i.i, %for.cond.i.i.i.br_get_port.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %p.0.le.i.i.i, %cleanup.split.loop.exit34.i.i.i ], [ null, %for.cond.i.i.i.br_get_port.exit.i.i_crit_edge ]
  %designated_root13.i.i = getelementptr inbounds %struct.net_bridge_port, ptr %retval.0.i.i.i, i32 0, i32 14
  %call14.i.i = tail call i32 @memcmp(ptr noundef dereferenceable(8) %designated_root.i.i, ptr noundef dereferenceable(8) %designated_root13.i.i, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %cmp15.i.i = icmp slt i32 %call14.i.i, 0
  br i1 %cmp15.i.i, label %br_get_port.exit.i.i.if.end.i_crit_edge, label %if.else.i.i

br_get_port.exit.i.i.if.end.i_crit_edge:          ; preds = %br_get_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else.i.i:                                      ; preds = %br_get_port.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %cmp18.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %cmp18.not.i.i, label %if.end22.i.i, label %if.else.i.i.for.inc.i_crit_edge

if.else.i.i.for.inc.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end22.i.i:                                     ; preds = %if.else.i.i
  %designated_cost.i.i = getelementptr i8, ptr %.pn58.i, i32 52
  %13 = ptrtoint ptr %designated_cost.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %designated_cost.i.i, align 8
  %path_cost.i.i = getelementptr i8, ptr %.pn58.i, i32 48
  %15 = ptrtoint ptr %path_cost.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %path_cost.i.i, align 4
  %add.i.i = add i32 %16, %14
  %designated_cost23.i.i = getelementptr inbounds %struct.net_bridge_port, ptr %retval.0.i.i.i, i32 0, i32 17
  %17 = ptrtoint ptr %designated_cost23.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %designated_cost23.i.i, align 8
  %path_cost24.i.i = getelementptr inbounds %struct.net_bridge_port, ptr %retval.0.i.i.i, i32 0, i32 16
  %19 = ptrtoint ptr %path_cost24.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %path_cost24.i.i, align 4
  %add25.i.i = add i32 %20, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %add25.i.i)
  %cmp26.i.i = icmp ult i32 %add.i.i, %add25.i.i
  br i1 %cmp26.i.i, label %if.end22.i.i.if.end.i_crit_edge, label %if.else29.i.i

if.end22.i.i.if.end.i_crit_edge:                  ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else29.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %add25.i.i)
  %cmp36.i.i = icmp ugt i32 %add.i.i, %add25.i.i
  br i1 %cmp36.i.i, label %if.else29.i.i.for.inc.i_crit_edge, label %if.end40.i.i

if.else29.i.i.for.inc.i_crit_edge:                ; preds = %if.else29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end40.i.i:                                     ; preds = %if.else29.i.i
  %designated_bridge41.i.i = getelementptr inbounds %struct.net_bridge_port, ptr %retval.0.i.i.i, i32 0, i32 15
  %call42.i.i = tail call i32 @memcmp(ptr noundef dereferenceable(8) %designated_bridge.i.i.i, ptr noundef dereferenceable(8) %designated_bridge41.i.i, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i)
  %cmp43.i.i = icmp slt i32 %call42.i.i, 0
  br i1 %cmp43.i.i, label %if.end40.i.i.if.end.i_crit_edge, label %if.else46.i.i

if.end40.i.i.if.end.i_crit_edge:                  ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else46.i.i:                                    ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i)
  %cmp47.not.i.i = icmp eq i32 %call42.i.i, 0
  br i1 %cmp47.not.i.i, label %if.end51.i.i, label %if.else46.i.i.for.inc.i_crit_edge

if.else46.i.i.for.inc.i_crit_edge:                ; preds = %if.else46.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end51.i.i:                                     ; preds = %if.else46.i.i
  %designated_port.i.i = getelementptr i8, ptr %.pn58.i, i32 28
  %21 = ptrtoint ptr %designated_port.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %designated_port.i.i, align 8
  %designated_port53.i.i = getelementptr inbounds %struct.net_bridge_port, ptr %retval.0.i.i.i, i32 0, i32 13
  %23 = ptrtoint ptr %designated_port53.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %designated_port53.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %24)
  %cmp55.i.i = icmp ult i16 %22, %24
  br i1 %cmp55.i.i, label %if.end51.i.i.if.end.i_crit_edge, label %if.else58.i.i

if.end51.i.i.if.end.i_crit_edge:                  ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else58.i.i:                                    ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %24)
  %cmp63.i.i = icmp ugt i16 %22, %24
  br i1 %cmp63.i.i, label %if.else58.i.i.for.inc.i_crit_edge, label %br_should_become_root_port.exit.i

if.else58.i.i.for.inc.i_crit_edge:                ; preds = %if.else58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

br_should_become_root_port.exit.i:                ; preds = %if.else58.i.i
  %port_id.i.i = getelementptr i8, ptr %.pn58.i, i32 26
  %25 = ptrtoint ptr %port_id.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %port_id.i.i, align 2
  %port_id69.i.i = getelementptr inbounds %struct.net_bridge_port, ptr %retval.0.i.i.i, i32 0, i32 12
  %27 = ptrtoint ptr %port_id69.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %port_id69.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %28)
  %cmp71.i.not.i = icmp ult i16 %26, %28
  br i1 %cmp71.i.not.i, label %br_should_become_root_port.exit.i.if.end.i_crit_edge, label %br_should_become_root_port.exit.i.for.inc.i_crit_edge

br_should_become_root_port.exit.i.for.inc.i_crit_edge: ; preds = %br_should_become_root_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

br_should_become_root_port.exit.i.if.end.i_crit_edge: ; preds = %br_should_become_root_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %br_should_become_root_port.exit.i.if.end.i_crit_edge, %if.end51.i.i.if.end.i_crit_edge, %if.end40.i.i.if.end.i_crit_edge, %if.end22.i.i.if.end.i_crit_edge, %br_get_port.exit.i.i.if.end.i_crit_edge, %if.end7.i.i.if.end.i_crit_edge
  %flags.i = getelementptr i8, ptr %.pn58.i, i32 8
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %31 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i.i, align 4
  %port_no.i.i = getelementptr i8, ptr %.pn58.i, i32 22
  %33 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %port_no.i.i, align 2
  %conv.i.i = zext i16 %34 to i32
  %dev1.i.i = getelementptr i8, ptr %.pn58.i, i32 -8
  %35 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev1.i.i, align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %32, i32 noundef %conv.i.i, ptr noundef %36) #11
  tail call void @br_set_state(ptr noundef %p.059.i, i32 noundef 1) #8
  tail call void @br_ifinfo_notify(i32 noundef 16, ptr noundef null, ptr noundef %p.059.i) #8
  %37 = ptrtoint ptr %forward_delay.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %forward_delay.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.not.i.i = icmp eq i32 %38, 0
  br i1 %cmp.not.i.i, label %if.then3.i.for.inc.i_crit_edge, label %if.then.i.i

if.then3.i.for.inc.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %forward_delay_timer.i.i = getelementptr i8, ptr %.pn58.i, i32 60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %add.i39.i = add i32 %39, %38
  %call6.i.i = tail call i32 @mod_timer(ptr noundef %forward_delay_timer.i.i, i32 noundef %add.i39.i) #8
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %port_no.i = getelementptr i8, ptr %.pn58.i, i32 22
  %40 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %port_no.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i.i, %if.then3.i.for.inc.i_crit_edge, %br_should_become_root_port.exit.i.for.inc.i_crit_edge, %if.else58.i.i.for.inc.i_crit_edge, %if.else46.i.i.for.inc.i_crit_edge, %if.else29.i.i.for.inc.i_crit_edge, %if.else.i.i.for.inc.i_crit_edge, %if.end.i.i.for.inc.i_crit_edge, %br_is_designated_port.exit.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %root_port.1.i = phi i16 [ %41, %if.else.i ], [ %root_port.056.i, %br_should_become_root_port.exit.i.for.inc.i_crit_edge ], [ %root_port.056.i, %if.then3.i.for.inc.i_crit_edge ], [ %root_port.056.i, %if.then.i.i ], [ %root_port.056.i, %br_is_designated_port.exit.i.i.for.inc.i_crit_edge ], [ %root_port.056.i, %for.body.i.for.inc.i_crit_edge ], [ %root_port.056.i, %if.end.i.i.for.inc.i_crit_edge ], [ %root_port.056.i, %if.else.i.i.for.inc.i_crit_edge ], [ %root_port.056.i, %if.else29.i.i.for.inc.i_crit_edge ], [ %root_port.056.i, %if.else46.i.i.for.inc.i_crit_edge ], [ %root_port.056.i, %if.else58.i.i.for.inc.i_crit_edge ]
  %42 = ptrtoint ptr %.pn58.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn.i = load ptr, ptr %.pn58.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %port_list.i
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %root_port10.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 17
  %43 = ptrtoint ptr %root_port10.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %root_port.1.i, ptr %root_port10.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %root_port.1.i)
  %tobool11.not.i = icmp eq i16 %root_port.1.i, 0
  br i1 %tobool11.not.i, label %for.end.i.if.then12.i_crit_edge, label %if.else13.i

for.end.i.if.then12.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i

if.then12.i:                                      ; preds = %for.end.i.if.then12.i_crit_edge, %for.end.thread.i
  %designated_root.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 13
  %bridge_id.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 14
  %44 = ptrtoint ptr %bridge_id.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %bridge_id.i, align 4
  %46 = ptrtoint ptr %designated_root.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 %45, ptr %designated_root.i, align 4
  br label %br_root_selection.exit

if.else13.i:                                      ; preds = %for.end.i
  %dep_map.i.i = getelementptr inbounds %struct.anon, ptr %br, i32 0, i32 1
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.else13.i.for.cond.i.i.preheader_crit_edge

if.else13.i.for.cond.i.i.preheader_crit_edge:     ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.preheader

land.lhs.true.i.i:                                ; preds = %if.else13.i
  %call1.i.i = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true3.i.i, label %land.lhs.true.i.i.for.cond.i.i.preheader_crit_edge

land.lhs.true.i.i.for.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.preheader

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %call4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true3.i.i.for.cond.i.i.preheader_crit_edge, label %land.lhs.true6.i.i

land.lhs.true3.i.i.for.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.preheader

land.lhs.true6.i.i:                               ; preds = %land.lhs.true3.i.i
  %.b33.i.i = load i1, ptr @br_get_port.__warned, align 1
  br i1 %.b33.i.i, label %land.lhs.true6.i.i.for.cond.i.i.preheader_crit_edge, label %if.then.i41.i

land.lhs.true6.i.i.for.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.preheader

if.then.i41.i:                                    ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @br_get_port.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 87, ptr noundef nonnull @.str.7) #8
  br label %for.cond.i.i.preheader

for.cond.i.i.preheader:                           ; preds = %if.then.i41.i, %land.lhs.true6.i.i.for.cond.i.i.preheader_crit_edge, %land.lhs.true3.i.i.for.cond.i.i.preheader_crit_edge, %land.lhs.true.i.i.for.cond.i.i.preheader_crit_edge, %if.else13.i.for.cond.i.i.preheader_crit_edge
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.cond.i.i.preheader
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %port_list.i, %for.cond.i.i.preheader ]
  %47 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn.i.i = load volatile ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i42.i = icmp eq ptr %.pn.i.i, %port_list.i
  br i1 %cmp.not.i42.i, label %for.cond.i.i.br_get_port.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.br_get_port.exit.i_crit_edge:        ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %br_get_port.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %port_no13.i.i = getelementptr i8, ptr %.pn.i.i, i32 22
  %48 = ptrtoint ptr %port_no13.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %port_no13.i.i, align 2
  %cmp15.i43.i = icmp eq i16 %49, %root_port.1.i
  br i1 %cmp15.i43.i, label %cleanup.split.loop.exit34.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

cleanup.split.loop.exit34.i.i:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %p.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -12
  br label %br_get_port.exit.i

br_get_port.exit.i:                               ; preds = %cleanup.split.loop.exit34.i.i, %for.cond.i.i.br_get_port.exit.i_crit_edge
  %retval.0.i44.i = phi ptr [ %p.0.le.i.i, %cleanup.split.loop.exit34.i.i ], [ null, %for.cond.i.i.br_get_port.exit.i_crit_edge ]
  %designated_root15.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 13
  %designated_root16.i = getelementptr inbounds %struct.net_bridge_port, ptr %retval.0.i44.i, i32 0, i32 14
  %50 = ptrtoint ptr %designated_root16.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %designated_root16.i, align 2
  %52 = ptrtoint ptr %designated_root15.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 8)
  store i64 %51, ptr %designated_root15.i, align 4
  %designated_cost.i = getelementptr inbounds %struct.net_bridge_port, ptr %retval.0.i44.i, i32 0, i32 17
  %53 = ptrtoint ptr %designated_cost.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %designated_cost.i, align 8
  %path_cost.i = getelementptr inbounds %struct.net_bridge_port, ptr %retval.0.i44.i, i32 0, i32 16
  %55 = ptrtoint ptr %path_cost.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %path_cost.i, align 4
  %add.i = add i32 %56, %54
  br label %br_root_selection.exit

br_root_selection.exit:                           ; preds = %br_get_port.exit.i, %if.then12.i
  %add.sink.i = phi i32 [ %add.i, %br_get_port.exit.i ], [ 0, %if.then12.i ]
  %root_path_cost17.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 26
  %57 = ptrtoint ptr %root_path_cost17.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add.sink.i, ptr %root_path_cost17.i, align 4
  %58 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn26.i = load ptr, ptr %port_list.i, align 4
  %cmp.not28.i = icmp eq ptr %.pn26.i, %port_list.i
  br i1 %cmp.not28.i, label %br_root_selection.exit.br_designated_port_selection.exit_crit_edge, label %br_root_selection.exit.for.body.i3_crit_edge

br_root_selection.exit.for.body.i3_crit_edge:     ; preds = %br_root_selection.exit
  br label %for.body.i3

br_root_selection.exit.br_designated_port_selection.exit_crit_edge: ; preds = %br_root_selection.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %br_designated_port_selection.exit

for.body.i3:                                      ; preds = %for.inc.i24.for.body.i3_crit_edge, %br_root_selection.exit.for.body.i3_crit_edge
  %.pn29.i = phi ptr [ %.pn.i22, %for.inc.i24.for.body.i3_crit_edge ], [ %.pn26.i, %br_root_selection.exit.for.body.i3_crit_edge ]
  %state.i = getelementptr i8, ptr %.pn29.i, i32 21
  %59 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp2.not.i = icmp eq i8 %60, 0
  br i1 %cmp2.not.i, label %for.body.i3.for.inc.i24_crit_edge, label %land.lhs.true.i

for.body.i3.for.inc.i24_crit_edge:                ; preds = %for.body.i3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i24

land.lhs.true.i:                                  ; preds = %for.body.i3
  %p.030.i = getelementptr i8, ptr %.pn29.i, i32 -12
  %61 = ptrtoint ptr %p.030.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %p.030.i, align 8
  %designated_bridge.i.i.i4 = getelementptr i8, ptr %.pn29.i, i32 38
  %bridge_id.i.i.i5 = getelementptr inbounds %struct.net_bridge, ptr %62, i32 0, i32 14
  %bcmp.i.i.i6 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %designated_bridge.i.i.i4, ptr noundef dereferenceable(8) %bridge_id.i.i.i5, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i6)
  %tobool.not.i.i.i7 = icmp eq i32 %bcmp.i.i.i6, 0
  br i1 %tobool.not.i.i.i7, label %br_is_designated_port.exit.i.i11, label %land.lhs.true.i.if.end.i.i13_crit_edge

land.lhs.true.i.if.end.i.i13_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i13

br_is_designated_port.exit.i.i11:                 ; preds = %land.lhs.true.i
  %designated_port.i.i.i8 = getelementptr i8, ptr %.pn29.i, i32 28
  %63 = ptrtoint ptr %designated_port.i.i.i8 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %designated_port.i.i.i8, align 8
  %port_id.i.i.i9 = getelementptr i8, ptr %.pn29.i, i32 26
  %65 = ptrtoint ptr %port_id.i.i.i9 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %port_id.i.i.i9, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %64, i16 %66)
  %cmp.i.not.i.i10 = icmp eq i16 %64, %66
  br i1 %cmp.i.not.i.i10, label %br_is_designated_port.exit.i.i11.if.then.i_crit_edge, label %br_is_designated_port.exit.i.i11.if.end.i.i13_crit_edge

br_is_designated_port.exit.i.i11.if.end.i.i13_crit_edge: ; preds = %br_is_designated_port.exit.i.i11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i13

br_is_designated_port.exit.i.i11.if.then.i_crit_edge: ; preds = %br_is_designated_port.exit.i.i11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end.i.i13:                                     ; preds = %br_is_designated_port.exit.i.i11.if.end.i.i13_crit_edge, %land.lhs.true.i.if.end.i.i13_crit_edge
  %designated_root.i.i12 = getelementptr i8, ptr %.pn29.i, i32 30
  %designated_root2.i.i = getelementptr inbounds %struct.net_bridge, ptr %62, i32 0, i32 13
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %designated_root.i.i12, ptr noundef dereferenceable(8) %designated_root2.i.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool4.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.end.i.i13.if.then.i_crit_edge

if.end.i.i13.if.then.i_crit_edge:                 ; preds = %if.end.i.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end6.i.i:                                      ; preds = %if.end.i.i13
  %root_path_cost.i.i = getelementptr inbounds %struct.net_bridge, ptr %62, i32 0, i32 26
  %67 = ptrtoint ptr %root_path_cost.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %root_path_cost.i.i, align 4
  %designated_cost.i.i14 = getelementptr i8, ptr %.pn29.i, i32 52
  %69 = ptrtoint ptr %designated_cost.i.i14 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %designated_cost.i.i14, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp.i.i15 = icmp ult i32 %68, %70
  br i1 %cmp.i.i15, label %if.end6.i.i.if.then.i_crit_edge, label %if.else.i.i16

if.end6.i.i.if.then.i_crit_edge:                  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.else.i.i16:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp10.i.i = icmp ugt i32 %68, %70
  br i1 %cmp10.i.i, label %if.else.i.i16.for.inc.i24_crit_edge, label %if.end13.i.i

if.else.i.i16.for.inc.i24_crit_edge:              ; preds = %if.else.i.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i24

if.end13.i.i:                                     ; preds = %if.else.i.i16
  %call14.i.i17 = tail call i32 @memcmp(ptr noundef dereferenceable(8) %bridge_id.i.i.i5, ptr noundef dereferenceable(8) %designated_bridge.i.i.i4, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i17)
  %cmp15.i.i18 = icmp slt i32 %call14.i.i17, 0
  br i1 %cmp15.i.i18, label %if.end13.i.i.if.then.i_crit_edge, label %if.else17.i.i

if.end13.i.i.if.then.i_crit_edge:                 ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.else17.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i17)
  %cmp18.not.i.i19 = icmp eq i32 %call14.i.i17, 0
  br i1 %cmp18.not.i.i19, label %br_should_become_designated_port.exit.i, label %if.else17.i.i.for.inc.i24_crit_edge

if.else17.i.i.for.inc.i24_crit_edge:              ; preds = %if.else17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i24

br_should_become_designated_port.exit.i:          ; preds = %if.else17.i.i
  %port_id.i.i20 = getelementptr i8, ptr %.pn29.i, i32 26
  %71 = ptrtoint ptr %port_id.i.i20 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %port_id.i.i20, align 2
  %designated_port.i.i21 = getelementptr i8, ptr %.pn29.i, i32 28
  %73 = ptrtoint ptr %designated_port.i.i21 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %designated_port.i.i21, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %72, i16 %74)
  %cmp23.i.not.i = icmp ult i16 %72, %74
  br i1 %cmp23.i.not.i, label %br_should_become_designated_port.exit.i.if.then.i_crit_edge, label %br_should_become_designated_port.exit.i.for.inc.i24_crit_edge

br_should_become_designated_port.exit.i.for.inc.i24_crit_edge: ; preds = %br_should_become_designated_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i24

br_should_become_designated_port.exit.i.if.then.i_crit_edge: ; preds = %br_should_become_designated_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %br_should_become_designated_port.exit.i.if.then.i_crit_edge, %if.end13.i.i.if.then.i_crit_edge, %if.end6.i.i.if.then.i_crit_edge, %if.end.i.i13.if.then.i_crit_edge, %br_is_designated_port.exit.i.i11.if.then.i_crit_edge
  %designated_root.i14.i = getelementptr i8, ptr %.pn29.i, i32 30
  %designated_root2.i15.i = getelementptr inbounds %struct.net_bridge, ptr %62, i32 0, i32 13
  %75 = ptrtoint ptr %designated_root2.i15.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 8)
  %76 = load i64, ptr %designated_root2.i15.i, align 4
  %77 = ptrtoint ptr %designated_root.i14.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 8)
  store i64 %76, ptr %designated_root.i14.i, align 2
  %root_path_cost.i16.i = getelementptr inbounds %struct.net_bridge, ptr %62, i32 0, i32 26
  %78 = ptrtoint ptr %root_path_cost.i16.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %root_path_cost.i16.i, align 4
  %designated_cost.i17.i = getelementptr i8, ptr %.pn29.i, i32 52
  %80 = ptrtoint ptr %designated_cost.i17.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %designated_cost.i17.i, align 8
  %81 = ptrtoint ptr %bridge_id.i.i.i5 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 8)
  %82 = load i64, ptr %bridge_id.i.i.i5, align 4
  %83 = ptrtoint ptr %designated_bridge.i.i.i4 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 8)
  store i64 %82, ptr %designated_bridge.i.i.i4, align 2
  %port_id.i18.i = getelementptr i8, ptr %.pn29.i, i32 26
  %84 = ptrtoint ptr %port_id.i18.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %port_id.i18.i, align 2
  %designated_port.i19.i = getelementptr i8, ptr %.pn29.i, i32 28
  %86 = ptrtoint ptr %designated_port.i19.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %designated_port.i19.i, align 8
  br label %for.inc.i24

for.inc.i24:                                      ; preds = %if.then.i, %br_should_become_designated_port.exit.i.for.inc.i24_crit_edge, %if.else17.i.i.for.inc.i24_crit_edge, %if.else.i.i16.for.inc.i24_crit_edge, %for.body.i3.for.inc.i24_crit_edge
  %87 = ptrtoint ptr %.pn29.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pn.i22 = load ptr, ptr %.pn29.i, align 4
  %cmp.not.i23 = icmp eq ptr %.pn.i22, %port_list.i
  br i1 %cmp.not.i23, label %for.inc.i24.br_designated_port_selection.exit_crit_edge, label %for.inc.i24.for.body.i3_crit_edge

for.inc.i24.for.body.i3_crit_edge:                ; preds = %for.inc.i24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i3

for.inc.i24.br_designated_port_selection.exit_crit_edge: ; preds = %for.inc.i24
  call void @__sanitizer_cov_trace_pc() #10
  br label %br_designated_port_selection.exit

br_designated_port_selection.exit:                ; preds = %for.inc.i24.br_designated_port_selection.exit_crit_edge, %br_root_selection.exit.br_designated_port_selection.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @br_become_designated_port(ptr nocapture noundef %p) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %designated_root = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 14
  %designated_root2 = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %designated_root2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %designated_root2, align 4
  %4 = ptrtoint ptr %designated_root to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %3, ptr %designated_root, align 2
  %root_path_cost = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 26
  %5 = ptrtoint ptr %root_path_cost to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %root_path_cost, align 4
  %designated_cost = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 17
  %7 = ptrtoint ptr %designated_cost to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %designated_cost, align 8
  %designated_bridge = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 15
  %bridge_id = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %bridge_id to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %bridge_id, align 4
  %10 = ptrtoint ptr %designated_bridge to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %designated_bridge, align 2
  %port_id = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 12
  %11 = ptrtoint ptr %port_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %port_id, align 2
  %designated_port = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 13
  %13 = ptrtoint ptr %designated_port to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %designated_port, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_port_state_selection(ptr noundef readonly %br) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  %0 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn65 = load ptr, ptr %port_list, align 4
  %cmp.not67 = icmp eq ptr %.pn65, %port_list
  br i1 %cmp.not67, label %entry.if.then39_crit_edge, label %for.body.lr.ph

entry.if.then39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39

for.body.lr.ph:                                   ; preds = %entry
  %stp_enabled = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 28
  %root_port = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn69 = phi ptr [ %.pn65, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %liveports.068 = phi i32 [ 0, %for.body.lr.ph ], [ %liveports.1, %for.inc.for.body_crit_edge ]
  %p.070 = getelementptr i8, ptr %.pn69, i32 -12
  %state = getelementptr i8, ptr %.pn69, i32 21
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp2 = icmp eq i8 %2, 0
  br i1 %cmp2, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %3 = ptrtoint ptr %stp_enabled to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %stp_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp4.not = icmp eq i32 %4, 2
  br i1 %cmp4.not, label %if.end.if.end19_crit_edge, label %if.then6

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then6:                                         ; preds = %if.end
  %port_no = getelementptr i8, ptr %.pn69, i32 22
  %5 = ptrtoint ptr %port_no to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %port_no, align 2
  %7 = ptrtoint ptr %root_port to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %root_port, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp9 = icmp eq i16 %6, %8
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %config_pending = getelementptr i8, ptr %.pn69, i32 25
  %9 = ptrtoint ptr %config_pending to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %config_pending, align 1
  %topology_change_ack = getelementptr i8, ptr %.pn69, i32 24
  %10 = ptrtoint ptr %topology_change_ack to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %topology_change_ack, align 4
  tail call fastcc void @br_make_forwarding(ptr noundef %p.070)
  br label %if.end19thread-pre-split

if.else:                                          ; preds = %if.then6
  %designated_bridge.i = getelementptr i8, ptr %.pn69, i32 38
  %11 = ptrtoint ptr %p.070 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p.070, align 8
  %bridge_id.i = getelementptr inbounds %struct.net_bridge, ptr %12, i32 0, i32 14
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %designated_bridge.i, ptr noundef dereferenceable(8) %bridge_id.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %br_is_designated_port.exit, label %if.else.if.else14_crit_edge

if.else.if.else14_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else14

br_is_designated_port.exit:                       ; preds = %if.else
  %designated_port.i = getelementptr i8, ptr %.pn69, i32 28
  %13 = ptrtoint ptr %designated_port.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %designated_port.i, align 8
  %port_id.i = getelementptr i8, ptr %.pn69, i32 26
  %15 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %port_id.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %16)
  %cmp.i.not = icmp eq i16 %14, %16
  br i1 %cmp.i.not, label %if.then12, label %br_is_designated_port.exit.if.else14_crit_edge

br_is_designated_port.exit.if.else14_crit_edge:   ; preds = %br_is_designated_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else14

if.then12:                                        ; preds = %br_is_designated_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  %message_age_timer = getelementptr i8, ptr %.pn69, i32 156
  %call13 = tail call i32 @del_timer(ptr noundef %message_age_timer) #8
  tail call fastcc void @br_make_forwarding(ptr noundef %p.070)
  br label %if.end19thread-pre-split

if.else14:                                        ; preds = %br_is_designated_port.exit.if.else14_crit_edge, %if.else.if.else14_crit_edge
  %config_pending15 = getelementptr i8, ptr %.pn69, i32 25
  %17 = ptrtoint ptr %config_pending15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %config_pending15, align 1
  %topology_change_ack16 = getelementptr i8, ptr %.pn69, i32 24
  %18 = ptrtoint ptr %topology_change_ack16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %topology_change_ack16, align 4
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %state, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %20, label %if.else14.if.end.i_crit_edge [
    i8 0, label %if.else14.if.end19_crit_edge
    i8 4, label %if.else14.if.end19_crit_edge74
    i8 3, label %if.else14.if.then14.i_crit_edge
    i8 2, label %if.else14.if.then14.i_crit_edge75
  ]

if.else14.if.then14.i_crit_edge75:                ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i

if.else14.if.then14.i_crit_edge:                  ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i

if.else14.if.end19_crit_edge74:                   ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.else14.if.end19_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.else14.if.end.i_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then14.i:                                      ; preds = %if.else14.if.then14.i_crit_edge, %if.else14.if.then14.i_crit_edge75
  tail call void @br_topology_change_detection(ptr noundef %12) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then14.i, %if.else14.if.end.i_crit_edge
  tail call void @br_set_state(ptr noundef %p.070, i32 noundef 4) #8
  tail call void @br_ifinfo_notify(i32 noundef 16, ptr noundef null, ptr noundef %p.070) #8
  %forward_delay_timer.i = getelementptr i8, ptr %.pn69, i32 60
  %call.i = tail call i32 @del_timer(ptr noundef %forward_delay_timer.i) #8
  br label %if.end19thread-pre-split

if.end19thread-pre-split:                         ; preds = %if.end.i, %if.then12, %if.then11
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %22)
  %.pr = load i8, ptr %state, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.end19thread-pre-split, %if.else14.if.end19_crit_edge, %if.else14.if.end19_crit_edge74, %if.end.if.end19_crit_edge
  %23 = phi i8 [ %.pr, %if.end19thread-pre-split ], [ %20, %if.else14.if.end19_crit_edge ], [ %20, %if.else14.if.end19_crit_edge74 ], [ %2, %if.end.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %23)
  %cmp22.not = icmp eq i8 %23, 4
  br i1 %cmp22.not, label %if.end19.if.end25_crit_edge, label %if.then24

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @br_multicast_enable_port(ptr noundef %p.070) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end19.if.end25_crit_edge
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %25)
  %cmp28 = icmp eq i8 %25, 3
  %inc = zext i1 %cmp28 to i32
  %spec.select = add i32 %liveports.068, %inc
  br label %for.inc

for.inc:                                          ; preds = %if.end25, %for.body.for.inc_crit_edge
  %liveports.1 = phi i32 [ %liveports.068, %for.body.for.inc_crit_edge ], [ %spec.select, %if.end25 ]
  %26 = ptrtoint ptr %.pn69 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn = load ptr, ptr %.pn69, align 4
  %cmp.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %liveports.1)
  %cmp37 = icmp eq i32 %liveports.1, 0
  br i1 %cmp37, label %for.end.if.then39_crit_edge, label %if.else40

for.end.if.then39_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39

if.then39:                                        ; preds = %for.end.if.then39_crit_edge, %entry.if.then39_crit_edge
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  tail call void @netif_carrier_off(ptr noundef %28) #8
  br label %if.end42

if.else40:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev41 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %29 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev41, align 4
  tail call void @netif_carrier_on(ptr noundef %30) #8
  br label %if.end42

if.end42:                                         ; preds = %if.else40, %if.then39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @br_make_forwarding(ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %state = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 8
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp.not = icmp eq i8 %3, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %stp_enabled = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %stp_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stp_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %if.end.if.then7_crit_edge, label %lor.lhs.false

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %forward_delay = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %forward_delay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %forward_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp5, label %lor.lhs.false.if.then7_crit_edge, label %if.else

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.end.if.then7_crit_edge
  tail call void @br_set_state(ptr noundef %p, i32 noundef 3)
  tail call void @br_topology_change_detection(ptr noundef %1)
  %forward_delay_timer = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 19
  %call = tail call i32 @del_timer(ptr noundef %forward_delay_timer) #8
  br label %if.end14

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp9 = icmp eq i32 %5, 1
  br i1 %cmp9, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @br_set_state(ptr noundef %p, i32 noundef 1)
  br label %if.end14

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @br_set_state(ptr noundef %p, i32 noundef 2)
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %if.then11, %if.then7
  tail call void @br_ifinfo_notify(i32 noundef 16, ptr noundef null, ptr noundef %p) #8
  %forward_delay15 = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %forward_delay15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %forward_delay15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp16.not = icmp eq i32 %9, 0
  br i1 %cmp16.not, label %if.end14.cleanup_crit_edge, label %if.then18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %forward_delay_timer19 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %10, %9
  %call21 = tail call i32 @mod_timer(ptr noundef %forward_delay_timer19, i32 noundef %add) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_enable_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_received_config_bpdu(ptr noundef %p, ptr nocapture noundef readonly %bpdu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_bpdu = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 36, i32 2
  %0 = ptrtoint ptr %rx_bpdu to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rx_bpdu, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %rx_bpdu, align 8
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 8
  %bridge_id.i = getelementptr inbounds %struct.net_bridge, ptr %3, i32 0, i32 14
  %designated_root.i = getelementptr inbounds %struct.net_bridge, ptr %3, i32 0, i32 13
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %bridge_id.i, ptr noundef dereferenceable(8) %designated_root.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp ne i32 %bcmp.i, 0
  %root.i = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 1
  %designated_root.i47 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 14
  %call.i = tail call i32 @memcmp(ptr noundef dereferenceable(8) %root.i, ptr noundef dereferenceable(8) %designated_root.i47, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %if.else.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.not.i, label %if.end3.i, label %if.else.i.if.else_crit_edge

if.else.i.if.else_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end3.i:                                        ; preds = %if.else.i
  %root_path_cost.i = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 2
  %4 = ptrtoint ptr %root_path_cost.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %root_path_cost.i, align 4
  %designated_cost.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 17
  %6 = ptrtoint ptr %designated_cost.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %designated_cost.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp4.i = icmp ult i32 %5, %7
  br i1 %cmp4.i, label %if.end3.i.if.then_crit_edge, label %if.else6.i

if.end3.i.if.then_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.else6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp9.i = icmp ugt i32 %5, %7
  br i1 %cmp9.i, label %if.else6.i.if.else_crit_edge, label %if.end12.i

if.else6.i.if.else_crit_edge:                     ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end12.i:                                       ; preds = %if.else6.i
  %bridge_id.i48 = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 3
  %designated_bridge.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 15
  %call13.i = tail call i32 @memcmp(ptr noundef dereferenceable(8) %bridge_id.i48, ptr noundef dereferenceable(8) %designated_bridge.i, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.end12.i.if.then_crit_edge, label %if.else16.i

if.end12.i.if.then_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.else16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp17.not.i = icmp eq i32 %call13.i, 0
  br i1 %cmp17.not.i, label %if.end20.i, label %if.else16.i.if.else_crit_edge

if.else16.i.if.else_crit_edge:                    ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end20.i:                                       ; preds = %if.else16.i
  %bcmp.i49 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %bridge_id.i48, ptr noundef dereferenceable(8) %bridge_id.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i49)
  %tobool.not.i50 = icmp eq i32 %bcmp.i49, 0
  br i1 %tobool.not.i50, label %br_supersedes_port_info.exit, label %if.end20.i.if.then_crit_edge

if.end20.i.if.then_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

br_supersedes_port_info.exit:                     ; preds = %if.end20.i
  %port_id.i = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 4
  %8 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %port_id.i, align 4
  %designated_port.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 13
  %10 = ptrtoint ptr %designated_port.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %designated_port.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp27.not.i.not = icmp ugt i16 %9, %11
  br i1 %cmp27.not.i.not, label %br_supersedes_port_info.exit.if.else_crit_edge, label %br_supersedes_port_info.exit.if.then_crit_edge

br_supersedes_port_info.exit.if.then_crit_edge:   ; preds = %br_supersedes_port_info.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

br_supersedes_port_info.exit.if.else_crit_edge:   ; preds = %br_supersedes_port_info.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %br_supersedes_port_info.exit.if.then_crit_edge, %if.end20.i.if.then_crit_edge, %if.end12.i.if.then_crit_edge, %if.end3.i.if.then_crit_edge, %entry.if.then_crit_edge
  %12 = ptrtoint ptr %root.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %root.i, align 1
  %14 = ptrtoint ptr %designated_root.i47 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %designated_root.i47, align 2
  %root_path_cost.i53 = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 2
  %15 = ptrtoint ptr %root_path_cost.i53 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %root_path_cost.i53, align 4
  %designated_cost.i54 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 17
  %17 = ptrtoint ptr %designated_cost.i54 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %designated_cost.i54, align 8
  %designated_bridge.i55 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 15
  %bridge_id.i56 = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 3
  %18 = ptrtoint ptr %bridge_id.i56 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %bridge_id.i56, align 4
  %20 = ptrtoint ptr %designated_bridge.i55 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %designated_bridge.i55, align 2
  %port_id.i57 = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 4
  %21 = ptrtoint ptr %port_id.i57 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %port_id.i57, align 4
  %designated_port.i58 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 13
  %23 = ptrtoint ptr %designated_port.i58 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %designated_port.i58, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %message_age.i = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 5
  %25 = ptrtoint ptr %message_age.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %message_age.i, align 4
  %sub.i = sub i32 %24, %26
  %designated_age.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 18
  %27 = ptrtoint ptr %designated_age.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub.i, ptr %designated_age.i, align 4
  %message_age_timer.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 21
  %28 = load volatile i32, ptr @jiffies, align 128
  %max_age.i = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 6
  %29 = ptrtoint ptr %max_age.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_age.i, align 4
  %31 = load i32, ptr %message_age.i, align 4
  %sub2.i = add i32 %30, %28
  %add.i = sub i32 %sub2.i, %31
  %call.i59 = tail call i32 @mod_timer(ptr noundef %message_age_timer.i, i32 noundef %add.i) #8
  tail call void @br_configuration_update(ptr noundef %3)
  tail call void @br_port_state_selection(ptr noundef %3)
  %bcmp.i62 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %bridge_id.i, ptr noundef dereferenceable(8) %designated_root.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i62)
  %tobool.not.i63 = icmp eq i32 %bcmp.i62, 0
  %or.cond = select i1 %tobool.not.i63, i1 true, i1 %tobool.not.i
  br i1 %or.cond, label %if.then.if.end12_crit_edge, label %if.then6

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then6:                                         ; preds = %if.then
  %hello_timer = getelementptr inbounds %struct.net_bridge, ptr %3, i32 0, i32 38
  %call7 = tail call i32 @del_timer(ptr noundef %hello_timer) #8
  %topology_change_detected = getelementptr inbounds %struct.net_bridge, ptr %3, i32 0, i32 16
  %32 = ptrtoint ptr %topology_change_detected to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %topology_change_detected, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool8.not = icmp eq i8 %33, 0
  br i1 %tobool8.not, label %if.then6.if.end12_crit_edge, label %if.then9

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %topology_change_timer = getelementptr inbounds %struct.net_bridge, ptr %3, i32 0, i32 40
  %call10 = tail call i32 @del_timer(ptr noundef %topology_change_timer) #8
  tail call void @br_transmit_tcn(ptr noundef %3)
  %tcn_timer = getelementptr inbounds %struct.net_bridge, ptr %3, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %bridge_hello_time = getelementptr inbounds %struct.net_bridge, ptr %3, i32 0, i32 23
  %35 = ptrtoint ptr %bridge_hello_time to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bridge_hello_time, align 4
  %add = add i32 %36, %34
  %call11 = tail call i32 @mod_timer(ptr noundef %tcn_timer, i32 noundef %add) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then6.if.end12_crit_edge, %if.then.if.end12_crit_edge
  %port_no = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 9
  %37 = ptrtoint ptr %port_no to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %port_no, align 2
  %root_port = getelementptr inbounds %struct.net_bridge, ptr %3, i32 0, i32 17
  %39 = ptrtoint ptr %root_port to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %root_port, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %40)
  %cmp = icmp eq i16 %38, %40
  br i1 %cmp, label %if.then15, label %if.end12.if.end24_crit_edge

if.end12.if.end24_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then15:                                        ; preds = %if.end12
  %41 = ptrtoint ptr %max_age.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_age.i, align 4
  %max_age1.i = getelementptr inbounds %struct.net_bridge, ptr %3, i32 0, i32 18
  %43 = ptrtoint ptr %max_age1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %max_age1.i, align 4
  %hello_time.i = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 7
  %44 = ptrtoint ptr %hello_time.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hello_time.i, align 4
  %hello_time2.i = getelementptr inbounds %struct.net_bridge, ptr %3, i32 0, i32 19
  %46 = ptrtoint ptr %hello_time2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %hello_time2.i, align 4
  %forward_delay.i = getelementptr inbounds %struct.br_config_bpdu, ptr %bpdu, i32 0, i32 8
  %47 = ptrtoint ptr %forward_delay.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %forward_delay.i, align 4
  %forward_delay3.i = getelementptr inbounds %struct.net_bridge, ptr %3, i32 0, i32 20
  %49 = ptrtoint ptr %forward_delay3.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %forward_delay3.i, align 4
  %50 = ptrtoint ptr %bpdu to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load.i = load i8, ptr %bpdu, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  tail call void @__br_set_topology_change(ptr noundef %3, i8 noundef zeroext %bf.lshr.i) #8
  %port_list.i = getelementptr inbounds %struct.net_bridge, ptr %3, i32 0, i32 9
  %51 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn15.i = load ptr, ptr %port_list.i, align 4
  %cmp.not17.i = icmp eq ptr %.pn15.i, %port_list.i
  br i1 %cmp.not17.i, label %if.then15.br_config_bpdu_generation.exit_crit_edge, label %if.then15.for.body.i_crit_edge

if.then15.for.body.i_crit_edge:                   ; preds = %if.then15
  br label %for.body.i

if.then15.br_config_bpdu_generation.exit_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %br_config_bpdu_generation.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then15.for.body.i_crit_edge
  %.pn18.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn15.i, %if.then15.for.body.i_crit_edge ]
  %p.019.i = getelementptr i8, ptr %.pn18.i, i32 -12
  %state.i = getelementptr i8, ptr %.pn18.i, i32 21
  %52 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp2.not.i = icmp eq i8 %53, 0
  br i1 %cmp2.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %designated_bridge.i.i = getelementptr i8, ptr %.pn18.i, i32 38
  %54 = ptrtoint ptr %p.019.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %p.019.i, align 8
  %bridge_id.i.i = getelementptr inbounds %struct.net_bridge, ptr %55, i32 0, i32 14
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %designated_bridge.i.i, ptr noundef dereferenceable(8) %bridge_id.i.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %br_is_designated_port.exit.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

br_is_designated_port.exit.i:                     ; preds = %land.lhs.true.i
  %designated_port.i.i = getelementptr i8, ptr %.pn18.i, i32 28
  %56 = ptrtoint ptr %designated_port.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %designated_port.i.i, align 8
  %port_id.i.i = getelementptr i8, ptr %.pn18.i, i32 26
  %58 = ptrtoint ptr %port_id.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %port_id.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %57, i16 %59)
  %cmp.i.not.i = icmp eq i16 %57, %59
  br i1 %cmp.i.not.i, label %if.then.i, label %br_is_designated_port.exit.i.for.inc.i_crit_edge

br_is_designated_port.exit.i.for.inc.i_crit_edge: ; preds = %br_is_designated_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %br_is_designated_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @br_transmit_config(ptr noundef %p.019.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %br_is_designated_port.exit.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %60 = ptrtoint ptr %.pn18.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn.i = load ptr, ptr %.pn18.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %port_list.i
  br i1 %cmp.not.i, label %for.inc.i.br_config_bpdu_generation.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.br_config_bpdu_generation.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %br_config_bpdu_generation.exit

br_config_bpdu_generation.exit:                   ; preds = %for.inc.i.br_config_bpdu_generation.exit_crit_edge, %if.then15.br_config_bpdu_generation.exit_crit_edge
  %61 = ptrtoint ptr %bpdu to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load = load i8, ptr %bpdu, align 4
  %62 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool16.not = icmp eq i8 %62, 0
  br i1 %tobool16.not, label %br_config_bpdu_generation.exit.if.end24_crit_edge, label %if.then17

br_config_bpdu_generation.exit.if.end24_crit_edge: ; preds = %br_config_bpdu_generation.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then17:                                        ; preds = %br_config_bpdu_generation.exit
  call void @__sanitizer_cov_trace_pc() #10
  %topology_change_detected.i = getelementptr inbounds %struct.net_bridge, ptr %3, i32 0, i32 16
  %63 = ptrtoint ptr %topology_change_detected.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %topology_change_detected.i, align 1
  %tcn_timer.i = getelementptr inbounds %struct.net_bridge, ptr %3, i32 0, i32 39
  %call.i66 = tail call i32 @del_timer(ptr noundef %tcn_timer.i) #8
  br label %if.end24

if.else:                                          ; preds = %br_supersedes_port_info.exit.if.else_crit_edge, %if.else16.i.if.else_crit_edge, %if.else6.i.if.else_crit_edge, %if.else.i.if.else_crit_edge
  %designated_bridge.i67 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 15
  %bcmp.i69 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %designated_bridge.i67, ptr noundef dereferenceable(8) %bridge_id.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i69)
  %tobool.not.i70 = icmp eq i32 %bcmp.i69, 0
  br i1 %tobool.not.i70, label %br_is_designated_port.exit, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

br_is_designated_port.exit:                       ; preds = %if.else
  %designated_port.i71 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 13
  %64 = ptrtoint ptr %designated_port.i71 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %designated_port.i71, align 8
  %port_id.i72 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 12
  %66 = ptrtoint ptr %port_id.i72 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %port_id.i72, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %65, i16 %67)
  %cmp.i73.not = icmp eq i16 %65, %67
  br i1 %cmp.i73.not, label %if.then22, label %br_is_designated_port.exit.if.end24_crit_edge

br_is_designated_port.exit.if.end24_crit_edge:    ; preds = %br_is_designated_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then22:                                        ; preds = %br_is_designated_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @br_transmit_config(ptr noundef %p) #8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %br_is_designated_port.exit.if.end24_crit_edge, %if.else.if.end24_crit_edge, %if.then17, %br_config_bpdu_generation.exit.if.end24_crit_edge, %if.end12.if.end24_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_received_tcn_bpdu(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_tcn = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 36, i32 4
  %0 = ptrtoint ptr %rx_tcn to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rx_tcn, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %rx_tcn, align 8
  %designated_bridge.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 15
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 8
  %bridge_id.i = getelementptr inbounds %struct.net_bridge, ptr %3, i32 0, i32 14
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %designated_bridge.i, ptr noundef dereferenceable(8) %bridge_id.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %br_is_designated_port.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

br_is_designated_port.exit:                       ; preds = %entry
  %designated_port.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 13
  %4 = ptrtoint ptr %designated_port.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %designated_port.i, align 8
  %port_id.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 12
  %6 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %port_id.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp.i.not = icmp eq i16 %5, %7
  br i1 %cmp.i.not, label %do.end, label %br_is_designated_port.exit.if.end_crit_edge

br_is_designated_port.exit.if.end_crit_edge:      ; preds = %br_is_designated_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %br_is_designated_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.net_bridge, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %port_no = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 9
  %10 = ptrtoint ptr %port_no to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %port_no, align 2
  %conv = zext i16 %11 to i32
  %dev1 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %12 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %9, i32 noundef %conv, ptr noundef %13) #11
  %14 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p, align 8
  tail call void @br_topology_change_detection(ptr noundef %15)
  %topology_change_ack.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 10
  %16 = ptrtoint ptr %topology_change_ack.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %topology_change_ack.i, align 4
  tail call void @br_transmit_config(ptr noundef %p) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %br_is_designated_port.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_set_hello_time(ptr noundef %br, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clock_t_to_jiffies(i32 noundef %val) #8
  %0 = add i32 %call, -1001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -901, i32 %0)
  %1 = icmp ult i32 %0, -901
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef %br) #8
  %bridge_hello_time = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 23
  %2 = ptrtoint ptr %bridge_hello_time to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %bridge_hello_time, align 4
  %bridge_id.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 14
  %designated_root.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 13
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %bridge_id.i, ptr noundef dereferenceable(8) %designated_root.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %hello_time = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 19
  %3 = ptrtoint ptr %hello_time to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %hello_time, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %br) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clock_t_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_set_max_age(ptr noundef %br, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clock_t_to_jiffies(i32 noundef %val) #8
  %0 = add i32 %call, -4001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3401, i32 %0)
  %1 = icmp ult i32 %0, -3401
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef %br) #8
  %bridge_max_age = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 22
  %2 = ptrtoint ptr %bridge_max_age to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %bridge_max_age, align 4
  %bridge_id.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 14
  %designated_root.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 13
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %bridge_id.i, ptr noundef dereferenceable(8) %designated_root.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %max_age = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 18
  %3 = ptrtoint ptr %max_age to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %max_age, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %br) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__set_ageing_time(ptr noundef %dev, i32 noundef %t) local_unnamed_addr #0 align 64 {
entry:
  %attr = alloca %struct.switchdev_attr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %attr) #8
  %0 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 2
  %2 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 3
  %3 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 4
  %4 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %5 = getelementptr inbounds i8, ptr %attr, i32 24
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  %7 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %attr, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 5, ptr %0, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6, ptr %1, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %2, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %3, align 4
  %call = tail call i32 @jiffies_to_clock_t(i32 noundef %t) #8
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call, ptr %4, align 4
  %call1 = call i32 @switchdev_port_attr_set(ptr noundef %dev, ptr noundef nonnull %attr, ptr noundef null) #8
  %13 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %call1, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 -95, label %entry.if.end_crit_edge6
  ]

entry.if.end_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %attr) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_set_ageing_time(ptr noundef %br, i32 noundef %ageing_time) local_unnamed_addr #0 align 64 {
entry:
  %attr.i = alloca %struct.switchdev_attr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clock_t_to_jiffies(i32 noundef %ageing_time) #8
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %attr.i) #8
  %2 = getelementptr inbounds %struct.switchdev_attr, ptr %attr.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.switchdev_attr, ptr %attr.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.switchdev_attr, ptr %attr.i, i32 0, i32 3
  %5 = getelementptr inbounds %struct.switchdev_attr, ptr %attr.i, i32 0, i32 4
  %6 = getelementptr inbounds %struct.switchdev_attr, ptr %attr.i, i32 0, i32 5
  %7 = getelementptr inbounds i8, ptr %attr.i, i32 24
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %9 = ptrtoint ptr %attr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %attr.i, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 5, ptr %2, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 6, ptr %3, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %4, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %5, align 4
  %call.i = tail call i32 @jiffies_to_clock_t(i32 noundef %call) #8
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i, ptr %6, align 4
  %call1.i = call i32 @switchdev_port_attr_set(ptr noundef %1, ptr noundef nonnull %attr.i, ptr noundef null) #8
  %15 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %call1.i, label %__set_ageing_time.exit [
    i32 0, label %entry.__set_ageing_time.exit.thread_crit_edge
    i32 -95, label %entry.__set_ageing_time.exit.thread_crit_edge17
  ]

entry.__set_ageing_time.exit.thread_crit_edge17:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__set_ageing_time.exit.thread

entry.__set_ageing_time.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__set_ageing_time.exit.thread

__set_ageing_time.exit.thread:                    ; preds = %entry.__set_ageing_time.exit.thread_crit_edge, %entry.__set_ageing_time.exit.thread_crit_edge17
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %attr.i) #8
  call void @_raw_spin_lock_bh(ptr noundef %br) #8
  %bridge_ageing_time = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 25
  %16 = ptrtoint ptr %bridge_ageing_time to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call, ptr %bridge_ageing_time, align 4
  %ageing_time2 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 21
  %17 = ptrtoint ptr %ageing_time2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call, ptr %ageing_time2, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %br) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %18 = load ptr, ptr @system_long_wq, align 4
  %gc_work = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 41
  %call.i14 = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %gc_work, i32 noundef 0) #8
  br label %cleanup

__set_ageing_time.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %attr.i) #8
  br label %cleanup

cleanup:                                          ; preds = %__set_ageing_time.exit, %__set_ageing_time.exit.thread
  %retval.0 = phi i32 [ 0, %__set_ageing_time.exit.thread ], [ %call1.i, %__set_ageing_time.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_get_ageing_time(ptr nocapture noundef readonly %br_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %br_dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %1, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ageing_time = getelementptr i8, ptr %br_dev, i32 2844
  %2 = ptrtoint ptr %ageing_time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ageing_time, align 4
  %call2 = tail call i32 @jiffies_to_clock_t(i32 noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @__br_set_forward_delay(ptr nocapture noundef %br, i32 noundef %t) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge_forward_delay = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 24
  %0 = ptrtoint ptr %bridge_forward_delay to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %t, ptr %bridge_forward_delay, align 4
  %bridge_id.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 14
  %designated_root.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 13
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %bridge_id.i, ptr noundef dereferenceable(8) %designated_root.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %forward_delay = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 20
  %1 = ptrtoint ptr %forward_delay to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %t, ptr %forward_delay, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_set_forward_delay(ptr noundef %br, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clock_t_to_jiffies(i32 noundef %val) #8
  tail call void @_raw_spin_lock_bh(ptr noundef %br) #8
  %stp_enabled = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 28
  %0 = ptrtoint ptr %stp_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stp_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp ne i32 %1, 0
  %2 = add i32 %call, -3001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2801, i32 %2)
  %3 = icmp ult i32 %2, -2801
  %or.cond = select i1 %cmp.not, i1 %3, i1 false
  br i1 %or.cond, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end:                                           ; preds = %entry
  %bridge_forward_delay.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 24
  %4 = ptrtoint ptr %bridge_forward_delay.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %bridge_forward_delay.i, align 4
  %bridge_id.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 14
  %designated_root.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 13
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %bridge_id.i.i, ptr noundef dereferenceable(8) %designated_root.i.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.not.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.not.i, label %if.then.i, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %forward_delay.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 20
  %5 = ptrtoint ptr %forward_delay.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %forward_delay.i, align 4
  br label %unlock

unlock:                                           ; preds = %if.then.i, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  %err.0 = phi i32 [ 0, %if.end.unlock_crit_edge ], [ 0, %if.then.i ], [ -34, %entry.unlock_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %br) #8
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_ifinfo_notify(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !17, !18, !20, !21, !22, !23, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !64, !65, !67, !68, !69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bridge/br_stp.c", i32 48, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @br_set_state._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @br_set_state._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/bridge/br_stp.c", i32 51, i32 3}
!8 = !{ptr @br_set_state._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @br_set_state._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../net/bridge/br_stp.c", i32 71, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__ksymtab_br_port_get_stp_state, !14, !"__ksymtab_br_port_get_stp_state", i1 false, i1 false}
!14 = !{!"../net/bridge/br_stp.c", i32 79, i32 1}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../net/bridge/br_stp.c", i32 86, i32 2}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/bridge/br_stp.c", i32 277, i32 3}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @br_transmit_tcn._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @br_transmit_tcn._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/bridge/br_stp.c", i32 371, i32 2}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @br_topology_change_detection._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @br_topology_change_detection._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/bridge/br_stp.c", i32 557, i32 3}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @br_received_tcn_bpdu._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @br_received_tcn_bpdu._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @__ksymtab_br_get_ageing_time, !36, !"__ksymtab_br_get_ageing_time", i1 false, i1 false}
!36 = !{!"../net/bridge/br_stp.c", i32 653, i32 1}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/bridge/br_stp.c", i32 668, i32 4}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @__br_set_topology_change.__UNIQUE_ID_ddebug562, !38, !"__UNIQUE_ID_ddebug562", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/bridge/br_stp.c", i32 671, i32 4}
!44 = !{ptr @__br_set_topology_change.__UNIQUE_ID_ddebug563, !43, !"__UNIQUE_ID_ddebug563", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/bridge/br_stp.c", i32 676, i32 4}
!47 = !{ptr @__br_set_topology_change._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @__br_set_topology_change._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/bridge/br_stp.c", i32 22, i32 24}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/bridge/br_stp.c", i32 23, i32 25}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/bridge/br_stp.c", i32 24, i32 24}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/bridge/br_stp.c", i32 25, i32 26}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/bridge/br_stp.c", i32 26, i32 24}
!59 = !{ptr @br_port_state_names, !60, !"br_port_state_names", i1 false, i1 false}
!60 = !{!"../net/bridge/br_stp.c", i32 21, i32 26}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../net/bridge/br_private.h", i32 422, i32 3}
!63 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/bridge/br_stp.c", i32 150, i32 2}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @br_root_port_block._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @br_root_port_block._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"branch_weights", i32 2000, i32 1}
!80 = !{i64 2148706117, i64 2148706122, i64 2148706135, i64 2148706179, i64 2148706213, i64 2148706234}
