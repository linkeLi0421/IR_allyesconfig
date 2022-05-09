; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/microchip/lan966x/lan966x_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/microchip/lan966x/lan966x_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lan966x_stat_layout = type { i32, [32 x i8] }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ethtool_rmon_hist_range = type { i16, i16 }
%struct.lan966x = type { ptr, i8, ptr, [66 x ptr], i32, [6 x i8], ptr, i16, i16, %struct.list_head, %struct.spinlock, [4096 x i16], [128 x i32], ptr, i32, %struct.mutex, ptr, %struct.delayed_work, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.ethtool_eth_mac_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_rmon_stats = type { i64, i64, i64, i64, [10 x i64], [10 x i64] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
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

@lan966x_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lan966x_get_pauseparam, ptr @lan966x_set_pauseparam, ptr null, ptr @lan966x_get_strings, ptr null, ptr @lan966x_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @lan966x_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lan966x_get_link_ksettings, ptr @lan966x_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lan966x_get_eth_mac_stats, ptr null, ptr @lan966x_get_eth_rmon_stats, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@lan966x_stats_layout = internal constant { [132 x %struct.lan966x_stat_layout], [1200 x i8] } { [132 x %struct.lan966x_stat_layout] [%struct.lan966x_stat_layout { i32 0, [32 x i8] c"rx_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 1, [32 x i8] c"rx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 2, [32 x i8] c"rx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 3, [32 x i8] c"rx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 4, [32 x i8] c"rx_short\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 5, [32 x i8] c"rx_frag\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 6, [32 x i8] c"rx_jabber\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 7, [32 x i8] c"rx_crc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 8, [32 x i8] c"rx_symbol_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 9, [32 x i8] c"rx_sz_64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 10, [32 x i8] c"rx_sz_65_127\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 11, [32 x i8] c"rx_sz_128_255\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 12, [32 x i8] c"rx_sz_256_511\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 13, [32 x i8] c"rx_sz_512_1023\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 14, [32 x i8] c"rx_sz_1024_1526\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 15, [32 x i8] c"rx_sz_jumbo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 16, [32 x i8] c"rx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 17, [32 x i8] c"rx_control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 18, [32 x i8] c"rx_long\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 19, [32 x i8] c"rx_cat_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 20, [32 x i8] c"rx_red_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 21, [32 x i8] c"rx_red_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 22, [32 x i8] c"rx_red_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 23, [32 x i8] c"rx_red_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 24, [32 x i8] c"rx_red_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 25, [32 x i8] c"rx_red_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 26, [32 x i8] c"rx_red_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 27, [32 x i8] c"rx_red_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 28, [32 x i8] c"rx_yellow_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 29, [32 x i8] c"rx_yellow_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 30, [32 x i8] c"rx_yellow_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 31, [32 x i8] c"rx_yellow_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 32, [32 x i8] c"rx_yellow_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 33, [32 x i8] c"rx_yellow_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 34, [32 x i8] c"rx_yellow_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 35, [32 x i8] c"rx_yellow_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 36, [32 x i8] c"rx_green_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 37, [32 x i8] c"rx_green_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 38, [32 x i8] c"rx_green_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 39, [32 x i8] c"rx_green_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 40, [32 x i8] c"rx_green_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 41, [32 x i8] c"rx_green_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 42, [32 x i8] c"rx_green_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 43, [32 x i8] c"rx_green_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 44, [32 x i8] c"rx_assembly_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 45, [32 x i8] c"rx_smd_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 46, [32 x i8] c"rx_assembly_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 47, [32 x i8] c"rx_merge_frag\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 48, [32 x i8] c"rx_pmac_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 49, [32 x i8] c"rx_pmac_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 50, [32 x i8] c"rx_pmac_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 51, [32 x i8] c"rx_pmac_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 52, [32 x i8] c"rx_pmac_short\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 53, [32 x i8] c"rx_pmac_frag\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 54, [32 x i8] c"rx_pmac_jabber\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 55, [32 x i8] c"rx_pmac_crc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 56, [32 x i8] c"rx_pmac_symbol_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 57, [32 x i8] c"rx_pmac_sz_64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 58, [32 x i8] c"rx_pmac_sz_65_127\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 59, [32 x i8] c"rx_pmac_sz_128_255\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 60, [32 x i8] c"rx_pmac_sz_256_511\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 61, [32 x i8] c"rx_pmac_sz_512_1023\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 62, [32 x i8] c"rx_pmac_sz_1024_1526\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 63, [32 x i8] c"rx_pmac_sz_jumbo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 64, [32 x i8] c"rx_pmac_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 65, [32 x i8] c"rx_pmac_control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 66, [32 x i8] c"rx_pmac_long\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 128, [32 x i8] c"tx_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 129, [32 x i8] c"tx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 130, [32 x i8] c"tx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 131, [32 x i8] c"tx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 132, [32 x i8] c"tx_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 133, [32 x i8] c"tx_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 134, [32 x i8] c"tx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 135, [32 x i8] c"tx_sz_64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 136, [32 x i8] c"tx_sz_65_127\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 137, [32 x i8] c"tx_sz_128_255\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 138, [32 x i8] c"tx_sz_256_511\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 139, [32 x i8] c"tx_sz_512_1023\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 140, [32 x i8] c"tx_sz_1024_1526\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 141, [32 x i8] c"tx_sz_jumbo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 142, [32 x i8] c"tx_yellow_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 143, [32 x i8] c"tx_yellow_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 144, [32 x i8] c"tx_yellow_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 145, [32 x i8] c"tx_yellow_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 146, [32 x i8] c"tx_yellow_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 147, [32 x i8] c"tx_yellow_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 148, [32 x i8] c"tx_yellow_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 149, [32 x i8] c"tx_yellow_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 150, [32 x i8] c"tx_green_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 151, [32 x i8] c"tx_green_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 152, [32 x i8] c"tx_green_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 153, [32 x i8] c"tx_green_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 154, [32 x i8] c"tx_green_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 155, [32 x i8] c"tx_green_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 156, [32 x i8] c"tx_green_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 157, [32 x i8] c"tx_green_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 158, [32 x i8] c"tx_aged\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 159, [32 x i8] c"tx_llct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 160, [32 x i8] c"tx_ct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 161, [32 x i8] c"tx_mm_hold\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 162, [32 x i8] c"tx_merge_frag\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 163, [32 x i8] c"tx_pmac_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 164, [32 x i8] c"tx_pmac_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 165, [32 x i8] c"tx_pmac_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 166, [32 x i8] c"tx_pmac_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 167, [32 x i8] c"tx_pmac_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 168, [32 x i8] c"tx_pmac_sz_64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 169, [32 x i8] c"tx_pmac_sz_65_127\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 170, [32 x i8] c"tx_pmac_sz_128_255\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 171, [32 x i8] c"tx_pmac_sz_256_511\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 172, [32 x i8] c"tx_pmac_sz_512_1023\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 173, [32 x i8] c"tx_pmac_sz_1024_1526\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 174, [32 x i8] c"tx_pmac_sz_jumbo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 256, [32 x i8] c"dr_local\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 257, [32 x i8] c"dr_tail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 258, [32 x i8] c"dr_yellow_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 259, [32 x i8] c"dr_yellow_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 260, [32 x i8] c"dr_yellow_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 261, [32 x i8] c"dr_yellow_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 262, [32 x i8] c"dr_yellow_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 263, [32 x i8] c"dr_yellow_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 264, [32 x i8] c"dr_yellow_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 265, [32 x i8] c"dr_yellow_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 266, [32 x i8] c"dr_green_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 267, [32 x i8] c"dr_green_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 268, [32 x i8] c"dr_green_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 269, [32 x i8] c"dr_green_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 270, [32 x i8] c"dr_green_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 271, [32 x i8] c"dr_green_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 272, [32 x i8] c"dr_green_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.lan966x_stat_layout { i32 273, [32 x i8] c"dr_green_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [1200 x i8] zeroinitializer }, align 32
@lan966x_stats_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&lan966x->stats_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-stats\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@lan966x_stats_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&lan966x->stats_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@lan966x_stats_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&lan966x->stats_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/microchip/lan966x/lan966x_main.h\00", [42 x i8] zeroinitializer }, align 32
@lan966x_rmon_ranges = internal constant { [8 x %struct.ethtool_rmon_hist_range], [32 x i8] } { [8 x %struct.ethtool_rmon_hist_range] [%struct.ethtool_rmon_hist_range { i16 0, i16 64 }, %struct.ethtool_rmon_hist_range { i16 65, i16 127 }, %struct.ethtool_rmon_hist_range { i16 128, i16 255 }, %struct.ethtool_rmon_hist_range { i16 256, i16 511 }, %struct.ethtool_rmon_hist_range { i16 512, i16 1023 }, %struct.ethtool_rmon_hist_range { i16 1024, i16 1518 }, %struct.ethtool_rmon_hist_range { i16 1519, i16 10239 }, %struct.ethtool_rmon_hist_range zeroinitializer], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [20 x i8] c"lan966x_ethtool_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 548, i32 26 }
@___asan_gen_.11 = private unnamed_addr constant [21 x i8] c"lan966x_stats_layout\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 11, i32 41 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 673, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 674, i32 43 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 676, i32 25 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 677, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [57 x i8] c"../drivers/net/ethernet/microchip/lan966x/lan966x_main.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 238, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [20 x i8] c"lan966x_rmon_ranges\00", align 1
@___asan_gen_.42 = private constant [60 x i8] c"../drivers/net/ethernet/microchip/lan966x/lan966x_ethtool.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 430, i32 45 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @lan966x_ethtool_ops, ptr @lan966x_stats_layout, ptr @lan966x_stats_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @lan966x_stats_init.__key.3, ptr @.str.4, ptr @lan966x_stats_init.__key.5, ptr @.str.6, ptr @.str.7, ptr @lan966x_rmon_ranges], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_stats_layout to i32), i32 4752, i32 5952, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_stats_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_stats_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_stats_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_rmon_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan966x_get_pauseparam(ptr nocapture noundef readonly %dev, ptr noundef %pause) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phylink = getelementptr i8, ptr %dev, i32 2376
  %0 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phylink, align 4
  tail call void @phylink_ethtool_get_pauseparam(ptr noundef %1, ptr noundef %pause) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan966x_set_pauseparam(ptr nocapture noundef readonly %dev, ptr noundef %pause) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phylink = getelementptr i8, ptr %dev, i32 2376
  %0 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phylink, align 4
  %call1 = tail call i32 @phylink_ethtool_set_pauseparam(ptr noundef %1, ptr noundef %pause) #7
  ret i32 %call1
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan966x_get_strings(ptr nocapture noundef readonly %netdev, i32 noundef %sset, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lan966x1 = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %lan966x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lan966x1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp.not = icmp eq i32 %sset, 1
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_stats = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %num_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_stats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp29.not = icmp eq i32 %3, 0
  br i1 %cmp29.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %stats_layout = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.010, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %4 = ptrtoint ptr %stats_layout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats_layout, align 4
  %name = getelementptr %struct.lan966x_stat_layout, ptr %5, i32 %i.010, i32 1
  %6 = call ptr @memcpy(ptr %add.ptr, ptr %name, i32 32)
  %inc = add nuw i32 %i.010, 1
  %7 = ptrtoint ptr %num_stats to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_stats, align 4
  %cmp2 = icmp ult i32 %inc, %8
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan966x_get_ethtool_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lan966x1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %lan966x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lan966x1, align 4
  tail call fastcc void @lan966x_stats_update(ptr noundef %1)
  %num_stats = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %num_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_stats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not = icmp eq i32 %3, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %stats2 = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 16
  %chip_port = getelementptr i8, ptr %dev, i32 2312
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %4 = phi i32 [ %3, %for.body.lr.ph ], [ %13, %for.body.for.body_crit_edge ]
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %data.addr.011 = phi ptr [ %data, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %5 = ptrtoint ptr %stats2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stats2, align 4
  %7 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %chip_port, align 4
  %conv = zext i8 %8 to i32
  %mul = mul i32 %4, %conv
  %add = add i32 %mul, %i.012
  %arrayidx = getelementptr i64, ptr %6, i32 %add
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx, align 8
  %incdec.ptr = getelementptr i64, ptr %data.addr.011, i32 1
  %11 = ptrtoint ptr %data.addr.011 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %data.addr.011, align 8
  %inc = add nuw i32 %i.012, 1
  %12 = ptrtoint ptr %num_stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_stats, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lan966x_get_sset_count(ptr nocapture noundef readonly %dev, i32 noundef %sset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp.not = icmp eq i32 %sset, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lan966x1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %lan966x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lan966x1, align 4
  %num_stats = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %num_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_stats, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan966x_get_link_ksettings(ptr nocapture noundef readonly %ndev, ptr noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phylink = getelementptr i8, ptr %ndev, i32 2376
  %0 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phylink, align 4
  %call1 = tail call i32 @phylink_ethtool_ksettings_get(ptr noundef %1, ptr noundef %cmd) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan966x_set_link_ksettings(ptr nocapture noundef readonly %ndev, ptr noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phylink = getelementptr i8, ptr %ndev, i32 2376
  %0 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phylink, align 4
  %call1 = tail call i32 @phylink_ethtool_ksettings_set(ptr noundef %1, ptr noundef %cmd) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan966x_get_eth_mac_stats(ptr nocapture noundef readonly %dev, ptr noundef writeonly %mac_stats) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lan966x1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %lan966x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lan966x1, align 4
  tail call fastcc void @lan966x_stats_update(ptr noundef %1)
  %chip_port = getelementptr i8, ptr %dev, i32 2312
  %2 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_port, align 4
  %conv = zext i8 %3 to i32
  %num_stats = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %num_stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_stats, align 4
  %mul = mul i32 %5, %conv
  %stats_lock = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %stats_lock, i32 noundef 0) #7
  %stats = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stats, align 4
  %add = add i32 %mul, 68
  %arrayidx = getelementptr i64, ptr %7, i32 %add
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx, align 8
  %add3 = add i32 %mul, 69
  %arrayidx4 = getelementptr i64, ptr %7, i32 %add3
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx4, align 8
  %add5 = add i64 %11, %9
  %add7 = add i32 %mul, 70
  %arrayidx8 = getelementptr i64, ptr %7, i32 %add7
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx8, align 8
  %add9 = add i64 %add5, %13
  %add11 = add i32 %mul, 103
  %arrayidx12 = getelementptr i64, ptr %7, i32 %add11
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx12, align 8
  %add13 = add i64 %add9, %15
  %add15 = add i32 %mul, 104
  %arrayidx16 = getelementptr i64, ptr %7, i32 %add15
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx16, align 8
  %add17 = add i64 %add13, %17
  %add19 = add i32 %mul, 105
  %arrayidx20 = getelementptr i64, ptr %7, i32 %add19
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx20, align 8
  %add21 = add i64 %add17, %19
  %20 = ptrtoint ptr %mac_stats to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %add21, ptr %mac_stats, align 8
  %21 = load ptr, ptr %stats, align 4
  %add23 = add i32 %mul, 71
  %arrayidx24 = getelementptr i64, ptr %21, i32 %add23
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx24, align 8
  %SingleCollisionFrames = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 1
  %24 = ptrtoint ptr %SingleCollisionFrames to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %SingleCollisionFrames, align 8
  %MultipleCollisionFrames = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 2
  %25 = ptrtoint ptr %MultipleCollisionFrames to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %MultipleCollisionFrames, align 8
  %26 = load ptr, ptr %stats, align 4
  %add26 = add i32 %mul, 1
  %arrayidx27 = getelementptr i64, ptr %26, i32 %add26
  %27 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx27, align 8
  %add29 = add i32 %mul, 2
  %arrayidx30 = getelementptr i64, ptr %26, i32 %add29
  %29 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx30, align 8
  %add31 = add i64 %30, %28
  %add33 = add i32 %mul, 3
  %arrayidx34 = getelementptr i64, ptr %26, i32 %add33
  %31 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx34, align 8
  %add35 = add i64 %add31, %32
  %FramesReceivedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 3
  %33 = ptrtoint ptr %FramesReceivedOK to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %add35, ptr %FramesReceivedOK, align 8
  %34 = load ptr, ptr %stats, align 4
  %add37 = add i32 %mul, 7
  %arrayidx38 = getelementptr i64, ptr %34, i32 %add37
  %35 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx38, align 8
  %add42 = shl i64 %36, 1
  %FrameCheckSequenceErrors = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 4
  %37 = ptrtoint ptr %FrameCheckSequenceErrors to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %add42, ptr %FrameCheckSequenceErrors, align 8
  %AlignmentErrors = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 5
  %38 = ptrtoint ptr %AlignmentErrors to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 0, ptr %AlignmentErrors, align 8
  %39 = load ptr, ptr %stats, align 4
  %add44 = add i32 %mul, 67
  %arrayidx45 = getelementptr i64, ptr %39, i32 %add44
  %40 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx45, align 8
  %add47 = add i32 %mul, 102
  %arrayidx48 = getelementptr i64, ptr %39, i32 %add47
  %42 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx48, align 8
  %add49 = add i64 %43, %41
  %OctetsTransmittedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 6
  %44 = ptrtoint ptr %OctetsTransmittedOK to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %add49, ptr %OctetsTransmittedOK, align 8
  %45 = load ptr, ptr %stats, align 4
  %add51 = add i32 %mul, 100
  %arrayidx52 = getelementptr i64, ptr %45, i32 %add51
  %46 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx52, align 8
  %FramesWithDeferredXmissions = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 7
  %48 = ptrtoint ptr %FramesWithDeferredXmissions to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %FramesWithDeferredXmissions, align 8
  %LateCollisions = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 8
  %49 = call ptr @memset(ptr %LateCollisions, i32 0, i32 32)
  %50 = load ptr, ptr %stats, align 4
  %arrayidx55 = getelementptr i64, ptr %50, i32 %mul
  %51 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx55, align 8
  %OctetsReceivedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 12
  %53 = ptrtoint ptr %OctetsReceivedOK to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %OctetsReceivedOK, align 8
  %FramesLostDueToIntMACRcvError = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 13
  %54 = ptrtoint ptr %FramesLostDueToIntMACRcvError to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 0, ptr %FramesLostDueToIntMACRcvError, align 8
  %55 = load ptr, ptr %stats, align 4
  %arrayidx58 = getelementptr i64, ptr %55, i32 %add3
  %56 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %arrayidx58, align 8
  %arrayidx61 = getelementptr i64, ptr %55, i32 %add15
  %58 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx61, align 8
  %add62 = add i64 %59, %57
  %MulticastFramesXmittedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 14
  %60 = ptrtoint ptr %MulticastFramesXmittedOK to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %add62, ptr %MulticastFramesXmittedOK, align 8
  %61 = load ptr, ptr %stats, align 4
  %arrayidx65 = getelementptr i64, ptr %61, i32 %add7
  %62 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx65, align 8
  %arrayidx68 = getelementptr i64, ptr %61, i32 %add19
  %64 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %arrayidx68, align 8
  %add69 = add i64 %65, %63
  %BroadcastFramesXmittedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 15
  %66 = ptrtoint ptr %BroadcastFramesXmittedOK to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %add69, ptr %BroadcastFramesXmittedOK, align 8
  %FramesWithExcessiveDeferral = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 16
  %67 = ptrtoint ptr %FramesWithExcessiveDeferral to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 0, ptr %FramesWithExcessiveDeferral, align 8
  %68 = load ptr, ptr %stats, align 4
  %arrayidx72 = getelementptr i64, ptr %68, i32 %add29
  %69 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %arrayidx72, align 8
  %MulticastFramesReceivedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 17
  %71 = ptrtoint ptr %MulticastFramesReceivedOK to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %MulticastFramesReceivedOK, align 8
  %72 = load ptr, ptr %stats, align 4
  %arrayidx75 = getelementptr i64, ptr %72, i32 %add33
  %73 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %arrayidx75, align 8
  %BroadcastFramesReceivedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 18
  %75 = ptrtoint ptr %BroadcastFramesReceivedOK to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %BroadcastFramesReceivedOK, align 8
  %76 = load ptr, ptr %stats, align 4
  %add77 = add i32 %mul, 5
  %arrayidx78 = getelementptr i64, ptr %76, i32 %add77
  %77 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %arrayidx78, align 8
  %add80 = add i32 %mul, 6
  %arrayidx81 = getelementptr i64, ptr %76, i32 %add80
  %79 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %arrayidx81, align 8
  %add82 = add i64 %80, %78
  %arrayidx85 = getelementptr i64, ptr %76, i32 %add37
  %81 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %arrayidx85, align 8
  %add86 = add i64 %add82, %82
  %add88 = add i32 %mul, 53
  %arrayidx89 = getelementptr i64, ptr %76, i32 %add88
  %83 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %arrayidx89, align 8
  %add90 = add i64 %add86, %84
  %add92 = add i32 %mul, 54
  %arrayidx93 = getelementptr i64, ptr %76, i32 %add92
  %85 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %arrayidx93, align 8
  %add94 = add i64 %add90, %86
  %add96 = add i32 %mul, 55
  %arrayidx97 = getelementptr i64, ptr %76, i32 %add96
  %87 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %arrayidx97, align 8
  %add98 = add i64 %add94, %88
  %InRangeLengthErrors = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 19
  %89 = ptrtoint ptr %InRangeLengthErrors to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %add98, ptr %InRangeLengthErrors, align 8
  %90 = load ptr, ptr %stats, align 4
  %add100 = add i32 %mul, 4
  %arrayidx101 = getelementptr i64, ptr %90, i32 %add100
  %91 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %arrayidx101, align 8
  %add103 = add i32 %mul, 52
  %arrayidx104 = getelementptr i64, ptr %90, i32 %add103
  %93 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %arrayidx104, align 8
  %add105 = add i64 %94, %92
  %add107 = add i32 %mul, 18
  %arrayidx108 = getelementptr i64, ptr %90, i32 %add107
  %95 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %arrayidx108, align 8
  %add109 = add i64 %add105, %96
  %add111 = add i32 %mul, 66
  %arrayidx112 = getelementptr i64, ptr %90, i32 %add111
  %97 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %arrayidx112, align 8
  %add113 = add i64 %add109, %98
  %OutOfRangeLengthField = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 20
  %99 = ptrtoint ptr %OutOfRangeLengthField to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %add113, ptr %OutOfRangeLengthField, align 8
  %100 = load ptr, ptr %stats, align 4
  %arrayidx116 = getelementptr i64, ptr %100, i32 %add107
  %101 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %arrayidx116, align 8
  %arrayidx119 = getelementptr i64, ptr %100, i32 %add111
  %103 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx119, align 8
  %add120 = add i64 %104, %102
  %FrameTooLongErrors = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 21
  %105 = ptrtoint ptr %FrameTooLongErrors to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %add120, ptr %FrameTooLongErrors, align 8
  tail call void @mutex_unlock(ptr noundef %stats_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan966x_get_eth_rmon_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %rmon_stats, ptr nocapture noundef writeonly %ranges) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lan966x1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %lan966x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lan966x1, align 4
  tail call fastcc void @lan966x_stats_update(ptr noundef %1)
  %chip_port = getelementptr i8, ptr %dev, i32 2312
  %2 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_port, align 4
  %conv = zext i8 %3 to i32
  %num_stats = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %num_stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_stats, align 4
  %mul = mul i32 %5, %conv
  %stats_lock = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %stats_lock, i32 noundef 0) #7
  %stats = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stats, align 4
  %add = add i32 %mul, 4
  %arrayidx = getelementptr i64, ptr %7, i32 %add
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx, align 8
  %add3 = add i32 %mul, 52
  %arrayidx4 = getelementptr i64, ptr %7, i32 %add3
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx4, align 8
  %add5 = add i64 %11, %9
  %12 = ptrtoint ptr %rmon_stats to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %add5, ptr %rmon_stats, align 8
  %13 = load ptr, ptr %stats, align 4
  %add7 = add i32 %mul, 18
  %arrayidx8 = getelementptr i64, ptr %13, i32 %add7
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx8, align 8
  %add10 = add i32 %mul, 66
  %arrayidx11 = getelementptr i64, ptr %13, i32 %add10
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx11, align 8
  %add12 = add i64 %17, %15
  %oversize_pkts = getelementptr inbounds %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 1
  %18 = ptrtoint ptr %oversize_pkts to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add12, ptr %oversize_pkts, align 8
  %19 = load ptr, ptr %stats, align 4
  %add14 = add i32 %mul, 5
  %arrayidx15 = getelementptr i64, ptr %19, i32 %add14
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx15, align 8
  %add17 = add i32 %mul, 53
  %arrayidx18 = getelementptr i64, ptr %19, i32 %add17
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx18, align 8
  %add19 = add i64 %23, %21
  %fragments = getelementptr inbounds %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 2
  %24 = ptrtoint ptr %fragments to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %add19, ptr %fragments, align 8
  %25 = load ptr, ptr %stats, align 4
  %add21 = add i32 %mul, 6
  %arrayidx22 = getelementptr i64, ptr %25, i32 %add21
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx22, align 8
  %add24 = add i32 %mul, 54
  %arrayidx25 = getelementptr i64, ptr %25, i32 %add24
  %28 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx25, align 8
  %add26 = add i64 %29, %27
  %jabbers = getelementptr inbounds %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 3
  %30 = ptrtoint ptr %jabbers to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %add26, ptr %jabbers, align 8
  %31 = load ptr, ptr %stats, align 4
  %add28 = add i32 %mul, 9
  %arrayidx29 = getelementptr i64, ptr %31, i32 %add28
  %32 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx29, align 8
  %add31 = add i32 %mul, 57
  %arrayidx32 = getelementptr i64, ptr %31, i32 %add31
  %34 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx32, align 8
  %add33 = add i64 %35, %33
  %hist = getelementptr inbounds %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 4
  %36 = ptrtoint ptr %hist to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %add33, ptr %hist, align 8
  %37 = load ptr, ptr %stats, align 4
  %add36 = add i32 %mul, 10
  %arrayidx37 = getelementptr i64, ptr %37, i32 %add36
  %38 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx37, align 8
  %add39 = add i32 %mul, 58
  %arrayidx40 = getelementptr i64, ptr %37, i32 %add39
  %40 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx40, align 8
  %add41 = add i64 %41, %39
  %arrayidx43 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 4, i32 1
  %42 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %add41, ptr %arrayidx43, align 8
  %43 = load ptr, ptr %stats, align 4
  %add45 = add i32 %mul, 11
  %arrayidx46 = getelementptr i64, ptr %43, i32 %add45
  %44 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx46, align 8
  %add48 = add i32 %mul, 59
  %arrayidx49 = getelementptr i64, ptr %43, i32 %add48
  %46 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx49, align 8
  %add50 = add i64 %47, %45
  %arrayidx52 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 4, i32 2
  %48 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %add50, ptr %arrayidx52, align 8
  %49 = load ptr, ptr %stats, align 4
  %add54 = add i32 %mul, 12
  %arrayidx55 = getelementptr i64, ptr %49, i32 %add54
  %50 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %arrayidx55, align 8
  %add57 = add i32 %mul, 60
  %arrayidx58 = getelementptr i64, ptr %49, i32 %add57
  %52 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx58, align 8
  %add59 = add i64 %53, %51
  %arrayidx61 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 4, i32 3
  %54 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %add59, ptr %arrayidx61, align 8
  %55 = load ptr, ptr %stats, align 4
  %add63 = add i32 %mul, 13
  %arrayidx64 = getelementptr i64, ptr %55, i32 %add63
  %56 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %arrayidx64, align 8
  %add66 = add i32 %mul, 61
  %arrayidx67 = getelementptr i64, ptr %55, i32 %add66
  %58 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx67, align 8
  %add68 = add i64 %59, %57
  %arrayidx70 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 4, i32 4
  %60 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %add68, ptr %arrayidx70, align 8
  %61 = load ptr, ptr %stats, align 4
  %add72 = add i32 %mul, 14
  %arrayidx73 = getelementptr i64, ptr %61, i32 %add72
  %62 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx73, align 8
  %add75 = add i32 %mul, 62
  %arrayidx76 = getelementptr i64, ptr %61, i32 %add75
  %64 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %arrayidx76, align 8
  %add77 = add i64 %65, %63
  %arrayidx79 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 4, i32 5
  %66 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %add77, ptr %arrayidx79, align 8
  %67 = load ptr, ptr %stats, align 4
  %arrayidx82 = getelementptr i64, ptr %67, i32 %add72
  %68 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx82, align 8
  %arrayidx85 = getelementptr i64, ptr %67, i32 %add75
  %70 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arrayidx85, align 8
  %add86 = add i64 %71, %69
  %arrayidx88 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 4, i32 6
  %72 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %add86, ptr %arrayidx88, align 8
  %73 = load ptr, ptr %stats, align 4
  %add90 = add i32 %mul, 74
  %arrayidx91 = getelementptr i64, ptr %73, i32 %add90
  %74 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %arrayidx91, align 8
  %add93 = add i32 %mul, 107
  %arrayidx94 = getelementptr i64, ptr %73, i32 %add93
  %76 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %arrayidx94, align 8
  %add95 = add i64 %77, %75
  %hist_tx = getelementptr inbounds %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 5
  %78 = ptrtoint ptr %hist_tx to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %add95, ptr %hist_tx, align 8
  %79 = load ptr, ptr %stats, align 4
  %add98 = add i32 %mul, 75
  %arrayidx99 = getelementptr i64, ptr %79, i32 %add98
  %80 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %arrayidx99, align 8
  %add101 = add i32 %mul, 108
  %arrayidx102 = getelementptr i64, ptr %79, i32 %add101
  %82 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %arrayidx102, align 8
  %add103 = add i64 %83, %81
  %arrayidx105 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 5, i32 1
  %84 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %add103, ptr %arrayidx105, align 8
  %85 = load ptr, ptr %stats, align 4
  %add107 = add i32 %mul, 76
  %arrayidx108 = getelementptr i64, ptr %85, i32 %add107
  %86 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %arrayidx108, align 8
  %add110 = add i32 %mul, 109
  %arrayidx111 = getelementptr i64, ptr %85, i32 %add110
  %88 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %arrayidx111, align 8
  %add112 = add i64 %89, %87
  %arrayidx114 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 5, i32 2
  %90 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %add112, ptr %arrayidx114, align 8
  %91 = load ptr, ptr %stats, align 4
  %add116 = add i32 %mul, 77
  %arrayidx117 = getelementptr i64, ptr %91, i32 %add116
  %92 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %arrayidx117, align 8
  %add119 = add i32 %mul, 110
  %arrayidx120 = getelementptr i64, ptr %91, i32 %add119
  %94 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %arrayidx120, align 8
  %add121 = add i64 %95, %93
  %arrayidx123 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 5, i32 3
  %96 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %add121, ptr %arrayidx123, align 8
  %97 = load ptr, ptr %stats, align 4
  %add125 = add i32 %mul, 78
  %arrayidx126 = getelementptr i64, ptr %97, i32 %add125
  %98 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %arrayidx126, align 8
  %add128 = add i32 %mul, 111
  %arrayidx129 = getelementptr i64, ptr %97, i32 %add128
  %100 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %arrayidx129, align 8
  %add130 = add i64 %101, %99
  %arrayidx132 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 5, i32 4
  %102 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %add130, ptr %arrayidx132, align 8
  %103 = load ptr, ptr %stats, align 4
  %add134 = add i32 %mul, 79
  %arrayidx135 = getelementptr i64, ptr %103, i32 %add134
  %104 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %arrayidx135, align 8
  %add137 = add i32 %mul, 112
  %arrayidx138 = getelementptr i64, ptr %103, i32 %add137
  %106 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %arrayidx138, align 8
  %add139 = add i64 %107, %105
  %arrayidx141 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 5, i32 5
  %108 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %add139, ptr %arrayidx141, align 8
  %109 = load ptr, ptr %stats, align 4
  %arrayidx144 = getelementptr i64, ptr %109, i32 %add134
  %110 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %arrayidx144, align 8
  %arrayidx147 = getelementptr i64, ptr %109, i32 %add137
  %112 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %arrayidx147, align 8
  %add148 = add i64 %113, %111
  %arrayidx150 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 5, i32 6
  %114 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %add148, ptr %arrayidx150, align 8
  tail call void @mutex_unlock(ptr noundef %stats_lock) #7
  %115 = ptrtoint ptr %ranges to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @lan966x_rmon_ranges, ptr %ranges, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan966x_stats_get(ptr nocapture noundef readonly %dev, ptr nocapture noundef %stats) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lan966x1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %lan966x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lan966x1, align 4
  %chip_port = getelementptr i8, ptr %dev, i32 2312
  %2 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_port, align 4
  %conv = zext i8 %3 to i32
  %num_stats = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %num_stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_stats, align 4
  %mul = mul i32 %5, %conv
  %stats_lock = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %stats_lock, i32 noundef 0) #7
  %stats2 = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %stats2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stats2, align 4
  %arrayidx = getelementptr i64, ptr %7, i32 %mul
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx, align 8
  %add4 = add i32 %mul, 48
  %arrayidx5 = getelementptr i64, ptr %7, i32 %add4
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx5, align 8
  %add6 = add i64 %11, %9
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %12 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %add6, ptr %rx_bytes, align 8
  %13 = load ptr, ptr %stats2, align 4
  %add8 = add i32 %mul, 4
  %arrayidx9 = getelementptr i64, ptr %13, i32 %add8
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx9, align 8
  %add11 = add i32 %mul, 5
  %arrayidx12 = getelementptr i64, ptr %13, i32 %add11
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx12, align 8
  %add13 = add i64 %17, %15
  %add15 = add i32 %mul, 6
  %arrayidx16 = getelementptr i64, ptr %13, i32 %add15
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx16, align 8
  %add17 = add i64 %add13, %19
  %add19 = add i32 %mul, 7
  %arrayidx20 = getelementptr i64, ptr %13, i32 %add19
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx20, align 8
  %add21 = add i64 %add17, %21
  %add23 = add i32 %mul, 8
  %arrayidx24 = getelementptr i64, ptr %13, i32 %add23
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx24, align 8
  %add25 = add i64 %add21, %23
  %add27 = add i32 %mul, 9
  %arrayidx28 = getelementptr i64, ptr %13, i32 %add27
  %24 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx28, align 8
  %add29 = add i64 %add25, %25
  %add31 = add i32 %mul, 10
  %arrayidx32 = getelementptr i64, ptr %13, i32 %add31
  %26 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx32, align 8
  %add33 = add i64 %add29, %27
  %add35 = add i32 %mul, 11
  %arrayidx36 = getelementptr i64, ptr %13, i32 %add35
  %28 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx36, align 8
  %add37 = add i64 %add33, %29
  %add39 = add i32 %mul, 12
  %arrayidx40 = getelementptr i64, ptr %13, i32 %add39
  %30 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx40, align 8
  %add41 = add i64 %add37, %31
  %add43 = add i32 %mul, 13
  %arrayidx44 = getelementptr i64, ptr %13, i32 %add43
  %32 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx44, align 8
  %add45 = add i64 %add41, %33
  %add47 = add i32 %mul, 14
  %arrayidx48 = getelementptr i64, ptr %13, i32 %add47
  %34 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx48, align 8
  %add49 = add i64 %add45, %35
  %add51 = add i32 %mul, 15
  %arrayidx52 = getelementptr i64, ptr %13, i32 %add51
  %36 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx52, align 8
  %add53 = add i64 %add49, %37
  %add55 = add i32 %mul, 18
  %arrayidx56 = getelementptr i64, ptr %13, i32 %add55
  %38 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx56, align 8
  %add57 = add i64 %add53, %39
  %add59 = add i32 %mul, 52
  %arrayidx60 = getelementptr i64, ptr %13, i32 %add59
  %40 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx60, align 8
  %add61 = add i64 %add57, %41
  %add63 = add i32 %mul, 53
  %arrayidx64 = getelementptr i64, ptr %13, i32 %add63
  %42 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx64, align 8
  %add65 = add i64 %add61, %43
  %add67 = add i32 %mul, 54
  %arrayidx68 = getelementptr i64, ptr %13, i32 %add67
  %44 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx68, align 8
  %add69 = add i64 %add65, %45
  %add71 = add i32 %mul, 57
  %arrayidx72 = getelementptr i64, ptr %13, i32 %add71
  %46 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx72, align 8
  %add73 = add i64 %add69, %47
  %add75 = add i32 %mul, 58
  %arrayidx76 = getelementptr i64, ptr %13, i32 %add75
  %48 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx76, align 8
  %add77 = add i64 %add73, %49
  %add79 = add i32 %mul, 59
  %arrayidx80 = getelementptr i64, ptr %13, i32 %add79
  %50 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %arrayidx80, align 8
  %add81 = add i64 %add77, %51
  %add83 = add i32 %mul, 60
  %arrayidx84 = getelementptr i64, ptr %13, i32 %add83
  %52 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx84, align 8
  %add85 = add i64 %add81, %53
  %add87 = add i32 %mul, 61
  %arrayidx88 = getelementptr i64, ptr %13, i32 %add87
  %54 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx88, align 8
  %add89 = add i64 %add85, %55
  %add91 = add i32 %mul, 62
  %arrayidx92 = getelementptr i64, ptr %13, i32 %add91
  %56 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %arrayidx92, align 8
  %add93 = add i64 %add89, %57
  %add95 = add i32 %mul, 63
  %arrayidx96 = getelementptr i64, ptr %13, i32 %add95
  %58 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx96, align 8
  %add97 = add i64 %add93, %59
  %60 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %add97, ptr %stats, align 8
  %61 = load ptr, ptr %stats2, align 4
  %add99 = add i32 %mul, 2
  %arrayidx100 = getelementptr i64, ptr %61, i32 %add99
  %62 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx100, align 8
  %add102 = add i32 %mul, 50
  %arrayidx103 = getelementptr i64, ptr %61, i32 %add102
  %64 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %arrayidx103, align 8
  %add104 = add i64 %65, %63
  %multicast = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 8
  %66 = ptrtoint ptr %multicast to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %add104, ptr %multicast, align 8
  %67 = load ptr, ptr %stats2, align 4
  %arrayidx107 = getelementptr i64, ptr %67, i32 %add8
  %68 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx107, align 8
  %arrayidx110 = getelementptr i64, ptr %67, i32 %add11
  %70 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arrayidx110, align 8
  %add111 = add i64 %71, %69
  %arrayidx114 = getelementptr i64, ptr %67, i32 %add15
  %72 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx114, align 8
  %add115 = add i64 %add111, %73
  %arrayidx118 = getelementptr i64, ptr %67, i32 %add19
  %74 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %arrayidx118, align 8
  %add119 = add i64 %add115, %75
  %arrayidx122 = getelementptr i64, ptr %67, i32 %add23
  %76 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %arrayidx122, align 8
  %add123 = add i64 %add119, %77
  %arrayidx126 = getelementptr i64, ptr %67, i32 %add55
  %78 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %arrayidx126, align 8
  %add127 = add i64 %add123, %79
  %rx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 4
  %80 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %add127, ptr %rx_errors, align 8
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %81 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rx_dropped, align 8
  %conv129 = zext i32 %82 to i64
  %83 = load ptr, ptr %stats2, align 4
  %arrayidx132 = getelementptr i64, ptr %83, i32 %add55
  %84 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %arrayidx132, align 8
  %add133 = add i64 %85, %conv129
  %add135 = add i32 %mul, 114
  %arrayidx136 = getelementptr i64, ptr %83, i32 %add135
  %86 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %arrayidx136, align 8
  %add137 = add i64 %add133, %87
  %add139 = add i32 %mul, 115
  %arrayidx140 = getelementptr i64, ptr %83, i32 %add139
  %88 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %arrayidx140, align 8
  %add141 = add i64 %add137, %89
  %rx_dropped142 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 6
  %90 = ptrtoint ptr %rx_dropped142 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %add141, ptr %rx_dropped142, align 8
  %91 = load ptr, ptr %stats2, align 4
  %add146 = add i32 %mul, 116
  %arrayidx147 = getelementptr i64, ptr %91, i32 %add146
  %92 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %arrayidx147, align 8
  %add150 = add i32 %mul, 124
  %arrayidx151 = getelementptr i64, ptr %91, i32 %add150
  %94 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %arrayidx151, align 8
  %add152 = add i64 %95, %93
  %add154 = add i64 %add152, %add141
  store i64 %add154, ptr %rx_dropped142, align 8
  %96 = load ptr, ptr %stats2, align 4
  %add146.1 = add i32 %mul, 117
  %arrayidx147.1 = getelementptr i64, ptr %96, i32 %add146.1
  %97 = ptrtoint ptr %arrayidx147.1 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %arrayidx147.1, align 8
  %add150.1 = add i32 %mul, 125
  %arrayidx151.1 = getelementptr i64, ptr %96, i32 %add150.1
  %99 = ptrtoint ptr %arrayidx151.1 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %arrayidx151.1, align 8
  %add152.1 = add i64 %100, %98
  %add154.1 = add i64 %add152.1, %add154
  store i64 %add154.1, ptr %rx_dropped142, align 8
  %101 = load ptr, ptr %stats2, align 4
  %add146.2 = add i32 %mul, 118
  %arrayidx147.2 = getelementptr i64, ptr %101, i32 %add146.2
  %102 = ptrtoint ptr %arrayidx147.2 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %arrayidx147.2, align 8
  %add150.2 = add i32 %mul, 126
  %arrayidx151.2 = getelementptr i64, ptr %101, i32 %add150.2
  %104 = ptrtoint ptr %arrayidx151.2 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %arrayidx151.2, align 8
  %add152.2 = add i64 %105, %103
  %add154.2 = add i64 %add152.2, %add154.1
  store i64 %add154.2, ptr %rx_dropped142, align 8
  %106 = load ptr, ptr %stats2, align 4
  %add146.3 = add i32 %mul, 119
  %arrayidx147.3 = getelementptr i64, ptr %106, i32 %add146.3
  %107 = ptrtoint ptr %arrayidx147.3 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %arrayidx147.3, align 8
  %add150.3 = add i32 %mul, 127
  %arrayidx151.3 = getelementptr i64, ptr %106, i32 %add150.3
  %109 = ptrtoint ptr %arrayidx151.3 to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %arrayidx151.3, align 8
  %add152.3 = add i64 %110, %108
  %add154.3 = add i64 %add152.3, %add154.2
  store i64 %add154.3, ptr %rx_dropped142, align 8
  %111 = load ptr, ptr %stats2, align 4
  %add146.4 = add i32 %mul, 120
  %arrayidx147.4 = getelementptr i64, ptr %111, i32 %add146.4
  %112 = ptrtoint ptr %arrayidx147.4 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %arrayidx147.4, align 8
  %add150.4 = add i32 %mul, 128
  %arrayidx151.4 = getelementptr i64, ptr %111, i32 %add150.4
  %114 = ptrtoint ptr %arrayidx151.4 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %arrayidx151.4, align 8
  %add152.4 = add i64 %115, %113
  %add154.4 = add i64 %add152.4, %add154.3
  store i64 %add154.4, ptr %rx_dropped142, align 8
  %116 = load ptr, ptr %stats2, align 4
  %add146.5 = add i32 %mul, 121
  %arrayidx147.5 = getelementptr i64, ptr %116, i32 %add146.5
  %117 = ptrtoint ptr %arrayidx147.5 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %arrayidx147.5, align 8
  %add150.5 = add i32 %mul, 129
  %arrayidx151.5 = getelementptr i64, ptr %116, i32 %add150.5
  %119 = ptrtoint ptr %arrayidx151.5 to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %arrayidx151.5, align 8
  %add152.5 = add i64 %120, %118
  %add154.5 = add i64 %add152.5, %add154.4
  store i64 %add154.5, ptr %rx_dropped142, align 8
  %121 = load ptr, ptr %stats2, align 4
  %add146.6 = add i32 %mul, 122
  %arrayidx147.6 = getelementptr i64, ptr %121, i32 %add146.6
  %122 = ptrtoint ptr %arrayidx147.6 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %arrayidx147.6, align 8
  %add150.6 = add i32 %mul, 130
  %arrayidx151.6 = getelementptr i64, ptr %121, i32 %add150.6
  %124 = ptrtoint ptr %arrayidx151.6 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %arrayidx151.6, align 8
  %add152.6 = add i64 %125, %123
  %add154.6 = add i64 %add152.6, %add154.5
  store i64 %add154.6, ptr %rx_dropped142, align 8
  %126 = load ptr, ptr %stats2, align 4
  %add146.7 = add i32 %mul, 123
  %arrayidx147.7 = getelementptr i64, ptr %126, i32 %add146.7
  %127 = ptrtoint ptr %arrayidx147.7 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %arrayidx147.7, align 8
  %add150.7 = add i32 %mul, 131
  %arrayidx151.7 = getelementptr i64, ptr %126, i32 %add150.7
  %129 = ptrtoint ptr %arrayidx151.7 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %arrayidx151.7, align 8
  %add152.7 = add i64 %130, %128
  %add154.7 = add i64 %add152.7, %add154.6
  store i64 %add154.7, ptr %rx_dropped142, align 8
  %131 = load ptr, ptr %stats2, align 4
  %add156 = add i32 %mul, 67
  %arrayidx157 = getelementptr i64, ptr %131, i32 %add156
  %132 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %arrayidx157, align 8
  %add159 = add i32 %mul, 102
  %arrayidx160 = getelementptr i64, ptr %131, i32 %add159
  %134 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %arrayidx160, align 8
  %add161 = add i64 %135, %133
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %136 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %add161, ptr %tx_bytes, align 8
  %137 = load ptr, ptr %stats2, align 4
  %add163 = add i32 %mul, 74
  %arrayidx164 = getelementptr i64, ptr %137, i32 %add163
  %138 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %arrayidx164, align 8
  %add166 = add i32 %mul, 75
  %arrayidx167 = getelementptr i64, ptr %137, i32 %add166
  %140 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %arrayidx167, align 8
  %add168 = add i64 %141, %139
  %add170 = add i32 %mul, 76
  %arrayidx171 = getelementptr i64, ptr %137, i32 %add170
  %142 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %arrayidx171, align 8
  %add172 = add i64 %add168, %143
  %add174 = add i32 %mul, 77
  %arrayidx175 = getelementptr i64, ptr %137, i32 %add174
  %144 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %arrayidx175, align 8
  %add176 = add i64 %add172, %145
  %add178 = add i32 %mul, 78
  %arrayidx179 = getelementptr i64, ptr %137, i32 %add178
  %146 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %arrayidx179, align 8
  %add180 = add i64 %add176, %147
  %add182 = add i32 %mul, 79
  %arrayidx183 = getelementptr i64, ptr %137, i32 %add182
  %148 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %arrayidx183, align 8
  %add184 = add i64 %add180, %149
  %add186 = add i32 %mul, 80
  %arrayidx187 = getelementptr i64, ptr %137, i32 %add186
  %150 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %arrayidx187, align 8
  %add188 = add i64 %add184, %151
  %add190 = add i32 %mul, 107
  %arrayidx191 = getelementptr i64, ptr %137, i32 %add190
  %152 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %arrayidx191, align 8
  %add192 = add i64 %add188, %153
  %add194 = add i32 %mul, 108
  %arrayidx195 = getelementptr i64, ptr %137, i32 %add194
  %154 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %arrayidx195, align 8
  %add196 = add i64 %add192, %155
  %add198 = add i32 %mul, 109
  %arrayidx199 = getelementptr i64, ptr %137, i32 %add198
  %156 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %arrayidx199, align 8
  %add200 = add i64 %add196, %157
  %add202 = add i32 %mul, 110
  %arrayidx203 = getelementptr i64, ptr %137, i32 %add202
  %158 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %arrayidx203, align 8
  %add204 = add i64 %add200, %159
  %add206 = add i32 %mul, 111
  %arrayidx207 = getelementptr i64, ptr %137, i32 %add206
  %160 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %arrayidx207, align 8
  %add208 = add i64 %add204, %161
  %add210 = add i32 %mul, 112
  %arrayidx211 = getelementptr i64, ptr %137, i32 %add210
  %162 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %arrayidx211, align 8
  %add212 = add i64 %add208, %163
  %add214 = add i32 %mul, 113
  %arrayidx215 = getelementptr i64, ptr %137, i32 %add214
  %164 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %arrayidx215, align 8
  %add216 = add i64 %add212, %165
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %166 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %166)
  store i64 %add216, ptr %tx_packets, align 8
  %167 = load ptr, ptr %stats2, align 4
  %add218 = add i32 %mul, 72
  %arrayidx219 = getelementptr i64, ptr %167, i32 %add218
  %168 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %arrayidx219, align 8
  %add221 = add i32 %mul, 97
  %arrayidx222 = getelementptr i64, ptr %167, i32 %add221
  %170 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %arrayidx222, align 8
  %add223 = add i64 %171, %169
  %tx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  %172 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_store8_noabort(i32 %172)
  store i64 %add223, ptr %tx_dropped, align 8
  %173 = load ptr, ptr %stats2, align 4
  %add225 = add i32 %mul, 71
  %arrayidx226 = getelementptr i64, ptr %173, i32 %add225
  %174 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %arrayidx226, align 8
  %collisions = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 9
  %176 = ptrtoint ptr %collisions to i32
  call void @__asan_store8_noabort(i32 %176)
  store i64 %175, ptr %collisions, align 8
  tail call void @mutex_unlock(ptr noundef %stats_lock) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lan966x_stats_init(ptr noundef %lan966x) local_unnamed_addr #1 align 64 {
entry:
  %queue_name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %queue_name) #7
  %stats_layout = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 13
  %0 = call ptr @memset(ptr %queue_name, i32 255, i32 32)
  %1 = ptrtoint ptr %stats_layout to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @lan966x_stats_layout, ptr %stats_layout, align 4
  %num_stats = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 14
  %2 = ptrtoint ptr %num_stats to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 132, ptr %num_stats, align 4
  %num_phys_ports = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 1
  %3 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_phys_ports, align 4
  %conv = zext i8 %4 to i32
  %5 = mul nuw nsw i32 %conv, 1056
  %6 = ptrtoint ptr %lan966x to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lan966x, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef %5, i32 noundef 3520) #7
  %stats = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 16
  %8 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i, ptr %stats, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %stats_lock = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %stats_lock, ptr noundef nonnull @.str, ptr noundef nonnull @lan966x_stats_init.__key) #7
  %9 = ptrtoint ptr %lan966x to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lan966x, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i, label %do.body.dev_name.exit_crit_edge

do.body.dev_name.exit_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.body.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %14, %if.end.i ], [ %12, %do.body.dev_name.exit_crit_edge ]
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %queue_name, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i)
  %call7 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.2, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull %queue_name) #7
  %stats_queue = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 18
  %15 = ptrtoint ptr %stats_queue to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7, ptr %stats_queue, align 4
  %stats_work = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 17
  call void @__init_work(ptr noundef %stats_work, i32 noundef 0) #7
  %16 = ptrtoint ptr %stats_work to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %stats_work, align 4
  %lockdep_map = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 17, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @lan966x_stats_init.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry16 = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 17, i32 0, i32 1
  %17 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 17, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry16, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 17, i32 0, i32 2
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @lan966x_check_stats_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 17, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.6, ptr noundef nonnull @lan966x_stats_init.__key.5) #7
  %20 = ptrtoint ptr %stats_queue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stats_queue, align 4
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %stats_work, i32 noundef 200) #7
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dev_name.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %queue_name) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan966x_check_stats_work(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -9156
  tail call fastcc void @lan966x_stats_update(ptr noundef %add.ptr)
  %stats_queue = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %stats_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats_queue, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %work, i32 noundef 200) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_ethtool_get_pauseparam(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_set_pauseparam(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lan966x_stats_update(ptr noundef %lan966x) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stats_lock = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %stats_lock, i32 noundef 0) #7
  %num_phys_ports = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 1
  %0 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_phys_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp47.not = icmp eq i8 %1, 0
  br i1 %cmp47.not, label %entry.for.end25_crit_edge, label %for.body.lr.ph

entry.for.end25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end25

for.body.lr.ph:                                   ; preds = %entry
  %num_stats = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 14
  %arrayidx.i.i = getelementptr %struct.lan966x, ptr %lan966x, i32 0, i32 3, i32 52
  %stats_layout = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 13
  %stats = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 16
  br label %do.end13

do.end13:                                         ; preds = %for.end.do.end13_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc24, %for.end.do.end13_crit_edge ]
  %2 = ptrtoint ptr %num_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_stats, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %i.048) #7
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %6, i32 4248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i, i32 %4) #7, !srcloc !30
  %7 = ptrtoint ptr %num_stats to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_stats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1743.not = icmp eq i32 %8, 0
  br i1 %cmp1743.not, label %do.end13.for.end_crit_edge, label %for.body19.preheader

do.end13.for.end_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body19.preheader:                             ; preds = %do.end13
  %mul = mul i32 %3, %i.048
  br label %for.body19

for.body19:                                       ; preds = %lan966x_add_cnt.exit.for.body19_crit_edge, %for.body19.preheader
  %j.045 = phi i32 [ %inc22, %lan966x_add_cnt.exit.for.body19_crit_edge ], [ 0, %for.body19.preheader ]
  %idx.044 = phi i32 [ %inc, %lan966x_add_cnt.exit.for.body19_crit_edge ], [ %mul, %for.body19.preheader ]
  %9 = ptrtoint ptr %stats_layout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stats_layout, align 4
  %arrayidx = getelementptr %struct.lan966x_stat_layout, ptr %10, i32 %j.045
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stats, align 4
  %inc = add i32 %idx.044, 1
  %arrayidx21 = getelementptr i64, ptr %14, i32 %idx.044
  call void @__sanitizer_cov_trace_const_cmp4(i32 896, i32 %12)
  %cmp20.not.i.i = icmp slt i32 %12, 896
  br i1 %cmp20.not.i.i, label %for.body19.lan_rd.exit_crit_edge, label %do.end36.i.i, !prof !31

for.body19.lan_rd.exit_crit_edge:                 ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan_rd.exit

do.end36.i.i:                                     ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 239, i32 noundef 9, ptr noundef null) #7
  br label %lan_rd.exit

lan_rd.exit:                                      ; preds = %do.end36.i.i, %for.body19.lan_rd.exit_crit_edge
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %mul.i.i = shl i32 %12, 2
  %add.ptr81.i.i = getelementptr i8, ptr %16, i32 %mul.i.i
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i) #7, !srcloc !32
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  %conv.i = zext i32 %18 to i64
  %19 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx21, align 8
  %and.i = and i64 %20, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %conv.i)
  %cmp.i = icmp ugt i64 %and.i, %conv.i
  br i1 %cmp.i, label %if.then.i, label %lan_rd.exit.lan966x_add_cnt.exit_crit_edge

lan_rd.exit.lan966x_add_cnt.exit_crit_edge:       ; preds = %lan_rd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan966x_add_cnt.exit

if.then.i:                                        ; preds = %lan_rd.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add i64 %20, 4294967296
  %21 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %add.i, ptr %arrayidx21, align 8
  br label %lan966x_add_cnt.exit

lan966x_add_cnt.exit:                             ; preds = %if.then.i, %lan_rd.exit.lan966x_add_cnt.exit_crit_edge
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx21, align 8
  %and2.i = and i64 %23, -4294967296
  %add4.i = or i64 %and2.i, %conv.i
  store i64 %add4.i, ptr %arrayidx21, align 8
  %inc22 = add nuw i32 %j.045, 1
  %24 = ptrtoint ptr %num_stats to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_stats, align 4
  %cmp17 = icmp ult i32 %inc22, %25
  br i1 %cmp17, label %lan966x_add_cnt.exit.for.body19_crit_edge, label %lan966x_add_cnt.exit.for.end_crit_edge

lan966x_add_cnt.exit.for.end_crit_edge:           ; preds = %lan966x_add_cnt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

lan966x_add_cnt.exit.for.body19_crit_edge:        ; preds = %lan966x_add_cnt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body19

for.end:                                          ; preds = %lan966x_add_cnt.exit.for.end_crit_edge, %do.end13.for.end_crit_edge
  %inc24 = add nuw nsw i32 %i.048, 1
  %26 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num_phys_ports, align 4
  %conv = zext i8 %27 to i32
  %cmp = icmp ult i32 %inc24, %conv
  br i1 %cmp, label %for.end.do.end13_crit_edge, label %for.end.for.end25_crit_edge

for.end.for.end25_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end25

for.end.do.end13_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

for.end25:                                        ; preds = %for.end.for.end25_crit_edge, %entry.for.end25_crit_edge
  tail call void @mutex_unlock(ptr noundef %stats_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_ksettings_get(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_ksettings_set(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !13, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @lan966x_ethtool_ops, !1, !"lan966x_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_ethtool.c", i32 548, i32 26}
!2 = !{ptr @lan966x_stats_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_ethtool.c", i32 673, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_ethtool.c", i32 674, i32 43}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_ethtool.c", i32 676, i32 25}
!9 = !{ptr @lan966x_stats_init.__key.3, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_ethtool.c", i32 677, i32 2}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @lan966x_stats_init.__key.5, !10, !"__key", i1 false, i1 false}
!13 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.h", i32 238, i32 2}
!16 = !{ptr @lan966x_rmon_ranges, !17, !"lan966x_rmon_ranges", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_ethtool.c", i32 430, i32 45}
!18 = !{ptr @lan966x_stats_layout, !19, !"lan966x_stats_layout", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_ethtool.c", i32 11, i32 41}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 2157808824}
!30 = !{i64 6550132}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 6550550}
!33 = !{i64 2157808346}
