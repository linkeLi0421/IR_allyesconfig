; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ethtool_rmon_hist_range = type { i16, i16 }
%struct.sparx5 = type { ptr, ptr, i32, i32, [332 x ptr], i32, %struct.mutex, [65 x ptr], i32, i32, i32, ptr, ptr, %struct.mutex, %struct.delayed_work, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, [6 x i8], ptr, [3 x i32], [3 x i32], [3 x i32], [4096 x [3 x i32]], %struct.list_head, %struct.mutex, %struct.delayed_work, ptr, i8, i32, i32, %struct.sparx5_rx, %struct.sparx5_tx }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sparx5_rx = type { ptr, ptr, [64 x [15 x ptr]], i32, i32, i32, %struct.napi_struct, i32, ptr, i64 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sparx5_tx = type { ptr, ptr, %struct.list_head, i32, i32, i64, i64 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_eth_mac_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_eth_ctrl_stats = type { i64, i64, i64 }
%struct.ethtool_rmon_stats = type { i64, i64, i64, i64, [10 x i64], [10 x i64] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.sparx5_port = type { ptr, ptr, ptr, ptr, %struct.sparx5_port_config, %struct.phylink_config, ptr, %struct.phylink_pcs, i16, i16, i16, i8, i8, i8, i8, i32, i32, i32, [9 x i32], i8, %struct.hrtimer }
%struct.sparx5_port_config = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.phylink_pcs = type { ptr, i8 }

@sparx5_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sparx5_get_sset_strings, ptr null, ptr @sparx5_get_sset_data, ptr null, ptr null, ptr null, ptr null, ptr @sparx5_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sparx5_get_link_settings, ptr @sparx5_set_link_settings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sparx5_get_eth_phy_stats, ptr @sparx5_get_eth_mac_stats, ptr @sparx5_get_eth_mac_ctrl_stats, ptr @sparx5_get_eth_rmon_stats, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@sparx5_stats_layout = internal constant { [70 x ptr], [72 x i8] } { [70 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], [72 x i8] zeroinitializer }, align 32
@sparx_stats_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&sparx5->queue_stats_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-stats\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@sparx_stats_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&sparx5->stats_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@sparx_stats_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&sparx5->stats_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/microchip/sparx5/sparx5_main.h\00", [44 x i8] zeroinitializer }, align 32
@sparx5_rmon_ranges = internal constant { [8 x %struct.ethtool_rmon_hist_range], [32 x i8] } { [8 x %struct.ethtool_rmon_hist_range] [%struct.ethtool_rmon_hist_range { i16 0, i16 64 }, %struct.ethtool_rmon_hist_range { i16 65, i16 127 }, %struct.ethtool_rmon_hist_range { i16 128, i16 255 }, %struct.ethtool_rmon_hist_range { i16 256, i16 511 }, %struct.ethtool_rmon_hist_range { i16 512, i16 1023 }, %struct.ethtool_rmon_hist_range { i16 1024, i16 1518 }, %struct.ethtool_rmon_hist_range { i16 1519, i16 10239 }, %struct.ethtool_rmon_hist_range zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mm_rx_assembly_err_cnt\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mm_rx_assembly_ok_cnt\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mm_rx_merge_frag_cnt\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mm_rx_smd_err_cnt\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mm_tx_pfragment_cnt\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_bad_bytes_cnt\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pmac_rx_bad_bytes_cnt\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_in_bytes_cnt\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_ipg_shrink_cnt\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_sync_lost_err_cnt\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_tagged_frms_cnt\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_untagged_frms_cnt\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_out_bytes_cnt\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx_tagged_frms_cnt\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx_untagged_frms_cnt\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx_hih_cksm_err_cnt\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pmac_rx_hih_cksm_err_cnt\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_xgmii_prot_err_cnt\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pmac_rx_xgmii_prot_err_cnt\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_port_policer_drop\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_fwd_green_p0\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_fwd_green_p1\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_fwd_green_p2\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_fwd_green_p3\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_fwd_green_p4\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_fwd_green_p5\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_fwd_green_p6\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_fwd_green_p7\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_fwd_yellow_p0\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_fwd_yellow_p1\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_fwd_yellow_p2\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_fwd_yellow_p3\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_fwd_yellow_p4\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_fwd_yellow_p5\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_fwd_yellow_p6\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_fwd_yellow_p7\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_port_drop_green_p0\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_port_drop_green_p1\00", [42 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_port_drop_green_p2\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_port_drop_green_p3\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_port_drop_green_p4\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_port_drop_green_p5\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_port_drop_green_p6\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_port_drop_green_p7\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rx_port_drop_yellow_p0\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rx_port_drop_yellow_p1\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rx_port_drop_yellow_p2\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rx_port_drop_yellow_p3\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rx_port_drop_yellow_p4\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rx_port_drop_yellow_p5\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rx_port_drop_yellow_p6\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rx_port_drop_yellow_p7\00", [41 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_port_green_p0\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_port_green_p1\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_port_green_p2\00", [47 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_port_green_p3\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_port_green_p4\00", [47 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_port_green_p5\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_port_green_p6\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_port_green_p7\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_port_yellow_p0\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_port_yellow_p1\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_port_yellow_p2\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_port_yellow_p3\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_port_yellow_p4\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_port_yellow_p5\00", [46 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_port_yellow_p6\00", [46 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_port_yellow_p7\00", [46 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_local_drop\00", [18 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_local_drop\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 23, i64 26, i64 27]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 32, i64 23, i64 26, i64 27]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 23, i64 26, i64 27]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 23, i64 26, i64 27]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 32, i64 23, i64 26, i64 27]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 23, i64 26, i64 27]
@___asan_gen_.83 = private unnamed_addr constant [19 x i8] c"sparx5_ethtool_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1186, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant [20 x i8] c"sparx5_stats_layout\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 128, i32 26 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1213, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1219, i32 43 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1221, i32 24 }
@___asan_gen_.107 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1222, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [55 x i8] c"../drivers/net/ethernet/microchip/sparx5/sparx5_main.h\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 360, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [19 x i8] c"sparx5_rmon_ranges\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 800, i32 45 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 129, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 130, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 131, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 132, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 133, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 134, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 135, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 136, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 137, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 138, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 139, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 140, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 141, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 142, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 143, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 144, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 145, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 146, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 147, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 148, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 149, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 150, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 151, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 152, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 153, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 154, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 155, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 156, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 157, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 158, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 159, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 160, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 161, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 162, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 163, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 164, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 165, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 166, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 167, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 168, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 169, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 170, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 171, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 172, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 173, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 174, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 175, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 176, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 177, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 178, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 179, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 180, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 181, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 182, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 183, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 184, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 185, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 186, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 187, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 188, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 189, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 190, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 191, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 192, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 193, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 194, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 195, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 196, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 197, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.327 = private constant [58 x i8] c"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 198, i32 2 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @sparx5_ethtool_ops, ptr @sparx5_stats_layout, ptr @sparx_stats_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @sparx_stats_init.__key.3, ptr @.str.4, ptr @sparx_stats_init.__key.5, ptr @.str.6, ptr @.str.7, ptr @sparx5_rmon_ranges, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_stats_layout to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx_stats_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx_stats_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx_stats_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_rmon_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sparx5_get_stats64(ptr nocapture noundef readonly %ndev, ptr nocapture noundef %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sparx51 = getelementptr i8, ptr %ndev, i32 2308
  %0 = ptrtoint ptr %sparx51 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sparx51, align 4
  %stats2 = getelementptr inbounds %struct.sparx5, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %stats2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %portno = getelementptr i8, ptr %ndev, i32 2396
  %4 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %portno, align 4
  %conv = zext i16 %5 to i32
  %num_stats = getelementptr inbounds %struct.sparx5, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %num_stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_stats, align 8
  %mul = mul i32 %7, %conv
  %arrayidx = getelementptr i64, ptr %3, i32 %mul
  %arrayidx4 = getelementptr i64, ptr %arrayidx, i32 8
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx4, align 8
  %arrayidx5 = getelementptr i64, ptr %arrayidx, i32 9
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx5, align 8
  %add = add i64 %11, %9
  %arrayidx6 = getelementptr i64, ptr %arrayidx, i32 10
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx6, align 8
  %add7 = add i64 %add, %13
  %arrayidx8 = getelementptr i64, ptr %arrayidx, i32 11
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx8, align 8
  %add9 = add i64 %add7, %15
  %16 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %add9, ptr %stats, align 8
  %arrayidx10 = getelementptr i64, ptr %arrayidx, i32 2
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx10, align 8
  %arrayidx11 = getelementptr i64, ptr %arrayidx, i32 3
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx11, align 8
  %add12 = add i64 %20, %18
  %arrayidx13 = getelementptr i64, ptr %arrayidx, i32 4
  %21 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx13, align 8
  %add14 = add i64 %add12, %22
  %arrayidx15 = getelementptr i64, ptr %arrayidx, i32 5
  %23 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx15, align 8
  %add16 = add i64 %add14, %24
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %25 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %add16, ptr %tx_packets, align 8
  %arrayidx17 = getelementptr i64, ptr %arrayidx, i32 22
  %26 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx17, align 8
  %arrayidx18 = getelementptr i64, ptr %arrayidx, i32 23
  %28 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx18, align 8
  %add19 = add i64 %29, %27
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %30 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %add19, ptr %rx_bytes, align 8
  %arrayidx20 = getelementptr i64, ptr %arrayidx, i32 16
  %31 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx20, align 8
  %arrayidx21 = getelementptr i64, ptr %arrayidx, i32 17
  %33 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx21, align 8
  %add22 = add i64 %34, %32
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %35 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %add22, ptr %tx_bytes, align 8
  %arrayidx23 = getelementptr i64, ptr %arrayidx, i32 29
  %36 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx23, align 8
  %arrayidx24 = getelementptr i64, ptr %arrayidx, i32 30
  %38 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx24, align 8
  %add25 = add i64 %39, %37
  %arrayidx26 = getelementptr i64, ptr %arrayidx, i32 31
  %40 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx26, align 8
  %add27 = add i64 %add25, %41
  %arrayidx28 = getelementptr i64, ptr %arrayidx, i32 32
  %42 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx28, align 8
  %add29 = add i64 %add27, %43
  %arrayidx30 = getelementptr i64, ptr %arrayidx, i32 33
  %44 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx30, align 8
  %add31 = add i64 %add29, %45
  %arrayidx32 = getelementptr i64, ptr %arrayidx, i32 34
  %46 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx32, align 8
  %add33 = add i64 %add31, %47
  %arrayidx34 = getelementptr i64, ptr %arrayidx, i32 12
  %48 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx34, align 8
  %add35 = add i64 %add33, %49
  %arrayidx36 = getelementptr i64, ptr %arrayidx, i32 13
  %50 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %arrayidx36, align 8
  %add37 = add i64 %add35, %51
  %arrayidx38 = getelementptr i64, ptr %arrayidx, i32 14
  %52 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx38, align 8
  %add39 = add i64 %add37, %53
  %arrayidx40 = getelementptr i64, ptr %arrayidx, i32 15
  %54 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx40, align 8
  %add41 = add i64 %add39, %55
  %rx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 4
  %56 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %add41, ptr %rx_errors, align 8
  %arrayidx42 = getelementptr i64, ptr %arrayidx, i32 20
  %57 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx42, align 8
  %arrayidx43 = getelementptr i64, ptr %arrayidx, i32 21
  %59 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx43, align 8
  %add44 = add i64 %60, %58
  %arrayidx45 = getelementptr i64, ptr %arrayidx, i32 19
  %61 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx45, align 8
  %add46 = add i64 %add44, %62
  %tx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 5
  %63 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %add46, ptr %tx_errors, align 8
  %64 = load i64, ptr %arrayidx6, align 8
  %arrayidx48 = getelementptr i64, ptr %arrayidx, i32 27
  %65 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx48, align 8
  %add49 = add i64 %66, %64
  %multicast = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 8
  %67 = ptrtoint ptr %multicast to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %add49, ptr %multicast, align 8
  %68 = load i64, ptr %arrayidx45, align 8
  %69 = load i64, ptr %arrayidx42, align 8
  %add52 = add i64 %69, %68
  %arrayidx53 = getelementptr i64, ptr %arrayidx, i32 6
  %70 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arrayidx53, align 8
  %add54 = add i64 %add52, %71
  %collisions = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 9
  %72 = ptrtoint ptr %collisions to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %add54, ptr %collisions, align 8
  %73 = load i64, ptr %arrayidx23, align 8
  %74 = load i64, ptr %arrayidx24, align 8
  %add57 = add i64 %74, %73
  %75 = load i64, ptr %arrayidx26, align 8
  %add59 = add i64 %add57, %75
  %76 = load i64, ptr %arrayidx28, align 8
  %add61 = add i64 %add59, %76
  %77 = load i64, ptr %arrayidx30, align 8
  %add63 = add i64 %add61, %77
  %78 = load i64, ptr %arrayidx32, align 8
  %add65 = add i64 %add63, %78
  %rx_length_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 10
  %79 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %add65, ptr %rx_length_errors, align 8
  %80 = load i64, ptr %arrayidx34, align 8
  %81 = load i64, ptr %arrayidx36, align 8
  %add68 = add i64 %81, %80
  %rx_crc_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 12
  %82 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %add68, ptr %rx_crc_errors, align 8
  %83 = load i64, ptr %arrayidx38, align 8
  %84 = load i64, ptr %arrayidx40, align 8
  %add71 = add i64 %84, %83
  %rx_frame_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 13
  %85 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %add71, ptr %rx_frame_errors, align 8
  %86 = load i64, ptr %arrayidx42, align 8
  %tx_aborted_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 16
  %87 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %86, ptr %tx_aborted_errors, align 8
  %88 = load i64, ptr %arrayidx43, align 8
  %tx_carrier_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 17
  %89 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %88, ptr %tx_carrier_errors, align 8
  %90 = load i64, ptr %arrayidx45, align 8
  %tx_window_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 20
  %91 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %90, ptr %tx_window_errors, align 8
  %arrayidx75 = getelementptr i64, ptr %arrayidx, i32 94
  %92 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %arrayidx75, align 8
  %rx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 6
  %94 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %93, ptr %rx_dropped, align 8
  %arrayidx78 = getelementptr i64, ptr %arrayidx, i32 111
  %95 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %arrayidx78, align 8
  %add80 = add i64 %93, %96
  store i64 %add80, ptr %rx_dropped, align 8
  %arrayidx78.1 = getelementptr i64, ptr %arrayidx, i32 112
  %97 = ptrtoint ptr %arrayidx78.1 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %arrayidx78.1, align 8
  %add80.1 = add i64 %add80, %98
  store i64 %add80.1, ptr %rx_dropped, align 8
  %arrayidx78.2 = getelementptr i64, ptr %arrayidx, i32 113
  %99 = ptrtoint ptr %arrayidx78.2 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %arrayidx78.2, align 8
  %add80.2 = add i64 %add80.1, %100
  store i64 %add80.2, ptr %rx_dropped, align 8
  %arrayidx78.3 = getelementptr i64, ptr %arrayidx, i32 114
  %101 = ptrtoint ptr %arrayidx78.3 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %arrayidx78.3, align 8
  %add80.3 = add i64 %add80.2, %102
  store i64 %add80.3, ptr %rx_dropped, align 8
  %arrayidx78.4 = getelementptr i64, ptr %arrayidx, i32 115
  %103 = ptrtoint ptr %arrayidx78.4 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx78.4, align 8
  %add80.4 = add i64 %add80.3, %104
  store i64 %add80.4, ptr %rx_dropped, align 8
  %arrayidx78.5 = getelementptr i64, ptr %arrayidx, i32 116
  %105 = ptrtoint ptr %arrayidx78.5 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %arrayidx78.5, align 8
  %add80.5 = add i64 %add80.4, %106
  store i64 %add80.5, ptr %rx_dropped, align 8
  %arrayidx78.6 = getelementptr i64, ptr %arrayidx, i32 117
  %107 = ptrtoint ptr %arrayidx78.6 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %arrayidx78.6, align 8
  %add80.6 = add i64 %add80.5, %108
  store i64 %add80.6, ptr %rx_dropped, align 8
  %arrayidx78.7 = getelementptr i64, ptr %arrayidx, i32 118
  %109 = ptrtoint ptr %arrayidx78.7 to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %arrayidx78.7, align 8
  %add80.7 = add i64 %add80.6, %110
  store i64 %add80.7, ptr %rx_dropped, align 8
  %arrayidx78.8 = getelementptr i64, ptr %arrayidx, i32 119
  %111 = ptrtoint ptr %arrayidx78.8 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %arrayidx78.8, align 8
  %add80.8 = add i64 %add80.7, %112
  store i64 %add80.8, ptr %rx_dropped, align 8
  %arrayidx78.9 = getelementptr i64, ptr %arrayidx, i32 120
  %113 = ptrtoint ptr %arrayidx78.9 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %arrayidx78.9, align 8
  %add80.9 = add i64 %add80.8, %114
  store i64 %add80.9, ptr %rx_dropped, align 8
  %arrayidx78.10 = getelementptr i64, ptr %arrayidx, i32 121
  %115 = ptrtoint ptr %arrayidx78.10 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %arrayidx78.10, align 8
  %add80.10 = add i64 %add80.9, %116
  store i64 %add80.10, ptr %rx_dropped, align 8
  %arrayidx78.11 = getelementptr i64, ptr %arrayidx, i32 122
  %117 = ptrtoint ptr %arrayidx78.11 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %arrayidx78.11, align 8
  %add80.11 = add i64 %add80.10, %118
  store i64 %add80.11, ptr %rx_dropped, align 8
  %arrayidx78.12 = getelementptr i64, ptr %arrayidx, i32 123
  %119 = ptrtoint ptr %arrayidx78.12 to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %arrayidx78.12, align 8
  %add80.12 = add i64 %add80.11, %120
  store i64 %add80.12, ptr %rx_dropped, align 8
  %arrayidx78.13 = getelementptr i64, ptr %arrayidx, i32 124
  %121 = ptrtoint ptr %arrayidx78.13 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %arrayidx78.13, align 8
  %add80.13 = add i64 %add80.12, %122
  store i64 %add80.13, ptr %rx_dropped, align 8
  %arrayidx78.14 = getelementptr i64, ptr %arrayidx, i32 125
  %123 = ptrtoint ptr %arrayidx78.14 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %arrayidx78.14, align 8
  %add80.14 = add i64 %add80.13, %124
  store i64 %add80.14, ptr %rx_dropped, align 8
  %arrayidx78.15 = getelementptr i64, ptr %arrayidx, i32 126
  %125 = ptrtoint ptr %arrayidx78.15 to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %arrayidx78.15, align 8
  %add80.15 = add i64 %add80.14, %126
  store i64 %add80.15, ptr %rx_dropped, align 8
  %arrayidx81 = getelementptr i64, ptr %arrayidx, i32 144
  %127 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %arrayidx81, align 8
  %tx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  %129 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %128, ptr %tx_dropped, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sparx5_get_sset_strings(ptr nocapture noundef readonly %ndev, i32 noundef %sset, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sparx51 = getelementptr i8, ptr %ndev, i32 2308
  %0 = ptrtoint ptr %sparx51 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sparx51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp.not = icmp eq i32 %sset, 1
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_ethtool_stats = getelementptr inbounds %struct.sparx5, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num_ethtool_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ethtool_stats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp210.not = icmp eq i32 %3, 0
  br i1 %cmp210.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %stats_layout = getelementptr inbounds %struct.sparx5, ptr %1, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %idx.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %idx.011, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %4 = ptrtoint ptr %stats_layout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats_layout, align 8
  %arrayidx = getelementptr ptr, ptr %5, i32 %idx.011
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call3 = tail call ptr @strncpy(ptr noundef %add.ptr, ptr noundef %7, i32 noundef 32)
  %inc = add nuw i32 %idx.011, 1
  %8 = ptrtoint ptr %num_ethtool_stats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_ethtool_stats, align 4
  %cmp2 = icmp ult i32 %inc, %9
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sparx5_get_sset_data(ptr nocapture noundef readonly %ndev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sparx51 = getelementptr i8, ptr %ndev, i32 2308
  %0 = ptrtoint ptr %sparx51 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sparx51, align 4
  %portno2 = getelementptr i8, ptr %ndev, i32 2396
  %2 = ptrtoint ptr %portno2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %portno2, align 4
  %conv = zext i16 %3 to i32
  %stats3 = getelementptr inbounds %struct.sparx5, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %stats3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats3, align 4
  %num_stats = getelementptr inbounds %struct.sparx5, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %num_stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_stats, align 8
  %mul = mul i32 %7, %conv
  %arrayidx = getelementptr i64, ptr %5, i32 %mul
  %conf = getelementptr i8, ptr %ndev, i32 2320
  %8 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %conf, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.else [
    i32 23, label %entry.if.then_crit_edge
    i32 26, label %entry.if.then_crit_edge42
    i32 27, label %entry.if.then_crit_edge43
  ]

entry.if.then_crit_edge43:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge42:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge42, %entry.if.then_crit_edge43
  %11 = add nsw i32 %conv, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %11)
  %12 = icmp ult i32 %11, 32
  br i1 %12, label %if.then.sparx5_port_dev_index.exit_crit_edge, label %if.end.i

if.then.sparx5_port_dev_index.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_port_dev_index.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %3)
  %cmp.i.i = icmp ult i16 %3, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %3)
  %cmp1.i.i = icmp eq i16 %3, 64
  %spec.select.i.i = or i1 %cmp.i.i, %cmp1.i.i
  br i1 %spec.select.i.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = tail call i32 @llvm.smin.i32(i32 %conv, i32 12) #9
  br label %sparx5_port_dev_index.exit

if.end3.i:                                        ; preds = %if.end.i
  %14 = and i32 %conv, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %14)
  %15 = icmp eq i32 %14, 12
  %16 = and i32 %conv, 65528
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %16)
  %17 = icmp eq i32 %16, 48
  %18 = or i1 %15, %17
  br i1 %18, label %if.then5.i, label %if.end13.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %3)
  %cmp7.i = icmp ult i16 %3, 16
  %cond12.v.i = select i1 %cmp7.i, i32 -12, i32 -44
  %cond12.i = add nsw i32 %cond12.v.i, %conv
  br label %sparx5_port_dev_index.exit

if.end13.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub14.i = add nsw i32 %conv, -56
  br label %sparx5_port_dev_index.exit

sparx5_port_dev_index.exit:                       ; preds = %if.end13.i, %if.then5.i, %if.then2.i, %if.then.sparx5_port_dev_index.exit_crit_edge
  %retval.0.i = phi i32 [ %13, %if.then2.i ], [ %cond12.i, %if.then5.i ], [ %sub14.i, %if.end13.i ], [ %conv, %if.then.sparx5_port_dev_index.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %3)
  %cmp.i.i30 = icmp ult i16 %3, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %3)
  %cmp1.i.i31 = icmp eq i16 %3, 64
  %spec.select.i.i32 = or i1 %cmp.i.i30, %cmp1.i.i31
  br i1 %spec.select.i.i32, label %sparx5_port_dev_index.exit.sparx5_to_high_dev.exit_crit_edge, label %if.end.i33

sparx5_port_dev_index.exit.sparx5_to_high_dev.exit_crit_edge: ; preds = %sparx5_port_dev_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_to_high_dev.exit

if.end.i33:                                       ; preds = %sparx5_port_dev_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  %19 = and i32 %conv, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %19)
  %20 = icmp eq i32 %19, 12
  %21 = and i32 %conv, 65528
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %21)
  %22 = icmp eq i32 %21, 48
  %23 = or i1 %20, %22
  %..i = select i1 %23, i32 17, i32 29
  br label %sparx5_to_high_dev.exit

sparx5_to_high_dev.exit:                          ; preds = %if.end.i33, %sparx5_port_dev_index.exit.sparx5_to_high_dev.exit_crit_edge
  %retval.0.i34 = phi i32 [ 102, %sparx5_port_dev_index.exit.sparx5_to_high_dev.exit_crit_edge ], [ %..i, %if.end.i33 ]
  %add.i = add nsw i32 %retval.0.i34, %retval.0.i
  %arrayidx.i = getelementptr %struct.sparx5, ptr %1, i32 0, i32 4, i32 %add.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  tail call fastcc void @sparx5_get_dev_misc_stats(ptr noundef %arrayidx, ptr noundef %25)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i35 = getelementptr %struct.sparx5, ptr %1, i32 0, i32 4, i32 9
  %26 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i35, align 4
  tail call fastcc void @sparx5_get_asm_misc_stats(ptr noundef %arrayidx, ptr noundef %27, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.else, %sparx5_to_high_dev.exit
  %28 = ptrtoint ptr %stats3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stats3, align 4
  %30 = ptrtoint ptr %num_stats to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_stats, align 8
  %mul.i = mul i32 %31, %conv
  %arrayidx.i36 = getelementptr i64, ptr %29, i32 %mul.i
  %arrayidx1.i = getelementptr i64, ptr %arrayidx.i36, i32 94
  call void @__sanitizer_cov_trace_const_cmp2(i16 70, i16 %3)
  %cmp20.not.i.i.i = icmp ult i16 %3, 70
  br i1 %cmp20.not.i.i.i, label %if.end.spx5_rd.exit.i_crit_edge, label %do.end36.i.i.i, !prof !169

if.end.spx5_rd.exit.i_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_rd.exit.i

do.end36.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 347, i32 noundef 9, ptr noundef null) #9
  br label %spx5_rd.exit.i

spx5_rd.exit.i:                                   ; preds = %do.end36.i.i.i, %if.end.spx5_rd.exit.i_crit_edge
  %arrayidx.i.i.i = getelementptr %struct.sparx5, ptr %1, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 843776
  %mul.i.i.i = shl nuw nsw i32 %conv, 6
  %add.ptr81.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %add.ptr82.i.i.i = getelementptr i8, ptr %add.ptr81.i.i.i, i32 20
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i) #9, !srcloc !170
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  %conv.i.i = zext i32 %35 to i64
  %36 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx1.i, align 8
  %and.i.i = and i64 %37, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i, i64 %conv.i.i)
  %cmp.i.i37 = icmp ugt i64 %and.i.i, %conv.i.i
  br i1 %cmp.i.i37, label %if.then.i.i, label %spx5_rd.exit.i.sparx5_get_ana_ac_stats_stats.exit_crit_edge

spx5_rd.exit.i.sparx5_get_ana_ac_stats_stats.exit_crit_edge: ; preds = %spx5_rd.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_get_ana_ac_stats_stats.exit

if.then.i.i:                                      ; preds = %spx5_rd.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i = add i64 %37, 4294967296
  %38 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %add.i.i, ptr %arrayidx1.i, align 8
  br label %sparx5_get_ana_ac_stats_stats.exit

sparx5_get_ana_ac_stats_stats.exit:               ; preds = %if.then.i.i, %spx5_rd.exit.i.sparx5_get_ana_ac_stats_stats.exit_crit_edge
  %39 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx1.i, align 8
  %and2.i.i = and i64 %40, -4294967296
  %add4.i.i = or i64 %and2.i.i, %conv.i.i
  store i64 %add4.i.i, ptr %arrayidx1.i, align 8
  tail call fastcc void @sparx5_get_queue_sys_stats(ptr noundef %1, i32 noundef %conv)
  %num_ethtool_stats = getelementptr inbounds %struct.sparx5, ptr %1, i32 0, i32 10
  %41 = ptrtoint ptr %num_ethtool_stats to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_ethtool_stats, align 4
  %43 = add i32 %42, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -76, i32 %43)
  %cmp39 = icmp ult i32 %43, -76
  br i1 %cmp39, label %sparx5_get_ana_ac_stats_stats.exit.for.body_crit_edge, label %sparx5_get_ana_ac_stats_stats.exit.for.end_crit_edge

sparx5_get_ana_ac_stats_stats.exit.for.end_crit_edge: ; preds = %sparx5_get_ana_ac_stats_stats.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

sparx5_get_ana_ac_stats_stats.exit.for.body_crit_edge: ; preds = %sparx5_get_ana_ac_stats_stats.exit
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sparx5_get_ana_ac_stats_stats.exit.for.body_crit_edge
  %data.addr.041 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %data, %sparx5_get_ana_ac_stats_stats.exit.for.body_crit_edge ]
  %idx.040 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 75, %sparx5_get_ana_ac_stats_stats.exit.for.body_crit_edge ]
  %arrayidx10 = getelementptr i64, ptr %arrayidx, i32 %idx.040
  %44 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx10, align 8
  %incdec.ptr = getelementptr i64, ptr %data.addr.041, i32 1
  %46 = ptrtoint ptr %data.addr.041 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %data.addr.041, align 8
  %inc = add nuw i32 %idx.040, 1
  %47 = ptrtoint ptr %num_ethtool_stats to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_ethtool_stats, align 4
  %add = add i32 %48, 75
  %cmp = icmp ult i32 %inc, %add
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %sparx5_get_ana_ac_stats_stats.exit.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sparx5_get_sset_count(ptr nocapture noundef readonly %ndev, i32 noundef %sset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp.not = icmp eq i32 %sset, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sparx51 = getelementptr i8, ptr %ndev, i32 2308
  %0 = ptrtoint ptr %sparx51 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sparx51, align 4
  %num_ethtool_stats = getelementptr inbounds %struct.sparx5, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num_ethtool_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ethtool_stats, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sparx5_get_link_settings(ptr nocapture noundef readonly %ndev, ptr noundef %cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phylink = getelementptr i8, ptr %ndev, i32 2384
  %0 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phylink, align 8
  %call1 = tail call i32 @phylink_ethtool_ksettings_get(ptr noundef %1, ptr noundef %cmd) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sparx5_set_link_settings(ptr nocapture noundef readonly %ndev, ptr noundef %cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phylink = getelementptr i8, ptr %ndev, i32 2384
  %0 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phylink, align 8
  %call1 = tail call i32 @phylink_ethtool_ksettings_set(ptr noundef %1, ptr noundef %cmd) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sparx5_get_eth_phy_stats(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %phy_stats) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sparx51 = getelementptr i8, ptr %ndev, i32 2308
  %0 = ptrtoint ptr %sparx51 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sparx51, align 4
  %portno2 = getelementptr i8, ptr %ndev, i32 2396
  %2 = ptrtoint ptr %portno2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %portno2, align 4
  %conv = zext i16 %3 to i32
  %stats = getelementptr inbounds %struct.sparx5, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats, align 4
  %num_stats = getelementptr inbounds %struct.sparx5, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %num_stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_stats, align 8
  %mul = mul i32 %7, %conv
  %arrayidx = getelementptr i64, ptr %5, i32 %mul
  %conf = getelementptr i8, ptr %ndev, i32 2320
  %8 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %conf, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %9, label %if.else [
    i32 23, label %entry.if.then_crit_edge
    i32 26, label %entry.if.then_crit_edge30
    i32 27, label %entry.if.then_crit_edge31
  ]

entry.if.then_crit_edge31:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge30:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge30, %entry.if.then_crit_edge31
  %11 = add nsw i32 %conv, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %11)
  %12 = icmp ult i32 %11, 32
  br i1 %12, label %if.then.sparx5_port_dev_index.exit_crit_edge, label %if.end.i

if.then.sparx5_port_dev_index.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_port_dev_index.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %3)
  %cmp.i.i = icmp ult i16 %3, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %3)
  %cmp1.i.i = icmp eq i16 %3, 64
  %spec.select.i.i = or i1 %cmp.i.i, %cmp1.i.i
  br i1 %spec.select.i.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = tail call i32 @llvm.smin.i32(i32 %conv, i32 12) #9
  br label %sparx5_port_dev_index.exit

if.end3.i:                                        ; preds = %if.end.i
  %14 = and i32 %conv, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %14)
  %15 = icmp eq i32 %14, 12
  %16 = and i32 %conv, 65528
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %16)
  %17 = icmp eq i32 %16, 48
  %18 = or i1 %15, %17
  br i1 %18, label %if.then5.i, label %if.end13.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %3)
  %cmp7.i = icmp ult i16 %3, 16
  %cond12.v.i = select i1 %cmp7.i, i32 -12, i32 -44
  %cond12.i = add nsw i32 %cond12.v.i, %conv
  br label %sparx5_port_dev_index.exit

if.end13.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub14.i = add nsw i32 %conv, -56
  br label %sparx5_port_dev_index.exit

sparx5_port_dev_index.exit:                       ; preds = %if.end13.i, %if.then5.i, %if.then2.i, %if.then.sparx5_port_dev_index.exit_crit_edge
  %retval.0.i = phi i32 [ %13, %if.then2.i ], [ %cond12.i, %if.then5.i ], [ %sub14.i, %if.end13.i ], [ %conv, %if.then.sparx5_port_dev_index.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %3)
  %cmp.i.i23 = icmp ult i16 %3, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %3)
  %cmp1.i.i24 = icmp eq i16 %3, 64
  %spec.select.i.i25 = or i1 %cmp.i.i23, %cmp1.i.i24
  br i1 %spec.select.i.i25, label %sparx5_port_dev_index.exit.sparx5_to_high_dev.exit_crit_edge, label %if.end.i26

sparx5_port_dev_index.exit.sparx5_to_high_dev.exit_crit_edge: ; preds = %sparx5_port_dev_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_to_high_dev.exit

if.end.i26:                                       ; preds = %sparx5_port_dev_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  %19 = and i32 %conv, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %19)
  %20 = icmp eq i32 %19, 12
  %21 = and i32 %conv, 65528
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %21)
  %22 = icmp eq i32 %21, 48
  %23 = or i1 %20, %22
  %..i = select i1 %23, i32 17, i32 29
  br label %sparx5_to_high_dev.exit

sparx5_to_high_dev.exit:                          ; preds = %if.end.i26, %sparx5_port_dev_index.exit.sparx5_to_high_dev.exit_crit_edge
  %retval.0.i27 = phi i32 [ 102, %sparx5_port_dev_index.exit.sparx5_to_high_dev.exit_crit_edge ], [ %..i, %if.end.i26 ]
  %add.i = add nsw i32 %retval.0.i27, %retval.0.i
  %arrayidx.i = getelementptr %struct.sparx5, ptr %1, i32 0, i32 4, i32 %add.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 60
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !170
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i.i = zext i32 %27 to i64
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx, align 8
  %and.i.i = and i64 %29, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i, i64 %conv.i.i)
  %cmp.i.i28 = icmp ugt i64 %and.i.i, %conv.i.i
  br i1 %cmp.i.i28, label %if.then.i.i, label %sparx5_to_high_dev.exit.sparx5_update_counter.exit.i_crit_edge

sparx5_to_high_dev.exit.sparx5_update_counter.exit.i_crit_edge: ; preds = %sparx5_to_high_dev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit.i

if.then.i.i:                                      ; preds = %sparx5_to_high_dev.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i = add i64 %29, 4294967296
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %add.i.i, ptr %arrayidx, align 8
  br label %sparx5_update_counter.exit.i

sparx5_update_counter.exit.i:                     ; preds = %if.then.i.i, %sparx5_to_high_dev.exit.sparx5_update_counter.exit.i_crit_edge
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx, align 8
  %and2.i.i = and i64 %32, -4294967296
  %add4.i.i = or i64 %and2.i.i, %conv.i.i
  store i64 %add4.i.i, ptr %arrayidx, align 8
  %arrayidx1.i = getelementptr i64, ptr %arrayidx, i32 1
  %add.ptr51.i.i.i = getelementptr i8, ptr %25, i32 208
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i.i) #9, !srcloc !170
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i2.i = zext i32 %34 to i64
  %35 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx1.i, align 8
  %and.i3.i = and i64 %36, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i3.i, i64 %conv.i2.i)
  %cmp.i4.i = icmp ugt i64 %and.i3.i, %conv.i2.i
  br i1 %cmp.i4.i, label %if.then.i6.i, label %sparx5_update_counter.exit.i.sparx5_get_dev_phy_stats.exit_crit_edge

sparx5_update_counter.exit.i.sparx5_get_dev_phy_stats.exit_crit_edge: ; preds = %sparx5_update_counter.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_get_dev_phy_stats.exit

if.then.i6.i:                                     ; preds = %sparx5_update_counter.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i5.i = add i64 %36, 4294967296
  %37 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %add.i5.i, ptr %arrayidx1.i, align 8
  br label %sparx5_get_dev_phy_stats.exit

sparx5_get_dev_phy_stats.exit:                    ; preds = %if.then.i6.i, %sparx5_update_counter.exit.i.sparx5_get_dev_phy_stats.exit_crit_edge
  %38 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx1.i, align 8
  %and2.i7.i = and i64 %39, -4294967296
  %add4.i8.i = or i64 %and2.i7.i, %conv.i2.i
  store i64 %add4.i8.i, ptr %arrayidx1.i, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i29 = getelementptr %struct.sparx5, ptr %1, i32 0, i32 4, i32 9
  %40 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i29, align 4
  tail call fastcc void @sparx5_get_asm_phy_stats(ptr noundef %arrayidx, ptr noundef %41, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.else, %sparx5_get_dev_phy_stats.exit
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx, align 8
  %arrayidx9 = getelementptr i64, ptr %arrayidx, i32 1
  %44 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx9, align 8
  %add = add i64 %45, %43
  %46 = ptrtoint ptr %phy_stats to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %add, ptr %phy_stats, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sparx5_get_eth_mac_stats(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %mac_stats) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sparx51 = getelementptr i8, ptr %ndev, i32 2308
  %0 = ptrtoint ptr %sparx51 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sparx51, align 4
  %portno2 = getelementptr i8, ptr %ndev, i32 2396
  %2 = ptrtoint ptr %portno2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %portno2, align 4
  %conv = zext i16 %3 to i32
  %stats = getelementptr inbounds %struct.sparx5, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats, align 4
  %num_stats = getelementptr inbounds %struct.sparx5, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %num_stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_stats, align 8
  %mul = mul i32 %7, %conv
  %arrayidx = getelementptr i64, ptr %5, i32 %mul
  %conf = getelementptr i8, ptr %ndev, i32 2320
  %8 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %conf, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %9, label %if.else [
    i32 23, label %entry.if.then_crit_edge
    i32 26, label %entry.if.then_crit_edge134
    i32 27, label %entry.if.then_crit_edge135
  ]

entry.if.then_crit_edge135:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge134:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge134, %entry.if.then_crit_edge135
  %11 = add nsw i32 %conv, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %11)
  %12 = icmp ult i32 %11, 32
  br i1 %12, label %if.then.sparx5_port_dev_index.exit_crit_edge, label %if.end.i

if.then.sparx5_port_dev_index.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_port_dev_index.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %3)
  %cmp.i.i = icmp ult i16 %3, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %3)
  %cmp1.i.i = icmp eq i16 %3, 64
  %spec.select.i.i = or i1 %cmp.i.i, %cmp1.i.i
  br i1 %spec.select.i.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = tail call i32 @llvm.smin.i32(i32 %conv, i32 12) #9
  br label %sparx5_port_dev_index.exit

if.end3.i:                                        ; preds = %if.end.i
  %14 = and i32 %conv, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %14)
  %15 = icmp eq i32 %14, 12
  %16 = and i32 %conv, 65528
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %16)
  %17 = icmp eq i32 %16, 48
  %18 = or i1 %15, %17
  br i1 %18, label %if.then5.i, label %if.end13.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %3)
  %cmp7.i = icmp ult i16 %3, 16
  %cond12.v.i = select i1 %cmp7.i, i32 -12, i32 -44
  %cond12.i = add nsw i32 %cond12.v.i, %conv
  br label %sparx5_port_dev_index.exit

if.end13.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub14.i = add nsw i32 %conv, -56
  br label %sparx5_port_dev_index.exit

sparx5_port_dev_index.exit:                       ; preds = %if.end13.i, %if.then5.i, %if.then2.i, %if.then.sparx5_port_dev_index.exit_crit_edge
  %retval.0.i = phi i32 [ %13, %if.then2.i ], [ %cond12.i, %if.then5.i ], [ %sub14.i, %if.end13.i ], [ %conv, %if.then.sparx5_port_dev_index.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %3)
  %cmp.i.i128 = icmp ult i16 %3, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %3)
  %cmp1.i.i129 = icmp eq i16 %3, 64
  %spec.select.i.i130 = or i1 %cmp.i.i128, %cmp1.i.i129
  br i1 %spec.select.i.i130, label %sparx5_port_dev_index.exit.sparx5_to_high_dev.exit_crit_edge, label %if.end.i131

sparx5_port_dev_index.exit.sparx5_to_high_dev.exit_crit_edge: ; preds = %sparx5_port_dev_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_to_high_dev.exit

if.end.i131:                                      ; preds = %sparx5_port_dev_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  %19 = and i32 %conv, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %19)
  %20 = icmp eq i32 %19, 12
  %21 = and i32 %conv, 65528
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %21)
  %22 = icmp eq i32 %21, 48
  %23 = or i1 %20, %22
  %..i = select i1 %23, i32 17, i32 29
  br label %sparx5_to_high_dev.exit

sparx5_to_high_dev.exit:                          ; preds = %if.end.i131, %sparx5_port_dev_index.exit.sparx5_to_high_dev.exit_crit_edge
  %retval.0.i132 = phi i32 [ 102, %sparx5_port_dev_index.exit.sparx5_to_high_dev.exit_crit_edge ], [ %..i, %if.end.i131 ]
  %add.i = add nsw i32 %retval.0.i132, %retval.0.i
  %arrayidx.i = getelementptr %struct.sparx5, ptr %1, i32 0, i32 4, i32 %add.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  tail call fastcc void @sparx5_get_dev_mac_stats(ptr noundef %arrayidx, ptr noundef %25)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i133 = getelementptr %struct.sparx5, ptr %1, i32 0, i32 4, i32 9
  %26 = ptrtoint ptr %arrayidx.i133 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i133, align 4
  tail call fastcc void @sparx5_get_asm_mac_stats(ptr noundef %arrayidx, ptr noundef %27, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.else, %sparx5_to_high_dev.exit
  %arrayidx8 = getelementptr i64, ptr %arrayidx, i32 2
  %28 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx8, align 8
  %arrayidx9 = getelementptr i64, ptr %arrayidx, i32 3
  %30 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx9, align 8
  %add = add i64 %31, %29
  %arrayidx10 = getelementptr i64, ptr %arrayidx, i32 4
  %32 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx10, align 8
  %add11 = add i64 %add, %33
  %arrayidx12 = getelementptr i64, ptr %arrayidx, i32 5
  %34 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx12, align 8
  %add13 = add i64 %add11, %35
  %36 = ptrtoint ptr %mac_stats to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %add13, ptr %mac_stats, align 8
  %arrayidx14 = getelementptr i64, ptr %arrayidx, i32 6
  %37 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx14, align 8
  %SingleCollisionFrames = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 1
  %39 = ptrtoint ptr %SingleCollisionFrames to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %SingleCollisionFrames, align 8
  %arrayidx15 = getelementptr i64, ptr %arrayidx, i32 7
  %40 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx15, align 8
  %MultipleCollisionFrames = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 2
  %42 = ptrtoint ptr %MultipleCollisionFrames to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %MultipleCollisionFrames, align 8
  %arrayidx16 = getelementptr i64, ptr %arrayidx, i32 8
  %43 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx16, align 8
  %arrayidx17 = getelementptr i64, ptr %arrayidx, i32 9
  %45 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx17, align 8
  %add18 = add i64 %46, %44
  %arrayidx19 = getelementptr i64, ptr %arrayidx, i32 10
  %47 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx19, align 8
  %add20 = add i64 %add18, %48
  %arrayidx21 = getelementptr i64, ptr %arrayidx, i32 11
  %49 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx21, align 8
  %add22 = add i64 %add20, %50
  %FramesReceivedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 3
  %51 = ptrtoint ptr %FramesReceivedOK to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %add22, ptr %FramesReceivedOK, align 8
  %arrayidx23 = getelementptr i64, ptr %arrayidx, i32 12
  %52 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx23, align 8
  %arrayidx24 = getelementptr i64, ptr %arrayidx, i32 13
  %54 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx24, align 8
  %add25 = add i64 %55, %53
  %FrameCheckSequenceErrors = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 4
  %56 = ptrtoint ptr %FrameCheckSequenceErrors to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %add25, ptr %FrameCheckSequenceErrors, align 8
  %arrayidx26 = getelementptr i64, ptr %arrayidx, i32 14
  %57 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx26, align 8
  %arrayidx27 = getelementptr i64, ptr %arrayidx, i32 15
  %59 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx27, align 8
  %add28 = add i64 %60, %58
  %AlignmentErrors = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 5
  %61 = ptrtoint ptr %AlignmentErrors to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %add28, ptr %AlignmentErrors, align 8
  %arrayidx29 = getelementptr i64, ptr %arrayidx, i32 16
  %62 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx29, align 8
  %arrayidx30 = getelementptr i64, ptr %arrayidx, i32 17
  %64 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %arrayidx30, align 8
  %add31 = add i64 %65, %63
  %OctetsTransmittedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 6
  %66 = ptrtoint ptr %OctetsTransmittedOK to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %add31, ptr %OctetsTransmittedOK, align 8
  %arrayidx32 = getelementptr i64, ptr %arrayidx, i32 18
  %67 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %arrayidx32, align 8
  %FramesWithDeferredXmissions = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 7
  %69 = ptrtoint ptr %FramesWithDeferredXmissions to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %FramesWithDeferredXmissions, align 8
  %arrayidx33 = getelementptr i64, ptr %arrayidx, i32 19
  %70 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arrayidx33, align 8
  %LateCollisions = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 8
  %72 = ptrtoint ptr %LateCollisions to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %LateCollisions, align 8
  %arrayidx34 = getelementptr i64, ptr %arrayidx, i32 20
  %73 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %arrayidx34, align 8
  %FramesAbortedDueToXSColls = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 9
  %75 = ptrtoint ptr %FramesAbortedDueToXSColls to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %FramesAbortedDueToXSColls, align 8
  %arrayidx35 = getelementptr i64, ptr %arrayidx, i32 21
  %76 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %arrayidx35, align 8
  %CarrierSenseErrors = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 11
  %78 = ptrtoint ptr %CarrierSenseErrors to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %CarrierSenseErrors, align 8
  %arrayidx36 = getelementptr i64, ptr %arrayidx, i32 22
  %79 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %arrayidx36, align 8
  %arrayidx37 = getelementptr i64, ptr %arrayidx, i32 23
  %81 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %arrayidx37, align 8
  %add38 = add i64 %82, %80
  %OctetsReceivedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 12
  %83 = ptrtoint ptr %OctetsReceivedOK to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %add38, ptr %OctetsReceivedOK, align 8
  %84 = load i64, ptr %arrayidx10, align 8
  %arrayidx40 = getelementptr i64, ptr %arrayidx, i32 24
  %85 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %arrayidx40, align 8
  %add41 = add i64 %86, %84
  %MulticastFramesXmittedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 14
  %87 = ptrtoint ptr %MulticastFramesXmittedOK to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %add41, ptr %MulticastFramesXmittedOK, align 8
  %88 = load i64, ptr %arrayidx12, align 8
  %arrayidx43 = getelementptr i64, ptr %arrayidx, i32 25
  %89 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx43, align 8
  %add44 = add i64 %90, %88
  %BroadcastFramesXmittedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 15
  %91 = ptrtoint ptr %BroadcastFramesXmittedOK to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %add44, ptr %BroadcastFramesXmittedOK, align 8
  %arrayidx45 = getelementptr i64, ptr %arrayidx, i32 26
  %92 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %arrayidx45, align 8
  %FramesWithExcessiveDeferral = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 16
  %94 = ptrtoint ptr %FramesWithExcessiveDeferral to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %93, ptr %FramesWithExcessiveDeferral, align 8
  %95 = load i64, ptr %arrayidx19, align 8
  %arrayidx47 = getelementptr i64, ptr %arrayidx, i32 27
  %96 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %arrayidx47, align 8
  %add48 = add i64 %97, %95
  %MulticastFramesReceivedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 17
  %98 = ptrtoint ptr %MulticastFramesReceivedOK to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %add48, ptr %MulticastFramesReceivedOK, align 8
  %99 = load i64, ptr %arrayidx21, align 8
  %arrayidx50 = getelementptr i64, ptr %arrayidx, i32 28
  %100 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %arrayidx50, align 8
  %add51 = add i64 %101, %99
  %BroadcastFramesReceivedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 18
  %102 = ptrtoint ptr %BroadcastFramesReceivedOK to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %add51, ptr %BroadcastFramesReceivedOK, align 8
  %arrayidx52 = getelementptr i64, ptr %arrayidx, i32 29
  %103 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx52, align 8
  %arrayidx53 = getelementptr i64, ptr %arrayidx, i32 30
  %105 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %arrayidx53, align 8
  %add54 = add i64 %106, %104
  %InRangeLengthErrors = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 19
  %107 = ptrtoint ptr %InRangeLengthErrors to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %add54, ptr %InRangeLengthErrors, align 8
  %arrayidx55 = getelementptr i64, ptr %arrayidx, i32 31
  %108 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %arrayidx55, align 8
  %arrayidx56 = getelementptr i64, ptr %arrayidx, i32 32
  %110 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %arrayidx56, align 8
  %add57 = add i64 %111, %109
  %OutOfRangeLengthField = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 20
  %112 = ptrtoint ptr %OutOfRangeLengthField to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %add57, ptr %OutOfRangeLengthField, align 8
  %arrayidx58 = getelementptr i64, ptr %arrayidx, i32 33
  %113 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %arrayidx58, align 8
  %arrayidx59 = getelementptr i64, ptr %arrayidx, i32 34
  %115 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %arrayidx59, align 8
  %add60 = add i64 %116, %114
  %FrameTooLongErrors = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 21
  %117 = ptrtoint ptr %FrameTooLongErrors to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %add60, ptr %FrameTooLongErrors, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sparx5_get_eth_mac_ctrl_stats(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %mac_ctrl_stats) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sparx51 = getelementptr i8, ptr %ndev, i32 2308
  %0 = ptrtoint ptr %sparx51 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sparx51, align 4
  %portno2 = getelementptr i8, ptr %ndev, i32 2396
  %2 = ptrtoint ptr %portno2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %portno2, align 4
  %conv = zext i16 %3 to i32
  %stats = getelementptr inbounds %struct.sparx5, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats, align 4
  %num_stats = getelementptr inbounds %struct.sparx5, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %num_stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_stats, align 8
  %mul = mul i32 %7, %conv
  %arrayidx = getelementptr i64, ptr %5, i32 %mul
  %conf = getelementptr i8, ptr %ndev, i32 2320
  %8 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %conf, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %9, label %if.else [
    i32 23, label %entry.if.then_crit_edge
    i32 26, label %entry.if.then_crit_edge41
    i32 27, label %entry.if.then_crit_edge42
  ]

entry.if.then_crit_edge42:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge41:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge41, %entry.if.then_crit_edge42
  %11 = add nsw i32 %conv, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %11)
  %12 = icmp ult i32 %11, 32
  br i1 %12, label %if.then.sparx5_port_dev_index.exit_crit_edge, label %if.end.i

if.then.sparx5_port_dev_index.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_port_dev_index.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %3)
  %cmp.i.i = icmp ult i16 %3, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %3)
  %cmp1.i.i = icmp eq i16 %3, 64
  %spec.select.i.i = or i1 %cmp.i.i, %cmp1.i.i
  br i1 %spec.select.i.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = tail call i32 @llvm.smin.i32(i32 %conv, i32 12) #9
  br label %sparx5_port_dev_index.exit

if.end3.i:                                        ; preds = %if.end.i
  %14 = and i32 %conv, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %14)
  %15 = icmp eq i32 %14, 12
  %16 = and i32 %conv, 65528
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %16)
  %17 = icmp eq i32 %16, 48
  %18 = or i1 %15, %17
  br i1 %18, label %if.then5.i, label %if.end13.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %3)
  %cmp7.i = icmp ult i16 %3, 16
  %cond12.v.i = select i1 %cmp7.i, i32 -12, i32 -44
  %cond12.i = add nsw i32 %cond12.v.i, %conv
  br label %sparx5_port_dev_index.exit

if.end13.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub14.i = add nsw i32 %conv, -56
  br label %sparx5_port_dev_index.exit

sparx5_port_dev_index.exit:                       ; preds = %if.end13.i, %if.then5.i, %if.then2.i, %if.then.sparx5_port_dev_index.exit_crit_edge
  %retval.0.i = phi i32 [ %13, %if.then2.i ], [ %cond12.i, %if.then5.i ], [ %sub14.i, %if.end13.i ], [ %conv, %if.then.sparx5_port_dev_index.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %3)
  %cmp.i.i35 = icmp ult i16 %3, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %3)
  %cmp1.i.i36 = icmp eq i16 %3, 64
  %spec.select.i.i37 = or i1 %cmp.i.i35, %cmp1.i.i36
  br i1 %spec.select.i.i37, label %sparx5_port_dev_index.exit.sparx5_to_high_dev.exit_crit_edge, label %if.end.i38

sparx5_port_dev_index.exit.sparx5_to_high_dev.exit_crit_edge: ; preds = %sparx5_port_dev_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_to_high_dev.exit

if.end.i38:                                       ; preds = %sparx5_port_dev_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  %19 = and i32 %conv, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %19)
  %20 = icmp eq i32 %19, 12
  %21 = and i32 %conv, 65528
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %21)
  %22 = icmp eq i32 %21, 48
  %23 = or i1 %20, %22
  %..i = select i1 %23, i32 17, i32 29
  br label %sparx5_to_high_dev.exit

sparx5_to_high_dev.exit:                          ; preds = %if.end.i38, %sparx5_port_dev_index.exit.sparx5_to_high_dev.exit_crit_edge
  %retval.0.i39 = phi i32 [ 102, %sparx5_port_dev_index.exit.sparx5_to_high_dev.exit_crit_edge ], [ %..i, %if.end.i38 ]
  %add.i = add nsw i32 %retval.0.i39, %retval.0.i
  %arrayidx.i = getelementptr %struct.sparx5, ptr %1, i32 0, i32 4, i32 %add.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  tail call fastcc void @sparx5_get_dev_mac_ctrl_stats(ptr noundef %arrayidx, ptr noundef %25)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i40 = getelementptr %struct.sparx5, ptr %1, i32 0, i32 4, i32 9
  %26 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i40, align 4
  tail call fastcc void @sparx5_get_asm_mac_ctrl_stats(ptr noundef %arrayidx, ptr noundef %27, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.else, %sparx5_to_high_dev.exit
  %arrayidx8 = getelementptr i64, ptr %arrayidx, i32 35
  %28 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx8, align 8
  %arrayidx9 = getelementptr i64, ptr %arrayidx, i32 36
  %30 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx9, align 8
  %add = add i64 %31, %29
  %32 = ptrtoint ptr %mac_ctrl_stats to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %add, ptr %mac_ctrl_stats, align 8
  %arrayidx10 = getelementptr i64, ptr %arrayidx, i32 37
  %33 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx10, align 8
  %arrayidx11 = getelementptr i64, ptr %arrayidx, i32 38
  %35 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx11, align 8
  %add12 = add i64 %36, %34
  %MACControlFramesReceived = getelementptr inbounds %struct.ethtool_eth_ctrl_stats, ptr %mac_ctrl_stats, i32 0, i32 1
  %37 = ptrtoint ptr %MACControlFramesReceived to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %add12, ptr %MACControlFramesReceived, align 8
  %arrayidx13 = getelementptr i64, ptr %arrayidx, i32 39
  %38 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx13, align 8
  %arrayidx14 = getelementptr i64, ptr %arrayidx, i32 40
  %40 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx14, align 8
  %add15 = add i64 %41, %39
  %UnsupportedOpcodesReceived = getelementptr inbounds %struct.ethtool_eth_ctrl_stats, ptr %mac_ctrl_stats, i32 0, i32 2
  %42 = ptrtoint ptr %UnsupportedOpcodesReceived to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %add15, ptr %UnsupportedOpcodesReceived, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sparx5_get_eth_rmon_stats(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %rmon_stats, ptr nocapture noundef writeonly %ranges) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sparx51 = getelementptr i8, ptr %ndev, i32 2308
  %0 = ptrtoint ptr %sparx51 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sparx51, align 4
  %portno2 = getelementptr i8, ptr %ndev, i32 2396
  %2 = ptrtoint ptr %portno2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %portno2, align 4
  %conv = zext i16 %3 to i32
  %stats = getelementptr inbounds %struct.sparx5, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats, align 4
  %num_stats = getelementptr inbounds %struct.sparx5, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %num_stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_stats, align 8
  %mul = mul i32 %7, %conv
  %arrayidx = getelementptr i64, ptr %5, i32 %mul
  %conf = getelementptr i8, ptr %ndev, i32 2320
  %8 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %conf, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %9, label %if.else [
    i32 23, label %entry.if.then_crit_edge
    i32 26, label %entry.if.then_crit_edge157
    i32 27, label %entry.if.then_crit_edge158
  ]

entry.if.then_crit_edge158:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge157:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge157, %entry.if.then_crit_edge158
  %11 = add nsw i32 %conv, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %11)
  %12 = icmp ult i32 %11, 32
  br i1 %12, label %if.then.sparx5_port_dev_index.exit_crit_edge, label %if.end.i

if.then.sparx5_port_dev_index.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_port_dev_index.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %3)
  %cmp.i.i = icmp ult i16 %3, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %3)
  %cmp1.i.i = icmp eq i16 %3, 64
  %spec.select.i.i = or i1 %cmp.i.i, %cmp1.i.i
  br i1 %spec.select.i.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = tail call i32 @llvm.smin.i32(i32 %conv, i32 12) #9
  br label %sparx5_port_dev_index.exit

if.end3.i:                                        ; preds = %if.end.i
  %14 = and i32 %conv, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %14)
  %15 = icmp eq i32 %14, 12
  %16 = and i32 %conv, 65528
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %16)
  %17 = icmp eq i32 %16, 48
  %18 = or i1 %15, %17
  br i1 %18, label %if.then5.i, label %if.end13.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %3)
  %cmp7.i = icmp ult i16 %3, 16
  %cond12.v.i = select i1 %cmp7.i, i32 -12, i32 -44
  %cond12.i = add nsw i32 %cond12.v.i, %conv
  br label %sparx5_port_dev_index.exit

if.end13.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub14.i = add nsw i32 %conv, -56
  br label %sparx5_port_dev_index.exit

sparx5_port_dev_index.exit:                       ; preds = %if.end13.i, %if.then5.i, %if.then2.i, %if.then.sparx5_port_dev_index.exit_crit_edge
  %retval.0.i = phi i32 [ %13, %if.then2.i ], [ %cond12.i, %if.then5.i ], [ %sub14.i, %if.end13.i ], [ %conv, %if.then.sparx5_port_dev_index.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %3)
  %cmp.i.i151 = icmp ult i16 %3, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %3)
  %cmp1.i.i152 = icmp eq i16 %3, 64
  %spec.select.i.i153 = or i1 %cmp.i.i151, %cmp1.i.i152
  br i1 %spec.select.i.i153, label %sparx5_port_dev_index.exit.sparx5_to_high_dev.exit_crit_edge, label %if.end.i154

sparx5_port_dev_index.exit.sparx5_to_high_dev.exit_crit_edge: ; preds = %sparx5_port_dev_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_to_high_dev.exit

if.end.i154:                                      ; preds = %sparx5_port_dev_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  %19 = and i32 %conv, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %19)
  %20 = icmp eq i32 %19, 12
  %21 = and i32 %conv, 65528
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %21)
  %22 = icmp eq i32 %21, 48
  %23 = or i1 %20, %22
  %..i = select i1 %23, i32 17, i32 29
  br label %sparx5_to_high_dev.exit

sparx5_to_high_dev.exit:                          ; preds = %if.end.i154, %sparx5_port_dev_index.exit.sparx5_to_high_dev.exit_crit_edge
  %retval.0.i155 = phi i32 [ 102, %sparx5_port_dev_index.exit.sparx5_to_high_dev.exit_crit_edge ], [ %..i, %if.end.i154 ]
  %add.i = add nsw i32 %retval.0.i155, %retval.0.i
  %arrayidx.i = getelementptr %struct.sparx5, ptr %1, i32 0, i32 4, i32 %add.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  tail call fastcc void @sparx5_get_dev_rmon_stats(ptr noundef %arrayidx, ptr noundef %25)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i156 = getelementptr %struct.sparx5, ptr %1, i32 0, i32 4, i32 9
  %26 = ptrtoint ptr %arrayidx.i156 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i156, align 4
  tail call fastcc void @sparx5_get_asm_rmon_stats(ptr noundef %arrayidx, ptr noundef %27, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.else, %sparx5_to_high_dev.exit
  %arrayidx8 = getelementptr i64, ptr %arrayidx, i32 41
  %28 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx8, align 8
  %arrayidx9 = getelementptr i64, ptr %arrayidx, i32 42
  %30 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx9, align 8
  %add = add i64 %31, %29
  %32 = ptrtoint ptr %rmon_stats to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %add, ptr %rmon_stats, align 8
  %arrayidx10 = getelementptr i64, ptr %arrayidx, i32 33
  %33 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx10, align 8
  %arrayidx11 = getelementptr i64, ptr %arrayidx, i32 34
  %35 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx11, align 8
  %add12 = add i64 %36, %34
  %oversize_pkts = getelementptr inbounds %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 1
  %37 = ptrtoint ptr %oversize_pkts to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %add12, ptr %oversize_pkts, align 8
  %arrayidx13 = getelementptr i64, ptr %arrayidx, i32 43
  %38 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx13, align 8
  %arrayidx14 = getelementptr i64, ptr %arrayidx, i32 44
  %40 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx14, align 8
  %add15 = add i64 %41, %39
  %fragments = getelementptr inbounds %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 2
  %42 = ptrtoint ptr %fragments to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %add15, ptr %fragments, align 8
  %arrayidx16 = getelementptr i64, ptr %arrayidx, i32 45
  %43 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx16, align 8
  %arrayidx17 = getelementptr i64, ptr %arrayidx, i32 46
  %45 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx17, align 8
  %add18 = add i64 %46, %44
  %jabbers = getelementptr inbounds %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 3
  %47 = ptrtoint ptr %jabbers to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %add18, ptr %jabbers, align 8
  %arrayidx19 = getelementptr i64, ptr %arrayidx, i32 47
  %48 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx19, align 8
  %arrayidx20 = getelementptr i64, ptr %arrayidx, i32 48
  %50 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %arrayidx20, align 8
  %add21 = add i64 %51, %49
  %hist = getelementptr inbounds %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 4
  %52 = ptrtoint ptr %hist to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %add21, ptr %hist, align 8
  %arrayidx23 = getelementptr i64, ptr %arrayidx, i32 49
  %53 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx23, align 8
  %arrayidx24 = getelementptr i64, ptr %arrayidx, i32 50
  %55 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %arrayidx24, align 8
  %add25 = add i64 %56, %54
  %arrayidx27 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 4, i32 1
  %57 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %add25, ptr %arrayidx27, align 8
  %arrayidx28 = getelementptr i64, ptr %arrayidx, i32 51
  %58 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx28, align 8
  %arrayidx29 = getelementptr i64, ptr %arrayidx, i32 52
  %60 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %arrayidx29, align 8
  %add30 = add i64 %61, %59
  %arrayidx32 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 4, i32 2
  %62 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %add30, ptr %arrayidx32, align 8
  %arrayidx33 = getelementptr i64, ptr %arrayidx, i32 53
  %63 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %arrayidx33, align 8
  %arrayidx34 = getelementptr i64, ptr %arrayidx, i32 54
  %65 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx34, align 8
  %add35 = add i64 %66, %64
  %arrayidx37 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 4, i32 3
  %67 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %add35, ptr %arrayidx37, align 8
  %arrayidx38 = getelementptr i64, ptr %arrayidx, i32 55
  %68 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx38, align 8
  %arrayidx39 = getelementptr i64, ptr %arrayidx, i32 56
  %70 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arrayidx39, align 8
  %add40 = add i64 %71, %69
  %arrayidx42 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 4, i32 4
  %72 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %add40, ptr %arrayidx42, align 8
  %arrayidx43 = getelementptr i64, ptr %arrayidx, i32 57
  %73 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %arrayidx43, align 8
  %arrayidx44 = getelementptr i64, ptr %arrayidx, i32 58
  %75 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx44, align 8
  %add45 = add i64 %76, %74
  %arrayidx47 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 4, i32 5
  %77 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %add45, ptr %arrayidx47, align 8
  %arrayidx48 = getelementptr i64, ptr %arrayidx, i32 59
  %78 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %arrayidx48, align 8
  %arrayidx49 = getelementptr i64, ptr %arrayidx, i32 60
  %80 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %arrayidx49, align 8
  %add50 = add i64 %81, %79
  %arrayidx52 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 4, i32 6
  %82 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %add50, ptr %arrayidx52, align 8
  %arrayidx53 = getelementptr i64, ptr %arrayidx, i32 61
  %83 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %arrayidx53, align 8
  %arrayidx54 = getelementptr i64, ptr %arrayidx, i32 62
  %85 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %arrayidx54, align 8
  %add55 = add i64 %86, %84
  %hist_tx = getelementptr inbounds %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 5
  %87 = ptrtoint ptr %hist_tx to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %add55, ptr %hist_tx, align 8
  %arrayidx57 = getelementptr i64, ptr %arrayidx, i32 63
  %88 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %arrayidx57, align 8
  %arrayidx58 = getelementptr i64, ptr %arrayidx, i32 64
  %90 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %arrayidx58, align 8
  %add59 = add i64 %91, %89
  %arrayidx61 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 5, i32 1
  %92 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %add59, ptr %arrayidx61, align 8
  %arrayidx62 = getelementptr i64, ptr %arrayidx, i32 65
  %93 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %arrayidx62, align 8
  %arrayidx63 = getelementptr i64, ptr %arrayidx, i32 66
  %95 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %arrayidx63, align 8
  %add64 = add i64 %96, %94
  %arrayidx66 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 5, i32 2
  %97 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %add64, ptr %arrayidx66, align 8
  %arrayidx67 = getelementptr i64, ptr %arrayidx, i32 67
  %98 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %arrayidx67, align 8
  %arrayidx68 = getelementptr i64, ptr %arrayidx, i32 68
  %100 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %arrayidx68, align 8
  %add69 = add i64 %101, %99
  %arrayidx71 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 5, i32 3
  %102 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %add69, ptr %arrayidx71, align 8
  %arrayidx72 = getelementptr i64, ptr %arrayidx, i32 69
  %103 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx72, align 8
  %arrayidx73 = getelementptr i64, ptr %arrayidx, i32 70
  %105 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %arrayidx73, align 8
  %add74 = add i64 %106, %104
  %arrayidx76 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 5, i32 4
  %107 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %add74, ptr %arrayidx76, align 8
  %arrayidx77 = getelementptr i64, ptr %arrayidx, i32 71
  %108 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %arrayidx77, align 8
  %arrayidx78 = getelementptr i64, ptr %arrayidx, i32 72
  %110 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %arrayidx78, align 8
  %add79 = add i64 %111, %109
  %arrayidx81 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 5, i32 5
  %112 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %add79, ptr %arrayidx81, align 8
  %arrayidx82 = getelementptr i64, ptr %arrayidx, i32 73
  %113 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %arrayidx82, align 8
  %arrayidx83 = getelementptr i64, ptr %arrayidx, i32 74
  %115 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %arrayidx83, align 8
  %add84 = add i64 %116, %114
  %arrayidx86 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 5, i32 6
  %117 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %add84, ptr %arrayidx86, align 8
  %118 = ptrtoint ptr %ranges to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @sparx5_rmon_ranges, ptr %ranges, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sparx_stats_init(ptr noundef %sparx5) local_unnamed_addr #4 align 64 {
entry:
  %queue_name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %queue_name) #9
  %stats_layout = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 11
  %0 = call ptr @memset(ptr %queue_name, i32 255, i32 32)
  %1 = ptrtoint ptr %stats_layout to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @sparx5_stats_layout, ptr %stats_layout, align 8
  %num_stats = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 9
  %2 = ptrtoint ptr %num_stats to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 145, ptr %num_stats, align 8
  %num_ethtool_stats = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 10
  %3 = ptrtoint ptr %num_ethtool_stats to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 70, ptr %num_ethtool_stats, align 4
  %dev = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 81200, i32 noundef 3520) #9
  %stats = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 12
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5.i.i, ptr %stats, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %queue_stats_lock = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %queue_stats_lock, ptr noundef nonnull @.str, ptr noundef nonnull @sparx_stats_init.__key) #9
  %arrayidx.i.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 851552
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  tail call void @arm_heavy_mb() #9
  %10 = and i32 %9, 65535
  %11 = or i32 %10, -252706816
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %13, i32 851552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %11) #9, !srcloc !175
  %arrayidx.i.i.i57 = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 331
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body
  %portno.061 = phi i32 [ 0, %do.body ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 7, i32 %portno.061
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %15, null
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %sparx5_config_port_stats.exit

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sparx5_config_port_stats.exit:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i = shl i32 %portno.061, 5
  %or.i = or i32 %shl.i, 786432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  tail call void @arm_heavy_mb() #9
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %17 = ptrtoint ptr %arrayidx.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i.i57, align 4
  %add.ptr82.i.i.i = getelementptr i8, ptr %18, i32 7628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i.i, i32 %16) #9, !srcloc !175
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i.i, align 4
  %mul.i.i.i = shl i32 %portno.061, 6
  %add.ptr81.i.i.i = getelementptr i8, ptr %20, i32 843780
  %add.ptr82.i.i61.i = getelementptr i8, ptr %add.ptr81.i.i.i, i32 %mul.i.i.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i61.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  tail call void @arm_heavy_mb() #9
  %22 = and i32 %21, 15794175
  %23 = or i32 %22, -233897984
  %24 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr81.i6.i.i = getelementptr i8, ptr %25, i32 843780
  %add.ptr82.i7.i.i = getelementptr i8, ptr %add.ptr81.i6.i.i, i32 %mul.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i7.i.i, i32 %23) #9, !srcloc !175
  br label %for.inc

for.inc:                                          ; preds = %sparx5_config_port_stats.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %portno.061, 1
  %exitcond.not = icmp eq i32 %inc, 65
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i60 = icmp eq ptr %29, null
  br i1 %tobool.not.i60, label %if.end.i, label %for.end.dev_name.exit_crit_edge

for.end.dev_name.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %for.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %31, %if.end.i ], [ %29, %for.end.dev_name.exit_crit_edge ]
  %call8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %queue_name, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i)
  %call10 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.2, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull %queue_name) #9
  %stats_queue = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 15
  %32 = ptrtoint ptr %stats_queue to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call10, ptr %stats_queue, align 8
  %stats_work = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 14
  call void @__init_work(ptr noundef %stats_work, i32 noundef 0) #9
  %33 = ptrtoint ptr %stats_work to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -64, ptr %stats_work, align 4
  %lockdep_map = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 14, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @sparx_stats_init.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry19 = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 14, i32 0, i32 1
  %34 = ptrtoint ptr %entry19 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %entry19, ptr %entry19, align 4
  %prev.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 14, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %entry19, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 14, i32 0, i32 2
  %36 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @sparx5_check_stats_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 14, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.6, ptr noundef nonnull @sparx_stats_init.__key.5) #9
  %37 = ptrtoint ptr %stats_queue to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %stats_queue, align 8
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %stats_work, i32 noundef 100) #9
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dev_name.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %queue_name) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sparx5_check_stats_work(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1812
  %stats.i.i.i = getelementptr i8, ptr %work, i32 -96
  %num_stats.i.i.i = getelementptr i8, ptr %work, i32 -108
  %arrayidx.i.i13.i.i = getelementptr i8, ptr %work, i32 -1760
  %arrayidx.i.i.i.i.i = getelementptr i8, ptr %work, i32 -1792
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %idx.05.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sparx5, ptr %add.ptr, i32 0, i32 7, i32 %idx.05.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %conf.i.i = getelementptr inbounds %struct.sparx5_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %conf.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %conf.i.i, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %3, label %if.else.i.i [
    i32 23, label %if.then.i.if.then.i.i_crit_edge
    i32 26, label %if.then.i.if.then.i.i_crit_edge4
    i32 27, label %if.then.i.if.then.i.i_crit_edge5
  ]

if.then.i.if.then.i.i_crit_edge5:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.if.then.i.i_crit_edge4:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.if.then.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i.if.then.i.i_crit_edge, %if.then.i.if.then.i.i_crit_edge4, %if.then.i.if.then.i.i_crit_edge5
  %5 = ptrtoint ptr %stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stats.i.i.i, align 4
  %7 = ptrtoint ptr %num_stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_stats.i.i.i, align 8
  %mul.i.i.i = mul i32 %8, %idx.05.i
  %arrayidx.i.i.i = getelementptr i64, ptr %6, i32 %mul.i.i.i
  %9 = add nsw i32 %idx.05.i, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %9)
  %10 = icmp ult i32 %9, 32
  br i1 %10, label %if.then.i.i.sparx5_port_dev_index.exit.i.i.i_crit_edge, label %if.end.i.i.i.i

if.then.i.i.sparx5_port_dev_index.exit.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_port_dev_index.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %idx.05.i)
  %cmp.i.i.i.i.i = icmp ult i32 %idx.05.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %idx.05.i)
  %cmp1.i.i.i.i.i = icmp eq i32 %idx.05.i, 64
  %spec.select.i.i.i.i.i = or i1 %cmp.i.i.i.i.i, %cmp1.i.i.i.i.i
  br i1 %spec.select.i.i.i.i.i, label %if.then2.i.i.i.i, label %if.end3.i.i.i.i

if.then2.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = tail call i32 @llvm.smin.i32(i32 %idx.05.i, i32 12) #9
  br label %sparx5_port_dev_index.exit.i.i.i

if.end3.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %12 = and i32 %idx.05.i, 2147483644
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %12)
  %13 = icmp eq i32 %12, 12
  %14 = and i32 %idx.05.i, 2147483640
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %14)
  %15 = icmp eq i32 %14, 48
  %16 = or i1 %13, %15
  br i1 %16, label %if.then5.i.i.i.i, label %if.end13.i.i.i.i

if.then5.i.i.i.i:                                 ; preds = %if.end3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %idx.05.i)
  %cmp7.i.i.i.i = icmp ult i32 %idx.05.i, 16
  %cond12.v.i.i.i.i = select i1 %cmp7.i.i.i.i, i32 -12, i32 -44
  %cond12.i.i.i.i = add nsw i32 %cond12.v.i.i.i.i, %idx.05.i
  br label %sparx5_port_dev_index.exit.i.i.i

if.end13.i.i.i.i:                                 ; preds = %if.end3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub14.i.i.i.i = add nsw i32 %idx.05.i, -56
  br label %sparx5_port_dev_index.exit.i.i.i

sparx5_port_dev_index.exit.i.i.i:                 ; preds = %if.end13.i.i.i.i, %if.then5.i.i.i.i, %if.then2.i.i.i.i, %if.then.i.i.sparx5_port_dev_index.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %11, %if.then2.i.i.i.i ], [ %cond12.i.i.i.i, %if.then5.i.i.i.i ], [ %sub14.i.i.i.i, %if.end13.i.i.i.i ], [ %idx.05.i, %if.then.i.i.sparx5_port_dev_index.exit.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %idx.05.i)
  %cmp.i.i20.i.i.i = icmp ult i32 %idx.05.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %idx.05.i)
  %cmp1.i.i21.i.i.i = icmp eq i32 %idx.05.i, 64
  %spec.select.i.i22.i.i.i = or i1 %cmp.i.i20.i.i.i, %cmp1.i.i21.i.i.i
  br i1 %spec.select.i.i22.i.i.i, label %sparx5_port_dev_index.exit.i.i.i.sparx5_to_high_dev.exit.i.i.i_crit_edge, label %if.end.i23.i.i.i

sparx5_port_dev_index.exit.i.i.i.sparx5_to_high_dev.exit.i.i.i_crit_edge: ; preds = %sparx5_port_dev_index.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_to_high_dev.exit.i.i.i

if.end.i23.i.i.i:                                 ; preds = %sparx5_port_dev_index.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = and i32 %idx.05.i, 2147483644
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %17)
  %18 = icmp eq i32 %17, 12
  %19 = and i32 %idx.05.i, 2147483640
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %19)
  %20 = icmp eq i32 %19, 48
  %21 = or i1 %18, %20
  %..i.i.i.i = select i1 %21, i32 17, i32 29
  br label %sparx5_to_high_dev.exit.i.i.i

sparx5_to_high_dev.exit.i.i.i:                    ; preds = %if.end.i23.i.i.i, %sparx5_port_dev_index.exit.i.i.i.sparx5_to_high_dev.exit.i.i.i_crit_edge
  %retval.0.i24.i.i.i = phi i32 [ 102, %sparx5_port_dev_index.exit.i.i.i.sparx5_to_high_dev.exit.i.i.i_crit_edge ], [ %..i.i.i.i, %if.end.i23.i.i.i ]
  %add.i.i.i.i = add nsw i32 %retval.0.i24.i.i.i, %retval.0.i.i.i.i
  %arrayidx.i.i.i.i = getelementptr %struct.sparx5, ptr %add.ptr, i32 0, i32 4, i32 %add.i.i.i.i
  %22 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %23, i32 60
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i.i) #9, !srcloc !170
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i.i.i.i.i = zext i32 %25 to i64
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx.i.i.i, align 8
  %and.i.i.i.i.i = and i64 %27, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i.i.i, i64 %conv.i.i.i.i.i)
  %cmp.i.i25.i.i.i = icmp ugt i64 %and.i.i.i.i.i, %conv.i.i.i.i.i
  br i1 %cmp.i.i25.i.i.i, label %if.then.i.i.i.i.i, label %sparx5_to_high_dev.exit.i.i.i.sparx5_update_counter.exit.i.i.i.i_crit_edge

sparx5_to_high_dev.exit.i.i.i.sparx5_update_counter.exit.i.i.i.i_crit_edge: ; preds = %sparx5_to_high_dev.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %sparx5_to_high_dev.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i.i.i.i = add i64 %27, 4294967296
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %add.i.i.i.i.i, ptr %arrayidx.i.i.i, align 8
  br label %sparx5_update_counter.exit.i.i.i.i

sparx5_update_counter.exit.i.i.i.i:               ; preds = %if.then.i.i.i.i.i, %sparx5_to_high_dev.exit.i.i.i.sparx5_update_counter.exit.i.i.i.i_crit_edge
  %29 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx.i.i.i, align 8
  %and2.i.i.i.i.i = and i64 %30, -4294967296
  %add4.i.i.i.i.i = or i64 %and2.i.i.i.i.i, %conv.i.i.i.i.i
  store i64 %add4.i.i.i.i.i, ptr %arrayidx.i.i.i, align 8
  %arrayidx1.i.i.i.i = getelementptr i64, ptr %arrayidx.i.i.i, i32 1
  %add.ptr51.i.i.i.i.i.i = getelementptr i8, ptr %23, i32 208
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i.i.i.i.i) #9, !srcloc !170
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i2.i.i.i.i = zext i32 %32 to i64
  %33 = ptrtoint ptr %arrayidx1.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx1.i.i.i.i, align 8
  %and.i3.i.i.i.i = and i64 %34, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i3.i.i.i.i, i64 %conv.i2.i.i.i.i)
  %cmp.i4.i.i.i.i = icmp ugt i64 %and.i3.i.i.i.i, %conv.i2.i.i.i.i
  br i1 %cmp.i4.i.i.i.i, label %if.then.i6.i.i.i.i, label %sparx5_update_counter.exit.i.i.i.i.sparx5_get_device_stats.exit.i.i_crit_edge

sparx5_update_counter.exit.i.i.i.i.sparx5_get_device_stats.exit.i.i_crit_edge: ; preds = %sparx5_update_counter.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_get_device_stats.exit.i.i

if.then.i6.i.i.i.i:                               ; preds = %sparx5_update_counter.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i5.i.i.i.i = add i64 %34, 4294967296
  %35 = ptrtoint ptr %arrayidx1.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %add.i5.i.i.i.i, ptr %arrayidx1.i.i.i.i, align 8
  br label %sparx5_get_device_stats.exit.i.i

sparx5_get_device_stats.exit.i.i:                 ; preds = %if.then.i6.i.i.i.i, %sparx5_update_counter.exit.i.i.i.i.sparx5_get_device_stats.exit.i.i_crit_edge
  %36 = ptrtoint ptr %arrayidx1.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx1.i.i.i.i, align 8
  %and2.i7.i.i.i.i = and i64 %37, -4294967296
  %add4.i8.i.i.i.i = or i64 %and2.i7.i.i.i.i, %conv.i2.i.i.i.i
  store i64 %add4.i8.i.i.i.i, ptr %arrayidx1.i.i.i.i, align 8
  tail call fastcc void @sparx5_get_dev_mac_stats(ptr noundef %arrayidx.i.i.i, ptr noundef %23) #9
  tail call fastcc void @sparx5_get_dev_mac_ctrl_stats(ptr noundef %arrayidx.i.i.i, ptr noundef %23) #9
  tail call fastcc void @sparx5_get_dev_rmon_stats(ptr noundef %arrayidx.i.i.i, ptr noundef %23) #9
  tail call fastcc void @sparx5_get_dev_misc_stats(ptr noundef %arrayidx.i.i.i, ptr noundef %23) #9
  br label %spx5_rd.exit.i.i.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %stats.i.i.i, align 4
  %40 = ptrtoint ptr %num_stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_stats.i.i.i, align 8
  %mul.i11.i.i = mul i32 %41, %idx.05.i
  %arrayidx.i12.i.i = getelementptr i64, ptr %39, i32 %mul.i11.i.i
  %42 = ptrtoint ptr %arrayidx.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i13.i.i, align 4
  tail call fastcc void @sparx5_get_asm_phy_stats(ptr noundef %arrayidx.i12.i.i, ptr noundef %43, i32 noundef %idx.05.i) #9
  tail call fastcc void @sparx5_get_asm_mac_stats(ptr noundef %arrayidx.i12.i.i, ptr noundef %43, i32 noundef %idx.05.i) #9
  tail call fastcc void @sparx5_get_asm_mac_ctrl_stats(ptr noundef %arrayidx.i12.i.i, ptr noundef %43, i32 noundef %idx.05.i) #9
  tail call fastcc void @sparx5_get_asm_rmon_stats(ptr noundef %arrayidx.i12.i.i, ptr noundef %43, i32 noundef %idx.05.i) #9
  tail call fastcc void @sparx5_get_asm_misc_stats(ptr noundef %arrayidx.i12.i.i, ptr noundef %43, i32 noundef %idx.05.i) #9
  br label %spx5_rd.exit.i.i.i

spx5_rd.exit.i.i.i:                               ; preds = %if.else.i.i, %sparx5_get_device_stats.exit.i.i
  %44 = ptrtoint ptr %stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stats.i.i.i, align 4
  %46 = ptrtoint ptr %num_stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_stats.i.i.i, align 8
  %mul.i16.i.i = mul i32 %47, %idx.05.i
  %arrayidx.i17.i.i = getelementptr i64, ptr %45, i32 94
  %arrayidx1.i.i.i = getelementptr i64, ptr %arrayidx.i17.i.i, i32 %mul.i16.i.i
  %48 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %mul.i.i.i.i.i = shl i32 %idx.05.i, 6
  %add.ptr81.i.i.i.i.i = getelementptr i8, ptr %49, i32 843796
  %add.ptr82.i.i.i.i.i = getelementptr i8, ptr %add.ptr81.i.i.i.i.i, i32 %mul.i.i.i.i.i
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i.i.i) #9, !srcloc !170
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  %conv.i.i.i.i = zext i32 %51 to i64
  %52 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx1.i.i.i, align 8
  %and.i.i.i.i = and i64 %53, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i.i, i64 %conv.i.i.i.i)
  %cmp.i.i.i.i = icmp ugt i64 %and.i.i.i.i, %conv.i.i.i.i
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %spx5_rd.exit.i.i.i.sparx5_update_port_stats.exit.i_crit_edge

spx5_rd.exit.i.i.i.sparx5_update_port_stats.exit.i_crit_edge: ; preds = %spx5_rd.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_port_stats.exit.i

if.then.i.i.i.i:                                  ; preds = %spx5_rd.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i18.i.i = add i64 %53, 4294967296
  %54 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %add.i.i18.i.i, ptr %arrayidx1.i.i.i, align 8
  br label %sparx5_update_port_stats.exit.i

sparx5_update_port_stats.exit.i:                  ; preds = %if.then.i.i.i.i, %spx5_rd.exit.i.i.i.sparx5_update_port_stats.exit.i_crit_edge
  %55 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %arrayidx1.i.i.i, align 8
  %and2.i.i.i.i = and i64 %56, -4294967296
  %add4.i.i.i.i = or i64 %and2.i.i.i.i, %conv.i.i.i.i
  store i64 %add4.i.i.i.i, ptr %arrayidx1.i.i.i, align 8
  tail call fastcc void @sparx5_get_queue_sys_stats(ptr noundef %add.ptr, i32 noundef %idx.05.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %sparx5_update_port_stats.exit.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %idx.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 65
  br i1 %exitcond.not.i, label %sparx5_update_stats.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

sparx5_update_stats.exit:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %stats_queue = getelementptr i8, ptr %work, i32 100
  %57 = ptrtoint ptr %stats_queue to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %stats_queue, align 8
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %58, ptr noundef %work, i32 noundef 100) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sparx5_get_dev_misc_stats(ptr nocapture noundef %portstats, ptr noundef %inst) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i64, ptr %portstats, i32 75
  %add.ptr51.i.i = getelementptr i8, ptr %inst, i32 336
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i) #9, !srcloc !170
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i = zext i32 %1 to i64
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  %and.i = and i64 %3, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %conv.i)
  %cmp.i = icmp ugt i64 %and.i, %conv.i
  br i1 %cmp.i, label %if.then.i, label %entry.sparx5_update_counter.exit_crit_edge

entry.sparx5_update_counter.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i64 %3, 4294967296
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add.i, ptr %arrayidx, align 8
  br label %sparx5_update_counter.exit

sparx5_update_counter.exit:                       ; preds = %if.then.i, %entry.sparx5_update_counter.exit_crit_edge
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx, align 8
  %and2.i = and i64 %6, -4294967296
  %add4.i = or i64 %and2.i, %conv.i
  store i64 %add4.i, ptr %arrayidx, align 8
  %arrayidx1 = getelementptr i64, ptr %portstats, i32 76
  %add.ptr51.i.i2 = getelementptr i8, ptr %inst, i32 344
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i2) #9, !srcloc !170
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i3 = zext i32 %8 to i64
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx1, align 8
  %and.i4 = and i64 %10, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i4, i64 %conv.i3)
  %cmp.i5 = icmp ugt i64 %and.i4, %conv.i3
  br i1 %cmp.i5, label %if.then.i7, label %sparx5_update_counter.exit.sparx5_update_counter.exit10_crit_edge

sparx5_update_counter.exit.sparx5_update_counter.exit10_crit_edge: ; preds = %sparx5_update_counter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit10

if.then.i7:                                       ; preds = %sparx5_update_counter.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.i6 = add i64 %10, 4294967296
  %11 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %add.i6, ptr %arrayidx1, align 8
  br label %sparx5_update_counter.exit10

sparx5_update_counter.exit10:                     ; preds = %if.then.i7, %sparx5_update_counter.exit.sparx5_update_counter.exit10_crit_edge
  %12 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx1, align 8
  %and2.i8 = and i64 %13, -4294967296
  %add4.i9 = or i64 %and2.i8, %conv.i3
  store i64 %add4.i9, ptr %arrayidx1, align 8
  %arrayidx3 = getelementptr i64, ptr %portstats, i32 77
  %add.ptr51.i.i12 = getelementptr i8, ptr %inst, i32 348
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i12) #9, !srcloc !170
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i13 = zext i32 %15 to i64
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx3, align 8
  %and.i14 = and i64 %17, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i14, i64 %conv.i13)
  %cmp.i15 = icmp ugt i64 %and.i14, %conv.i13
  br i1 %cmp.i15, label %if.then.i17, label %sparx5_update_counter.exit10.sparx5_update_counter.exit20_crit_edge

sparx5_update_counter.exit10.sparx5_update_counter.exit20_crit_edge: ; preds = %sparx5_update_counter.exit10
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit20

if.then.i17:                                      ; preds = %sparx5_update_counter.exit10
  call void @__sanitizer_cov_trace_pc() #11
  %add.i16 = add i64 %17, 4294967296
  %18 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add.i16, ptr %arrayidx3, align 8
  br label %sparx5_update_counter.exit20

sparx5_update_counter.exit20:                     ; preds = %if.then.i17, %sparx5_update_counter.exit10.sparx5_update_counter.exit20_crit_edge
  %19 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx3, align 8
  %and2.i18 = and i64 %20, -4294967296
  %add4.i19 = or i64 %and2.i18, %conv.i13
  store i64 %add4.i19, ptr %arrayidx3, align 8
  %arrayidx5 = getelementptr i64, ptr %portstats, i32 78
  %add.ptr51.i.i22 = getelementptr i8, ptr %inst, i32 340
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i22) #9, !srcloc !170
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i23 = zext i32 %22 to i64
  %23 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx5, align 8
  %and.i24 = and i64 %24, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i24, i64 %conv.i23)
  %cmp.i25 = icmp ugt i64 %and.i24, %conv.i23
  br i1 %cmp.i25, label %if.then.i27, label %sparx5_update_counter.exit20.sparx5_update_counter.exit30_crit_edge

sparx5_update_counter.exit20.sparx5_update_counter.exit30_crit_edge: ; preds = %sparx5_update_counter.exit20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit30

if.then.i27:                                      ; preds = %sparx5_update_counter.exit20
  call void @__sanitizer_cov_trace_pc() #11
  %add.i26 = add i64 %24, 4294967296
  %25 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %add.i26, ptr %arrayidx5, align 8
  br label %sparx5_update_counter.exit30

sparx5_update_counter.exit30:                     ; preds = %if.then.i27, %sparx5_update_counter.exit20.sparx5_update_counter.exit30_crit_edge
  %26 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx5, align 8
  %and2.i28 = and i64 %27, -4294967296
  %add4.i29 = or i64 %and2.i28, %conv.i23
  store i64 %add4.i29, ptr %arrayidx5, align 8
  %arrayidx7 = getelementptr i64, ptr %portstats, i32 79
  %add.ptr51.i.i32 = getelementptr i8, ptr %inst, i32 352
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i32) #9, !srcloc !170
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i33 = zext i32 %29 to i64
  %30 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx7, align 8
  %and.i34 = and i64 %31, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i34, i64 %conv.i33)
  %cmp.i35 = icmp ugt i64 %and.i34, %conv.i33
  br i1 %cmp.i35, label %if.then.i37, label %sparx5_update_counter.exit30.sparx5_update_counter.exit40_crit_edge

sparx5_update_counter.exit30.sparx5_update_counter.exit40_crit_edge: ; preds = %sparx5_update_counter.exit30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit40

if.then.i37:                                      ; preds = %sparx5_update_counter.exit30
  call void @__sanitizer_cov_trace_pc() #11
  %add.i36 = add i64 %31, 4294967296
  %32 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %add.i36, ptr %arrayidx7, align 8
  br label %sparx5_update_counter.exit40

sparx5_update_counter.exit40:                     ; preds = %if.then.i37, %sparx5_update_counter.exit30.sparx5_update_counter.exit40_crit_edge
  %33 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx7, align 8
  %and2.i38 = and i64 %34, -4294967296
  %add4.i39 = or i64 %and2.i38, %conv.i33
  store i64 %add4.i39, ptr %arrayidx7, align 8
  %arrayidx9 = getelementptr i64, ptr %portstats, i32 80
  %add.ptr.i.i41 = getelementptr i8, ptr %inst, i32 372
  %add.ptr51.i.i42 = getelementptr i8, ptr %inst, i32 388
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i42) #9, !srcloc !170
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i43 = zext i32 %36 to i64
  %37 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx9, align 8
  %and.i44 = and i64 %38, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i44, i64 %conv.i43)
  %cmp.i45 = icmp ugt i64 %and.i44, %conv.i43
  br i1 %cmp.i45, label %if.then.i47, label %sparx5_update_counter.exit40.sparx5_update_counter.exit50_crit_edge

sparx5_update_counter.exit40.sparx5_update_counter.exit50_crit_edge: ; preds = %sparx5_update_counter.exit40
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit50

if.then.i47:                                      ; preds = %sparx5_update_counter.exit40
  call void @__sanitizer_cov_trace_pc() #11
  %add.i46 = add i64 %38, 4294967296
  %39 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %add.i46, ptr %arrayidx9, align 8
  br label %sparx5_update_counter.exit50

sparx5_update_counter.exit50:                     ; preds = %if.then.i47, %sparx5_update_counter.exit40.sparx5_update_counter.exit50_crit_edge
  %40 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx9, align 8
  %and2.i48 = and i64 %41, -4294967296
  %add4.i49 = or i64 %and2.i48, %conv.i43
  store i64 %add4.i49, ptr %arrayidx9, align 8
  %arrayidx11 = getelementptr i64, ptr %portstats, i32 81
  %add.ptr51.i.i52 = getelementptr i8, ptr %inst, i32 420
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i52) #9, !srcloc !170
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i53 = zext i32 %43 to i64
  %44 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx11, align 8
  %and.i54 = and i64 %45, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i54, i64 %conv.i53)
  %cmp.i55 = icmp ugt i64 %and.i54, %conv.i53
  br i1 %cmp.i55, label %if.then.i57, label %sparx5_update_counter.exit50.sparx5_update_counter.exit60_crit_edge

sparx5_update_counter.exit50.sparx5_update_counter.exit60_crit_edge: ; preds = %sparx5_update_counter.exit50
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit60

if.then.i57:                                      ; preds = %sparx5_update_counter.exit50
  call void @__sanitizer_cov_trace_pc() #11
  %add.i56 = add i64 %45, 4294967296
  %46 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %add.i56, ptr %arrayidx11, align 8
  br label %sparx5_update_counter.exit60

sparx5_update_counter.exit60:                     ; preds = %if.then.i57, %sparx5_update_counter.exit50.sparx5_update_counter.exit60_crit_edge
  %47 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx11, align 8
  %and2.i58 = and i64 %48, -4294967296
  %add4.i59 = or i64 %and2.i58, %conv.i53
  store i64 %add4.i59, ptr %arrayidx11, align 8
  %arrayidx13 = getelementptr i64, ptr %portstats, i32 82
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i41) #9, !srcloc !170
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i62 = zext i32 %50 to i64
  %51 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx13, align 8
  %and.i63 = and i64 %52, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i63, i64 %conv.i62)
  %cmp.i64 = icmp ugt i64 %and.i63, %conv.i62
  br i1 %cmp.i64, label %if.then.i66, label %sparx5_update_counter.exit60.sparx5_update_counter.exit69_crit_edge

sparx5_update_counter.exit60.sparx5_update_counter.exit69_crit_edge: ; preds = %sparx5_update_counter.exit60
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit69

if.then.i66:                                      ; preds = %sparx5_update_counter.exit60
  call void @__sanitizer_cov_trace_pc() #11
  %add.i65 = add i64 %52, 4294967296
  %53 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %add.i65, ptr %arrayidx13, align 8
  br label %sparx5_update_counter.exit69

sparx5_update_counter.exit69:                     ; preds = %if.then.i66, %sparx5_update_counter.exit60.sparx5_update_counter.exit69_crit_edge
  %54 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx13, align 8
  %and2.i67 = and i64 %55, -4294967296
  %add4.i68 = or i64 %and2.i67, %conv.i62
  store i64 %add4.i68, ptr %arrayidx13, align 8
  %arrayidx15 = getelementptr i64, ptr %portstats, i32 83
  %add.ptr51.i.i71 = getelementptr i8, ptr %inst, i32 140
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i71) #9, !srcloc !170
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i72 = zext i32 %57 to i64
  %58 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx15, align 8
  %and.i73 = and i64 %59, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i73, i64 %conv.i72)
  %cmp.i74 = icmp ugt i64 %and.i73, %conv.i72
  br i1 %cmp.i74, label %if.then.i76, label %sparx5_update_counter.exit69.sparx5_update_counter.exit79_crit_edge

sparx5_update_counter.exit69.sparx5_update_counter.exit79_crit_edge: ; preds = %sparx5_update_counter.exit69
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit79

if.then.i76:                                      ; preds = %sparx5_update_counter.exit69
  call void @__sanitizer_cov_trace_pc() #11
  %add.i75 = add i64 %59, 4294967296
  %60 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %add.i75, ptr %arrayidx15, align 8
  br label %sparx5_update_counter.exit79

sparx5_update_counter.exit79:                     ; preds = %if.then.i76, %sparx5_update_counter.exit69.sparx5_update_counter.exit79_crit_edge
  %61 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx15, align 8
  %and2.i77 = and i64 %62, -4294967296
  %add4.i78 = or i64 %and2.i77, %conv.i72
  store i64 %add4.i78, ptr %arrayidx15, align 8
  %arrayidx17 = getelementptr i64, ptr %portstats, i32 85
  %add.ptr51.i.i81 = getelementptr i8, ptr %inst, i32 192
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i81) #9, !srcloc !170
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i82 = zext i32 %64 to i64
  %65 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx17, align 8
  %and.i83 = and i64 %66, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i83, i64 %conv.i82)
  %cmp.i84 = icmp ugt i64 %and.i83, %conv.i82
  br i1 %cmp.i84, label %if.then.i86, label %sparx5_update_counter.exit79.sparx5_update_counter.exit89_crit_edge

sparx5_update_counter.exit79.sparx5_update_counter.exit89_crit_edge: ; preds = %sparx5_update_counter.exit79
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit89

if.then.i86:                                      ; preds = %sparx5_update_counter.exit79
  call void @__sanitizer_cov_trace_pc() #11
  %add.i85 = add i64 %66, 4294967296
  %67 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %add.i85, ptr %arrayidx17, align 8
  br label %sparx5_update_counter.exit89

sparx5_update_counter.exit89:                     ; preds = %if.then.i86, %sparx5_update_counter.exit79.sparx5_update_counter.exit89_crit_edge
  %68 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx17, align 8
  %and2.i87 = and i64 %69, -4294967296
  %add4.i88 = or i64 %and2.i87, %conv.i82
  store i64 %add4.i88, ptr %arrayidx17, align 8
  %arrayidx19 = getelementptr i64, ptr %portstats, i32 86
  %add.ptr51.i.i91 = getelementptr i8, ptr %inst, i32 196
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i91) #9, !srcloc !170
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i92 = zext i32 %71 to i64
  %72 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx19, align 8
  %and.i93 = and i64 %73, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i93, i64 %conv.i92)
  %cmp.i94 = icmp ugt i64 %and.i93, %conv.i92
  br i1 %cmp.i94, label %if.then.i96, label %sparx5_update_counter.exit89.sparx5_update_counter.exit99_crit_edge

sparx5_update_counter.exit89.sparx5_update_counter.exit99_crit_edge: ; preds = %sparx5_update_counter.exit89
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit99

if.then.i96:                                      ; preds = %sparx5_update_counter.exit89
  call void @__sanitizer_cov_trace_pc() #11
  %add.i95 = add i64 %73, 4294967296
  %74 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %add.i95, ptr %arrayidx19, align 8
  br label %sparx5_update_counter.exit99

sparx5_update_counter.exit99:                     ; preds = %if.then.i96, %sparx5_update_counter.exit89.sparx5_update_counter.exit99_crit_edge
  %75 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx19, align 8
  %and2.i97 = and i64 %76, -4294967296
  %add4.i98 = or i64 %and2.i97, %conv.i92
  store i64 %add4.i98, ptr %arrayidx19, align 8
  %arrayidx21 = getelementptr i64, ptr %portstats, i32 87
  %add.ptr51.i.i101 = getelementptr i8, ptr %inst, i32 396
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i101) #9, !srcloc !170
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i102 = zext i32 %78 to i64
  %79 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %arrayidx21, align 8
  %and.i103 = and i64 %80, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i103, i64 %conv.i102)
  %cmp.i104 = icmp ugt i64 %and.i103, %conv.i102
  br i1 %cmp.i104, label %if.then.i106, label %sparx5_update_counter.exit99.sparx5_update_counter.exit109_crit_edge

sparx5_update_counter.exit99.sparx5_update_counter.exit109_crit_edge: ; preds = %sparx5_update_counter.exit99
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit109

if.then.i106:                                     ; preds = %sparx5_update_counter.exit99
  call void @__sanitizer_cov_trace_pc() #11
  %add.i105 = add i64 %80, 4294967296
  %81 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %add.i105, ptr %arrayidx21, align 8
  br label %sparx5_update_counter.exit109

sparx5_update_counter.exit109:                    ; preds = %if.then.i106, %sparx5_update_counter.exit99.sparx5_update_counter.exit109_crit_edge
  %82 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %arrayidx21, align 8
  %and2.i107 = and i64 %83, -4294967296
  %add4.i108 = or i64 %and2.i107, %conv.i102
  store i64 %add4.i108, ptr %arrayidx21, align 8
  %arrayidx23 = getelementptr i64, ptr %portstats, i32 88
  %add.ptr51.i.i111 = getelementptr i8, ptr %inst, i32 200
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i111) #9, !srcloc !170
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i112 = zext i32 %85 to i64
  %86 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %arrayidx23, align 8
  %and.i113 = and i64 %87, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i113, i64 %conv.i112)
  %cmp.i114 = icmp ugt i64 %and.i113, %conv.i112
  br i1 %cmp.i114, label %if.then.i116, label %sparx5_update_counter.exit109.sparx5_update_counter.exit119_crit_edge

sparx5_update_counter.exit109.sparx5_update_counter.exit119_crit_edge: ; preds = %sparx5_update_counter.exit109
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit119

if.then.i116:                                     ; preds = %sparx5_update_counter.exit109
  call void @__sanitizer_cov_trace_pc() #11
  %add.i115 = add i64 %87, 4294967296
  %88 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %add.i115, ptr %arrayidx23, align 8
  br label %sparx5_update_counter.exit119

sparx5_update_counter.exit119:                    ; preds = %if.then.i116, %sparx5_update_counter.exit109.sparx5_update_counter.exit119_crit_edge
  %89 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx23, align 8
  %and2.i117 = and i64 %90, -4294967296
  %add4.i118 = or i64 %and2.i117, %conv.i112
  store i64 %add4.i118, ptr %arrayidx23, align 8
  %arrayidx25 = getelementptr i64, ptr %portstats, i32 89
  %add.ptr51.i.i121 = getelementptr i8, ptr %inst, i32 204
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i121) #9, !srcloc !170
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i122 = zext i32 %92 to i64
  %93 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %arrayidx25, align 8
  %and.i123 = and i64 %94, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i123, i64 %conv.i122)
  %cmp.i124 = icmp ugt i64 %and.i123, %conv.i122
  br i1 %cmp.i124, label %if.then.i126, label %sparx5_update_counter.exit119.sparx5_update_counter.exit129_crit_edge

sparx5_update_counter.exit119.sparx5_update_counter.exit129_crit_edge: ; preds = %sparx5_update_counter.exit119
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit129

if.then.i126:                                     ; preds = %sparx5_update_counter.exit119
  call void @__sanitizer_cov_trace_pc() #11
  %add.i125 = add i64 %94, 4294967296
  %95 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %add.i125, ptr %arrayidx25, align 8
  br label %sparx5_update_counter.exit129

sparx5_update_counter.exit129:                    ; preds = %if.then.i126, %sparx5_update_counter.exit119.sparx5_update_counter.exit129_crit_edge
  %96 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %arrayidx25, align 8
  %and2.i127 = and i64 %97, -4294967296
  %add4.i128 = or i64 %and2.i127, %conv.i122
  store i64 %add4.i128, ptr %arrayidx25, align 8
  %arrayidx27 = getelementptr i64, ptr %portstats, i32 90
  %add.ptr51.i.i131 = getelementptr i8, ptr %inst, i32 356
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i131) #9, !srcloc !170
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i132 = zext i32 %99 to i64
  %100 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %arrayidx27, align 8
  %and.i133 = and i64 %101, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i133, i64 %conv.i132)
  %cmp.i134 = icmp ugt i64 %and.i133, %conv.i132
  br i1 %cmp.i134, label %if.then.i136, label %sparx5_update_counter.exit129.sparx5_update_counter.exit139_crit_edge

sparx5_update_counter.exit129.sparx5_update_counter.exit139_crit_edge: ; preds = %sparx5_update_counter.exit129
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit139

if.then.i136:                                     ; preds = %sparx5_update_counter.exit129
  call void @__sanitizer_cov_trace_pc() #11
  %add.i135 = add i64 %101, 4294967296
  %102 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %add.i135, ptr %arrayidx27, align 8
  br label %sparx5_update_counter.exit139

sparx5_update_counter.exit139:                    ; preds = %if.then.i136, %sparx5_update_counter.exit129.sparx5_update_counter.exit139_crit_edge
  %103 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx27, align 8
  %and2.i137 = and i64 %104, -4294967296
  %add4.i138 = or i64 %and2.i137, %conv.i132
  store i64 %add4.i138, ptr %arrayidx27, align 8
  %arrayidx29 = getelementptr i64, ptr %portstats, i32 91
  %add.ptr51.i.i141 = getelementptr i8, ptr %inst, i32 364
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i141) #9, !srcloc !170
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i142 = zext i32 %106 to i64
  %107 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %arrayidx29, align 8
  %and.i143 = and i64 %108, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i143, i64 %conv.i142)
  %cmp.i144 = icmp ugt i64 %and.i143, %conv.i142
  br i1 %cmp.i144, label %if.then.i146, label %sparx5_update_counter.exit139.sparx5_update_counter.exit149_crit_edge

sparx5_update_counter.exit139.sparx5_update_counter.exit149_crit_edge: ; preds = %sparx5_update_counter.exit139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit149

if.then.i146:                                     ; preds = %sparx5_update_counter.exit139
  call void @__sanitizer_cov_trace_pc() #11
  %add.i145 = add i64 %108, 4294967296
  %109 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %add.i145, ptr %arrayidx29, align 8
  br label %sparx5_update_counter.exit149

sparx5_update_counter.exit149:                    ; preds = %if.then.i146, %sparx5_update_counter.exit139.sparx5_update_counter.exit149_crit_edge
  %110 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %arrayidx29, align 8
  %and2.i147 = and i64 %111, -4294967296
  %add4.i148 = or i64 %and2.i147, %conv.i142
  store i64 %add4.i148, ptr %arrayidx29, align 8
  %arrayidx31 = getelementptr i64, ptr %portstats, i32 92
  %add.ptr51.i.i151 = getelementptr i8, ptr %inst, i32 360
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i151) #9, !srcloc !170
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i152 = zext i32 %113 to i64
  %114 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %arrayidx31, align 8
  %and.i153 = and i64 %115, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i153, i64 %conv.i152)
  %cmp.i154 = icmp ugt i64 %and.i153, %conv.i152
  br i1 %cmp.i154, label %if.then.i156, label %sparx5_update_counter.exit149.sparx5_update_counter.exit159_crit_edge

sparx5_update_counter.exit149.sparx5_update_counter.exit159_crit_edge: ; preds = %sparx5_update_counter.exit149
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit159

if.then.i156:                                     ; preds = %sparx5_update_counter.exit149
  call void @__sanitizer_cov_trace_pc() #11
  %add.i155 = add i64 %115, 4294967296
  %116 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %add.i155, ptr %arrayidx31, align 8
  br label %sparx5_update_counter.exit159

sparx5_update_counter.exit159:                    ; preds = %if.then.i156, %sparx5_update_counter.exit149.sparx5_update_counter.exit159_crit_edge
  %117 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %arrayidx31, align 8
  %and2.i157 = and i64 %118, -4294967296
  %add4.i158 = or i64 %and2.i157, %conv.i152
  store i64 %add4.i158, ptr %arrayidx31, align 8
  %arrayidx33 = getelementptr i64, ptr %portstats, i32 93
  %add.ptr51.i.i161 = getelementptr i8, ptr %inst, i32 368
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i161) #9, !srcloc !170
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i162 = zext i32 %120 to i64
  %121 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %arrayidx33, align 8
  %and.i163 = and i64 %122, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i163, i64 %conv.i162)
  %cmp.i164 = icmp ugt i64 %and.i163, %conv.i162
  br i1 %cmp.i164, label %if.then.i166, label %sparx5_update_counter.exit159.sparx5_update_counter.exit169_crit_edge

sparx5_update_counter.exit159.sparx5_update_counter.exit169_crit_edge: ; preds = %sparx5_update_counter.exit159
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit169

if.then.i166:                                     ; preds = %sparx5_update_counter.exit159
  call void @__sanitizer_cov_trace_pc() #11
  %add.i165 = add i64 %122, 4294967296
  %123 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %add.i165, ptr %arrayidx33, align 8
  br label %sparx5_update_counter.exit169

sparx5_update_counter.exit169:                    ; preds = %if.then.i166, %sparx5_update_counter.exit159.sparx5_update_counter.exit169_crit_edge
  %124 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %arrayidx33, align 8
  %and2.i167 = and i64 %125, -4294967296
  %add4.i168 = or i64 %and2.i167, %conv.i162
  store i64 %add4.i168, ptr %arrayidx33, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sparx5_get_asm_misc_stats(ptr nocapture noundef %portstats, ptr noundef %inst, i32 noundef %portno) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i64, ptr %portstats, i32 75
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %portno)
  %cmp.not.i.i = icmp slt i32 %portno, 65
  br i1 %cmp.not.i.i, label %entry.spx5_inst_rd.exit_crit_edge, label %do.end.i.i, !prof !169

entry.spx5_inst_rd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit

spx5_inst_rd.exit:                                ; preds = %do.end.i.i, %entry.spx5_inst_rd.exit_crit_edge
  %mul.i.i = shl i32 %portno, 9
  %add.ptr50.i.i = getelementptr i8, ptr %inst, i32 %mul.i.i
  %add.ptr51.i.i = getelementptr i8, ptr %add.ptr50.i.i, i32 308
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i) #9, !srcloc !170
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i = zext i32 %1 to i64
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  %and.i = and i64 %3, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %conv.i)
  %cmp.i = icmp ugt i64 %and.i, %conv.i
  br i1 %cmp.i, label %if.then.i, label %spx5_inst_rd.exit.sparx5_update_counter.exit_crit_edge

spx5_inst_rd.exit.sparx5_update_counter.exit_crit_edge: ; preds = %spx5_inst_rd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit

if.then.i:                                        ; preds = %spx5_inst_rd.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i64 %3, 4294967296
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add.i, ptr %arrayidx, align 8
  br label %sparx5_update_counter.exit

sparx5_update_counter.exit:                       ; preds = %if.then.i, %spx5_inst_rd.exit.sparx5_update_counter.exit_crit_edge
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx, align 8
  %and2.i = and i64 %6, -4294967296
  %add4.i = or i64 %and2.i, %conv.i
  store i64 %add4.i, ptr %arrayidx, align 8
  %arrayidx1 = getelementptr i64, ptr %portstats, i32 76
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit.spx5_inst_rd.exit76_crit_edge, label %do.end.i.i72, !prof !169

sparx5_update_counter.exit.spx5_inst_rd.exit76_crit_edge: ; preds = %sparx5_update_counter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit76

do.end.i.i72:                                     ; preds = %sparx5_update_counter.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit76

spx5_inst_rd.exit76:                              ; preds = %do.end.i.i72, %sparx5_update_counter.exit.spx5_inst_rd.exit76_crit_edge
  %add.ptr51.i.i75 = getelementptr i8, ptr %add.ptr50.i.i, i32 316
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i75) #9, !srcloc !170
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i77 = zext i32 %8 to i64
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx1, align 8
  %and.i78 = and i64 %10, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i78, i64 %conv.i77)
  %cmp.i79 = icmp ugt i64 %and.i78, %conv.i77
  br i1 %cmp.i79, label %if.then.i81, label %spx5_inst_rd.exit76.sparx5_update_counter.exit84_crit_edge

spx5_inst_rd.exit76.sparx5_update_counter.exit84_crit_edge: ; preds = %spx5_inst_rd.exit76
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit84

if.then.i81:                                      ; preds = %spx5_inst_rd.exit76
  call void @__sanitizer_cov_trace_pc() #11
  %add.i80 = add i64 %10, 4294967296
  %11 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %add.i80, ptr %arrayidx1, align 8
  br label %sparx5_update_counter.exit84

sparx5_update_counter.exit84:                     ; preds = %if.then.i81, %spx5_inst_rd.exit76.sparx5_update_counter.exit84_crit_edge
  %12 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx1, align 8
  %and2.i82 = and i64 %13, -4294967296
  %add4.i83 = or i64 %and2.i82, %conv.i77
  store i64 %add4.i83, ptr %arrayidx1, align 8
  %arrayidx3 = getelementptr i64, ptr %portstats, i32 77
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit84.spx5_inst_rd.exit90_crit_edge, label %do.end.i.i86, !prof !169

sparx5_update_counter.exit84.spx5_inst_rd.exit90_crit_edge: ; preds = %sparx5_update_counter.exit84
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit90

do.end.i.i86:                                     ; preds = %sparx5_update_counter.exit84
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit90

spx5_inst_rd.exit90:                              ; preds = %do.end.i.i86, %sparx5_update_counter.exit84.spx5_inst_rd.exit90_crit_edge
  %add.ptr51.i.i89 = getelementptr i8, ptr %add.ptr50.i.i, i32 320
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i89) #9, !srcloc !170
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i91 = zext i32 %15 to i64
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx3, align 8
  %and.i92 = and i64 %17, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i92, i64 %conv.i91)
  %cmp.i93 = icmp ugt i64 %and.i92, %conv.i91
  br i1 %cmp.i93, label %if.then.i95, label %spx5_inst_rd.exit90.sparx5_update_counter.exit98_crit_edge

spx5_inst_rd.exit90.sparx5_update_counter.exit98_crit_edge: ; preds = %spx5_inst_rd.exit90
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit98

if.then.i95:                                      ; preds = %spx5_inst_rd.exit90
  call void @__sanitizer_cov_trace_pc() #11
  %add.i94 = add i64 %17, 4294967296
  %18 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add.i94, ptr %arrayidx3, align 8
  br label %sparx5_update_counter.exit98

sparx5_update_counter.exit98:                     ; preds = %if.then.i95, %spx5_inst_rd.exit90.sparx5_update_counter.exit98_crit_edge
  %19 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx3, align 8
  %and2.i96 = and i64 %20, -4294967296
  %add4.i97 = or i64 %and2.i96, %conv.i91
  store i64 %add4.i97, ptr %arrayidx3, align 8
  %arrayidx5 = getelementptr i64, ptr %portstats, i32 78
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit98.spx5_inst_rd.exit104_crit_edge, label %do.end.i.i100, !prof !169

sparx5_update_counter.exit98.spx5_inst_rd.exit104_crit_edge: ; preds = %sparx5_update_counter.exit98
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit104

do.end.i.i100:                                    ; preds = %sparx5_update_counter.exit98
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit104

spx5_inst_rd.exit104:                             ; preds = %do.end.i.i100, %sparx5_update_counter.exit98.spx5_inst_rd.exit104_crit_edge
  %add.ptr51.i.i103 = getelementptr i8, ptr %add.ptr50.i.i, i32 312
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i103) #9, !srcloc !170
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i105 = zext i32 %22 to i64
  %23 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx5, align 8
  %and.i106 = and i64 %24, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i106, i64 %conv.i105)
  %cmp.i107 = icmp ugt i64 %and.i106, %conv.i105
  br i1 %cmp.i107, label %if.then.i109, label %spx5_inst_rd.exit104.sparx5_update_counter.exit112_crit_edge

spx5_inst_rd.exit104.sparx5_update_counter.exit112_crit_edge: ; preds = %spx5_inst_rd.exit104
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit112

if.then.i109:                                     ; preds = %spx5_inst_rd.exit104
  call void @__sanitizer_cov_trace_pc() #11
  %add.i108 = add i64 %24, 4294967296
  %25 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %add.i108, ptr %arrayidx5, align 8
  br label %sparx5_update_counter.exit112

sparx5_update_counter.exit112:                    ; preds = %if.then.i109, %spx5_inst_rd.exit104.sparx5_update_counter.exit112_crit_edge
  %26 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx5, align 8
  %and2.i110 = and i64 %27, -4294967296
  %add4.i111 = or i64 %and2.i110, %conv.i105
  store i64 %add4.i111, ptr %arrayidx5, align 8
  %arrayidx7 = getelementptr i64, ptr %portstats, i32 79
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit112.spx5_inst_rd.exit118_crit_edge, label %do.end.i.i114, !prof !169

sparx5_update_counter.exit112.spx5_inst_rd.exit118_crit_edge: ; preds = %sparx5_update_counter.exit112
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit118

do.end.i.i114:                                    ; preds = %sparx5_update_counter.exit112
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit118

spx5_inst_rd.exit118:                             ; preds = %do.end.i.i114, %sparx5_update_counter.exit112.spx5_inst_rd.exit118_crit_edge
  %add.ptr51.i.i117 = getelementptr i8, ptr %add.ptr50.i.i, i32 324
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i117) #9, !srcloc !170
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i119 = zext i32 %29 to i64
  %30 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx7, align 8
  %and.i120 = and i64 %31, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i120, i64 %conv.i119)
  %cmp.i121 = icmp ugt i64 %and.i120, %conv.i119
  br i1 %cmp.i121, label %if.then.i123, label %spx5_inst_rd.exit118.sparx5_update_counter.exit126_crit_edge

spx5_inst_rd.exit118.sparx5_update_counter.exit126_crit_edge: ; preds = %spx5_inst_rd.exit118
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit126

if.then.i123:                                     ; preds = %spx5_inst_rd.exit118
  call void @__sanitizer_cov_trace_pc() #11
  %add.i122 = add i64 %31, 4294967296
  %32 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %add.i122, ptr %arrayidx7, align 8
  br label %sparx5_update_counter.exit126

sparx5_update_counter.exit126:                    ; preds = %if.then.i123, %spx5_inst_rd.exit118.sparx5_update_counter.exit126_crit_edge
  %33 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx7, align 8
  %and2.i124 = and i64 %34, -4294967296
  %add4.i125 = or i64 %and2.i124, %conv.i119
  store i64 %add4.i125, ptr %arrayidx7, align 8
  %arrayidx9 = getelementptr i64, ptr %portstats, i32 80
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit126.spx5_inst_rd.exit132_crit_edge, label %do.end.i.i128, !prof !169

sparx5_update_counter.exit126.spx5_inst_rd.exit132_crit_edge: ; preds = %sparx5_update_counter.exit126
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit132

do.end.i.i128:                                    ; preds = %sparx5_update_counter.exit126
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit132

spx5_inst_rd.exit132:                             ; preds = %do.end.i.i128, %sparx5_update_counter.exit126.spx5_inst_rd.exit132_crit_edge
  %add.ptr51.i.i131 = getelementptr i8, ptr %add.ptr50.i.i, i32 20
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i131) #9, !srcloc !170
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i133 = zext i32 %36 to i64
  %37 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx9, align 8
  %and.i134 = and i64 %38, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i134, i64 %conv.i133)
  %cmp.i135 = icmp ugt i64 %and.i134, %conv.i133
  br i1 %cmp.i135, label %if.then.i137, label %spx5_inst_rd.exit132.sparx5_update_counter.exit140_crit_edge

spx5_inst_rd.exit132.sparx5_update_counter.exit140_crit_edge: ; preds = %spx5_inst_rd.exit132
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit140

if.then.i137:                                     ; preds = %spx5_inst_rd.exit132
  call void @__sanitizer_cov_trace_pc() #11
  %add.i136 = add i64 %38, 4294967296
  %39 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %add.i136, ptr %arrayidx9, align 8
  br label %sparx5_update_counter.exit140

sparx5_update_counter.exit140:                    ; preds = %if.then.i137, %spx5_inst_rd.exit132.sparx5_update_counter.exit140_crit_edge
  %40 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx9, align 8
  %and2.i138 = and i64 %41, -4294967296
  %add4.i139 = or i64 %and2.i138, %conv.i133
  store i64 %add4.i139, ptr %arrayidx9, align 8
  %arrayidx11 = getelementptr i64, ptr %portstats, i32 81
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit140.spx5_inst_rd.exit146_crit_edge, label %do.end.i.i142, !prof !169

sparx5_update_counter.exit140.spx5_inst_rd.exit146_crit_edge: ; preds = %sparx5_update_counter.exit140
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit146

do.end.i.i142:                                    ; preds = %sparx5_update_counter.exit140
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit146

spx5_inst_rd.exit146:                             ; preds = %do.end.i.i142, %sparx5_update_counter.exit140.spx5_inst_rd.exit146_crit_edge
  %add.ptr51.i.i145 = getelementptr i8, ptr %add.ptr50.i.i, i32 184
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i145) #9, !srcloc !170
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i147 = zext i32 %43 to i64
  %44 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx11, align 8
  %and.i148 = and i64 %45, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i148, i64 %conv.i147)
  %cmp.i149 = icmp ugt i64 %and.i148, %conv.i147
  br i1 %cmp.i149, label %if.then.i151, label %spx5_inst_rd.exit146.sparx5_update_counter.exit154_crit_edge

spx5_inst_rd.exit146.sparx5_update_counter.exit154_crit_edge: ; preds = %spx5_inst_rd.exit146
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit154

if.then.i151:                                     ; preds = %spx5_inst_rd.exit146
  call void @__sanitizer_cov_trace_pc() #11
  %add.i150 = add i64 %45, 4294967296
  %46 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %add.i150, ptr %arrayidx11, align 8
  br label %sparx5_update_counter.exit154

sparx5_update_counter.exit154:                    ; preds = %if.then.i151, %spx5_inst_rd.exit146.sparx5_update_counter.exit154_crit_edge
  %47 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx11, align 8
  %and2.i152 = and i64 %48, -4294967296
  %add4.i153 = or i64 %and2.i152, %conv.i147
  store i64 %add4.i153, ptr %arrayidx11, align 8
  %arrayidx13 = getelementptr i64, ptr %portstats, i32 82
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit154.spx5_inst_rd.exit159_crit_edge, label %do.end.i.i156, !prof !169

sparx5_update_counter.exit154.spx5_inst_rd.exit159_crit_edge: ; preds = %sparx5_update_counter.exit154
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit159

do.end.i.i156:                                    ; preds = %sparx5_update_counter.exit154
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit159

spx5_inst_rd.exit159:                             ; preds = %do.end.i.i156, %sparx5_update_counter.exit154.spx5_inst_rd.exit159_crit_edge
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i.i) #9, !srcloc !170
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i160 = zext i32 %50 to i64
  %51 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx13, align 8
  %and.i161 = and i64 %52, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i161, i64 %conv.i160)
  %cmp.i162 = icmp ugt i64 %and.i161, %conv.i160
  br i1 %cmp.i162, label %if.then.i164, label %spx5_inst_rd.exit159.sparx5_update_counter.exit167_crit_edge

spx5_inst_rd.exit159.sparx5_update_counter.exit167_crit_edge: ; preds = %spx5_inst_rd.exit159
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit167

if.then.i164:                                     ; preds = %spx5_inst_rd.exit159
  call void @__sanitizer_cov_trace_pc() #11
  %add.i163 = add i64 %52, 4294967296
  %53 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %add.i163, ptr %arrayidx13, align 8
  br label %sparx5_update_counter.exit167

sparx5_update_counter.exit167:                    ; preds = %if.then.i164, %spx5_inst_rd.exit159.sparx5_update_counter.exit167_crit_edge
  %54 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx13, align 8
  %and2.i165 = and i64 %55, -4294967296
  %add4.i166 = or i64 %and2.i165, %conv.i160
  store i64 %add4.i166, ptr %arrayidx13, align 8
  %arrayidx15 = getelementptr i64, ptr %portstats, i32 83
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit167.spx5_inst_rd.exit173_crit_edge, label %do.end.i.i169, !prof !169

sparx5_update_counter.exit167.spx5_inst_rd.exit173_crit_edge: ; preds = %sparx5_update_counter.exit167
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit173

do.end.i.i169:                                    ; preds = %sparx5_update_counter.exit167
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit173

spx5_inst_rd.exit173:                             ; preds = %do.end.i.i169, %sparx5_update_counter.exit167.spx5_inst_rd.exit173_crit_edge
  %add.ptr51.i.i172 = getelementptr i8, ptr %add.ptr50.i.i, i32 92
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i172) #9, !srcloc !170
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i174 = zext i32 %57 to i64
  %58 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx15, align 8
  %and.i175 = and i64 %59, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i175, i64 %conv.i174)
  %cmp.i176 = icmp ugt i64 %and.i175, %conv.i174
  br i1 %cmp.i176, label %if.then.i178, label %spx5_inst_rd.exit173.sparx5_update_counter.exit181_crit_edge

spx5_inst_rd.exit173.sparx5_update_counter.exit181_crit_edge: ; preds = %spx5_inst_rd.exit173
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit181

if.then.i178:                                     ; preds = %spx5_inst_rd.exit173
  call void @__sanitizer_cov_trace_pc() #11
  %add.i177 = add i64 %59, 4294967296
  %60 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %add.i177, ptr %arrayidx15, align 8
  br label %sparx5_update_counter.exit181

sparx5_update_counter.exit181:                    ; preds = %if.then.i178, %spx5_inst_rd.exit173.sparx5_update_counter.exit181_crit_edge
  %61 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx15, align 8
  %and2.i179 = and i64 %62, -4294967296
  %add4.i180 = or i64 %and2.i179, %conv.i174
  store i64 %add4.i180, ptr %arrayidx15, align 8
  %arrayidx17 = getelementptr i64, ptr %portstats, i32 84
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit181.spx5_inst_rd.exit187_crit_edge, label %do.end.i.i183, !prof !169

sparx5_update_counter.exit181.spx5_inst_rd.exit187_crit_edge: ; preds = %sparx5_update_counter.exit181
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit187

do.end.i.i183:                                    ; preds = %sparx5_update_counter.exit181
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit187

spx5_inst_rd.exit187:                             ; preds = %do.end.i.i183, %sparx5_update_counter.exit181.spx5_inst_rd.exit187_crit_edge
  %add.ptr51.i.i186 = getelementptr i8, ptr %add.ptr50.i.i, i32 388
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i186) #9, !srcloc !170
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i188 = zext i32 %64 to i64
  %65 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx17, align 8
  %and.i189 = and i64 %66, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i189, i64 %conv.i188)
  %cmp.i190 = icmp ugt i64 %and.i189, %conv.i188
  br i1 %cmp.i190, label %if.then.i192, label %spx5_inst_rd.exit187.sparx5_update_counter.exit195_crit_edge

spx5_inst_rd.exit187.sparx5_update_counter.exit195_crit_edge: ; preds = %spx5_inst_rd.exit187
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit195

if.then.i192:                                     ; preds = %spx5_inst_rd.exit187
  call void @__sanitizer_cov_trace_pc() #11
  %add.i191 = add i64 %66, 4294967296
  %67 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %add.i191, ptr %arrayidx17, align 8
  br label %sparx5_update_counter.exit195

sparx5_update_counter.exit195:                    ; preds = %if.then.i192, %spx5_inst_rd.exit187.sparx5_update_counter.exit195_crit_edge
  %68 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx17, align 8
  %and2.i193 = and i64 %69, -4294967296
  %add4.i194 = or i64 %and2.i193, %conv.i188
  store i64 %add4.i194, ptr %arrayidx17, align 8
  %arrayidx19 = getelementptr i64, ptr %portstats, i32 85
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit195.spx5_inst_rd.exit201_crit_edge, label %do.end.i.i197, !prof !169

sparx5_update_counter.exit195.spx5_inst_rd.exit201_crit_edge: ; preds = %sparx5_update_counter.exit195
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit201

do.end.i.i197:                                    ; preds = %sparx5_update_counter.exit195
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit201

spx5_inst_rd.exit201:                             ; preds = %do.end.i.i197, %sparx5_update_counter.exit195.spx5_inst_rd.exit201_crit_edge
  %add.ptr51.i.i200 = getelementptr i8, ptr %add.ptr50.i.i, i32 152
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i200) #9, !srcloc !170
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i202 = zext i32 %71 to i64
  %72 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx19, align 8
  %and.i203 = and i64 %73, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i203, i64 %conv.i202)
  %cmp.i204 = icmp ugt i64 %and.i203, %conv.i202
  br i1 %cmp.i204, label %if.then.i206, label %spx5_inst_rd.exit201.sparx5_update_counter.exit209_crit_edge

spx5_inst_rd.exit201.sparx5_update_counter.exit209_crit_edge: ; preds = %spx5_inst_rd.exit201
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit209

if.then.i206:                                     ; preds = %spx5_inst_rd.exit201
  call void @__sanitizer_cov_trace_pc() #11
  %add.i205 = add i64 %73, 4294967296
  %74 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %add.i205, ptr %arrayidx19, align 8
  br label %sparx5_update_counter.exit209

sparx5_update_counter.exit209:                    ; preds = %if.then.i206, %spx5_inst_rd.exit201.sparx5_update_counter.exit209_crit_edge
  %75 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx19, align 8
  %and2.i207 = and i64 %76, -4294967296
  %add4.i208 = or i64 %and2.i207, %conv.i202
  store i64 %add4.i208, ptr %arrayidx19, align 8
  %arrayidx21 = getelementptr i64, ptr %portstats, i32 86
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit209.spx5_inst_rd.exit215_crit_edge, label %do.end.i.i211, !prof !169

sparx5_update_counter.exit209.spx5_inst_rd.exit215_crit_edge: ; preds = %sparx5_update_counter.exit209
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit215

do.end.i.i211:                                    ; preds = %sparx5_update_counter.exit209
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit215

spx5_inst_rd.exit215:                             ; preds = %do.end.i.i211, %sparx5_update_counter.exit209.spx5_inst_rd.exit215_crit_edge
  %add.ptr51.i.i214 = getelementptr i8, ptr %add.ptr50.i.i, i32 156
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i214) #9, !srcloc !170
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i216 = zext i32 %78 to i64
  %79 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %arrayidx21, align 8
  %and.i217 = and i64 %80, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i217, i64 %conv.i216)
  %cmp.i218 = icmp ugt i64 %and.i217, %conv.i216
  br i1 %cmp.i218, label %if.then.i220, label %spx5_inst_rd.exit215.sparx5_update_counter.exit223_crit_edge

spx5_inst_rd.exit215.sparx5_update_counter.exit223_crit_edge: ; preds = %spx5_inst_rd.exit215
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit223

if.then.i220:                                     ; preds = %spx5_inst_rd.exit215
  call void @__sanitizer_cov_trace_pc() #11
  %add.i219 = add i64 %80, 4294967296
  %81 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %add.i219, ptr %arrayidx21, align 8
  br label %sparx5_update_counter.exit223

sparx5_update_counter.exit223:                    ; preds = %if.then.i220, %spx5_inst_rd.exit215.sparx5_update_counter.exit223_crit_edge
  %82 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %arrayidx21, align 8
  %and2.i221 = and i64 %83, -4294967296
  %add4.i222 = or i64 %and2.i221, %conv.i216
  store i64 %add4.i222, ptr %arrayidx21, align 8
  %arrayidx23 = getelementptr i64, ptr %portstats, i32 87
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit223.spx5_inst_rd.exit229_crit_edge, label %do.end.i.i225, !prof !169

sparx5_update_counter.exit223.spx5_inst_rd.exit229_crit_edge: ; preds = %sparx5_update_counter.exit223
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit229

do.end.i.i225:                                    ; preds = %sparx5_update_counter.exit223
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit229

spx5_inst_rd.exit229:                             ; preds = %do.end.i.i225, %sparx5_update_counter.exit223.spx5_inst_rd.exit229_crit_edge
  %add.ptr51.i.i228 = getelementptr i8, ptr %add.ptr50.i.i, i32 96
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i228) #9, !srcloc !170
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i230 = zext i32 %85 to i64
  %86 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %arrayidx23, align 8
  %and.i231 = and i64 %87, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i231, i64 %conv.i230)
  %cmp.i232 = icmp ugt i64 %and.i231, %conv.i230
  br i1 %cmp.i232, label %if.then.i234, label %spx5_inst_rd.exit229.sparx5_update_counter.exit237_crit_edge

spx5_inst_rd.exit229.sparx5_update_counter.exit237_crit_edge: ; preds = %spx5_inst_rd.exit229
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit237

if.then.i234:                                     ; preds = %spx5_inst_rd.exit229
  call void @__sanitizer_cov_trace_pc() #11
  %add.i233 = add i64 %87, 4294967296
  %88 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %add.i233, ptr %arrayidx23, align 8
  br label %sparx5_update_counter.exit237

sparx5_update_counter.exit237:                    ; preds = %if.then.i234, %spx5_inst_rd.exit229.sparx5_update_counter.exit237_crit_edge
  %89 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx23, align 8
  %and2.i235 = and i64 %90, -4294967296
  %add4.i236 = or i64 %and2.i235, %conv.i230
  store i64 %add4.i236, ptr %arrayidx23, align 8
  %arrayidx25 = getelementptr i64, ptr %portstats, i32 88
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit237.spx5_inst_rd.exit243_crit_edge, label %do.end.i.i239, !prof !169

sparx5_update_counter.exit237.spx5_inst_rd.exit243_crit_edge: ; preds = %sparx5_update_counter.exit237
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit243

do.end.i.i239:                                    ; preds = %sparx5_update_counter.exit237
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit243

spx5_inst_rd.exit243:                             ; preds = %do.end.i.i239, %sparx5_update_counter.exit237.spx5_inst_rd.exit243_crit_edge
  %add.ptr51.i.i242 = getelementptr i8, ptr %add.ptr50.i.i, i32 160
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i242) #9, !srcloc !170
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i244 = zext i32 %92 to i64
  %93 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %arrayidx25, align 8
  %and.i245 = and i64 %94, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i245, i64 %conv.i244)
  %cmp.i246 = icmp ugt i64 %and.i245, %conv.i244
  br i1 %cmp.i246, label %if.then.i248, label %spx5_inst_rd.exit243.sparx5_update_counter.exit251_crit_edge

spx5_inst_rd.exit243.sparx5_update_counter.exit251_crit_edge: ; preds = %spx5_inst_rd.exit243
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit251

if.then.i248:                                     ; preds = %spx5_inst_rd.exit243
  call void @__sanitizer_cov_trace_pc() #11
  %add.i247 = add i64 %94, 4294967296
  %95 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %add.i247, ptr %arrayidx25, align 8
  br label %sparx5_update_counter.exit251

sparx5_update_counter.exit251:                    ; preds = %if.then.i248, %spx5_inst_rd.exit243.sparx5_update_counter.exit251_crit_edge
  %96 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %arrayidx25, align 8
  %and2.i249 = and i64 %97, -4294967296
  %add4.i250 = or i64 %and2.i249, %conv.i244
  store i64 %add4.i250, ptr %arrayidx25, align 8
  %arrayidx27 = getelementptr i64, ptr %portstats, i32 89
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit251.spx5_inst_rd.exit257_crit_edge, label %do.end.i.i253, !prof !169

sparx5_update_counter.exit251.spx5_inst_rd.exit257_crit_edge: ; preds = %sparx5_update_counter.exit251
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit257

do.end.i.i253:                                    ; preds = %sparx5_update_counter.exit251
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit257

spx5_inst_rd.exit257:                             ; preds = %do.end.i.i253, %sparx5_update_counter.exit251.spx5_inst_rd.exit257_crit_edge
  %add.ptr51.i.i256 = getelementptr i8, ptr %add.ptr50.i.i, i32 164
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i256) #9, !srcloc !170
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i258 = zext i32 %99 to i64
  %100 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %arrayidx27, align 8
  %and.i259 = and i64 %101, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i259, i64 %conv.i258)
  %cmp.i260 = icmp ugt i64 %and.i259, %conv.i258
  br i1 %cmp.i260, label %if.then.i262, label %spx5_inst_rd.exit257.sparx5_update_counter.exit265_crit_edge

spx5_inst_rd.exit257.sparx5_update_counter.exit265_crit_edge: ; preds = %spx5_inst_rd.exit257
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit265

if.then.i262:                                     ; preds = %spx5_inst_rd.exit257
  call void @__sanitizer_cov_trace_pc() #11
  %add.i261 = add i64 %101, 4294967296
  %102 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %add.i261, ptr %arrayidx27, align 8
  br label %sparx5_update_counter.exit265

sparx5_update_counter.exit265:                    ; preds = %if.then.i262, %spx5_inst_rd.exit257.sparx5_update_counter.exit265_crit_edge
  %103 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx27, align 8
  %and2.i263 = and i64 %104, -4294967296
  %add4.i264 = or i64 %and2.i263, %conv.i258
  store i64 %add4.i264, ptr %arrayidx27, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sparx5_get_queue_sys_stats(ptr noundef %sparx5, i32 noundef %portno) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 12
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats1, align 4
  %num_stats = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 9
  %2 = ptrtoint ptr %num_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_stats, align 8
  %mul = mul i32 %3, %portno
  %arrayidx = getelementptr i64, ptr %1, i32 %mul
  %queue_stats_lock = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %queue_stats_lock, i32 noundef 0) #9
  %shl = shl i32 %portno, 5
  %and14 = and i32 %shl, 262112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %and14) #9
  %arrayidx.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 331
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %6, i32 7628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i, i32 %4) #9, !srcloc !175
  %arrayidx15 = getelementptr i64, ptr %arrayidx, i32 95
  br label %spx5_rd.exit

spx5_rd.exit:                                     ; preds = %sparx5_update_counter.exit.spx5_rd.exit_crit_edge, %entry
  %idx.0129 = phi i32 [ 0, %entry ], [ %inc, %sparx5_update_counter.exit.spx5_rd.exit_crit_edge ]
  %stats.0126 = phi ptr [ %arrayidx15, %entry ], [ %incdec.ptr, %sparx5_update_counter.exit.spx5_rd.exit_crit_edge ]
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %mul.i.i = shl i32 %idx.0129, 2
  %add.ptr81.i.i = getelementptr i8, ptr %8, i32 %mul.i.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i) #9, !srcloc !170
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  %conv.i = zext i32 %10 to i64
  %11 = ptrtoint ptr %stats.0126 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %stats.0126, align 8
  %and.i = and i64 %12, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %conv.i)
  %cmp.i = icmp ugt i64 %and.i, %conv.i
  br i1 %cmp.i, label %if.then.i, label %spx5_rd.exit.sparx5_update_counter.exit_crit_edge

spx5_rd.exit.sparx5_update_counter.exit_crit_edge: ; preds = %spx5_rd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit

if.then.i:                                        ; preds = %spx5_rd.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i64 %12, 4294967296
  %13 = ptrtoint ptr %stats.0126 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %add.i, ptr %stats.0126, align 8
  br label %sparx5_update_counter.exit

sparx5_update_counter.exit:                       ; preds = %if.then.i, %spx5_rd.exit.sparx5_update_counter.exit_crit_edge
  %14 = ptrtoint ptr %stats.0126 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %stats.0126, align 8
  %and2.i = and i64 %15, -4294967296
  %add4.i = or i64 %and2.i, %conv.i
  store i64 %add4.i, ptr %stats.0126, align 8
  %inc = add nuw nsw i32 %idx.0129, 1
  %incdec.ptr = getelementptr i64, ptr %stats.0126, i32 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %sparx5_update_counter.exit.spx5_rd.exit_crit_edge

sparx5_update_counter.exit.spx5_rd.exit_crit_edge: ; preds = %sparx5_update_counter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_rd.exit

for.end:                                          ; preds = %sparx5_update_counter.exit
  %arrayidx17 = getelementptr i64, ptr %arrayidx, i32 111
  br label %spx5_rd.exit80

spx5_rd.exit80:                                   ; preds = %sparx5_update_counter.exit88.spx5_rd.exit80_crit_edge, %for.end
  %addr.1132 = phi i32 [ 16, %for.end ], [ %inc24, %sparx5_update_counter.exit88.spx5_rd.exit80_crit_edge ]
  %stats.1130 = phi ptr [ %arrayidx17, %for.end ], [ %incdec.ptr25, %sparx5_update_counter.exit88.spx5_rd.exit80_crit_edge ]
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %mul.i.i78 = shl i32 %addr.1132, 2
  %add.ptr81.i.i79 = getelementptr i8, ptr %17, i32 %mul.i.i78
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i79) #9, !srcloc !170
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  %conv.i81 = zext i32 %19 to i64
  %20 = ptrtoint ptr %stats.1130 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %stats.1130, align 8
  %and.i82 = and i64 %21, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i82, i64 %conv.i81)
  %cmp.i83 = icmp ugt i64 %and.i82, %conv.i81
  br i1 %cmp.i83, label %if.then.i85, label %spx5_rd.exit80.sparx5_update_counter.exit88_crit_edge

spx5_rd.exit80.sparx5_update_counter.exit88_crit_edge: ; preds = %spx5_rd.exit80
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit88

if.then.i85:                                      ; preds = %spx5_rd.exit80
  call void @__sanitizer_cov_trace_pc() #11
  %add.i84 = add i64 %21, 4294967296
  %22 = ptrtoint ptr %stats.1130 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %add.i84, ptr %stats.1130, align 8
  br label %sparx5_update_counter.exit88

sparx5_update_counter.exit88:                     ; preds = %if.then.i85, %spx5_rd.exit80.sparx5_update_counter.exit88_crit_edge
  %23 = ptrtoint ptr %stats.1130 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %stats.1130, align 8
  %and2.i86 = and i64 %24, -4294967296
  %add4.i87 = or i64 %and2.i86, %conv.i81
  store i64 %add4.i87, ptr %stats.1130, align 8
  %inc24 = add nuw nsw i32 %addr.1132, 1
  %incdec.ptr25 = getelementptr i64, ptr %stats.1130, i32 1
  %exitcond138.not = icmp eq i32 %inc24, 32
  br i1 %exitcond138.not, label %for.end26, label %sparx5_update_counter.exit88.spx5_rd.exit80_crit_edge

sparx5_update_counter.exit88.spx5_rd.exit80_crit_edge: ; preds = %sparx5_update_counter.exit88
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_rd.exit80

for.end26:                                        ; preds = %sparx5_update_counter.exit88
  %arrayidx27 = getelementptr i64, ptr %arrayidx, i32 127
  br label %spx5_rd.exit95

spx5_rd.exit95:                                   ; preds = %sparx5_update_counter.exit103.spx5_rd.exit95_crit_edge, %for.end26
  %addr.2136 = phi i32 [ 256, %for.end26 ], [ %inc34, %sparx5_update_counter.exit103.spx5_rd.exit95_crit_edge ]
  %stats.2134 = phi ptr [ %arrayidx27, %for.end26 ], [ %incdec.ptr35, %sparx5_update_counter.exit103.spx5_rd.exit95_crit_edge ]
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i, align 4
  %mul.i.i93 = shl i32 %addr.2136, 2
  %add.ptr81.i.i94 = getelementptr i8, ptr %26, i32 %mul.i.i93
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i94) #9, !srcloc !170
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  %conv.i96 = zext i32 %28 to i64
  %29 = ptrtoint ptr %stats.2134 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %stats.2134, align 8
  %and.i97 = and i64 %30, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i97, i64 %conv.i96)
  %cmp.i98 = icmp ugt i64 %and.i97, %conv.i96
  br i1 %cmp.i98, label %if.then.i100, label %spx5_rd.exit95.sparx5_update_counter.exit103_crit_edge

spx5_rd.exit95.sparx5_update_counter.exit103_crit_edge: ; preds = %spx5_rd.exit95
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit103

if.then.i100:                                     ; preds = %spx5_rd.exit95
  call void @__sanitizer_cov_trace_pc() #11
  %add.i99 = add i64 %30, 4294967296
  %31 = ptrtoint ptr %stats.2134 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %add.i99, ptr %stats.2134, align 8
  br label %sparx5_update_counter.exit103

sparx5_update_counter.exit103:                    ; preds = %if.then.i100, %spx5_rd.exit95.sparx5_update_counter.exit103_crit_edge
  %32 = ptrtoint ptr %stats.2134 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %stats.2134, align 8
  %and2.i101 = and i64 %33, -4294967296
  %add4.i102 = or i64 %and2.i101, %conv.i96
  store i64 %add4.i102, ptr %stats.2134, align 8
  %inc34 = add nuw nsw i32 %addr.2136, 1
  %incdec.ptr35 = getelementptr i64, ptr %stats.2134, i32 1
  %exitcond139.not = icmp eq i32 %inc34, 272
  br i1 %exitcond139.not, label %for.end36, label %sparx5_update_counter.exit103.spx5_rd.exit95_crit_edge

sparx5_update_counter.exit103.spx5_rd.exit95_crit_edge: ; preds = %sparx5_update_counter.exit103
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_rd.exit95

for.end36:                                        ; preds = %sparx5_update_counter.exit103
  %arrayidx37 = getelementptr i64, ptr %arrayidx, i32 143
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr81.i.i106 = getelementptr i8, ptr %35, i32 128
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i106) #9, !srcloc !170
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  %conv.i107 = zext i32 %37 to i64
  %38 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx37, align 8
  %and.i108 = and i64 %39, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i108, i64 %conv.i107)
  %cmp.i109 = icmp ugt i64 %and.i108, %conv.i107
  br i1 %cmp.i109, label %if.then.i111, label %for.end36.sparx5_update_counter.exit114_crit_edge

for.end36.sparx5_update_counter.exit114_crit_edge: ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit114

if.then.i111:                                     ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #11
  %add.i110 = add i64 %39, 4294967296
  %40 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %add.i110, ptr %arrayidx37, align 8
  br label %sparx5_update_counter.exit114

sparx5_update_counter.exit114:                    ; preds = %if.then.i111, %for.end36.sparx5_update_counter.exit114_crit_edge
  %41 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx37, align 8
  %and2.i112 = and i64 %42, -4294967296
  %add4.i113 = or i64 %and2.i112, %conv.i107
  store i64 %add4.i113, ptr %arrayidx37, align 8
  %arrayidx39 = getelementptr i64, ptr %arrayidx, i32 144
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr81.i.i117 = getelementptr i8, ptr %44, i32 1088
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i117) #9, !srcloc !170
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  %conv.i118 = zext i32 %46 to i64
  %47 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx39, align 8
  %and.i119 = and i64 %48, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i119, i64 %conv.i118)
  %cmp.i120 = icmp ugt i64 %and.i119, %conv.i118
  br i1 %cmp.i120, label %if.then.i122, label %sparx5_update_counter.exit114.sparx5_update_counter.exit125_crit_edge

sparx5_update_counter.exit114.sparx5_update_counter.exit125_crit_edge: ; preds = %sparx5_update_counter.exit114
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit125

if.then.i122:                                     ; preds = %sparx5_update_counter.exit114
  call void @__sanitizer_cov_trace_pc() #11
  %add.i121 = add i64 %48, 4294967296
  %49 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %add.i121, ptr %arrayidx39, align 8
  br label %sparx5_update_counter.exit125

sparx5_update_counter.exit125:                    ; preds = %if.then.i122, %sparx5_update_counter.exit114.sparx5_update_counter.exit125_crit_edge
  %50 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %arrayidx39, align 8
  %and2.i123 = and i64 %51, -4294967296
  %add4.i124 = or i64 %and2.i123, %conv.i118
  store i64 %add4.i124, ptr %arrayidx39, align 8
  tail call void @mutex_unlock(ptr noundef %queue_stats_lock) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_ksettings_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_ksettings_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sparx5_get_asm_phy_stats(ptr nocapture noundef %portstats, ptr noundef %inst, i32 noundef %portno) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %portno)
  %cmp.not.i.i = icmp slt i32 %portno, 65
  br i1 %cmp.not.i.i, label %entry.spx5_inst_rd.exit_crit_edge, label %do.end.i.i, !prof !169

entry.spx5_inst_rd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit

spx5_inst_rd.exit:                                ; preds = %do.end.i.i, %entry.spx5_inst_rd.exit_crit_edge
  %mul.i.i = shl i32 %portno, 9
  %add.ptr50.i.i = getelementptr i8, ptr %inst, i32 %mul.i.i
  %add.ptr51.i.i = getelementptr i8, ptr %add.ptr50.i.i, i32 4
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i) #9, !srcloc !170
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i = zext i32 %1 to i64
  %2 = ptrtoint ptr %portstats to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %portstats, align 8
  %and.i = and i64 %3, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %conv.i)
  %cmp.i = icmp ugt i64 %and.i, %conv.i
  br i1 %cmp.i, label %if.then.i, label %spx5_inst_rd.exit.sparx5_update_counter.exit_crit_edge

spx5_inst_rd.exit.sparx5_update_counter.exit_crit_edge: ; preds = %spx5_inst_rd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit

if.then.i:                                        ; preds = %spx5_inst_rd.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i64 %3, 4294967296
  %4 = ptrtoint ptr %portstats to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add.i, ptr %portstats, align 8
  br label %sparx5_update_counter.exit

sparx5_update_counter.exit:                       ; preds = %if.then.i, %spx5_inst_rd.exit.sparx5_update_counter.exit_crit_edge
  %5 = ptrtoint ptr %portstats to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %portstats, align 8
  %and2.i = and i64 %6, -4294967296
  %add4.i = or i64 %and2.i, %conv.i
  store i64 %add4.i, ptr %portstats, align 8
  %arrayidx1 = getelementptr i64, ptr %portstats, i32 1
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit.spx5_inst_rd.exit11_crit_edge, label %do.end.i.i7, !prof !169

sparx5_update_counter.exit.spx5_inst_rd.exit11_crit_edge: ; preds = %sparx5_update_counter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit11

do.end.i.i7:                                      ; preds = %sparx5_update_counter.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit11

spx5_inst_rd.exit11:                              ; preds = %do.end.i.i7, %sparx5_update_counter.exit.spx5_inst_rd.exit11_crit_edge
  %add.ptr51.i.i10 = getelementptr i8, ptr %add.ptr50.i.i, i32 168
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i10) #9, !srcloc !170
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i12 = zext i32 %8 to i64
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx1, align 8
  %and.i13 = and i64 %10, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i13, i64 %conv.i12)
  %cmp.i14 = icmp ugt i64 %and.i13, %conv.i12
  br i1 %cmp.i14, label %if.then.i16, label %spx5_inst_rd.exit11.sparx5_update_counter.exit19_crit_edge

spx5_inst_rd.exit11.sparx5_update_counter.exit19_crit_edge: ; preds = %spx5_inst_rd.exit11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit19

if.then.i16:                                      ; preds = %spx5_inst_rd.exit11
  call void @__sanitizer_cov_trace_pc() #11
  %add.i15 = add i64 %10, 4294967296
  %11 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %add.i15, ptr %arrayidx1, align 8
  br label %sparx5_update_counter.exit19

sparx5_update_counter.exit19:                     ; preds = %if.then.i16, %spx5_inst_rd.exit11.sparx5_update_counter.exit19_crit_edge
  %12 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx1, align 8
  %and2.i17 = and i64 %13, -4294967296
  %add4.i18 = or i64 %and2.i17, %conv.i12
  store i64 %add4.i18, ptr %arrayidx1, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sparx5_get_dev_mac_stats(ptr noundef %portstats, ptr noundef %inst) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i64, ptr %portstats, i32 2
  %add.ptr51.i.i = getelementptr i8, ptr %inst, i32 148
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i) #9, !srcloc !170
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i = zext i32 %1 to i64
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  %and.i = and i64 %3, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %conv.i)
  %cmp.i = icmp ugt i64 %and.i, %conv.i
  br i1 %cmp.i, label %if.then.i, label %entry.sparx5_update_counter.exit_crit_edge

entry.sparx5_update_counter.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i64 %3, 4294967296
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add.i, ptr %arrayidx, align 8
  br label %sparx5_update_counter.exit

sparx5_update_counter.exit:                       ; preds = %if.then.i, %entry.sparx5_update_counter.exit_crit_edge
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx, align 8
  %and2.i = and i64 %6, -4294967296
  %add4.i = or i64 %and2.i, %conv.i
  store i64 %add4.i, ptr %arrayidx, align 8
  %arrayidx1 = getelementptr i64, ptr %portstats, i32 3
  %add.ptr51.i.i2 = getelementptr i8, ptr %inst, i32 292
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i2) #9, !srcloc !170
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i3 = zext i32 %8 to i64
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx1, align 8
  %and.i4 = and i64 %10, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i4, i64 %conv.i3)
  %cmp.i5 = icmp ugt i64 %and.i4, %conv.i3
  br i1 %cmp.i5, label %if.then.i7, label %sparx5_update_counter.exit.sparx5_update_counter.exit10_crit_edge

sparx5_update_counter.exit.sparx5_update_counter.exit10_crit_edge: ; preds = %sparx5_update_counter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit10

if.then.i7:                                       ; preds = %sparx5_update_counter.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.i6 = add i64 %10, 4294967296
  %11 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %add.i6, ptr %arrayidx1, align 8
  br label %sparx5_update_counter.exit10

sparx5_update_counter.exit10:                     ; preds = %if.then.i7, %sparx5_update_counter.exit.sparx5_update_counter.exit10_crit_edge
  %12 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx1, align 8
  %and2.i8 = and i64 %13, -4294967296
  %add4.i9 = or i64 %and2.i8, %conv.i3
  store i64 %add4.i9, ptr %arrayidx1, align 8
  %arrayidx3 = getelementptr i64, ptr %portstats, i32 4
  %add.ptr51.i.i12 = getelementptr i8, ptr %inst, i32 152
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i12) #9, !srcloc !170
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i13 = zext i32 %15 to i64
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx3, align 8
  %and.i14 = and i64 %17, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i14, i64 %conv.i13)
  %cmp.i15 = icmp ugt i64 %and.i14, %conv.i13
  br i1 %cmp.i15, label %if.then.i17, label %sparx5_update_counter.exit10.sparx5_update_counter.exit20_crit_edge

sparx5_update_counter.exit10.sparx5_update_counter.exit20_crit_edge: ; preds = %sparx5_update_counter.exit10
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit20

if.then.i17:                                      ; preds = %sparx5_update_counter.exit10
  call void @__sanitizer_cov_trace_pc() #11
  %add.i16 = add i64 %17, 4294967296
  %18 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add.i16, ptr %arrayidx3, align 8
  br label %sparx5_update_counter.exit20

sparx5_update_counter.exit20:                     ; preds = %if.then.i17, %sparx5_update_counter.exit10.sparx5_update_counter.exit20_crit_edge
  %19 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx3, align 8
  %and2.i18 = and i64 %20, -4294967296
  %add4.i19 = or i64 %and2.i18, %conv.i13
  store i64 %add4.i19, ptr %arrayidx3, align 8
  %arrayidx5 = getelementptr i64, ptr %portstats, i32 5
  %add.ptr51.i.i22 = getelementptr i8, ptr %inst, i32 156
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i22) #9, !srcloc !170
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i23 = zext i32 %22 to i64
  %23 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx5, align 8
  %and.i24 = and i64 %24, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i24, i64 %conv.i23)
  %cmp.i25 = icmp ugt i64 %and.i24, %conv.i23
  br i1 %cmp.i25, label %if.then.i27, label %sparx5_update_counter.exit20.sparx5_update_counter.exit30_crit_edge

sparx5_update_counter.exit20.sparx5_update_counter.exit30_crit_edge: ; preds = %sparx5_update_counter.exit20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit30

if.then.i27:                                      ; preds = %sparx5_update_counter.exit20
  call void @__sanitizer_cov_trace_pc() #11
  %add.i26 = add i64 %24, 4294967296
  %25 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %add.i26, ptr %arrayidx5, align 8
  br label %sparx5_update_counter.exit30

sparx5_update_counter.exit30:                     ; preds = %if.then.i27, %sparx5_update_counter.exit20.sparx5_update_counter.exit30_crit_edge
  %26 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx5, align 8
  %and2.i28 = and i64 %27, -4294967296
  %add4.i29 = or i64 %and2.i28, %conv.i23
  store i64 %add4.i29, ptr %arrayidx5, align 8
  %arrayidx7 = getelementptr i64, ptr %portstats, i32 8
  %add.ptr51.i.i32 = getelementptr i8, ptr %inst, i32 72
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i32) #9, !srcloc !170
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i33 = zext i32 %29 to i64
  %30 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx7, align 8
  %and.i34 = and i64 %31, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i34, i64 %conv.i33)
  %cmp.i35 = icmp ugt i64 %and.i34, %conv.i33
  br i1 %cmp.i35, label %if.then.i37, label %sparx5_update_counter.exit30.sparx5_update_counter.exit40_crit_edge

sparx5_update_counter.exit30.sparx5_update_counter.exit40_crit_edge: ; preds = %sparx5_update_counter.exit30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit40

if.then.i37:                                      ; preds = %sparx5_update_counter.exit30
  call void @__sanitizer_cov_trace_pc() #11
  %add.i36 = add i64 %31, 4294967296
  %32 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %add.i36, ptr %arrayidx7, align 8
  br label %sparx5_update_counter.exit40

sparx5_update_counter.exit40:                     ; preds = %if.then.i37, %sparx5_update_counter.exit30.sparx5_update_counter.exit40_crit_edge
  %33 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx7, align 8
  %and2.i38 = and i64 %34, -4294967296
  %add4.i39 = or i64 %and2.i38, %conv.i33
  store i64 %add4.i39, ptr %arrayidx7, align 8
  %arrayidx9 = getelementptr i64, ptr %portstats, i32 9
  %add.ptr51.i.i42 = getelementptr i8, ptr %inst, i32 220
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i42) #9, !srcloc !170
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i43 = zext i32 %36 to i64
  %37 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx9, align 8
  %and.i44 = and i64 %38, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i44, i64 %conv.i43)
  %cmp.i45 = icmp ugt i64 %and.i44, %conv.i43
  br i1 %cmp.i45, label %if.then.i47, label %sparx5_update_counter.exit40.sparx5_update_counter.exit50_crit_edge

sparx5_update_counter.exit40.sparx5_update_counter.exit50_crit_edge: ; preds = %sparx5_update_counter.exit40
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit50

if.then.i47:                                      ; preds = %sparx5_update_counter.exit40
  call void @__sanitizer_cov_trace_pc() #11
  %add.i46 = add i64 %38, 4294967296
  %39 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %add.i46, ptr %arrayidx9, align 8
  br label %sparx5_update_counter.exit50

sparx5_update_counter.exit50:                     ; preds = %if.then.i47, %sparx5_update_counter.exit40.sparx5_update_counter.exit50_crit_edge
  %40 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx9, align 8
  %and2.i48 = and i64 %41, -4294967296
  %add4.i49 = or i64 %and2.i48, %conv.i43
  store i64 %add4.i49, ptr %arrayidx9, align 8
  %arrayidx11 = getelementptr i64, ptr %portstats, i32 10
  %add.ptr51.i.i52 = getelementptr i8, ptr %inst, i32 76
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i52) #9, !srcloc !170
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i53 = zext i32 %43 to i64
  %44 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx11, align 8
  %and.i54 = and i64 %45, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i54, i64 %conv.i53)
  %cmp.i55 = icmp ugt i64 %and.i54, %conv.i53
  br i1 %cmp.i55, label %if.then.i57, label %sparx5_update_counter.exit50.sparx5_update_counter.exit60_crit_edge

sparx5_update_counter.exit50.sparx5_update_counter.exit60_crit_edge: ; preds = %sparx5_update_counter.exit50
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit60

if.then.i57:                                      ; preds = %sparx5_update_counter.exit50
  call void @__sanitizer_cov_trace_pc() #11
  %add.i56 = add i64 %45, 4294967296
  %46 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %add.i56, ptr %arrayidx11, align 8
  br label %sparx5_update_counter.exit60

sparx5_update_counter.exit60:                     ; preds = %if.then.i57, %sparx5_update_counter.exit50.sparx5_update_counter.exit60_crit_edge
  %47 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx11, align 8
  %and2.i58 = and i64 %48, -4294967296
  %add4.i59 = or i64 %and2.i58, %conv.i53
  store i64 %add4.i59, ptr %arrayidx11, align 8
  %arrayidx13 = getelementptr i64, ptr %portstats, i32 11
  %add.ptr51.i.i62 = getelementptr i8, ptr %inst, i32 80
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i62) #9, !srcloc !170
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i63 = zext i32 %50 to i64
  %51 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx13, align 8
  %and.i64 = and i64 %52, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i64, i64 %conv.i63)
  %cmp.i65 = icmp ugt i64 %and.i64, %conv.i63
  br i1 %cmp.i65, label %if.then.i67, label %sparx5_update_counter.exit60.sparx5_update_counter.exit70_crit_edge

sparx5_update_counter.exit60.sparx5_update_counter.exit70_crit_edge: ; preds = %sparx5_update_counter.exit60
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit70

if.then.i67:                                      ; preds = %sparx5_update_counter.exit60
  call void @__sanitizer_cov_trace_pc() #11
  %add.i66 = add i64 %52, 4294967296
  %53 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %add.i66, ptr %arrayidx13, align 8
  br label %sparx5_update_counter.exit70

sparx5_update_counter.exit70:                     ; preds = %if.then.i67, %sparx5_update_counter.exit60.sparx5_update_counter.exit70_crit_edge
  %54 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx13, align 8
  %and2.i68 = and i64 %55, -4294967296
  %add4.i69 = or i64 %and2.i68, %conv.i63
  store i64 %add4.i69, ptr %arrayidx13, align 8
  %arrayidx15 = getelementptr i64, ptr %portstats, i32 12
  %add.ptr51.i.i72 = getelementptr i8, ptr %inst, i32 84
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i72) #9, !srcloc !170
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i73 = zext i32 %57 to i64
  %58 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx15, align 8
  %and.i74 = and i64 %59, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i74, i64 %conv.i73)
  %cmp.i75 = icmp ugt i64 %and.i74, %conv.i73
  br i1 %cmp.i75, label %if.then.i77, label %sparx5_update_counter.exit70.sparx5_update_counter.exit80_crit_edge

sparx5_update_counter.exit70.sparx5_update_counter.exit80_crit_edge: ; preds = %sparx5_update_counter.exit70
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit80

if.then.i77:                                      ; preds = %sparx5_update_counter.exit70
  call void @__sanitizer_cov_trace_pc() #11
  %add.i76 = add i64 %59, 4294967296
  %60 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %add.i76, ptr %arrayidx15, align 8
  br label %sparx5_update_counter.exit80

sparx5_update_counter.exit80:                     ; preds = %if.then.i77, %sparx5_update_counter.exit70.sparx5_update_counter.exit80_crit_edge
  %61 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx15, align 8
  %and2.i78 = and i64 %62, -4294967296
  %add4.i79 = or i64 %and2.i78, %conv.i73
  store i64 %add4.i79, ptr %arrayidx15, align 8
  %arrayidx17 = getelementptr i64, ptr %portstats, i32 13
  %add.ptr51.i.i82 = getelementptr i8, ptr %inst, i32 232
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i82) #9, !srcloc !170
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i83 = zext i32 %64 to i64
  %65 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx17, align 8
  %and.i84 = and i64 %66, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i84, i64 %conv.i83)
  %cmp.i85 = icmp ugt i64 %and.i84, %conv.i83
  br i1 %cmp.i85, label %if.then.i87, label %sparx5_update_counter.exit80.sparx5_update_counter.exit90_crit_edge

sparx5_update_counter.exit80.sparx5_update_counter.exit90_crit_edge: ; preds = %sparx5_update_counter.exit80
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit90

if.then.i87:                                      ; preds = %sparx5_update_counter.exit80
  call void @__sanitizer_cov_trace_pc() #11
  %add.i86 = add i64 %66, 4294967296
  %67 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %add.i86, ptr %arrayidx17, align 8
  br label %sparx5_update_counter.exit90

sparx5_update_counter.exit90:                     ; preds = %if.then.i87, %sparx5_update_counter.exit80.sparx5_update_counter.exit90_crit_edge
  %68 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx17, align 8
  %and2.i88 = and i64 %69, -4294967296
  %add4.i89 = or i64 %and2.i88, %conv.i83
  store i64 %add4.i89, ptr %arrayidx17, align 8
  %arrayidx19 = getelementptr i64, ptr %portstats, i32 14
  %add.ptr51.i.i92 = getelementptr i8, ptr %inst, i32 188
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i92) #9, !srcloc !170
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i93 = zext i32 %71 to i64
  %72 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx19, align 8
  %and.i94 = and i64 %73, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i94, i64 %conv.i93)
  %cmp.i95 = icmp ugt i64 %and.i94, %conv.i93
  br i1 %cmp.i95, label %if.then.i97, label %sparx5_update_counter.exit90.sparx5_update_counter.exit100_crit_edge

sparx5_update_counter.exit90.sparx5_update_counter.exit100_crit_edge: ; preds = %sparx5_update_counter.exit90
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit100

if.then.i97:                                      ; preds = %sparx5_update_counter.exit90
  call void @__sanitizer_cov_trace_pc() #11
  %add.i96 = add i64 %73, 4294967296
  %74 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %add.i96, ptr %arrayidx19, align 8
  br label %sparx5_update_counter.exit100

sparx5_update_counter.exit100:                    ; preds = %if.then.i97, %sparx5_update_counter.exit90.sparx5_update_counter.exit100_crit_edge
  %75 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx19, align 8
  %and2.i98 = and i64 %76, -4294967296
  %add4.i99 = or i64 %and2.i98, %conv.i93
  store i64 %add4.i99, ptr %arrayidx19, align 8
  %arrayidx21 = getelementptr i64, ptr %portstats, i32 15
  %add.ptr51.i.i102 = getelementptr i8, ptr %inst, i32 332
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i102) #9, !srcloc !170
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i103 = zext i32 %78 to i64
  %79 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %arrayidx21, align 8
  %and.i104 = and i64 %80, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i104, i64 %conv.i103)
  %cmp.i105 = icmp ugt i64 %and.i104, %conv.i103
  br i1 %cmp.i105, label %if.then.i107, label %sparx5_update_counter.exit100.sparx5_update_counter.exit110_crit_edge

sparx5_update_counter.exit100.sparx5_update_counter.exit110_crit_edge: ; preds = %sparx5_update_counter.exit100
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit110

if.then.i107:                                     ; preds = %sparx5_update_counter.exit100
  call void @__sanitizer_cov_trace_pc() #11
  %add.i106 = add i64 %80, 4294967296
  %81 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %add.i106, ptr %arrayidx21, align 8
  br label %sparx5_update_counter.exit110

sparx5_update_counter.exit110:                    ; preds = %if.then.i107, %sparx5_update_counter.exit100.sparx5_update_counter.exit110_crit_edge
  %82 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %arrayidx21, align 8
  %and2.i108 = and i64 %83, -4294967296
  %add4.i109 = or i64 %and2.i108, %conv.i103
  store i64 %add4.i109, ptr %arrayidx21, align 8
  %arrayidx23 = getelementptr i64, ptr %portstats, i32 16
  %add.ptr51.i.i112 = getelementptr i8, ptr %inst, i32 404
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i112) #9, !srcloc !170
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i113 = zext i32 %85 to i64
  %86 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %arrayidx23, align 8
  %and.i114 = and i64 %87, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i114, i64 %conv.i113)
  %cmp.i115 = icmp ugt i64 %and.i114, %conv.i113
  br i1 %cmp.i115, label %if.then.i117, label %sparx5_update_counter.exit110.sparx5_update_counter.exit120_crit_edge

sparx5_update_counter.exit110.sparx5_update_counter.exit120_crit_edge: ; preds = %sparx5_update_counter.exit110
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit120

if.then.i117:                                     ; preds = %sparx5_update_counter.exit110
  call void @__sanitizer_cov_trace_pc() #11
  %add.i116 = add i64 %87, 4294967296
  %88 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %add.i116, ptr %arrayidx23, align 8
  br label %sparx5_update_counter.exit120

sparx5_update_counter.exit120:                    ; preds = %if.then.i117, %sparx5_update_counter.exit110.sparx5_update_counter.exit120_crit_edge
  %89 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx23, align 8
  %and2.i118 = and i64 %90, -4294967296
  %add4.i119 = or i64 %and2.i118, %conv.i113
  store i64 %add4.i119, ptr %arrayidx23, align 8
  %arrayidx25 = getelementptr i64, ptr %portstats, i32 17
  %add.ptr51.i.i122 = getelementptr i8, ptr %inst, i32 428
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i122) #9, !srcloc !170
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i123 = zext i32 %92 to i64
  %93 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %arrayidx25, align 8
  %and.i124 = and i64 %94, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i124, i64 %conv.i123)
  %cmp.i125 = icmp ugt i64 %and.i124, %conv.i123
  br i1 %cmp.i125, label %if.then.i127, label %sparx5_update_counter.exit120.sparx5_update_counter.exit130_crit_edge

sparx5_update_counter.exit120.sparx5_update_counter.exit130_crit_edge: ; preds = %sparx5_update_counter.exit120
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit130

if.then.i127:                                     ; preds = %sparx5_update_counter.exit120
  call void @__sanitizer_cov_trace_pc() #11
  %add.i126 = add i64 %94, 4294967296
  %95 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %add.i126, ptr %arrayidx25, align 8
  br label %sparx5_update_counter.exit130

sparx5_update_counter.exit130:                    ; preds = %if.then.i127, %sparx5_update_counter.exit120.sparx5_update_counter.exit130_crit_edge
  %96 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %arrayidx25, align 8
  %and2.i128 = and i64 %97, -4294967296
  %add4.i129 = or i64 %and2.i128, %conv.i123
  store i64 %add4.i129, ptr %arrayidx25, align 8
  %arrayidx27 = getelementptr i64, ptr %portstats, i32 22
  %add.ptr51.i.i132 = getelementptr i8, ptr %inst, i32 380
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i132) #9, !srcloc !170
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i133 = zext i32 %99 to i64
  %100 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %arrayidx27, align 8
  %and.i134 = and i64 %101, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i134, i64 %conv.i133)
  %cmp.i135 = icmp ugt i64 %and.i134, %conv.i133
  br i1 %cmp.i135, label %if.then.i137, label %sparx5_update_counter.exit130.sparx5_update_counter.exit140_crit_edge

sparx5_update_counter.exit130.sparx5_update_counter.exit140_crit_edge: ; preds = %sparx5_update_counter.exit130
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit140

if.then.i137:                                     ; preds = %sparx5_update_counter.exit130
  call void @__sanitizer_cov_trace_pc() #11
  %add.i136 = add i64 %101, 4294967296
  %102 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %add.i136, ptr %arrayidx27, align 8
  br label %sparx5_update_counter.exit140

sparx5_update_counter.exit140:                    ; preds = %if.then.i137, %sparx5_update_counter.exit130.sparx5_update_counter.exit140_crit_edge
  %103 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx27, align 8
  %and2.i138 = and i64 %104, -4294967296
  %add4.i139 = or i64 %and2.i138, %conv.i133
  store i64 %add4.i139, ptr %arrayidx27, align 8
  %arrayidx29 = getelementptr i64, ptr %portstats, i32 23
  %add.ptr51.i.i142 = getelementptr i8, ptr %inst, i32 412
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i142) #9, !srcloc !170
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i143 = zext i32 %106 to i64
  %107 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %arrayidx29, align 8
  %and.i144 = and i64 %108, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i144, i64 %conv.i143)
  %cmp.i145 = icmp ugt i64 %and.i144, %conv.i143
  br i1 %cmp.i145, label %if.then.i147, label %sparx5_update_counter.exit140.sparx5_update_counter.exit150_crit_edge

sparx5_update_counter.exit140.sparx5_update_counter.exit150_crit_edge: ; preds = %sparx5_update_counter.exit140
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit150

if.then.i147:                                     ; preds = %sparx5_update_counter.exit140
  call void @__sanitizer_cov_trace_pc() #11
  %add.i146 = add i64 %108, 4294967296
  %109 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %add.i146, ptr %arrayidx29, align 8
  br label %sparx5_update_counter.exit150

sparx5_update_counter.exit150:                    ; preds = %if.then.i147, %sparx5_update_counter.exit140.sparx5_update_counter.exit150_crit_edge
  %110 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %arrayidx29, align 8
  %and2.i148 = and i64 %111, -4294967296
  %add4.i149 = or i64 %and2.i148, %conv.i143
  store i64 %add4.i149, ptr %arrayidx29, align 8
  %arrayidx31 = getelementptr i64, ptr %portstats, i32 24
  %add.ptr51.i.i152 = getelementptr i8, ptr %inst, i32 296
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i152) #9, !srcloc !170
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i153 = zext i32 %113 to i64
  %114 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %arrayidx31, align 8
  %and.i154 = and i64 %115, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i154, i64 %conv.i153)
  %cmp.i155 = icmp ugt i64 %and.i154, %conv.i153
  br i1 %cmp.i155, label %if.then.i157, label %sparx5_update_counter.exit150.sparx5_update_counter.exit160_crit_edge

sparx5_update_counter.exit150.sparx5_update_counter.exit160_crit_edge: ; preds = %sparx5_update_counter.exit150
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit160

if.then.i157:                                     ; preds = %sparx5_update_counter.exit150
  call void @__sanitizer_cov_trace_pc() #11
  %add.i156 = add i64 %115, 4294967296
  %116 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %add.i156, ptr %arrayidx31, align 8
  br label %sparx5_update_counter.exit160

sparx5_update_counter.exit160:                    ; preds = %if.then.i157, %sparx5_update_counter.exit150.sparx5_update_counter.exit160_crit_edge
  %117 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %arrayidx31, align 8
  %and2.i158 = and i64 %118, -4294967296
  %add4.i159 = or i64 %and2.i158, %conv.i153
  store i64 %add4.i159, ptr %arrayidx31, align 8
  %arrayidx33 = getelementptr i64, ptr %portstats, i32 25
  %add.ptr51.i.i162 = getelementptr i8, ptr %inst, i32 300
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i162) #9, !srcloc !170
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i163 = zext i32 %120 to i64
  %121 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %arrayidx33, align 8
  %and.i164 = and i64 %122, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i164, i64 %conv.i163)
  %cmp.i165 = icmp ugt i64 %and.i164, %conv.i163
  br i1 %cmp.i165, label %if.then.i167, label %sparx5_update_counter.exit160.sparx5_update_counter.exit170_crit_edge

sparx5_update_counter.exit160.sparx5_update_counter.exit170_crit_edge: ; preds = %sparx5_update_counter.exit160
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit170

if.then.i167:                                     ; preds = %sparx5_update_counter.exit160
  call void @__sanitizer_cov_trace_pc() #11
  %add.i166 = add i64 %122, 4294967296
  %123 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %add.i166, ptr %arrayidx33, align 8
  br label %sparx5_update_counter.exit170

sparx5_update_counter.exit170:                    ; preds = %if.then.i167, %sparx5_update_counter.exit160.sparx5_update_counter.exit170_crit_edge
  %124 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %arrayidx33, align 8
  %and2.i168 = and i64 %125, -4294967296
  %add4.i169 = or i64 %and2.i168, %conv.i163
  store i64 %add4.i169, ptr %arrayidx33, align 8
  %arrayidx35 = getelementptr i64, ptr %portstats, i32 27
  %add.ptr51.i.i172 = getelementptr i8, ptr %inst, i32 224
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i172) #9, !srcloc !170
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i173 = zext i32 %127 to i64
  %128 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %arrayidx35, align 8
  %and.i174 = and i64 %129, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i174, i64 %conv.i173)
  %cmp.i175 = icmp ugt i64 %and.i174, %conv.i173
  br i1 %cmp.i175, label %if.then.i177, label %sparx5_update_counter.exit170.sparx5_update_counter.exit180_crit_edge

sparx5_update_counter.exit170.sparx5_update_counter.exit180_crit_edge: ; preds = %sparx5_update_counter.exit170
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit180

if.then.i177:                                     ; preds = %sparx5_update_counter.exit170
  call void @__sanitizer_cov_trace_pc() #11
  %add.i176 = add i64 %129, 4294967296
  %130 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %add.i176, ptr %arrayidx35, align 8
  br label %sparx5_update_counter.exit180

sparx5_update_counter.exit180:                    ; preds = %if.then.i177, %sparx5_update_counter.exit170.sparx5_update_counter.exit180_crit_edge
  %131 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %arrayidx35, align 8
  %and2.i178 = and i64 %132, -4294967296
  %add4.i179 = or i64 %and2.i178, %conv.i173
  store i64 %add4.i179, ptr %arrayidx35, align 8
  %arrayidx37 = getelementptr i64, ptr %portstats, i32 28
  %add.ptr51.i.i182 = getelementptr i8, ptr %inst, i32 228
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i182) #9, !srcloc !170
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i183 = zext i32 %134 to i64
  %135 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %arrayidx37, align 8
  %and.i184 = and i64 %136, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i184, i64 %conv.i183)
  %cmp.i185 = icmp ugt i64 %and.i184, %conv.i183
  br i1 %cmp.i185, label %if.then.i187, label %sparx5_update_counter.exit180.sparx5_update_counter.exit190_crit_edge

sparx5_update_counter.exit180.sparx5_update_counter.exit190_crit_edge: ; preds = %sparx5_update_counter.exit180
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit190

if.then.i187:                                     ; preds = %sparx5_update_counter.exit180
  call void @__sanitizer_cov_trace_pc() #11
  %add.i186 = add i64 %136, 4294967296
  %137 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %add.i186, ptr %arrayidx37, align 8
  br label %sparx5_update_counter.exit190

sparx5_update_counter.exit190:                    ; preds = %if.then.i187, %sparx5_update_counter.exit180.sparx5_update_counter.exit190_crit_edge
  %138 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %arrayidx37, align 8
  %and2.i188 = and i64 %139, -4294967296
  %add4.i189 = or i64 %and2.i188, %conv.i183
  store i64 %add4.i189, ptr %arrayidx37, align 8
  %arrayidx39 = getelementptr i64, ptr %portstats, i32 29
  %add.ptr51.i.i192 = getelementptr i8, ptr %inst, i32 96
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i192) #9, !srcloc !170
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i193 = zext i32 %141 to i64
  %142 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %arrayidx39, align 8
  %and.i194 = and i64 %143, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i194, i64 %conv.i193)
  %cmp.i195 = icmp ugt i64 %and.i194, %conv.i193
  br i1 %cmp.i195, label %if.then.i197, label %sparx5_update_counter.exit190.sparx5_update_counter.exit200_crit_edge

sparx5_update_counter.exit190.sparx5_update_counter.exit200_crit_edge: ; preds = %sparx5_update_counter.exit190
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit200

if.then.i197:                                     ; preds = %sparx5_update_counter.exit190
  call void @__sanitizer_cov_trace_pc() #11
  %add.i196 = add i64 %143, 4294967296
  %144 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %add.i196, ptr %arrayidx39, align 8
  br label %sparx5_update_counter.exit200

sparx5_update_counter.exit200:                    ; preds = %if.then.i197, %sparx5_update_counter.exit190.sparx5_update_counter.exit200_crit_edge
  %145 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %arrayidx39, align 8
  %and2.i198 = and i64 %146, -4294967296
  %add4.i199 = or i64 %and2.i198, %conv.i193
  store i64 %add4.i199, ptr %arrayidx39, align 8
  %arrayidx41 = getelementptr i64, ptr %portstats, i32 30
  %add.ptr51.i.i202 = getelementptr i8, ptr %inst, i32 244
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i202) #9, !srcloc !170
  %148 = tail call i32 @llvm.bswap.i32(i32 %147) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i203 = zext i32 %148 to i64
  %149 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %arrayidx41, align 8
  %and.i204 = and i64 %150, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i204, i64 %conv.i203)
  %cmp.i205 = icmp ugt i64 %and.i204, %conv.i203
  br i1 %cmp.i205, label %if.then.i207, label %sparx5_update_counter.exit200.sparx5_update_counter.exit210_crit_edge

sparx5_update_counter.exit200.sparx5_update_counter.exit210_crit_edge: ; preds = %sparx5_update_counter.exit200
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit210

if.then.i207:                                     ; preds = %sparx5_update_counter.exit200
  call void @__sanitizer_cov_trace_pc() #11
  %add.i206 = add i64 %150, 4294967296
  %151 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %add.i206, ptr %arrayidx41, align 8
  br label %sparx5_update_counter.exit210

sparx5_update_counter.exit210:                    ; preds = %if.then.i207, %sparx5_update_counter.exit200.sparx5_update_counter.exit210_crit_edge
  %152 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %arrayidx41, align 8
  %and2.i208 = and i64 %153, -4294967296
  %add4.i209 = or i64 %and2.i208, %conv.i203
  store i64 %add4.i209, ptr %arrayidx41, align 8
  %arrayidx43 = getelementptr i64, ptr %portstats, i32 31
  %add.ptr51.i.i212 = getelementptr i8, ptr %inst, i32 100
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i212) #9, !srcloc !170
  %155 = tail call i32 @llvm.bswap.i32(i32 %154) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i213 = zext i32 %155 to i64
  %156 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %arrayidx43, align 8
  %and.i214 = and i64 %157, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i214, i64 %conv.i213)
  %cmp.i215 = icmp ugt i64 %and.i214, %conv.i213
  br i1 %cmp.i215, label %if.then.i217, label %sparx5_update_counter.exit210.sparx5_update_counter.exit220_crit_edge

sparx5_update_counter.exit210.sparx5_update_counter.exit220_crit_edge: ; preds = %sparx5_update_counter.exit210
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit220

if.then.i217:                                     ; preds = %sparx5_update_counter.exit210
  call void @__sanitizer_cov_trace_pc() #11
  %add.i216 = add i64 %157, 4294967296
  %158 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 %add.i216, ptr %arrayidx43, align 8
  br label %sparx5_update_counter.exit220

sparx5_update_counter.exit220:                    ; preds = %if.then.i217, %sparx5_update_counter.exit210.sparx5_update_counter.exit220_crit_edge
  %159 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %arrayidx43, align 8
  %and2.i218 = and i64 %160, -4294967296
  %add4.i219 = or i64 %and2.i218, %conv.i213
  store i64 %add4.i219, ptr %arrayidx43, align 8
  %arrayidx45 = getelementptr i64, ptr %portstats, i32 32
  %add.ptr51.i.i222 = getelementptr i8, ptr %inst, i32 248
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i222) #9, !srcloc !170
  %162 = tail call i32 @llvm.bswap.i32(i32 %161) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i223 = zext i32 %162 to i64
  %163 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %arrayidx45, align 8
  %and.i224 = and i64 %164, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i224, i64 %conv.i223)
  %cmp.i225 = icmp ugt i64 %and.i224, %conv.i223
  br i1 %cmp.i225, label %if.then.i227, label %sparx5_update_counter.exit220.sparx5_update_counter.exit230_crit_edge

sparx5_update_counter.exit220.sparx5_update_counter.exit230_crit_edge: ; preds = %sparx5_update_counter.exit220
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit230

if.then.i227:                                     ; preds = %sparx5_update_counter.exit220
  call void @__sanitizer_cov_trace_pc() #11
  %add.i226 = add i64 %164, 4294967296
  %165 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %add.i226, ptr %arrayidx45, align 8
  br label %sparx5_update_counter.exit230

sparx5_update_counter.exit230:                    ; preds = %if.then.i227, %sparx5_update_counter.exit220.sparx5_update_counter.exit230_crit_edge
  %166 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %arrayidx45, align 8
  %and2.i228 = and i64 %167, -4294967296
  %add4.i229 = or i64 %and2.i228, %conv.i223
  store i64 %add4.i229, ptr %arrayidx45, align 8
  %arrayidx47 = getelementptr i64, ptr %portstats, i32 33
  %add.ptr51.i.i232 = getelementptr i8, ptr %inst, i32 104
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i232) #9, !srcloc !170
  %169 = tail call i32 @llvm.bswap.i32(i32 %168) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i233 = zext i32 %169 to i64
  %170 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %arrayidx47, align 8
  %and.i234 = and i64 %171, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i234, i64 %conv.i233)
  %cmp.i235 = icmp ugt i64 %and.i234, %conv.i233
  br i1 %cmp.i235, label %if.then.i237, label %sparx5_update_counter.exit230.sparx5_update_counter.exit240_crit_edge

sparx5_update_counter.exit230.sparx5_update_counter.exit240_crit_edge: ; preds = %sparx5_update_counter.exit230
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit240

if.then.i237:                                     ; preds = %sparx5_update_counter.exit230
  call void @__sanitizer_cov_trace_pc() #11
  %add.i236 = add i64 %171, 4294967296
  %172 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store8_noabort(i32 %172)
  store i64 %add.i236, ptr %arrayidx47, align 8
  br label %sparx5_update_counter.exit240

sparx5_update_counter.exit240:                    ; preds = %if.then.i237, %sparx5_update_counter.exit230.sparx5_update_counter.exit240_crit_edge
  %173 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %arrayidx47, align 8
  %and2.i238 = and i64 %174, -4294967296
  %add4.i239 = or i64 %and2.i238, %conv.i233
  store i64 %add4.i239, ptr %arrayidx47, align 8
  %arrayidx49 = getelementptr i64, ptr %portstats, i32 34
  %add.ptr51.i.i242 = getelementptr i8, ptr %inst, i32 252
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i242) #9, !srcloc !170
  %176 = tail call i32 @llvm.bswap.i32(i32 %175) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i243 = zext i32 %176 to i64
  %177 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %arrayidx49, align 8
  %and.i244 = and i64 %178, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i244, i64 %conv.i243)
  %cmp.i245 = icmp ugt i64 %and.i244, %conv.i243
  br i1 %cmp.i245, label %if.then.i247, label %sparx5_update_counter.exit240.sparx5_update_counter.exit250_crit_edge

sparx5_update_counter.exit240.sparx5_update_counter.exit250_crit_edge: ; preds = %sparx5_update_counter.exit240
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit250

if.then.i247:                                     ; preds = %sparx5_update_counter.exit240
  call void @__sanitizer_cov_trace_pc() #11
  %add.i246 = add i64 %178, 4294967296
  %179 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 %add.i246, ptr %arrayidx49, align 8
  br label %sparx5_update_counter.exit250

sparx5_update_counter.exit250:                    ; preds = %if.then.i247, %sparx5_update_counter.exit240.sparx5_update_counter.exit250_crit_edge
  %180 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %arrayidx49, align 8
  %and2.i248 = and i64 %181, -4294967296
  %add4.i249 = or i64 %and2.i248, %conv.i243
  store i64 %add4.i249, ptr %arrayidx49, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sparx5_get_asm_mac_stats(ptr noundef %portstats, ptr noundef %inst, i32 noundef %portno) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i64, ptr %portstats, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %portno)
  %cmp.not.i.i = icmp slt i32 %portno, 65
  br i1 %cmp.not.i.i, label %entry.spx5_inst_rd.exit_crit_edge, label %do.end.i.i, !prof !169

entry.spx5_inst_rd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit

spx5_inst_rd.exit:                                ; preds = %do.end.i.i, %entry.spx5_inst_rd.exit_crit_edge
  %mul.i.i = shl i32 %portno, 9
  %add.ptr50.i.i = getelementptr i8, ptr %inst, i32 %mul.i.i
  %add.ptr51.i.i = getelementptr i8, ptr %add.ptr50.i.i, i32 108
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i) #9, !srcloc !170
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i = zext i32 %1 to i64
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  %and.i = and i64 %3, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %conv.i)
  %cmp.i = icmp ugt i64 %and.i, %conv.i
  br i1 %cmp.i, label %if.then.i, label %spx5_inst_rd.exit.sparx5_update_counter.exit_crit_edge

spx5_inst_rd.exit.sparx5_update_counter.exit_crit_edge: ; preds = %spx5_inst_rd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit

if.then.i:                                        ; preds = %spx5_inst_rd.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i64 %3, 4294967296
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add.i, ptr %arrayidx, align 8
  br label %sparx5_update_counter.exit

sparx5_update_counter.exit:                       ; preds = %if.then.i, %spx5_inst_rd.exit.sparx5_update_counter.exit_crit_edge
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx, align 8
  %and2.i = and i64 %6, -4294967296
  %add4.i = or i64 %and2.i, %conv.i
  store i64 %add4.i, ptr %arrayidx, align 8
  %arrayidx1 = getelementptr i64, ptr %portstats, i32 3
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit.spx5_inst_rd.exit166_crit_edge, label %do.end.i.i162, !prof !169

sparx5_update_counter.exit.spx5_inst_rd.exit166_crit_edge: ; preds = %sparx5_update_counter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit166

do.end.i.i162:                                    ; preds = %sparx5_update_counter.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit166

spx5_inst_rd.exit166:                             ; preds = %do.end.i.i162, %sparx5_update_counter.exit.spx5_inst_rd.exit166_crit_edge
  %add.ptr51.i.i165 = getelementptr i8, ptr %add.ptr50.i.i, i32 264
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i165) #9, !srcloc !170
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i167 = zext i32 %8 to i64
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx1, align 8
  %and.i168 = and i64 %10, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i168, i64 %conv.i167)
  %cmp.i169 = icmp ugt i64 %and.i168, %conv.i167
  br i1 %cmp.i169, label %if.then.i171, label %spx5_inst_rd.exit166.sparx5_update_counter.exit174_crit_edge

spx5_inst_rd.exit166.sparx5_update_counter.exit174_crit_edge: ; preds = %spx5_inst_rd.exit166
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit174

if.then.i171:                                     ; preds = %spx5_inst_rd.exit166
  call void @__sanitizer_cov_trace_pc() #11
  %add.i170 = add i64 %10, 4294967296
  %11 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %add.i170, ptr %arrayidx1, align 8
  br label %sparx5_update_counter.exit174

sparx5_update_counter.exit174:                    ; preds = %if.then.i171, %spx5_inst_rd.exit166.sparx5_update_counter.exit174_crit_edge
  %12 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx1, align 8
  %and2.i172 = and i64 %13, -4294967296
  %add4.i173 = or i64 %and2.i172, %conv.i167
  store i64 %add4.i173, ptr %arrayidx1, align 8
  %arrayidx3 = getelementptr i64, ptr %portstats, i32 4
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit174.spx5_inst_rd.exit180_crit_edge, label %do.end.i.i176, !prof !169

sparx5_update_counter.exit174.spx5_inst_rd.exit180_crit_edge: ; preds = %sparx5_update_counter.exit174
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit180

do.end.i.i176:                                    ; preds = %sparx5_update_counter.exit174
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit180

spx5_inst_rd.exit180:                             ; preds = %do.end.i.i176, %sparx5_update_counter.exit174.spx5_inst_rd.exit180_crit_edge
  %add.ptr51.i.i179 = getelementptr i8, ptr %add.ptr50.i.i, i32 112
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i179) #9, !srcloc !170
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i181 = zext i32 %15 to i64
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx3, align 8
  %and.i182 = and i64 %17, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i182, i64 %conv.i181)
  %cmp.i183 = icmp ugt i64 %and.i182, %conv.i181
  br i1 %cmp.i183, label %if.then.i185, label %spx5_inst_rd.exit180.sparx5_update_counter.exit188_crit_edge

spx5_inst_rd.exit180.sparx5_update_counter.exit188_crit_edge: ; preds = %spx5_inst_rd.exit180
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit188

if.then.i185:                                     ; preds = %spx5_inst_rd.exit180
  call void @__sanitizer_cov_trace_pc() #11
  %add.i184 = add i64 %17, 4294967296
  %18 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add.i184, ptr %arrayidx3, align 8
  br label %sparx5_update_counter.exit188

sparx5_update_counter.exit188:                    ; preds = %if.then.i185, %spx5_inst_rd.exit180.sparx5_update_counter.exit188_crit_edge
  %19 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx3, align 8
  %and2.i186 = and i64 %20, -4294967296
  %add4.i187 = or i64 %and2.i186, %conv.i181
  store i64 %add4.i187, ptr %arrayidx3, align 8
  %arrayidx5 = getelementptr i64, ptr %portstats, i32 5
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit188.spx5_inst_rd.exit194_crit_edge, label %do.end.i.i190, !prof !169

sparx5_update_counter.exit188.spx5_inst_rd.exit194_crit_edge: ; preds = %sparx5_update_counter.exit188
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit194

do.end.i.i190:                                    ; preds = %sparx5_update_counter.exit188
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit194

spx5_inst_rd.exit194:                             ; preds = %do.end.i.i190, %sparx5_update_counter.exit188.spx5_inst_rd.exit194_crit_edge
  %add.ptr51.i.i193 = getelementptr i8, ptr %add.ptr50.i.i, i32 116
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i193) #9, !srcloc !170
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i195 = zext i32 %22 to i64
  %23 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx5, align 8
  %and.i196 = and i64 %24, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i196, i64 %conv.i195)
  %cmp.i197 = icmp ugt i64 %and.i196, %conv.i195
  br i1 %cmp.i197, label %if.then.i199, label %spx5_inst_rd.exit194.sparx5_update_counter.exit202_crit_edge

spx5_inst_rd.exit194.sparx5_update_counter.exit202_crit_edge: ; preds = %spx5_inst_rd.exit194
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit202

if.then.i199:                                     ; preds = %spx5_inst_rd.exit194
  call void @__sanitizer_cov_trace_pc() #11
  %add.i198 = add i64 %24, 4294967296
  %25 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %add.i198, ptr %arrayidx5, align 8
  br label %sparx5_update_counter.exit202

sparx5_update_counter.exit202:                    ; preds = %if.then.i199, %spx5_inst_rd.exit194.sparx5_update_counter.exit202_crit_edge
  %26 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx5, align 8
  %and2.i200 = and i64 %27, -4294967296
  %add4.i201 = or i64 %and2.i200, %conv.i195
  store i64 %add4.i201, ptr %arrayidx5, align 8
  %arrayidx7 = getelementptr i64, ptr %portstats, i32 6
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit202.spx5_inst_rd.exit208_crit_edge, label %do.end.i.i204, !prof !169

sparx5_update_counter.exit202.spx5_inst_rd.exit208_crit_edge: ; preds = %sparx5_update_counter.exit202
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit208

do.end.i.i204:                                    ; preds = %sparx5_update_counter.exit202
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit208

spx5_inst_rd.exit208:                             ; preds = %do.end.i.i204, %sparx5_update_counter.exit202.spx5_inst_rd.exit208_crit_edge
  %add.ptr51.i.i207 = getelementptr i8, ptr %add.ptr50.i.i, i32 348
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i207) #9, !srcloc !170
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i209 = zext i32 %29 to i64
  %30 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx7, align 8
  %and.i210 = and i64 %31, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i210, i64 %conv.i209)
  %cmp.i211 = icmp ugt i64 %and.i210, %conv.i209
  br i1 %cmp.i211, label %if.then.i213, label %spx5_inst_rd.exit208.sparx5_update_counter.exit216_crit_edge

spx5_inst_rd.exit208.sparx5_update_counter.exit216_crit_edge: ; preds = %spx5_inst_rd.exit208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit216

if.then.i213:                                     ; preds = %spx5_inst_rd.exit208
  call void @__sanitizer_cov_trace_pc() #11
  %add.i212 = add i64 %31, 4294967296
  %32 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %add.i212, ptr %arrayidx7, align 8
  br label %sparx5_update_counter.exit216

sparx5_update_counter.exit216:                    ; preds = %if.then.i213, %spx5_inst_rd.exit208.sparx5_update_counter.exit216_crit_edge
  %33 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx7, align 8
  %and2.i214 = and i64 %34, -4294967296
  %add4.i215 = or i64 %and2.i214, %conv.i209
  store i64 %add4.i215, ptr %arrayidx7, align 8
  %arrayidx9 = getelementptr i64, ptr %portstats, i32 7
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit216.spx5_inst_rd.exit222_crit_edge, label %do.end.i.i218, !prof !169

sparx5_update_counter.exit216.spx5_inst_rd.exit222_crit_edge: ; preds = %sparx5_update_counter.exit216
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit222

do.end.i.i218:                                    ; preds = %sparx5_update_counter.exit216
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit222

spx5_inst_rd.exit222:                             ; preds = %do.end.i.i218, %sparx5_update_counter.exit216.spx5_inst_rd.exit222_crit_edge
  %add.ptr51.i.i221 = getelementptr i8, ptr %add.ptr50.i.i, i32 328
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i221) #9, !srcloc !170
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i223 = zext i32 %36 to i64
  %37 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx9, align 8
  %and.i224 = and i64 %38, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i224, i64 %conv.i223)
  %cmp.i225 = icmp ugt i64 %and.i224, %conv.i223
  br i1 %cmp.i225, label %if.then.i227, label %spx5_inst_rd.exit222.sparx5_update_counter.exit230_crit_edge

spx5_inst_rd.exit222.sparx5_update_counter.exit230_crit_edge: ; preds = %spx5_inst_rd.exit222
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit230

if.then.i227:                                     ; preds = %spx5_inst_rd.exit222
  call void @__sanitizer_cov_trace_pc() #11
  %add.i226 = add i64 %38, 4294967296
  %39 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %add.i226, ptr %arrayidx9, align 8
  br label %sparx5_update_counter.exit230

sparx5_update_counter.exit230:                    ; preds = %if.then.i227, %spx5_inst_rd.exit222.sparx5_update_counter.exit230_crit_edge
  %40 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx9, align 8
  %and2.i228 = and i64 %41, -4294967296
  %add4.i229 = or i64 %and2.i228, %conv.i223
  store i64 %add4.i229, ptr %arrayidx9, align 8
  %arrayidx11 = getelementptr i64, ptr %portstats, i32 8
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit230.spx5_inst_rd.exit236_crit_edge, label %do.end.i.i232, !prof !169

sparx5_update_counter.exit230.spx5_inst_rd.exit236_crit_edge: ; preds = %sparx5_update_counter.exit230
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit236

do.end.i.i232:                                    ; preds = %sparx5_update_counter.exit230
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit236

spx5_inst_rd.exit236:                             ; preds = %do.end.i.i232, %sparx5_update_counter.exit230.spx5_inst_rd.exit236_crit_edge
  %add.ptr51.i.i235 = getelementptr i8, ptr %add.ptr50.i.i, i32 24
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i235) #9, !srcloc !170
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i237 = zext i32 %43 to i64
  %44 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx11, align 8
  %and.i238 = and i64 %45, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i238, i64 %conv.i237)
  %cmp.i239 = icmp ugt i64 %and.i238, %conv.i237
  br i1 %cmp.i239, label %if.then.i241, label %spx5_inst_rd.exit236.sparx5_update_counter.exit244_crit_edge

spx5_inst_rd.exit236.sparx5_update_counter.exit244_crit_edge: ; preds = %spx5_inst_rd.exit236
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit244

if.then.i241:                                     ; preds = %spx5_inst_rd.exit236
  call void @__sanitizer_cov_trace_pc() #11
  %add.i240 = add i64 %45, 4294967296
  %46 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %add.i240, ptr %arrayidx11, align 8
  br label %sparx5_update_counter.exit244

sparx5_update_counter.exit244:                    ; preds = %if.then.i241, %spx5_inst_rd.exit236.sparx5_update_counter.exit244_crit_edge
  %47 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx11, align 8
  %and2.i242 = and i64 %48, -4294967296
  %add4.i243 = or i64 %and2.i242, %conv.i237
  store i64 %add4.i243, ptr %arrayidx11, align 8
  %arrayidx13 = getelementptr i64, ptr %portstats, i32 9
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit244.spx5_inst_rd.exit250_crit_edge, label %do.end.i.i246, !prof !169

sparx5_update_counter.exit244.spx5_inst_rd.exit250_crit_edge: ; preds = %sparx5_update_counter.exit244
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit250

do.end.i.i246:                                    ; preds = %sparx5_update_counter.exit244
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit250

spx5_inst_rd.exit250:                             ; preds = %do.end.i.i246, %sparx5_update_counter.exit244.spx5_inst_rd.exit250_crit_edge
  %add.ptr51.i.i249 = getelementptr i8, ptr %add.ptr50.i.i, i32 188
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i249) #9, !srcloc !170
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i251 = zext i32 %50 to i64
  %51 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx13, align 8
  %and.i252 = and i64 %52, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i252, i64 %conv.i251)
  %cmp.i253 = icmp ugt i64 %and.i252, %conv.i251
  br i1 %cmp.i253, label %if.then.i255, label %spx5_inst_rd.exit250.sparx5_update_counter.exit258_crit_edge

spx5_inst_rd.exit250.sparx5_update_counter.exit258_crit_edge: ; preds = %spx5_inst_rd.exit250
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit258

if.then.i255:                                     ; preds = %spx5_inst_rd.exit250
  call void @__sanitizer_cov_trace_pc() #11
  %add.i254 = add i64 %52, 4294967296
  %53 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %add.i254, ptr %arrayidx13, align 8
  br label %sparx5_update_counter.exit258

sparx5_update_counter.exit258:                    ; preds = %if.then.i255, %spx5_inst_rd.exit250.sparx5_update_counter.exit258_crit_edge
  %54 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx13, align 8
  %and2.i256 = and i64 %55, -4294967296
  %add4.i257 = or i64 %and2.i256, %conv.i251
  store i64 %add4.i257, ptr %arrayidx13, align 8
  %arrayidx15 = getelementptr i64, ptr %portstats, i32 10
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit258.spx5_inst_rd.exit264_crit_edge, label %do.end.i.i260, !prof !169

sparx5_update_counter.exit258.spx5_inst_rd.exit264_crit_edge: ; preds = %sparx5_update_counter.exit258
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit264

do.end.i.i260:                                    ; preds = %sparx5_update_counter.exit258
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit264

spx5_inst_rd.exit264:                             ; preds = %do.end.i.i260, %sparx5_update_counter.exit258.spx5_inst_rd.exit264_crit_edge
  %add.ptr51.i.i263 = getelementptr i8, ptr %add.ptr50.i.i, i32 28
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i263) #9, !srcloc !170
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i265 = zext i32 %57 to i64
  %58 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx15, align 8
  %and.i266 = and i64 %59, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i266, i64 %conv.i265)
  %cmp.i267 = icmp ugt i64 %and.i266, %conv.i265
  br i1 %cmp.i267, label %if.then.i269, label %spx5_inst_rd.exit264.sparx5_update_counter.exit272_crit_edge

spx5_inst_rd.exit264.sparx5_update_counter.exit272_crit_edge: ; preds = %spx5_inst_rd.exit264
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit272

if.then.i269:                                     ; preds = %spx5_inst_rd.exit264
  call void @__sanitizer_cov_trace_pc() #11
  %add.i268 = add i64 %59, 4294967296
  %60 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %add.i268, ptr %arrayidx15, align 8
  br label %sparx5_update_counter.exit272

sparx5_update_counter.exit272:                    ; preds = %if.then.i269, %spx5_inst_rd.exit264.sparx5_update_counter.exit272_crit_edge
  %61 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx15, align 8
  %and2.i270 = and i64 %62, -4294967296
  %add4.i271 = or i64 %and2.i270, %conv.i265
  store i64 %add4.i271, ptr %arrayidx15, align 8
  %arrayidx17 = getelementptr i64, ptr %portstats, i32 11
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit272.spx5_inst_rd.exit278_crit_edge, label %do.end.i.i274, !prof !169

sparx5_update_counter.exit272.spx5_inst_rd.exit278_crit_edge: ; preds = %sparx5_update_counter.exit272
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit278

do.end.i.i274:                                    ; preds = %sparx5_update_counter.exit272
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit278

spx5_inst_rd.exit278:                             ; preds = %do.end.i.i274, %sparx5_update_counter.exit272.spx5_inst_rd.exit278_crit_edge
  %add.ptr51.i.i277 = getelementptr i8, ptr %add.ptr50.i.i, i32 32
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i277) #9, !srcloc !170
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i279 = zext i32 %64 to i64
  %65 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx17, align 8
  %and.i280 = and i64 %66, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i280, i64 %conv.i279)
  %cmp.i281 = icmp ugt i64 %and.i280, %conv.i279
  br i1 %cmp.i281, label %if.then.i283, label %spx5_inst_rd.exit278.sparx5_update_counter.exit286_crit_edge

spx5_inst_rd.exit278.sparx5_update_counter.exit286_crit_edge: ; preds = %spx5_inst_rd.exit278
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit286

if.then.i283:                                     ; preds = %spx5_inst_rd.exit278
  call void @__sanitizer_cov_trace_pc() #11
  %add.i282 = add i64 %66, 4294967296
  %67 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %add.i282, ptr %arrayidx17, align 8
  br label %sparx5_update_counter.exit286

sparx5_update_counter.exit286:                    ; preds = %if.then.i283, %spx5_inst_rd.exit278.sparx5_update_counter.exit286_crit_edge
  %68 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx17, align 8
  %and2.i284 = and i64 %69, -4294967296
  %add4.i285 = or i64 %and2.i284, %conv.i279
  store i64 %add4.i285, ptr %arrayidx17, align 8
  %arrayidx19 = getelementptr i64, ptr %portstats, i32 12
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit286.spx5_inst_rd.exit292_crit_edge, label %do.end.i.i288, !prof !169

sparx5_update_counter.exit286.spx5_inst_rd.exit292_crit_edge: ; preds = %sparx5_update_counter.exit286
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit292

do.end.i.i288:                                    ; preds = %sparx5_update_counter.exit286
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit292

spx5_inst_rd.exit292:                             ; preds = %do.end.i.i288, %sparx5_update_counter.exit286.spx5_inst_rd.exit292_crit_edge
  %add.ptr51.i.i291 = getelementptr i8, ptr %add.ptr50.i.i, i32 36
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i291) #9, !srcloc !170
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i293 = zext i32 %71 to i64
  %72 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx19, align 8
  %and.i294 = and i64 %73, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i294, i64 %conv.i293)
  %cmp.i295 = icmp ugt i64 %and.i294, %conv.i293
  br i1 %cmp.i295, label %if.then.i297, label %spx5_inst_rd.exit292.sparx5_update_counter.exit300_crit_edge

spx5_inst_rd.exit292.sparx5_update_counter.exit300_crit_edge: ; preds = %spx5_inst_rd.exit292
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit300

if.then.i297:                                     ; preds = %spx5_inst_rd.exit292
  call void @__sanitizer_cov_trace_pc() #11
  %add.i296 = add i64 %73, 4294967296
  %74 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %add.i296, ptr %arrayidx19, align 8
  br label %sparx5_update_counter.exit300

sparx5_update_counter.exit300:                    ; preds = %if.then.i297, %spx5_inst_rd.exit292.sparx5_update_counter.exit300_crit_edge
  %75 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx19, align 8
  %and2.i298 = and i64 %76, -4294967296
  %add4.i299 = or i64 %and2.i298, %conv.i293
  store i64 %add4.i299, ptr %arrayidx19, align 8
  %arrayidx21 = getelementptr i64, ptr %portstats, i32 13
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit300.spx5_inst_rd.exit306_crit_edge, label %do.end.i.i302, !prof !169

sparx5_update_counter.exit300.spx5_inst_rd.exit306_crit_edge: ; preds = %sparx5_update_counter.exit300
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit306

do.end.i.i302:                                    ; preds = %sparx5_update_counter.exit300
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit306

spx5_inst_rd.exit306:                             ; preds = %do.end.i.i302, %sparx5_update_counter.exit300.spx5_inst_rd.exit306_crit_edge
  %add.ptr51.i.i305 = getelementptr i8, ptr %add.ptr50.i.i, i32 200
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i305) #9, !srcloc !170
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i307 = zext i32 %78 to i64
  %79 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %arrayidx21, align 8
  %and.i308 = and i64 %80, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i308, i64 %conv.i307)
  %cmp.i309 = icmp ugt i64 %and.i308, %conv.i307
  br i1 %cmp.i309, label %if.then.i311, label %spx5_inst_rd.exit306.sparx5_update_counter.exit314_crit_edge

spx5_inst_rd.exit306.sparx5_update_counter.exit314_crit_edge: ; preds = %spx5_inst_rd.exit306
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit314

if.then.i311:                                     ; preds = %spx5_inst_rd.exit306
  call void @__sanitizer_cov_trace_pc() #11
  %add.i310 = add i64 %80, 4294967296
  %81 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %add.i310, ptr %arrayidx21, align 8
  br label %sparx5_update_counter.exit314

sparx5_update_counter.exit314:                    ; preds = %if.then.i311, %spx5_inst_rd.exit306.sparx5_update_counter.exit314_crit_edge
  %82 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %arrayidx21, align 8
  %and2.i312 = and i64 %83, -4294967296
  %add4.i313 = or i64 %and2.i312, %conv.i307
  store i64 %add4.i313, ptr %arrayidx21, align 8
  %arrayidx23 = getelementptr i64, ptr %portstats, i32 14
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit314.spx5_inst_rd.exit320_crit_edge, label %do.end.i.i316, !prof !169

sparx5_update_counter.exit314.spx5_inst_rd.exit320_crit_edge: ; preds = %sparx5_update_counter.exit314
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit320

do.end.i.i316:                                    ; preds = %sparx5_update_counter.exit314
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit320

spx5_inst_rd.exit320:                             ; preds = %do.end.i.i316, %sparx5_update_counter.exit314.spx5_inst_rd.exit320_crit_edge
  %add.ptr51.i.i319 = getelementptr i8, ptr %add.ptr50.i.i, i32 148
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i319) #9, !srcloc !170
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i321 = zext i32 %85 to i64
  %86 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %arrayidx23, align 8
  %and.i322 = and i64 %87, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i322, i64 %conv.i321)
  %cmp.i323 = icmp ugt i64 %and.i322, %conv.i321
  br i1 %cmp.i323, label %if.then.i325, label %spx5_inst_rd.exit320.sparx5_update_counter.exit328_crit_edge

spx5_inst_rd.exit320.sparx5_update_counter.exit328_crit_edge: ; preds = %spx5_inst_rd.exit320
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit328

if.then.i325:                                     ; preds = %spx5_inst_rd.exit320
  call void @__sanitizer_cov_trace_pc() #11
  %add.i324 = add i64 %87, 4294967296
  %88 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %add.i324, ptr %arrayidx23, align 8
  br label %sparx5_update_counter.exit328

sparx5_update_counter.exit328:                    ; preds = %if.then.i325, %spx5_inst_rd.exit320.sparx5_update_counter.exit328_crit_edge
  %89 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx23, align 8
  %and2.i326 = and i64 %90, -4294967296
  %add4.i327 = or i64 %and2.i326, %conv.i321
  store i64 %add4.i327, ptr %arrayidx23, align 8
  %arrayidx25 = getelementptr i64, ptr %portstats, i32 15
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit328.spx5_inst_rd.exit334_crit_edge, label %do.end.i.i330, !prof !169

sparx5_update_counter.exit328.spx5_inst_rd.exit334_crit_edge: ; preds = %sparx5_update_counter.exit328
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit334

do.end.i.i330:                                    ; preds = %sparx5_update_counter.exit328
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit334

spx5_inst_rd.exit334:                             ; preds = %do.end.i.i330, %sparx5_update_counter.exit328.spx5_inst_rd.exit334_crit_edge
  %add.ptr51.i.i333 = getelementptr i8, ptr %add.ptr50.i.i, i32 304
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i333) #9, !srcloc !170
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i335 = zext i32 %92 to i64
  %93 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %arrayidx25, align 8
  %and.i336 = and i64 %94, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i336, i64 %conv.i335)
  %cmp.i337 = icmp ugt i64 %and.i336, %conv.i335
  br i1 %cmp.i337, label %if.then.i339, label %spx5_inst_rd.exit334.sparx5_update_counter.exit342_crit_edge

spx5_inst_rd.exit334.sparx5_update_counter.exit342_crit_edge: ; preds = %spx5_inst_rd.exit334
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit342

if.then.i339:                                     ; preds = %spx5_inst_rd.exit334
  call void @__sanitizer_cov_trace_pc() #11
  %add.i338 = add i64 %94, 4294967296
  %95 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %add.i338, ptr %arrayidx25, align 8
  br label %sparx5_update_counter.exit342

sparx5_update_counter.exit342:                    ; preds = %if.then.i339, %spx5_inst_rd.exit334.sparx5_update_counter.exit342_crit_edge
  %96 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %arrayidx25, align 8
  %and2.i340 = and i64 %97, -4294967296
  %add4.i341 = or i64 %and2.i340, %conv.i335
  store i64 %add4.i341, ptr %arrayidx25, align 8
  %arrayidx27 = getelementptr i64, ptr %portstats, i32 16
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit342.spx5_inst_rd.exit348_crit_edge, label %do.end.i.i344, !prof !169

sparx5_update_counter.exit342.spx5_inst_rd.exit348_crit_edge: ; preds = %sparx5_update_counter.exit342
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit348

do.end.i.i344:                                    ; preds = %sparx5_update_counter.exit342
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit348

spx5_inst_rd.exit348:                             ; preds = %do.end.i.i344, %sparx5_update_counter.exit342.spx5_inst_rd.exit348_crit_edge
  %add.ptr51.i.i347 = getelementptr i8, ptr %add.ptr50.i.i, i32 104
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i347) #9, !srcloc !170
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i349 = zext i32 %99 to i64
  %100 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %arrayidx27, align 8
  %and.i350 = and i64 %101, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i350, i64 %conv.i349)
  %cmp.i351 = icmp ugt i64 %and.i350, %conv.i349
  br i1 %cmp.i351, label %if.then.i353, label %spx5_inst_rd.exit348.sparx5_update_counter.exit356_crit_edge

spx5_inst_rd.exit348.sparx5_update_counter.exit356_crit_edge: ; preds = %spx5_inst_rd.exit348
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit356

if.then.i353:                                     ; preds = %spx5_inst_rd.exit348
  call void @__sanitizer_cov_trace_pc() #11
  %add.i352 = add i64 %101, 4294967296
  %102 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %add.i352, ptr %arrayidx27, align 8
  br label %sparx5_update_counter.exit356

sparx5_update_counter.exit356:                    ; preds = %if.then.i353, %spx5_inst_rd.exit348.sparx5_update_counter.exit356_crit_edge
  %103 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx27, align 8
  %and2.i354 = and i64 %104, -4294967296
  %add4.i355 = or i64 %and2.i354, %conv.i349
  store i64 %add4.i355, ptr %arrayidx27, align 8
  %arrayidx29 = getelementptr i64, ptr %portstats, i32 17
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit356.spx5_inst_rd.exit362_crit_edge, label %do.end.i.i358, !prof !169

sparx5_update_counter.exit356.spx5_inst_rd.exit362_crit_edge: ; preds = %sparx5_update_counter.exit356
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit362

do.end.i.i358:                                    ; preds = %sparx5_update_counter.exit356
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit362

spx5_inst_rd.exit362:                             ; preds = %do.end.i.i358, %sparx5_update_counter.exit356.spx5_inst_rd.exit362_crit_edge
  %add.ptr51.i.i361 = getelementptr i8, ptr %add.ptr50.i.i, i32 260
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i361) #9, !srcloc !170
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i363 = zext i32 %106 to i64
  %107 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %arrayidx29, align 8
  %and.i364 = and i64 %108, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i364, i64 %conv.i363)
  %cmp.i365 = icmp ugt i64 %and.i364, %conv.i363
  br i1 %cmp.i365, label %if.then.i367, label %spx5_inst_rd.exit362.sparx5_update_counter.exit370_crit_edge

spx5_inst_rd.exit362.sparx5_update_counter.exit370_crit_edge: ; preds = %spx5_inst_rd.exit362
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit370

if.then.i367:                                     ; preds = %spx5_inst_rd.exit362
  call void @__sanitizer_cov_trace_pc() #11
  %add.i366 = add i64 %108, 4294967296
  %109 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %add.i366, ptr %arrayidx29, align 8
  br label %sparx5_update_counter.exit370

sparx5_update_counter.exit370:                    ; preds = %if.then.i367, %spx5_inst_rd.exit362.sparx5_update_counter.exit370_crit_edge
  %110 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %arrayidx29, align 8
  %and2.i368 = and i64 %111, -4294967296
  %add4.i369 = or i64 %and2.i368, %conv.i363
  store i64 %add4.i369, ptr %arrayidx29, align 8
  %arrayidx31 = getelementptr i64, ptr %portstats, i32 18
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit370.spx5_inst_rd.exit376_crit_edge, label %do.end.i.i372, !prof !169

sparx5_update_counter.exit370.spx5_inst_rd.exit376_crit_edge: ; preds = %sparx5_update_counter.exit370
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit376

do.end.i.i372:                                    ; preds = %sparx5_update_counter.exit370
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit376

spx5_inst_rd.exit376:                             ; preds = %do.end.i.i372, %sparx5_update_counter.exit370.spx5_inst_rd.exit376_crit_edge
  %add.ptr51.i.i375 = getelementptr i8, ptr %add.ptr50.i.i, i32 340
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i375) #9, !srcloc !170
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i377 = zext i32 %113 to i64
  %114 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %arrayidx31, align 8
  %and.i378 = and i64 %115, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i378, i64 %conv.i377)
  %cmp.i379 = icmp ugt i64 %and.i378, %conv.i377
  br i1 %cmp.i379, label %if.then.i381, label %spx5_inst_rd.exit376.sparx5_update_counter.exit384_crit_edge

spx5_inst_rd.exit376.sparx5_update_counter.exit384_crit_edge: ; preds = %spx5_inst_rd.exit376
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit384

if.then.i381:                                     ; preds = %spx5_inst_rd.exit376
  call void @__sanitizer_cov_trace_pc() #11
  %add.i380 = add i64 %115, 4294967296
  %116 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %add.i380, ptr %arrayidx31, align 8
  br label %sparx5_update_counter.exit384

sparx5_update_counter.exit384:                    ; preds = %if.then.i381, %spx5_inst_rd.exit376.sparx5_update_counter.exit384_crit_edge
  %117 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %arrayidx31, align 8
  %and2.i382 = and i64 %118, -4294967296
  %add4.i383 = or i64 %and2.i382, %conv.i377
  store i64 %add4.i383, ptr %arrayidx31, align 8
  %arrayidx33 = getelementptr i64, ptr %portstats, i32 19
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit384.spx5_inst_rd.exit390_crit_edge, label %do.end.i.i386, !prof !169

sparx5_update_counter.exit384.spx5_inst_rd.exit390_crit_edge: ; preds = %sparx5_update_counter.exit384
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit390

do.end.i.i386:                                    ; preds = %sparx5_update_counter.exit384
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit390

spx5_inst_rd.exit390:                             ; preds = %do.end.i.i386, %sparx5_update_counter.exit384.spx5_inst_rd.exit390_crit_edge
  %add.ptr51.i.i389 = getelementptr i8, ptr %add.ptr50.i.i, i32 332
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i389) #9, !srcloc !170
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i391 = zext i32 %120 to i64
  %121 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %arrayidx33, align 8
  %and.i392 = and i64 %122, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i392, i64 %conv.i391)
  %cmp.i393 = icmp ugt i64 %and.i392, %conv.i391
  br i1 %cmp.i393, label %if.then.i395, label %spx5_inst_rd.exit390.sparx5_update_counter.exit398_crit_edge

spx5_inst_rd.exit390.sparx5_update_counter.exit398_crit_edge: ; preds = %spx5_inst_rd.exit390
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit398

if.then.i395:                                     ; preds = %spx5_inst_rd.exit390
  call void @__sanitizer_cov_trace_pc() #11
  %add.i394 = add i64 %122, 4294967296
  %123 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %add.i394, ptr %arrayidx33, align 8
  br label %sparx5_update_counter.exit398

sparx5_update_counter.exit398:                    ; preds = %if.then.i395, %spx5_inst_rd.exit390.sparx5_update_counter.exit398_crit_edge
  %124 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %arrayidx33, align 8
  %and2.i396 = and i64 %125, -4294967296
  %add4.i397 = or i64 %and2.i396, %conv.i391
  store i64 %add4.i397, ptr %arrayidx33, align 8
  %arrayidx35 = getelementptr i64, ptr %portstats, i32 20
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit398.spx5_inst_rd.exit404_crit_edge, label %do.end.i.i400, !prof !169

sparx5_update_counter.exit398.spx5_inst_rd.exit404_crit_edge: ; preds = %sparx5_update_counter.exit398
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit404

do.end.i.i400:                                    ; preds = %sparx5_update_counter.exit398
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit404

spx5_inst_rd.exit404:                             ; preds = %do.end.i.i400, %sparx5_update_counter.exit398.spx5_inst_rd.exit404_crit_edge
  %add.ptr51.i.i403 = getelementptr i8, ptr %add.ptr50.i.i, i32 336
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i403) #9, !srcloc !170
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i405 = zext i32 %127 to i64
  %128 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %arrayidx35, align 8
  %and.i406 = and i64 %129, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i406, i64 %conv.i405)
  %cmp.i407 = icmp ugt i64 %and.i406, %conv.i405
  br i1 %cmp.i407, label %if.then.i409, label %spx5_inst_rd.exit404.sparx5_update_counter.exit412_crit_edge

spx5_inst_rd.exit404.sparx5_update_counter.exit412_crit_edge: ; preds = %spx5_inst_rd.exit404
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit412

if.then.i409:                                     ; preds = %spx5_inst_rd.exit404
  call void @__sanitizer_cov_trace_pc() #11
  %add.i408 = add i64 %129, 4294967296
  %130 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %add.i408, ptr %arrayidx35, align 8
  br label %sparx5_update_counter.exit412

sparx5_update_counter.exit412:                    ; preds = %if.then.i409, %spx5_inst_rd.exit404.sparx5_update_counter.exit412_crit_edge
  %131 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %arrayidx35, align 8
  %and2.i410 = and i64 %132, -4294967296
  %add4.i411 = or i64 %and2.i410, %conv.i405
  store i64 %add4.i411, ptr %arrayidx35, align 8
  %arrayidx37 = getelementptr i64, ptr %portstats, i32 21
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit412.spx5_inst_rd.exit418_crit_edge, label %do.end.i.i414, !prof !169

sparx5_update_counter.exit412.spx5_inst_rd.exit418_crit_edge: ; preds = %sparx5_update_counter.exit412
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit418

do.end.i.i414:                                    ; preds = %sparx5_update_counter.exit412
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit418

spx5_inst_rd.exit418:                             ; preds = %do.end.i.i414, %sparx5_update_counter.exit412.spx5_inst_rd.exit418_crit_edge
  %add.ptr51.i.i417 = getelementptr i8, ptr %add.ptr50.i.i, i32 352
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i417) #9, !srcloc !170
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i419 = zext i32 %134 to i64
  %135 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %arrayidx37, align 8
  %and.i420 = and i64 %136, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i420, i64 %conv.i419)
  %cmp.i421 = icmp ugt i64 %and.i420, %conv.i419
  br i1 %cmp.i421, label %if.then.i423, label %spx5_inst_rd.exit418.sparx5_update_counter.exit426_crit_edge

spx5_inst_rd.exit418.sparx5_update_counter.exit426_crit_edge: ; preds = %spx5_inst_rd.exit418
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit426

if.then.i423:                                     ; preds = %spx5_inst_rd.exit418
  call void @__sanitizer_cov_trace_pc() #11
  %add.i422 = add i64 %136, 4294967296
  %137 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %add.i422, ptr %arrayidx37, align 8
  br label %sparx5_update_counter.exit426

sparx5_update_counter.exit426:                    ; preds = %if.then.i423, %spx5_inst_rd.exit418.sparx5_update_counter.exit426_crit_edge
  %138 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %arrayidx37, align 8
  %and2.i424 = and i64 %139, -4294967296
  %add4.i425 = or i64 %and2.i424, %conv.i419
  store i64 %add4.i425, ptr %arrayidx37, align 8
  %arrayidx39 = getelementptr i64, ptr %portstats, i32 22
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit426.spx5_inst_rd.exit432_crit_edge, label %do.end.i.i428, !prof !169

sparx5_update_counter.exit426.spx5_inst_rd.exit432_crit_edge: ; preds = %sparx5_update_counter.exit426
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit432

do.end.i.i428:                                    ; preds = %sparx5_update_counter.exit426
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit432

spx5_inst_rd.exit432:                             ; preds = %do.end.i.i428, %sparx5_update_counter.exit426.spx5_inst_rd.exit432_crit_edge
  %add.ptr51.i.i431 = getelementptr i8, ptr %add.ptr50.i.i, i32 16
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i431) #9, !srcloc !170
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i433 = zext i32 %141 to i64
  %142 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %arrayidx39, align 8
  %and.i434 = and i64 %143, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i434, i64 %conv.i433)
  %cmp.i435 = icmp ugt i64 %and.i434, %conv.i433
  br i1 %cmp.i435, label %if.then.i437, label %spx5_inst_rd.exit432.sparx5_update_counter.exit440_crit_edge

spx5_inst_rd.exit432.sparx5_update_counter.exit440_crit_edge: ; preds = %spx5_inst_rd.exit432
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit440

if.then.i437:                                     ; preds = %spx5_inst_rd.exit432
  call void @__sanitizer_cov_trace_pc() #11
  %add.i436 = add i64 %143, 4294967296
  %144 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %add.i436, ptr %arrayidx39, align 8
  br label %sparx5_update_counter.exit440

sparx5_update_counter.exit440:                    ; preds = %if.then.i437, %spx5_inst_rd.exit432.sparx5_update_counter.exit440_crit_edge
  %145 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %arrayidx39, align 8
  %and2.i438 = and i64 %146, -4294967296
  %add4.i439 = or i64 %and2.i438, %conv.i433
  store i64 %add4.i439, ptr %arrayidx39, align 8
  %arrayidx41 = getelementptr i64, ptr %portstats, i32 23
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit440.spx5_inst_rd.exit446_crit_edge, label %do.end.i.i442, !prof !169

sparx5_update_counter.exit440.spx5_inst_rd.exit446_crit_edge: ; preds = %sparx5_update_counter.exit440
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit446

do.end.i.i442:                                    ; preds = %sparx5_update_counter.exit440
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit446

spx5_inst_rd.exit446:                             ; preds = %do.end.i.i442, %sparx5_update_counter.exit440.spx5_inst_rd.exit446_crit_edge
  %add.ptr51.i.i445 = getelementptr i8, ptr %add.ptr50.i.i, i32 180
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i445) #9, !srcloc !170
  %148 = tail call i32 @llvm.bswap.i32(i32 %147) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i447 = zext i32 %148 to i64
  %149 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %arrayidx41, align 8
  %and.i448 = and i64 %150, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i448, i64 %conv.i447)
  %cmp.i449 = icmp ugt i64 %and.i448, %conv.i447
  br i1 %cmp.i449, label %if.then.i451, label %spx5_inst_rd.exit446.sparx5_update_counter.exit454_crit_edge

spx5_inst_rd.exit446.sparx5_update_counter.exit454_crit_edge: ; preds = %spx5_inst_rd.exit446
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit454

if.then.i451:                                     ; preds = %spx5_inst_rd.exit446
  call void @__sanitizer_cov_trace_pc() #11
  %add.i450 = add i64 %150, 4294967296
  %151 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %add.i450, ptr %arrayidx41, align 8
  br label %sparx5_update_counter.exit454

sparx5_update_counter.exit454:                    ; preds = %if.then.i451, %spx5_inst_rd.exit446.sparx5_update_counter.exit454_crit_edge
  %152 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %arrayidx41, align 8
  %and2.i452 = and i64 %153, -4294967296
  %add4.i453 = or i64 %and2.i452, %conv.i447
  store i64 %add4.i453, ptr %arrayidx41, align 8
  %arrayidx43 = getelementptr i64, ptr %portstats, i32 24
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit454.spx5_inst_rd.exit460_crit_edge, label %do.end.i.i456, !prof !169

sparx5_update_counter.exit454.spx5_inst_rd.exit460_crit_edge: ; preds = %sparx5_update_counter.exit454
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit460

do.end.i.i456:                                    ; preds = %sparx5_update_counter.exit454
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit460

spx5_inst_rd.exit460:                             ; preds = %do.end.i.i456, %sparx5_update_counter.exit454.spx5_inst_rd.exit460_crit_edge
  %add.ptr51.i.i459 = getelementptr i8, ptr %add.ptr50.i.i, i32 268
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i459) #9, !srcloc !170
  %155 = tail call i32 @llvm.bswap.i32(i32 %154) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i461 = zext i32 %155 to i64
  %156 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %arrayidx43, align 8
  %and.i462 = and i64 %157, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i462, i64 %conv.i461)
  %cmp.i463 = icmp ugt i64 %and.i462, %conv.i461
  br i1 %cmp.i463, label %if.then.i465, label %spx5_inst_rd.exit460.sparx5_update_counter.exit468_crit_edge

spx5_inst_rd.exit460.sparx5_update_counter.exit468_crit_edge: ; preds = %spx5_inst_rd.exit460
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit468

if.then.i465:                                     ; preds = %spx5_inst_rd.exit460
  call void @__sanitizer_cov_trace_pc() #11
  %add.i464 = add i64 %157, 4294967296
  %158 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 %add.i464, ptr %arrayidx43, align 8
  br label %sparx5_update_counter.exit468

sparx5_update_counter.exit468:                    ; preds = %if.then.i465, %spx5_inst_rd.exit460.sparx5_update_counter.exit468_crit_edge
  %159 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %arrayidx43, align 8
  %and2.i466 = and i64 %160, -4294967296
  %add4.i467 = or i64 %and2.i466, %conv.i461
  store i64 %add4.i467, ptr %arrayidx43, align 8
  %arrayidx45 = getelementptr i64, ptr %portstats, i32 25
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit468.spx5_inst_rd.exit474_crit_edge, label %do.end.i.i470, !prof !169

sparx5_update_counter.exit468.spx5_inst_rd.exit474_crit_edge: ; preds = %sparx5_update_counter.exit468
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit474

do.end.i.i470:                                    ; preds = %sparx5_update_counter.exit468
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit474

spx5_inst_rd.exit474:                             ; preds = %do.end.i.i470, %sparx5_update_counter.exit468.spx5_inst_rd.exit474_crit_edge
  %add.ptr51.i.i473 = getelementptr i8, ptr %add.ptr50.i.i, i32 272
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i473) #9, !srcloc !170
  %162 = tail call i32 @llvm.bswap.i32(i32 %161) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i475 = zext i32 %162 to i64
  %163 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %arrayidx45, align 8
  %and.i476 = and i64 %164, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i476, i64 %conv.i475)
  %cmp.i477 = icmp ugt i64 %and.i476, %conv.i475
  br i1 %cmp.i477, label %if.then.i479, label %spx5_inst_rd.exit474.sparx5_update_counter.exit482_crit_edge

spx5_inst_rd.exit474.sparx5_update_counter.exit482_crit_edge: ; preds = %spx5_inst_rd.exit474
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit482

if.then.i479:                                     ; preds = %spx5_inst_rd.exit474
  call void @__sanitizer_cov_trace_pc() #11
  %add.i478 = add i64 %164, 4294967296
  %165 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %add.i478, ptr %arrayidx45, align 8
  br label %sparx5_update_counter.exit482

sparx5_update_counter.exit482:                    ; preds = %if.then.i479, %spx5_inst_rd.exit474.sparx5_update_counter.exit482_crit_edge
  %166 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %arrayidx45, align 8
  %and2.i480 = and i64 %167, -4294967296
  %add4.i481 = or i64 %and2.i480, %conv.i475
  store i64 %add4.i481, ptr %arrayidx45, align 8
  %arrayidx47 = getelementptr i64, ptr %portstats, i32 26
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit482.spx5_inst_rd.exit488_crit_edge, label %do.end.i.i484, !prof !169

sparx5_update_counter.exit482.spx5_inst_rd.exit488_crit_edge: ; preds = %sparx5_update_counter.exit482
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit488

do.end.i.i484:                                    ; preds = %sparx5_update_counter.exit482
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit488

spx5_inst_rd.exit488:                             ; preds = %do.end.i.i484, %sparx5_update_counter.exit482.spx5_inst_rd.exit488_crit_edge
  %add.ptr51.i.i487 = getelementptr i8, ptr %add.ptr50.i.i, i32 344
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i487) #9, !srcloc !170
  %169 = tail call i32 @llvm.bswap.i32(i32 %168) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i489 = zext i32 %169 to i64
  %170 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %arrayidx47, align 8
  %and.i490 = and i64 %171, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i490, i64 %conv.i489)
  %cmp.i491 = icmp ugt i64 %and.i490, %conv.i489
  br i1 %cmp.i491, label %if.then.i493, label %spx5_inst_rd.exit488.sparx5_update_counter.exit496_crit_edge

spx5_inst_rd.exit488.sparx5_update_counter.exit496_crit_edge: ; preds = %spx5_inst_rd.exit488
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit496

if.then.i493:                                     ; preds = %spx5_inst_rd.exit488
  call void @__sanitizer_cov_trace_pc() #11
  %add.i492 = add i64 %171, 4294967296
  %172 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store8_noabort(i32 %172)
  store i64 %add.i492, ptr %arrayidx47, align 8
  br label %sparx5_update_counter.exit496

sparx5_update_counter.exit496:                    ; preds = %if.then.i493, %spx5_inst_rd.exit488.sparx5_update_counter.exit496_crit_edge
  %173 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %arrayidx47, align 8
  %and2.i494 = and i64 %174, -4294967296
  %add4.i495 = or i64 %and2.i494, %conv.i489
  store i64 %add4.i495, ptr %arrayidx47, align 8
  %arrayidx49 = getelementptr i64, ptr %portstats, i32 27
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit496.spx5_inst_rd.exit502_crit_edge, label %do.end.i.i498, !prof !169

sparx5_update_counter.exit496.spx5_inst_rd.exit502_crit_edge: ; preds = %sparx5_update_counter.exit496
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit502

do.end.i.i498:                                    ; preds = %sparx5_update_counter.exit496
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit502

spx5_inst_rd.exit502:                             ; preds = %do.end.i.i498, %sparx5_update_counter.exit496.spx5_inst_rd.exit502_crit_edge
  %add.ptr51.i.i501 = getelementptr i8, ptr %add.ptr50.i.i, i32 192
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i501) #9, !srcloc !170
  %176 = tail call i32 @llvm.bswap.i32(i32 %175) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i503 = zext i32 %176 to i64
  %177 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %arrayidx49, align 8
  %and.i504 = and i64 %178, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i504, i64 %conv.i503)
  %cmp.i505 = icmp ugt i64 %and.i504, %conv.i503
  br i1 %cmp.i505, label %if.then.i507, label %spx5_inst_rd.exit502.sparx5_update_counter.exit510_crit_edge

spx5_inst_rd.exit502.sparx5_update_counter.exit510_crit_edge: ; preds = %spx5_inst_rd.exit502
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit510

if.then.i507:                                     ; preds = %spx5_inst_rd.exit502
  call void @__sanitizer_cov_trace_pc() #11
  %add.i506 = add i64 %178, 4294967296
  %179 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 %add.i506, ptr %arrayidx49, align 8
  br label %sparx5_update_counter.exit510

sparx5_update_counter.exit510:                    ; preds = %if.then.i507, %spx5_inst_rd.exit502.sparx5_update_counter.exit510_crit_edge
  %180 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %arrayidx49, align 8
  %and2.i508 = and i64 %181, -4294967296
  %add4.i509 = or i64 %and2.i508, %conv.i503
  store i64 %add4.i509, ptr %arrayidx49, align 8
  %arrayidx51 = getelementptr i64, ptr %portstats, i32 28
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit510.spx5_inst_rd.exit516_crit_edge, label %do.end.i.i512, !prof !169

sparx5_update_counter.exit510.spx5_inst_rd.exit516_crit_edge: ; preds = %sparx5_update_counter.exit510
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit516

do.end.i.i512:                                    ; preds = %sparx5_update_counter.exit510
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit516

spx5_inst_rd.exit516:                             ; preds = %do.end.i.i512, %sparx5_update_counter.exit510.spx5_inst_rd.exit516_crit_edge
  %add.ptr51.i.i515 = getelementptr i8, ptr %add.ptr50.i.i, i32 196
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i515) #9, !srcloc !170
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i517 = zext i32 %183 to i64
  %184 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %arrayidx51, align 8
  %and.i518 = and i64 %185, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i518, i64 %conv.i517)
  %cmp.i519 = icmp ugt i64 %and.i518, %conv.i517
  br i1 %cmp.i519, label %if.then.i521, label %spx5_inst_rd.exit516.sparx5_update_counter.exit524_crit_edge

spx5_inst_rd.exit516.sparx5_update_counter.exit524_crit_edge: ; preds = %spx5_inst_rd.exit516
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit524

if.then.i521:                                     ; preds = %spx5_inst_rd.exit516
  call void @__sanitizer_cov_trace_pc() #11
  %add.i520 = add i64 %185, 4294967296
  %186 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store8_noabort(i32 %186)
  store i64 %add.i520, ptr %arrayidx51, align 8
  br label %sparx5_update_counter.exit524

sparx5_update_counter.exit524:                    ; preds = %if.then.i521, %spx5_inst_rd.exit516.sparx5_update_counter.exit524_crit_edge
  %187 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %arrayidx51, align 8
  %and2.i522 = and i64 %188, -4294967296
  %add4.i523 = or i64 %and2.i522, %conv.i517
  store i64 %add4.i523, ptr %arrayidx51, align 8
  %arrayidx53 = getelementptr i64, ptr %portstats, i32 29
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit524.spx5_inst_rd.exit530_crit_edge, label %do.end.i.i526, !prof !169

sparx5_update_counter.exit524.spx5_inst_rd.exit530_crit_edge: ; preds = %sparx5_update_counter.exit524
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit530

do.end.i.i526:                                    ; preds = %sparx5_update_counter.exit524
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit530

spx5_inst_rd.exit530:                             ; preds = %do.end.i.i526, %sparx5_update_counter.exit524.spx5_inst_rd.exit530_crit_edge
  %add.ptr51.i.i529 = getelementptr i8, ptr %add.ptr50.i.i, i32 48
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i529) #9, !srcloc !170
  %190 = tail call i32 @llvm.bswap.i32(i32 %189) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i531 = zext i32 %190 to i64
  %191 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %arrayidx53, align 8
  %and.i532 = and i64 %192, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i532, i64 %conv.i531)
  %cmp.i533 = icmp ugt i64 %and.i532, %conv.i531
  br i1 %cmp.i533, label %if.then.i535, label %spx5_inst_rd.exit530.sparx5_update_counter.exit538_crit_edge

spx5_inst_rd.exit530.sparx5_update_counter.exit538_crit_edge: ; preds = %spx5_inst_rd.exit530
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit538

if.then.i535:                                     ; preds = %spx5_inst_rd.exit530
  call void @__sanitizer_cov_trace_pc() #11
  %add.i534 = add i64 %192, 4294967296
  %193 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store8_noabort(i32 %193)
  store i64 %add.i534, ptr %arrayidx53, align 8
  br label %sparx5_update_counter.exit538

sparx5_update_counter.exit538:                    ; preds = %if.then.i535, %spx5_inst_rd.exit530.sparx5_update_counter.exit538_crit_edge
  %194 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %arrayidx53, align 8
  %and2.i536 = and i64 %195, -4294967296
  %add4.i537 = or i64 %and2.i536, %conv.i531
  store i64 %add4.i537, ptr %arrayidx53, align 8
  %arrayidx55 = getelementptr i64, ptr %portstats, i32 30
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit538.spx5_inst_rd.exit544_crit_edge, label %do.end.i.i540, !prof !169

sparx5_update_counter.exit538.spx5_inst_rd.exit544_crit_edge: ; preds = %sparx5_update_counter.exit538
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit544

do.end.i.i540:                                    ; preds = %sparx5_update_counter.exit538
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit544

spx5_inst_rd.exit544:                             ; preds = %do.end.i.i540, %sparx5_update_counter.exit538.spx5_inst_rd.exit544_crit_edge
  %add.ptr51.i.i543 = getelementptr i8, ptr %add.ptr50.i.i, i32 212
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i543) #9, !srcloc !170
  %197 = tail call i32 @llvm.bswap.i32(i32 %196) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i545 = zext i32 %197 to i64
  %198 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %arrayidx55, align 8
  %and.i546 = and i64 %199, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i546, i64 %conv.i545)
  %cmp.i547 = icmp ugt i64 %and.i546, %conv.i545
  br i1 %cmp.i547, label %if.then.i549, label %spx5_inst_rd.exit544.sparx5_update_counter.exit552_crit_edge

spx5_inst_rd.exit544.sparx5_update_counter.exit552_crit_edge: ; preds = %spx5_inst_rd.exit544
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit552

if.then.i549:                                     ; preds = %spx5_inst_rd.exit544
  call void @__sanitizer_cov_trace_pc() #11
  %add.i548 = add i64 %199, 4294967296
  %200 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store8_noabort(i32 %200)
  store i64 %add.i548, ptr %arrayidx55, align 8
  br label %sparx5_update_counter.exit552

sparx5_update_counter.exit552:                    ; preds = %if.then.i549, %spx5_inst_rd.exit544.sparx5_update_counter.exit552_crit_edge
  %201 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %arrayidx55, align 8
  %and2.i550 = and i64 %202, -4294967296
  %add4.i551 = or i64 %and2.i550, %conv.i545
  store i64 %add4.i551, ptr %arrayidx55, align 8
  %arrayidx57 = getelementptr i64, ptr %portstats, i32 31
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit552.spx5_inst_rd.exit558_crit_edge, label %do.end.i.i554, !prof !169

sparx5_update_counter.exit552.spx5_inst_rd.exit558_crit_edge: ; preds = %sparx5_update_counter.exit552
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit558

do.end.i.i554:                                    ; preds = %sparx5_update_counter.exit552
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit558

spx5_inst_rd.exit558:                             ; preds = %do.end.i.i554, %sparx5_update_counter.exit552.spx5_inst_rd.exit558_crit_edge
  %add.ptr51.i.i557 = getelementptr i8, ptr %add.ptr50.i.i, i32 52
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i557) #9, !srcloc !170
  %204 = tail call i32 @llvm.bswap.i32(i32 %203) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i559 = zext i32 %204 to i64
  %205 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %arrayidx57, align 8
  %and.i560 = and i64 %206, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i560, i64 %conv.i559)
  %cmp.i561 = icmp ugt i64 %and.i560, %conv.i559
  br i1 %cmp.i561, label %if.then.i563, label %spx5_inst_rd.exit558.sparx5_update_counter.exit566_crit_edge

spx5_inst_rd.exit558.sparx5_update_counter.exit566_crit_edge: ; preds = %spx5_inst_rd.exit558
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit566

if.then.i563:                                     ; preds = %spx5_inst_rd.exit558
  call void @__sanitizer_cov_trace_pc() #11
  %add.i562 = add i64 %206, 4294967296
  %207 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store8_noabort(i32 %207)
  store i64 %add.i562, ptr %arrayidx57, align 8
  br label %sparx5_update_counter.exit566

sparx5_update_counter.exit566:                    ; preds = %if.then.i563, %spx5_inst_rd.exit558.sparx5_update_counter.exit566_crit_edge
  %208 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %arrayidx57, align 8
  %and2.i564 = and i64 %209, -4294967296
  %add4.i565 = or i64 %and2.i564, %conv.i559
  store i64 %add4.i565, ptr %arrayidx57, align 8
  %arrayidx59 = getelementptr i64, ptr %portstats, i32 32
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit566.spx5_inst_rd.exit572_crit_edge, label %do.end.i.i568, !prof !169

sparx5_update_counter.exit566.spx5_inst_rd.exit572_crit_edge: ; preds = %sparx5_update_counter.exit566
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit572

do.end.i.i568:                                    ; preds = %sparx5_update_counter.exit566
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit572

spx5_inst_rd.exit572:                             ; preds = %do.end.i.i568, %sparx5_update_counter.exit566.spx5_inst_rd.exit572_crit_edge
  %add.ptr51.i.i571 = getelementptr i8, ptr %add.ptr50.i.i, i32 216
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i571) #9, !srcloc !170
  %211 = tail call i32 @llvm.bswap.i32(i32 %210) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i573 = zext i32 %211 to i64
  %212 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %arrayidx59, align 8
  %and.i574 = and i64 %213, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i574, i64 %conv.i573)
  %cmp.i575 = icmp ugt i64 %and.i574, %conv.i573
  br i1 %cmp.i575, label %if.then.i577, label %spx5_inst_rd.exit572.sparx5_update_counter.exit580_crit_edge

spx5_inst_rd.exit572.sparx5_update_counter.exit580_crit_edge: ; preds = %spx5_inst_rd.exit572
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit580

if.then.i577:                                     ; preds = %spx5_inst_rd.exit572
  call void @__sanitizer_cov_trace_pc() #11
  %add.i576 = add i64 %213, 4294967296
  %214 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store8_noabort(i32 %214)
  store i64 %add.i576, ptr %arrayidx59, align 8
  br label %sparx5_update_counter.exit580

sparx5_update_counter.exit580:                    ; preds = %if.then.i577, %spx5_inst_rd.exit572.sparx5_update_counter.exit580_crit_edge
  %215 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %arrayidx59, align 8
  %and2.i578 = and i64 %216, -4294967296
  %add4.i579 = or i64 %and2.i578, %conv.i573
  store i64 %add4.i579, ptr %arrayidx59, align 8
  %arrayidx61 = getelementptr i64, ptr %portstats, i32 33
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit580.spx5_inst_rd.exit586_crit_edge, label %do.end.i.i582, !prof !169

sparx5_update_counter.exit580.spx5_inst_rd.exit586_crit_edge: ; preds = %sparx5_update_counter.exit580
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit586

do.end.i.i582:                                    ; preds = %sparx5_update_counter.exit580
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit586

spx5_inst_rd.exit586:                             ; preds = %do.end.i.i582, %sparx5_update_counter.exit580.spx5_inst_rd.exit586_crit_edge
  %add.ptr51.i.i585 = getelementptr i8, ptr %add.ptr50.i.i, i32 56
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i585) #9, !srcloc !170
  %218 = tail call i32 @llvm.bswap.i32(i32 %217) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i587 = zext i32 %218 to i64
  %219 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %arrayidx61, align 8
  %and.i588 = and i64 %220, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i588, i64 %conv.i587)
  %cmp.i589 = icmp ugt i64 %and.i588, %conv.i587
  br i1 %cmp.i589, label %if.then.i591, label %spx5_inst_rd.exit586.sparx5_update_counter.exit594_crit_edge

spx5_inst_rd.exit586.sparx5_update_counter.exit594_crit_edge: ; preds = %spx5_inst_rd.exit586
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit594

if.then.i591:                                     ; preds = %spx5_inst_rd.exit586
  call void @__sanitizer_cov_trace_pc() #11
  %add.i590 = add i64 %220, 4294967296
  %221 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store8_noabort(i32 %221)
  store i64 %add.i590, ptr %arrayidx61, align 8
  br label %sparx5_update_counter.exit594

sparx5_update_counter.exit594:                    ; preds = %if.then.i591, %spx5_inst_rd.exit586.sparx5_update_counter.exit594_crit_edge
  %222 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %arrayidx61, align 8
  %and2.i592 = and i64 %223, -4294967296
  %add4.i593 = or i64 %and2.i592, %conv.i587
  store i64 %add4.i593, ptr %arrayidx61, align 8
  %arrayidx63 = getelementptr i64, ptr %portstats, i32 34
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit594.spx5_inst_rd.exit600_crit_edge, label %do.end.i.i596, !prof !169

sparx5_update_counter.exit594.spx5_inst_rd.exit600_crit_edge: ; preds = %sparx5_update_counter.exit594
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit600

do.end.i.i596:                                    ; preds = %sparx5_update_counter.exit594
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit600

spx5_inst_rd.exit600:                             ; preds = %do.end.i.i596, %sparx5_update_counter.exit594.spx5_inst_rd.exit600_crit_edge
  %add.ptr51.i.i599 = getelementptr i8, ptr %add.ptr50.i.i, i32 220
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i599) #9, !srcloc !170
  %225 = tail call i32 @llvm.bswap.i32(i32 %224) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i601 = zext i32 %225 to i64
  %226 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %arrayidx63, align 8
  %and.i602 = and i64 %227, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i602, i64 %conv.i601)
  %cmp.i603 = icmp ugt i64 %and.i602, %conv.i601
  br i1 %cmp.i603, label %if.then.i605, label %spx5_inst_rd.exit600.sparx5_update_counter.exit608_crit_edge

spx5_inst_rd.exit600.sparx5_update_counter.exit608_crit_edge: ; preds = %spx5_inst_rd.exit600
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit608

if.then.i605:                                     ; preds = %spx5_inst_rd.exit600
  call void @__sanitizer_cov_trace_pc() #11
  %add.i604 = add i64 %227, 4294967296
  %228 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store8_noabort(i32 %228)
  store i64 %add.i604, ptr %arrayidx63, align 8
  br label %sparx5_update_counter.exit608

sparx5_update_counter.exit608:                    ; preds = %if.then.i605, %spx5_inst_rd.exit600.sparx5_update_counter.exit608_crit_edge
  %229 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load8_noabort(i32 %229)
  %230 = load i64, ptr %arrayidx63, align 8
  %and2.i606 = and i64 %230, -4294967296
  %add4.i607 = or i64 %and2.i606, %conv.i601
  store i64 %add4.i607, ptr %arrayidx63, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sparx5_get_dev_mac_ctrl_stats(ptr nocapture noundef %portstats, ptr noundef %inst) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i64, ptr %portstats, i32 35
  %add.ptr51.i.i = getelementptr i8, ptr %inst, i32 144
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i) #9, !srcloc !170
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i = zext i32 %1 to i64
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  %and.i = and i64 %3, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %conv.i)
  %cmp.i = icmp ugt i64 %and.i, %conv.i
  br i1 %cmp.i, label %if.then.i, label %entry.sparx5_update_counter.exit_crit_edge

entry.sparx5_update_counter.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i64 %3, 4294967296
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add.i, ptr %arrayidx, align 8
  br label %sparx5_update_counter.exit

sparx5_update_counter.exit:                       ; preds = %if.then.i, %entry.sparx5_update_counter.exit_crit_edge
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx, align 8
  %and2.i = and i64 %6, -4294967296
  %add4.i = or i64 %and2.i, %conv.i
  store i64 %add4.i, ptr %arrayidx, align 8
  %arrayidx1 = getelementptr i64, ptr %portstats, i32 36
  %add.ptr51.i.i2 = getelementptr i8, ptr %inst, i32 288
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i2) #9, !srcloc !170
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i3 = zext i32 %8 to i64
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx1, align 8
  %and.i4 = and i64 %10, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i4, i64 %conv.i3)
  %cmp.i5 = icmp ugt i64 %and.i4, %conv.i3
  br i1 %cmp.i5, label %if.then.i7, label %sparx5_update_counter.exit.sparx5_update_counter.exit10_crit_edge

sparx5_update_counter.exit.sparx5_update_counter.exit10_crit_edge: ; preds = %sparx5_update_counter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit10

if.then.i7:                                       ; preds = %sparx5_update_counter.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.i6 = add i64 %10, 4294967296
  %11 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %add.i6, ptr %arrayidx1, align 8
  br label %sparx5_update_counter.exit10

sparx5_update_counter.exit10:                     ; preds = %if.then.i7, %sparx5_update_counter.exit.sparx5_update_counter.exit10_crit_edge
  %12 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx1, align 8
  %and2.i8 = and i64 %13, -4294967296
  %add4.i9 = or i64 %and2.i8, %conv.i3
  store i64 %add4.i9, ptr %arrayidx1, align 8
  %arrayidx3 = getelementptr i64, ptr %portstats, i32 37
  %add.ptr51.i.i12 = getelementptr i8, ptr %inst, i32 64
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i12) #9, !srcloc !170
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i13 = zext i32 %15 to i64
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx3, align 8
  %and.i14 = and i64 %17, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i14, i64 %conv.i13)
  %cmp.i15 = icmp ugt i64 %and.i14, %conv.i13
  br i1 %cmp.i15, label %if.then.i17, label %sparx5_update_counter.exit10.sparx5_update_counter.exit20_crit_edge

sparx5_update_counter.exit10.sparx5_update_counter.exit20_crit_edge: ; preds = %sparx5_update_counter.exit10
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit20

if.then.i17:                                      ; preds = %sparx5_update_counter.exit10
  call void @__sanitizer_cov_trace_pc() #11
  %add.i16 = add i64 %17, 4294967296
  %18 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add.i16, ptr %arrayidx3, align 8
  br label %sparx5_update_counter.exit20

sparx5_update_counter.exit20:                     ; preds = %if.then.i17, %sparx5_update_counter.exit10.sparx5_update_counter.exit20_crit_edge
  %19 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx3, align 8
  %and2.i18 = and i64 %20, -4294967296
  %add4.i19 = or i64 %and2.i18, %conv.i13
  store i64 %add4.i19, ptr %arrayidx3, align 8
  %arrayidx5 = getelementptr i64, ptr %portstats, i32 38
  %add.ptr51.i.i22 = getelementptr i8, ptr %inst, i32 212
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i22) #9, !srcloc !170
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i23 = zext i32 %22 to i64
  %23 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx5, align 8
  %and.i24 = and i64 %24, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i24, i64 %conv.i23)
  %cmp.i25 = icmp ugt i64 %and.i24, %conv.i23
  br i1 %cmp.i25, label %if.then.i27, label %sparx5_update_counter.exit20.sparx5_update_counter.exit30_crit_edge

sparx5_update_counter.exit20.sparx5_update_counter.exit30_crit_edge: ; preds = %sparx5_update_counter.exit20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit30

if.then.i27:                                      ; preds = %sparx5_update_counter.exit20
  call void @__sanitizer_cov_trace_pc() #11
  %add.i26 = add i64 %24, 4294967296
  %25 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %add.i26, ptr %arrayidx5, align 8
  br label %sparx5_update_counter.exit30

sparx5_update_counter.exit30:                     ; preds = %if.then.i27, %sparx5_update_counter.exit20.sparx5_update_counter.exit30_crit_edge
  %26 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx5, align 8
  %and2.i28 = and i64 %27, -4294967296
  %add4.i29 = or i64 %and2.i28, %conv.i23
  store i64 %add4.i29, ptr %arrayidx5, align 8
  %arrayidx7 = getelementptr i64, ptr %portstats, i32 39
  %add.ptr51.i.i32 = getelementptr i8, ptr %inst, i32 68
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i32) #9, !srcloc !170
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i33 = zext i32 %29 to i64
  %30 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx7, align 8
  %and.i34 = and i64 %31, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i34, i64 %conv.i33)
  %cmp.i35 = icmp ugt i64 %and.i34, %conv.i33
  br i1 %cmp.i35, label %if.then.i37, label %sparx5_update_counter.exit30.sparx5_update_counter.exit40_crit_edge

sparx5_update_counter.exit30.sparx5_update_counter.exit40_crit_edge: ; preds = %sparx5_update_counter.exit30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit40

if.then.i37:                                      ; preds = %sparx5_update_counter.exit30
  call void @__sanitizer_cov_trace_pc() #11
  %add.i36 = add i64 %31, 4294967296
  %32 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %add.i36, ptr %arrayidx7, align 8
  br label %sparx5_update_counter.exit40

sparx5_update_counter.exit40:                     ; preds = %if.then.i37, %sparx5_update_counter.exit30.sparx5_update_counter.exit40_crit_edge
  %33 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx7, align 8
  %and2.i38 = and i64 %34, -4294967296
  %add4.i39 = or i64 %and2.i38, %conv.i33
  store i64 %add4.i39, ptr %arrayidx7, align 8
  %arrayidx9 = getelementptr i64, ptr %portstats, i32 40
  %add.ptr51.i.i42 = getelementptr i8, ptr %inst, i32 216
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i42) #9, !srcloc !170
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i43 = zext i32 %36 to i64
  %37 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx9, align 8
  %and.i44 = and i64 %38, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i44, i64 %conv.i43)
  %cmp.i45 = icmp ugt i64 %and.i44, %conv.i43
  br i1 %cmp.i45, label %if.then.i47, label %sparx5_update_counter.exit40.sparx5_update_counter.exit50_crit_edge

sparx5_update_counter.exit40.sparx5_update_counter.exit50_crit_edge: ; preds = %sparx5_update_counter.exit40
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit50

if.then.i47:                                      ; preds = %sparx5_update_counter.exit40
  call void @__sanitizer_cov_trace_pc() #11
  %add.i46 = add i64 %38, 4294967296
  %39 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %add.i46, ptr %arrayidx9, align 8
  br label %sparx5_update_counter.exit50

sparx5_update_counter.exit50:                     ; preds = %if.then.i47, %sparx5_update_counter.exit40.sparx5_update_counter.exit50_crit_edge
  %40 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx9, align 8
  %and2.i48 = and i64 %41, -4294967296
  %add4.i49 = or i64 %and2.i48, %conv.i43
  store i64 %add4.i49, ptr %arrayidx9, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sparx5_get_asm_mac_ctrl_stats(ptr nocapture noundef %portstats, ptr noundef %inst, i32 noundef %portno) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i64, ptr %portstats, i32 35
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %portno)
  %cmp.not.i.i = icmp slt i32 %portno, 65
  br i1 %cmp.not.i.i, label %entry.spx5_inst_rd.exit_crit_edge, label %do.end.i.i, !prof !169

entry.spx5_inst_rd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit

spx5_inst_rd.exit:                                ; preds = %do.end.i.i, %entry.spx5_inst_rd.exit_crit_edge
  %mul.i.i = shl i32 %portno, 9
  %add.ptr50.i.i = getelementptr i8, ptr %inst, i32 %mul.i.i
  %add.ptr51.i.i = getelementptr i8, ptr %add.ptr50.i.i, i32 100
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i) #9, !srcloc !170
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i = zext i32 %1 to i64
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  %and.i = and i64 %3, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %conv.i)
  %cmp.i = icmp ugt i64 %and.i, %conv.i
  br i1 %cmp.i, label %if.then.i, label %spx5_inst_rd.exit.sparx5_update_counter.exit_crit_edge

spx5_inst_rd.exit.sparx5_update_counter.exit_crit_edge: ; preds = %spx5_inst_rd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit

if.then.i:                                        ; preds = %spx5_inst_rd.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i64 %3, 4294967296
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add.i, ptr %arrayidx, align 8
  br label %sparx5_update_counter.exit

sparx5_update_counter.exit:                       ; preds = %if.then.i, %spx5_inst_rd.exit.sparx5_update_counter.exit_crit_edge
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx, align 8
  %and2.i = and i64 %6, -4294967296
  %add4.i = or i64 %and2.i, %conv.i
  store i64 %add4.i, ptr %arrayidx, align 8
  %arrayidx1 = getelementptr i64, ptr %portstats, i32 36
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit.spx5_inst_rd.exit31_crit_edge, label %do.end.i.i27, !prof !169

sparx5_update_counter.exit.spx5_inst_rd.exit31_crit_edge: ; preds = %sparx5_update_counter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit31

do.end.i.i27:                                     ; preds = %sparx5_update_counter.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit31

spx5_inst_rd.exit31:                              ; preds = %do.end.i.i27, %sparx5_update_counter.exit.spx5_inst_rd.exit31_crit_edge
  %add.ptr51.i.i30 = getelementptr i8, ptr %add.ptr50.i.i, i32 256
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i30) #9, !srcloc !170
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i32 = zext i32 %8 to i64
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx1, align 8
  %and.i33 = and i64 %10, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i33, i64 %conv.i32)
  %cmp.i34 = icmp ugt i64 %and.i33, %conv.i32
  br i1 %cmp.i34, label %if.then.i36, label %spx5_inst_rd.exit31.sparx5_update_counter.exit39_crit_edge

spx5_inst_rd.exit31.sparx5_update_counter.exit39_crit_edge: ; preds = %spx5_inst_rd.exit31
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit39

if.then.i36:                                      ; preds = %spx5_inst_rd.exit31
  call void @__sanitizer_cov_trace_pc() #11
  %add.i35 = add i64 %10, 4294967296
  %11 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %add.i35, ptr %arrayidx1, align 8
  br label %sparx5_update_counter.exit39

sparx5_update_counter.exit39:                     ; preds = %if.then.i36, %spx5_inst_rd.exit31.sparx5_update_counter.exit39_crit_edge
  %12 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx1, align 8
  %and2.i37 = and i64 %13, -4294967296
  %add4.i38 = or i64 %and2.i37, %conv.i32
  store i64 %add4.i38, ptr %arrayidx1, align 8
  %arrayidx3 = getelementptr i64, ptr %portstats, i32 37
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit39.spx5_inst_rd.exit45_crit_edge, label %do.end.i.i41, !prof !169

sparx5_update_counter.exit39.spx5_inst_rd.exit45_crit_edge: ; preds = %sparx5_update_counter.exit39
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit45

do.end.i.i41:                                     ; preds = %sparx5_update_counter.exit39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit45

spx5_inst_rd.exit45:                              ; preds = %do.end.i.i41, %sparx5_update_counter.exit39.spx5_inst_rd.exit45_crit_edge
  %add.ptr51.i.i44 = getelementptr i8, ptr %add.ptr50.i.i, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i44) #9, !srcloc !170
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i46 = zext i32 %15 to i64
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx3, align 8
  %and.i47 = and i64 %17, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i47, i64 %conv.i46)
  %cmp.i48 = icmp ugt i64 %and.i47, %conv.i46
  br i1 %cmp.i48, label %if.then.i50, label %spx5_inst_rd.exit45.sparx5_update_counter.exit53_crit_edge

spx5_inst_rd.exit45.sparx5_update_counter.exit53_crit_edge: ; preds = %spx5_inst_rd.exit45
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit53

if.then.i50:                                      ; preds = %spx5_inst_rd.exit45
  call void @__sanitizer_cov_trace_pc() #11
  %add.i49 = add i64 %17, 4294967296
  %18 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add.i49, ptr %arrayidx3, align 8
  br label %sparx5_update_counter.exit53

sparx5_update_counter.exit53:                     ; preds = %if.then.i50, %spx5_inst_rd.exit45.sparx5_update_counter.exit53_crit_edge
  %19 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx3, align 8
  %and2.i51 = and i64 %20, -4294967296
  %add4.i52 = or i64 %and2.i51, %conv.i46
  store i64 %add4.i52, ptr %arrayidx3, align 8
  %arrayidx5 = getelementptr i64, ptr %portstats, i32 38
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit53.spx5_inst_rd.exit59_crit_edge, label %do.end.i.i55, !prof !169

sparx5_update_counter.exit53.spx5_inst_rd.exit59_crit_edge: ; preds = %sparx5_update_counter.exit53
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit59

do.end.i.i55:                                     ; preds = %sparx5_update_counter.exit53
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit59

spx5_inst_rd.exit59:                              ; preds = %do.end.i.i55, %sparx5_update_counter.exit53.spx5_inst_rd.exit59_crit_edge
  %add.ptr51.i.i58 = getelementptr i8, ptr %add.ptr50.i.i, i32 172
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i58) #9, !srcloc !170
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i60 = zext i32 %22 to i64
  %23 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx5, align 8
  %and.i61 = and i64 %24, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i61, i64 %conv.i60)
  %cmp.i62 = icmp ugt i64 %and.i61, %conv.i60
  br i1 %cmp.i62, label %if.then.i64, label %spx5_inst_rd.exit59.sparx5_update_counter.exit67_crit_edge

spx5_inst_rd.exit59.sparx5_update_counter.exit67_crit_edge: ; preds = %spx5_inst_rd.exit59
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit67

if.then.i64:                                      ; preds = %spx5_inst_rd.exit59
  call void @__sanitizer_cov_trace_pc() #11
  %add.i63 = add i64 %24, 4294967296
  %25 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %add.i63, ptr %arrayidx5, align 8
  br label %sparx5_update_counter.exit67

sparx5_update_counter.exit67:                     ; preds = %if.then.i64, %spx5_inst_rd.exit59.sparx5_update_counter.exit67_crit_edge
  %26 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx5, align 8
  %and2.i65 = and i64 %27, -4294967296
  %add4.i66 = or i64 %and2.i65, %conv.i60
  store i64 %add4.i66, ptr %arrayidx5, align 8
  %arrayidx7 = getelementptr i64, ptr %portstats, i32 39
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit67.spx5_inst_rd.exit73_crit_edge, label %do.end.i.i69, !prof !169

sparx5_update_counter.exit67.spx5_inst_rd.exit73_crit_edge: ; preds = %sparx5_update_counter.exit67
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit73

do.end.i.i69:                                     ; preds = %sparx5_update_counter.exit67
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit73

spx5_inst_rd.exit73:                              ; preds = %do.end.i.i69, %sparx5_update_counter.exit67.spx5_inst_rd.exit73_crit_edge
  %add.ptr51.i.i72 = getelementptr i8, ptr %add.ptr50.i.i, i32 12
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i72) #9, !srcloc !170
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i74 = zext i32 %29 to i64
  %30 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx7, align 8
  %and.i75 = and i64 %31, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i75, i64 %conv.i74)
  %cmp.i76 = icmp ugt i64 %and.i75, %conv.i74
  br i1 %cmp.i76, label %if.then.i78, label %spx5_inst_rd.exit73.sparx5_update_counter.exit81_crit_edge

spx5_inst_rd.exit73.sparx5_update_counter.exit81_crit_edge: ; preds = %spx5_inst_rd.exit73
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit81

if.then.i78:                                      ; preds = %spx5_inst_rd.exit73
  call void @__sanitizer_cov_trace_pc() #11
  %add.i77 = add i64 %31, 4294967296
  %32 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %add.i77, ptr %arrayidx7, align 8
  br label %sparx5_update_counter.exit81

sparx5_update_counter.exit81:                     ; preds = %if.then.i78, %spx5_inst_rd.exit73.sparx5_update_counter.exit81_crit_edge
  %33 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx7, align 8
  %and2.i79 = and i64 %34, -4294967296
  %add4.i80 = or i64 %and2.i79, %conv.i74
  store i64 %add4.i80, ptr %arrayidx7, align 8
  %arrayidx9 = getelementptr i64, ptr %portstats, i32 40
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit81.spx5_inst_rd.exit87_crit_edge, label %do.end.i.i83, !prof !169

sparx5_update_counter.exit81.spx5_inst_rd.exit87_crit_edge: ; preds = %sparx5_update_counter.exit81
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit87

do.end.i.i83:                                     ; preds = %sparx5_update_counter.exit81
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit87

spx5_inst_rd.exit87:                              ; preds = %do.end.i.i83, %sparx5_update_counter.exit81.spx5_inst_rd.exit87_crit_edge
  %add.ptr51.i.i86 = getelementptr i8, ptr %add.ptr50.i.i, i32 176
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i86) #9, !srcloc !170
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i88 = zext i32 %36 to i64
  %37 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx9, align 8
  %and.i89 = and i64 %38, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i89, i64 %conv.i88)
  %cmp.i90 = icmp ugt i64 %and.i89, %conv.i88
  br i1 %cmp.i90, label %if.then.i92, label %spx5_inst_rd.exit87.sparx5_update_counter.exit95_crit_edge

spx5_inst_rd.exit87.sparx5_update_counter.exit95_crit_edge: ; preds = %spx5_inst_rd.exit87
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit95

if.then.i92:                                      ; preds = %spx5_inst_rd.exit87
  call void @__sanitizer_cov_trace_pc() #11
  %add.i91 = add i64 %38, 4294967296
  %39 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %add.i91, ptr %arrayidx9, align 8
  br label %sparx5_update_counter.exit95

sparx5_update_counter.exit95:                     ; preds = %if.then.i92, %spx5_inst_rd.exit87.sparx5_update_counter.exit95_crit_edge
  %40 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx9, align 8
  %and2.i93 = and i64 %41, -4294967296
  %add4.i94 = or i64 %and2.i93, %conv.i88
  store i64 %add4.i94, ptr %arrayidx9, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sparx5_get_dev_rmon_stats(ptr noundef %portstats, ptr noundef %inst) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i64, ptr %portstats, i32 41
  %add.ptr51.i.i = getelementptr i8, ptr %inst, i32 88
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i) #9, !srcloc !170
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i = zext i32 %1 to i64
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  %and.i = and i64 %3, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %conv.i)
  %cmp.i = icmp ugt i64 %and.i, %conv.i
  br i1 %cmp.i, label %if.then.i, label %entry.sparx5_update_counter.exit_crit_edge

entry.sparx5_update_counter.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i64 %3, 4294967296
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add.i, ptr %arrayidx, align 8
  br label %sparx5_update_counter.exit

sparx5_update_counter.exit:                       ; preds = %if.then.i, %entry.sparx5_update_counter.exit_crit_edge
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx, align 8
  %and2.i = and i64 %6, -4294967296
  %add4.i = or i64 %and2.i, %conv.i
  store i64 %add4.i, ptr %arrayidx, align 8
  %arrayidx1 = getelementptr i64, ptr %portstats, i32 42
  %add.ptr51.i.i2 = getelementptr i8, ptr %inst, i32 236
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i2) #9, !srcloc !170
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i3 = zext i32 %8 to i64
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx1, align 8
  %and.i4 = and i64 %10, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i4, i64 %conv.i3)
  %cmp.i5 = icmp ugt i64 %and.i4, %conv.i3
  br i1 %cmp.i5, label %if.then.i7, label %sparx5_update_counter.exit.sparx5_update_counter.exit10_crit_edge

sparx5_update_counter.exit.sparx5_update_counter.exit10_crit_edge: ; preds = %sparx5_update_counter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit10

if.then.i7:                                       ; preds = %sparx5_update_counter.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.i6 = add i64 %10, 4294967296
  %11 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %add.i6, ptr %arrayidx1, align 8
  br label %sparx5_update_counter.exit10

sparx5_update_counter.exit10:                     ; preds = %if.then.i7, %sparx5_update_counter.exit.sparx5_update_counter.exit10_crit_edge
  %12 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx1, align 8
  %and2.i8 = and i64 %13, -4294967296
  %add4.i9 = or i64 %and2.i8, %conv.i3
  store i64 %add4.i9, ptr %arrayidx1, align 8
  %arrayidx3 = getelementptr i64, ptr %portstats, i32 33
  %add.ptr51.i.i12 = getelementptr i8, ptr %inst, i32 104
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i12) #9, !srcloc !170
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i13 = zext i32 %15 to i64
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx3, align 8
  %and.i14 = and i64 %17, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i14, i64 %conv.i13)
  %cmp.i15 = icmp ugt i64 %and.i14, %conv.i13
  br i1 %cmp.i15, label %if.then.i17, label %sparx5_update_counter.exit10.sparx5_update_counter.exit20_crit_edge

sparx5_update_counter.exit10.sparx5_update_counter.exit20_crit_edge: ; preds = %sparx5_update_counter.exit10
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit20

if.then.i17:                                      ; preds = %sparx5_update_counter.exit10
  call void @__sanitizer_cov_trace_pc() #11
  %add.i16 = add i64 %17, 4294967296
  %18 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add.i16, ptr %arrayidx3, align 8
  br label %sparx5_update_counter.exit20

sparx5_update_counter.exit20:                     ; preds = %if.then.i17, %sparx5_update_counter.exit10.sparx5_update_counter.exit20_crit_edge
  %19 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx3, align 8
  %and2.i18 = and i64 %20, -4294967296
  %add4.i19 = or i64 %and2.i18, %conv.i13
  store i64 %add4.i19, ptr %arrayidx3, align 8
  %arrayidx5 = getelementptr i64, ptr %portstats, i32 34
  %add.ptr51.i.i22 = getelementptr i8, ptr %inst, i32 252
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i22) #9, !srcloc !170
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i23 = zext i32 %22 to i64
  %23 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx5, align 8
  %and.i24 = and i64 %24, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i24, i64 %conv.i23)
  %cmp.i25 = icmp ugt i64 %and.i24, %conv.i23
  br i1 %cmp.i25, label %if.then.i27, label %sparx5_update_counter.exit20.sparx5_update_counter.exit30_crit_edge

sparx5_update_counter.exit20.sparx5_update_counter.exit30_crit_edge: ; preds = %sparx5_update_counter.exit20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit30

if.then.i27:                                      ; preds = %sparx5_update_counter.exit20
  call void @__sanitizer_cov_trace_pc() #11
  %add.i26 = add i64 %24, 4294967296
  %25 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %add.i26, ptr %arrayidx5, align 8
  br label %sparx5_update_counter.exit30

sparx5_update_counter.exit30:                     ; preds = %if.then.i27, %sparx5_update_counter.exit20.sparx5_update_counter.exit30_crit_edge
  %26 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx5, align 8
  %and2.i28 = and i64 %27, -4294967296
  %add4.i29 = or i64 %and2.i28, %conv.i23
  store i64 %add4.i29, ptr %arrayidx5, align 8
  %arrayidx7 = getelementptr i64, ptr %portstats, i32 43
  %add.ptr51.i.i32 = getelementptr i8, ptr %inst, i32 92
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i32) #9, !srcloc !170
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i33 = zext i32 %29 to i64
  %30 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx7, align 8
  %and.i34 = and i64 %31, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i34, i64 %conv.i33)
  %cmp.i35 = icmp ugt i64 %and.i34, %conv.i33
  br i1 %cmp.i35, label %if.then.i37, label %sparx5_update_counter.exit30.sparx5_update_counter.exit40_crit_edge

sparx5_update_counter.exit30.sparx5_update_counter.exit40_crit_edge: ; preds = %sparx5_update_counter.exit30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit40

if.then.i37:                                      ; preds = %sparx5_update_counter.exit30
  call void @__sanitizer_cov_trace_pc() #11
  %add.i36 = add i64 %31, 4294967296
  %32 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %add.i36, ptr %arrayidx7, align 8
  br label %sparx5_update_counter.exit40

sparx5_update_counter.exit40:                     ; preds = %if.then.i37, %sparx5_update_counter.exit30.sparx5_update_counter.exit40_crit_edge
  %33 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx7, align 8
  %and2.i38 = and i64 %34, -4294967296
  %add4.i39 = or i64 %and2.i38, %conv.i33
  store i64 %add4.i39, ptr %arrayidx7, align 8
  %arrayidx9 = getelementptr i64, ptr %portstats, i32 44
  %add.ptr51.i.i42 = getelementptr i8, ptr %inst, i32 240
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i42) #9, !srcloc !170
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i43 = zext i32 %36 to i64
  %37 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx9, align 8
  %and.i44 = and i64 %38, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i44, i64 %conv.i43)
  %cmp.i45 = icmp ugt i64 %and.i44, %conv.i43
  br i1 %cmp.i45, label %if.then.i47, label %sparx5_update_counter.exit40.sparx5_update_counter.exit50_crit_edge

sparx5_update_counter.exit40.sparx5_update_counter.exit50_crit_edge: ; preds = %sparx5_update_counter.exit40
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit50

if.then.i47:                                      ; preds = %sparx5_update_counter.exit40
  call void @__sanitizer_cov_trace_pc() #11
  %add.i46 = add i64 %38, 4294967296
  %39 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %add.i46, ptr %arrayidx9, align 8
  br label %sparx5_update_counter.exit50

sparx5_update_counter.exit50:                     ; preds = %if.then.i47, %sparx5_update_counter.exit40.sparx5_update_counter.exit50_crit_edge
  %40 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx9, align 8
  %and2.i48 = and i64 %41, -4294967296
  %add4.i49 = or i64 %and2.i48, %conv.i43
  store i64 %add4.i49, ptr %arrayidx9, align 8
  %arrayidx11 = getelementptr i64, ptr %portstats, i32 45
  %add.ptr51.i.i52 = getelementptr i8, ptr %inst, i32 108
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i52) #9, !srcloc !170
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i53 = zext i32 %43 to i64
  %44 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx11, align 8
  %and.i54 = and i64 %45, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i54, i64 %conv.i53)
  %cmp.i55 = icmp ugt i64 %and.i54, %conv.i53
  br i1 %cmp.i55, label %if.then.i57, label %sparx5_update_counter.exit50.sparx5_update_counter.exit60_crit_edge

sparx5_update_counter.exit50.sparx5_update_counter.exit60_crit_edge: ; preds = %sparx5_update_counter.exit50
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit60

if.then.i57:                                      ; preds = %sparx5_update_counter.exit50
  call void @__sanitizer_cov_trace_pc() #11
  %add.i56 = add i64 %45, 4294967296
  %46 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %add.i56, ptr %arrayidx11, align 8
  br label %sparx5_update_counter.exit60

sparx5_update_counter.exit60:                     ; preds = %if.then.i57, %sparx5_update_counter.exit50.sparx5_update_counter.exit60_crit_edge
  %47 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx11, align 8
  %and2.i58 = and i64 %48, -4294967296
  %add4.i59 = or i64 %and2.i58, %conv.i53
  store i64 %add4.i59, ptr %arrayidx11, align 8
  %arrayidx13 = getelementptr i64, ptr %portstats, i32 46
  %add.ptr51.i.i62 = getelementptr i8, ptr %inst, i32 256
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i62) #9, !srcloc !170
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i63 = zext i32 %50 to i64
  %51 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx13, align 8
  %and.i64 = and i64 %52, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i64, i64 %conv.i63)
  %cmp.i65 = icmp ugt i64 %and.i64, %conv.i63
  br i1 %cmp.i65, label %if.then.i67, label %sparx5_update_counter.exit60.sparx5_update_counter.exit70_crit_edge

sparx5_update_counter.exit60.sparx5_update_counter.exit70_crit_edge: ; preds = %sparx5_update_counter.exit60
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit70

if.then.i67:                                      ; preds = %sparx5_update_counter.exit60
  call void @__sanitizer_cov_trace_pc() #11
  %add.i66 = add i64 %52, 4294967296
  %53 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %add.i66, ptr %arrayidx13, align 8
  br label %sparx5_update_counter.exit70

sparx5_update_counter.exit70:                     ; preds = %if.then.i67, %sparx5_update_counter.exit60.sparx5_update_counter.exit70_crit_edge
  %54 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx13, align 8
  %and2.i68 = and i64 %55, -4294967296
  %add4.i69 = or i64 %and2.i68, %conv.i63
  store i64 %add4.i69, ptr %arrayidx13, align 8
  %arrayidx15 = getelementptr i64, ptr %portstats, i32 47
  %add.ptr51.i.i72 = getelementptr i8, ptr %inst, i32 112
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i72) #9, !srcloc !170
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i73 = zext i32 %57 to i64
  %58 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx15, align 8
  %and.i74 = and i64 %59, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i74, i64 %conv.i73)
  %cmp.i75 = icmp ugt i64 %and.i74, %conv.i73
  br i1 %cmp.i75, label %if.then.i77, label %sparx5_update_counter.exit70.sparx5_update_counter.exit80_crit_edge

sparx5_update_counter.exit70.sparx5_update_counter.exit80_crit_edge: ; preds = %sparx5_update_counter.exit70
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit80

if.then.i77:                                      ; preds = %sparx5_update_counter.exit70
  call void @__sanitizer_cov_trace_pc() #11
  %add.i76 = add i64 %59, 4294967296
  %60 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %add.i76, ptr %arrayidx15, align 8
  br label %sparx5_update_counter.exit80

sparx5_update_counter.exit80:                     ; preds = %if.then.i77, %sparx5_update_counter.exit70.sparx5_update_counter.exit80_crit_edge
  %61 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx15, align 8
  %and2.i78 = and i64 %62, -4294967296
  %add4.i79 = or i64 %and2.i78, %conv.i73
  store i64 %add4.i79, ptr %arrayidx15, align 8
  %arrayidx17 = getelementptr i64, ptr %portstats, i32 48
  %add.ptr51.i.i82 = getelementptr i8, ptr %inst, i32 260
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i82) #9, !srcloc !170
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i83 = zext i32 %64 to i64
  %65 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx17, align 8
  %and.i84 = and i64 %66, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i84, i64 %conv.i83)
  %cmp.i85 = icmp ugt i64 %and.i84, %conv.i83
  br i1 %cmp.i85, label %if.then.i87, label %sparx5_update_counter.exit80.sparx5_update_counter.exit90_crit_edge

sparx5_update_counter.exit80.sparx5_update_counter.exit90_crit_edge: ; preds = %sparx5_update_counter.exit80
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit90

if.then.i87:                                      ; preds = %sparx5_update_counter.exit80
  call void @__sanitizer_cov_trace_pc() #11
  %add.i86 = add i64 %66, 4294967296
  %67 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %add.i86, ptr %arrayidx17, align 8
  br label %sparx5_update_counter.exit90

sparx5_update_counter.exit90:                     ; preds = %if.then.i87, %sparx5_update_counter.exit80.sparx5_update_counter.exit90_crit_edge
  %68 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx17, align 8
  %and2.i88 = and i64 %69, -4294967296
  %add4.i89 = or i64 %and2.i88, %conv.i83
  store i64 %add4.i89, ptr %arrayidx17, align 8
  %arrayidx19 = getelementptr i64, ptr %portstats, i32 49
  %add.ptr51.i.i92 = getelementptr i8, ptr %inst, i32 116
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i92) #9, !srcloc !170
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i93 = zext i32 %71 to i64
  %72 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx19, align 8
  %and.i94 = and i64 %73, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i94, i64 %conv.i93)
  %cmp.i95 = icmp ugt i64 %and.i94, %conv.i93
  br i1 %cmp.i95, label %if.then.i97, label %sparx5_update_counter.exit90.sparx5_update_counter.exit100_crit_edge

sparx5_update_counter.exit90.sparx5_update_counter.exit100_crit_edge: ; preds = %sparx5_update_counter.exit90
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit100

if.then.i97:                                      ; preds = %sparx5_update_counter.exit90
  call void @__sanitizer_cov_trace_pc() #11
  %add.i96 = add i64 %73, 4294967296
  %74 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %add.i96, ptr %arrayidx19, align 8
  br label %sparx5_update_counter.exit100

sparx5_update_counter.exit100:                    ; preds = %if.then.i97, %sparx5_update_counter.exit90.sparx5_update_counter.exit100_crit_edge
  %75 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx19, align 8
  %and2.i98 = and i64 %76, -4294967296
  %add4.i99 = or i64 %and2.i98, %conv.i93
  store i64 %add4.i99, ptr %arrayidx19, align 8
  %arrayidx21 = getelementptr i64, ptr %portstats, i32 50
  %add.ptr51.i.i102 = getelementptr i8, ptr %inst, i32 264
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i102) #9, !srcloc !170
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i103 = zext i32 %78 to i64
  %79 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %arrayidx21, align 8
  %and.i104 = and i64 %80, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i104, i64 %conv.i103)
  %cmp.i105 = icmp ugt i64 %and.i104, %conv.i103
  br i1 %cmp.i105, label %if.then.i107, label %sparx5_update_counter.exit100.sparx5_update_counter.exit110_crit_edge

sparx5_update_counter.exit100.sparx5_update_counter.exit110_crit_edge: ; preds = %sparx5_update_counter.exit100
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit110

if.then.i107:                                     ; preds = %sparx5_update_counter.exit100
  call void @__sanitizer_cov_trace_pc() #11
  %add.i106 = add i64 %80, 4294967296
  %81 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %add.i106, ptr %arrayidx21, align 8
  br label %sparx5_update_counter.exit110

sparx5_update_counter.exit110:                    ; preds = %if.then.i107, %sparx5_update_counter.exit100.sparx5_update_counter.exit110_crit_edge
  %82 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %arrayidx21, align 8
  %and2.i108 = and i64 %83, -4294967296
  %add4.i109 = or i64 %and2.i108, %conv.i103
  store i64 %add4.i109, ptr %arrayidx21, align 8
  %arrayidx23 = getelementptr i64, ptr %portstats, i32 51
  %add.ptr51.i.i112 = getelementptr i8, ptr %inst, i32 120
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i112) #9, !srcloc !170
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i113 = zext i32 %85 to i64
  %86 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %arrayidx23, align 8
  %and.i114 = and i64 %87, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i114, i64 %conv.i113)
  %cmp.i115 = icmp ugt i64 %and.i114, %conv.i113
  br i1 %cmp.i115, label %if.then.i117, label %sparx5_update_counter.exit110.sparx5_update_counter.exit120_crit_edge

sparx5_update_counter.exit110.sparx5_update_counter.exit120_crit_edge: ; preds = %sparx5_update_counter.exit110
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit120

if.then.i117:                                     ; preds = %sparx5_update_counter.exit110
  call void @__sanitizer_cov_trace_pc() #11
  %add.i116 = add i64 %87, 4294967296
  %88 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %add.i116, ptr %arrayidx23, align 8
  br label %sparx5_update_counter.exit120

sparx5_update_counter.exit120:                    ; preds = %if.then.i117, %sparx5_update_counter.exit110.sparx5_update_counter.exit120_crit_edge
  %89 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx23, align 8
  %and2.i118 = and i64 %90, -4294967296
  %add4.i119 = or i64 %and2.i118, %conv.i113
  store i64 %add4.i119, ptr %arrayidx23, align 8
  %arrayidx25 = getelementptr i64, ptr %portstats, i32 52
  %add.ptr51.i.i122 = getelementptr i8, ptr %inst, i32 268
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i122) #9, !srcloc !170
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i123 = zext i32 %92 to i64
  %93 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %arrayidx25, align 8
  %and.i124 = and i64 %94, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i124, i64 %conv.i123)
  %cmp.i125 = icmp ugt i64 %and.i124, %conv.i123
  br i1 %cmp.i125, label %if.then.i127, label %sparx5_update_counter.exit120.sparx5_update_counter.exit130_crit_edge

sparx5_update_counter.exit120.sparx5_update_counter.exit130_crit_edge: ; preds = %sparx5_update_counter.exit120
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit130

if.then.i127:                                     ; preds = %sparx5_update_counter.exit120
  call void @__sanitizer_cov_trace_pc() #11
  %add.i126 = add i64 %94, 4294967296
  %95 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %add.i126, ptr %arrayidx25, align 8
  br label %sparx5_update_counter.exit130

sparx5_update_counter.exit130:                    ; preds = %if.then.i127, %sparx5_update_counter.exit120.sparx5_update_counter.exit130_crit_edge
  %96 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %arrayidx25, align 8
  %and2.i128 = and i64 %97, -4294967296
  %add4.i129 = or i64 %and2.i128, %conv.i123
  store i64 %add4.i129, ptr %arrayidx25, align 8
  %arrayidx27 = getelementptr i64, ptr %portstats, i32 53
  %add.ptr51.i.i132 = getelementptr i8, ptr %inst, i32 124
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i132) #9, !srcloc !170
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i133 = zext i32 %99 to i64
  %100 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %arrayidx27, align 8
  %and.i134 = and i64 %101, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i134, i64 %conv.i133)
  %cmp.i135 = icmp ugt i64 %and.i134, %conv.i133
  br i1 %cmp.i135, label %if.then.i137, label %sparx5_update_counter.exit130.sparx5_update_counter.exit140_crit_edge

sparx5_update_counter.exit130.sparx5_update_counter.exit140_crit_edge: ; preds = %sparx5_update_counter.exit130
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit140

if.then.i137:                                     ; preds = %sparx5_update_counter.exit130
  call void @__sanitizer_cov_trace_pc() #11
  %add.i136 = add i64 %101, 4294967296
  %102 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %add.i136, ptr %arrayidx27, align 8
  br label %sparx5_update_counter.exit140

sparx5_update_counter.exit140:                    ; preds = %if.then.i137, %sparx5_update_counter.exit130.sparx5_update_counter.exit140_crit_edge
  %103 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx27, align 8
  %and2.i138 = and i64 %104, -4294967296
  %add4.i139 = or i64 %and2.i138, %conv.i133
  store i64 %add4.i139, ptr %arrayidx27, align 8
  %arrayidx29 = getelementptr i64, ptr %portstats, i32 54
  %add.ptr51.i.i142 = getelementptr i8, ptr %inst, i32 272
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i142) #9, !srcloc !170
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i143 = zext i32 %106 to i64
  %107 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %arrayidx29, align 8
  %and.i144 = and i64 %108, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i144, i64 %conv.i143)
  %cmp.i145 = icmp ugt i64 %and.i144, %conv.i143
  br i1 %cmp.i145, label %if.then.i147, label %sparx5_update_counter.exit140.sparx5_update_counter.exit150_crit_edge

sparx5_update_counter.exit140.sparx5_update_counter.exit150_crit_edge: ; preds = %sparx5_update_counter.exit140
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit150

if.then.i147:                                     ; preds = %sparx5_update_counter.exit140
  call void @__sanitizer_cov_trace_pc() #11
  %add.i146 = add i64 %108, 4294967296
  %109 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %add.i146, ptr %arrayidx29, align 8
  br label %sparx5_update_counter.exit150

sparx5_update_counter.exit150:                    ; preds = %if.then.i147, %sparx5_update_counter.exit140.sparx5_update_counter.exit150_crit_edge
  %110 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %arrayidx29, align 8
  %and2.i148 = and i64 %111, -4294967296
  %add4.i149 = or i64 %and2.i148, %conv.i143
  store i64 %add4.i149, ptr %arrayidx29, align 8
  %arrayidx31 = getelementptr i64, ptr %portstats, i32 55
  %add.ptr51.i.i152 = getelementptr i8, ptr %inst, i32 128
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i152) #9, !srcloc !170
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i153 = zext i32 %113 to i64
  %114 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %arrayidx31, align 8
  %and.i154 = and i64 %115, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i154, i64 %conv.i153)
  %cmp.i155 = icmp ugt i64 %and.i154, %conv.i153
  br i1 %cmp.i155, label %if.then.i157, label %sparx5_update_counter.exit150.sparx5_update_counter.exit160_crit_edge

sparx5_update_counter.exit150.sparx5_update_counter.exit160_crit_edge: ; preds = %sparx5_update_counter.exit150
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit160

if.then.i157:                                     ; preds = %sparx5_update_counter.exit150
  call void @__sanitizer_cov_trace_pc() #11
  %add.i156 = add i64 %115, 4294967296
  %116 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %add.i156, ptr %arrayidx31, align 8
  br label %sparx5_update_counter.exit160

sparx5_update_counter.exit160:                    ; preds = %if.then.i157, %sparx5_update_counter.exit150.sparx5_update_counter.exit160_crit_edge
  %117 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %arrayidx31, align 8
  %and2.i158 = and i64 %118, -4294967296
  %add4.i159 = or i64 %and2.i158, %conv.i153
  store i64 %add4.i159, ptr %arrayidx31, align 8
  %arrayidx33 = getelementptr i64, ptr %portstats, i32 56
  %add.ptr51.i.i162 = getelementptr i8, ptr %inst, i32 276
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i162) #9, !srcloc !170
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i163 = zext i32 %120 to i64
  %121 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %arrayidx33, align 8
  %and.i164 = and i64 %122, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i164, i64 %conv.i163)
  %cmp.i165 = icmp ugt i64 %and.i164, %conv.i163
  br i1 %cmp.i165, label %if.then.i167, label %sparx5_update_counter.exit160.sparx5_update_counter.exit170_crit_edge

sparx5_update_counter.exit160.sparx5_update_counter.exit170_crit_edge: ; preds = %sparx5_update_counter.exit160
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit170

if.then.i167:                                     ; preds = %sparx5_update_counter.exit160
  call void @__sanitizer_cov_trace_pc() #11
  %add.i166 = add i64 %122, 4294967296
  %123 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %add.i166, ptr %arrayidx33, align 8
  br label %sparx5_update_counter.exit170

sparx5_update_counter.exit170:                    ; preds = %if.then.i167, %sparx5_update_counter.exit160.sparx5_update_counter.exit170_crit_edge
  %124 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %arrayidx33, align 8
  %and2.i168 = and i64 %125, -4294967296
  %add4.i169 = or i64 %and2.i168, %conv.i163
  store i64 %add4.i169, ptr %arrayidx33, align 8
  %arrayidx35 = getelementptr i64, ptr %portstats, i32 57
  %add.ptr51.i.i172 = getelementptr i8, ptr %inst, i32 132
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i172) #9, !srcloc !170
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i173 = zext i32 %127 to i64
  %128 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %arrayidx35, align 8
  %and.i174 = and i64 %129, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i174, i64 %conv.i173)
  %cmp.i175 = icmp ugt i64 %and.i174, %conv.i173
  br i1 %cmp.i175, label %if.then.i177, label %sparx5_update_counter.exit170.sparx5_update_counter.exit180_crit_edge

sparx5_update_counter.exit170.sparx5_update_counter.exit180_crit_edge: ; preds = %sparx5_update_counter.exit170
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit180

if.then.i177:                                     ; preds = %sparx5_update_counter.exit170
  call void @__sanitizer_cov_trace_pc() #11
  %add.i176 = add i64 %129, 4294967296
  %130 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %add.i176, ptr %arrayidx35, align 8
  br label %sparx5_update_counter.exit180

sparx5_update_counter.exit180:                    ; preds = %if.then.i177, %sparx5_update_counter.exit170.sparx5_update_counter.exit180_crit_edge
  %131 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %arrayidx35, align 8
  %and2.i178 = and i64 %132, -4294967296
  %add4.i179 = or i64 %and2.i178, %conv.i173
  store i64 %add4.i179, ptr %arrayidx35, align 8
  %arrayidx37 = getelementptr i64, ptr %portstats, i32 58
  %add.ptr51.i.i182 = getelementptr i8, ptr %inst, i32 280
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i182) #9, !srcloc !170
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i183 = zext i32 %134 to i64
  %135 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %arrayidx37, align 8
  %and.i184 = and i64 %136, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i184, i64 %conv.i183)
  %cmp.i185 = icmp ugt i64 %and.i184, %conv.i183
  br i1 %cmp.i185, label %if.then.i187, label %sparx5_update_counter.exit180.sparx5_update_counter.exit190_crit_edge

sparx5_update_counter.exit180.sparx5_update_counter.exit190_crit_edge: ; preds = %sparx5_update_counter.exit180
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit190

if.then.i187:                                     ; preds = %sparx5_update_counter.exit180
  call void @__sanitizer_cov_trace_pc() #11
  %add.i186 = add i64 %136, 4294967296
  %137 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %add.i186, ptr %arrayidx37, align 8
  br label %sparx5_update_counter.exit190

sparx5_update_counter.exit190:                    ; preds = %if.then.i187, %sparx5_update_counter.exit180.sparx5_update_counter.exit190_crit_edge
  %138 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %arrayidx37, align 8
  %and2.i188 = and i64 %139, -4294967296
  %add4.i189 = or i64 %and2.i188, %conv.i183
  store i64 %add4.i189, ptr %arrayidx37, align 8
  %arrayidx39 = getelementptr i64, ptr %portstats, i32 59
  %add.ptr51.i.i192 = getelementptr i8, ptr %inst, i32 136
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i192) #9, !srcloc !170
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i193 = zext i32 %141 to i64
  %142 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %arrayidx39, align 8
  %and.i194 = and i64 %143, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i194, i64 %conv.i193)
  %cmp.i195 = icmp ugt i64 %and.i194, %conv.i193
  br i1 %cmp.i195, label %if.then.i197, label %sparx5_update_counter.exit190.sparx5_update_counter.exit200_crit_edge

sparx5_update_counter.exit190.sparx5_update_counter.exit200_crit_edge: ; preds = %sparx5_update_counter.exit190
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit200

if.then.i197:                                     ; preds = %sparx5_update_counter.exit190
  call void @__sanitizer_cov_trace_pc() #11
  %add.i196 = add i64 %143, 4294967296
  %144 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %add.i196, ptr %arrayidx39, align 8
  br label %sparx5_update_counter.exit200

sparx5_update_counter.exit200:                    ; preds = %if.then.i197, %sparx5_update_counter.exit190.sparx5_update_counter.exit200_crit_edge
  %145 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %arrayidx39, align 8
  %and2.i198 = and i64 %146, -4294967296
  %add4.i199 = or i64 %and2.i198, %conv.i193
  store i64 %add4.i199, ptr %arrayidx39, align 8
  %arrayidx41 = getelementptr i64, ptr %portstats, i32 60
  %add.ptr51.i.i202 = getelementptr i8, ptr %inst, i32 284
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i202) #9, !srcloc !170
  %148 = tail call i32 @llvm.bswap.i32(i32 %147) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i203 = zext i32 %148 to i64
  %149 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %arrayidx41, align 8
  %and.i204 = and i64 %150, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i204, i64 %conv.i203)
  %cmp.i205 = icmp ugt i64 %and.i204, %conv.i203
  br i1 %cmp.i205, label %if.then.i207, label %sparx5_update_counter.exit200.sparx5_update_counter.exit210_crit_edge

sparx5_update_counter.exit200.sparx5_update_counter.exit210_crit_edge: ; preds = %sparx5_update_counter.exit200
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit210

if.then.i207:                                     ; preds = %sparx5_update_counter.exit200
  call void @__sanitizer_cov_trace_pc() #11
  %add.i206 = add i64 %150, 4294967296
  %151 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %add.i206, ptr %arrayidx41, align 8
  br label %sparx5_update_counter.exit210

sparx5_update_counter.exit210:                    ; preds = %if.then.i207, %sparx5_update_counter.exit200.sparx5_update_counter.exit210_crit_edge
  %152 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %arrayidx41, align 8
  %and2.i208 = and i64 %153, -4294967296
  %add4.i209 = or i64 %and2.i208, %conv.i203
  store i64 %add4.i209, ptr %arrayidx41, align 8
  %arrayidx43 = getelementptr i64, ptr %portstats, i32 61
  %add.ptr51.i.i212 = getelementptr i8, ptr %inst, i32 160
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i212) #9, !srcloc !170
  %155 = tail call i32 @llvm.bswap.i32(i32 %154) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i213 = zext i32 %155 to i64
  %156 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %arrayidx43, align 8
  %and.i214 = and i64 %157, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i214, i64 %conv.i213)
  %cmp.i215 = icmp ugt i64 %and.i214, %conv.i213
  br i1 %cmp.i215, label %if.then.i217, label %sparx5_update_counter.exit210.sparx5_update_counter.exit220_crit_edge

sparx5_update_counter.exit210.sparx5_update_counter.exit220_crit_edge: ; preds = %sparx5_update_counter.exit210
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit220

if.then.i217:                                     ; preds = %sparx5_update_counter.exit210
  call void @__sanitizer_cov_trace_pc() #11
  %add.i216 = add i64 %157, 4294967296
  %158 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 %add.i216, ptr %arrayidx43, align 8
  br label %sparx5_update_counter.exit220

sparx5_update_counter.exit220:                    ; preds = %if.then.i217, %sparx5_update_counter.exit210.sparx5_update_counter.exit220_crit_edge
  %159 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %arrayidx43, align 8
  %and2.i218 = and i64 %160, -4294967296
  %add4.i219 = or i64 %and2.i218, %conv.i213
  store i64 %add4.i219, ptr %arrayidx43, align 8
  %arrayidx45 = getelementptr i64, ptr %portstats, i32 62
  %add.ptr51.i.i222 = getelementptr i8, ptr %inst, i32 304
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i222) #9, !srcloc !170
  %162 = tail call i32 @llvm.bswap.i32(i32 %161) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i223 = zext i32 %162 to i64
  %163 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %arrayidx45, align 8
  %and.i224 = and i64 %164, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i224, i64 %conv.i223)
  %cmp.i225 = icmp ugt i64 %and.i224, %conv.i223
  br i1 %cmp.i225, label %if.then.i227, label %sparx5_update_counter.exit220.sparx5_update_counter.exit230_crit_edge

sparx5_update_counter.exit220.sparx5_update_counter.exit230_crit_edge: ; preds = %sparx5_update_counter.exit220
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit230

if.then.i227:                                     ; preds = %sparx5_update_counter.exit220
  call void @__sanitizer_cov_trace_pc() #11
  %add.i226 = add i64 %164, 4294967296
  %165 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %add.i226, ptr %arrayidx45, align 8
  br label %sparx5_update_counter.exit230

sparx5_update_counter.exit230:                    ; preds = %if.then.i227, %sparx5_update_counter.exit220.sparx5_update_counter.exit230_crit_edge
  %166 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %arrayidx45, align 8
  %and2.i228 = and i64 %167, -4294967296
  %add4.i229 = or i64 %and2.i228, %conv.i223
  store i64 %add4.i229, ptr %arrayidx45, align 8
  %arrayidx47 = getelementptr i64, ptr %portstats, i32 63
  %add.ptr51.i.i232 = getelementptr i8, ptr %inst, i32 164
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i232) #9, !srcloc !170
  %169 = tail call i32 @llvm.bswap.i32(i32 %168) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i233 = zext i32 %169 to i64
  %170 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %arrayidx47, align 8
  %and.i234 = and i64 %171, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i234, i64 %conv.i233)
  %cmp.i235 = icmp ugt i64 %and.i234, %conv.i233
  br i1 %cmp.i235, label %if.then.i237, label %sparx5_update_counter.exit230.sparx5_update_counter.exit240_crit_edge

sparx5_update_counter.exit230.sparx5_update_counter.exit240_crit_edge: ; preds = %sparx5_update_counter.exit230
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit240

if.then.i237:                                     ; preds = %sparx5_update_counter.exit230
  call void @__sanitizer_cov_trace_pc() #11
  %add.i236 = add i64 %171, 4294967296
  %172 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store8_noabort(i32 %172)
  store i64 %add.i236, ptr %arrayidx47, align 8
  br label %sparx5_update_counter.exit240

sparx5_update_counter.exit240:                    ; preds = %if.then.i237, %sparx5_update_counter.exit230.sparx5_update_counter.exit240_crit_edge
  %173 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %arrayidx47, align 8
  %and2.i238 = and i64 %174, -4294967296
  %add4.i239 = or i64 %and2.i238, %conv.i233
  store i64 %add4.i239, ptr %arrayidx47, align 8
  %arrayidx49 = getelementptr i64, ptr %portstats, i32 64
  %add.ptr51.i.i242 = getelementptr i8, ptr %inst, i32 308
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i242) #9, !srcloc !170
  %176 = tail call i32 @llvm.bswap.i32(i32 %175) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i243 = zext i32 %176 to i64
  %177 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %arrayidx49, align 8
  %and.i244 = and i64 %178, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i244, i64 %conv.i243)
  %cmp.i245 = icmp ugt i64 %and.i244, %conv.i243
  br i1 %cmp.i245, label %if.then.i247, label %sparx5_update_counter.exit240.sparx5_update_counter.exit250_crit_edge

sparx5_update_counter.exit240.sparx5_update_counter.exit250_crit_edge: ; preds = %sparx5_update_counter.exit240
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit250

if.then.i247:                                     ; preds = %sparx5_update_counter.exit240
  call void @__sanitizer_cov_trace_pc() #11
  %add.i246 = add i64 %178, 4294967296
  %179 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 %add.i246, ptr %arrayidx49, align 8
  br label %sparx5_update_counter.exit250

sparx5_update_counter.exit250:                    ; preds = %if.then.i247, %sparx5_update_counter.exit240.sparx5_update_counter.exit250_crit_edge
  %180 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %arrayidx49, align 8
  %and2.i248 = and i64 %181, -4294967296
  %add4.i249 = or i64 %and2.i248, %conv.i243
  store i64 %add4.i249, ptr %arrayidx49, align 8
  %arrayidx51 = getelementptr i64, ptr %portstats, i32 65
  %add.ptr51.i.i252 = getelementptr i8, ptr %inst, i32 168
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i252) #9, !srcloc !170
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i253 = zext i32 %183 to i64
  %184 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %arrayidx51, align 8
  %and.i254 = and i64 %185, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i254, i64 %conv.i253)
  %cmp.i255 = icmp ugt i64 %and.i254, %conv.i253
  br i1 %cmp.i255, label %if.then.i257, label %sparx5_update_counter.exit250.sparx5_update_counter.exit260_crit_edge

sparx5_update_counter.exit250.sparx5_update_counter.exit260_crit_edge: ; preds = %sparx5_update_counter.exit250
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit260

if.then.i257:                                     ; preds = %sparx5_update_counter.exit250
  call void @__sanitizer_cov_trace_pc() #11
  %add.i256 = add i64 %185, 4294967296
  %186 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store8_noabort(i32 %186)
  store i64 %add.i256, ptr %arrayidx51, align 8
  br label %sparx5_update_counter.exit260

sparx5_update_counter.exit260:                    ; preds = %if.then.i257, %sparx5_update_counter.exit250.sparx5_update_counter.exit260_crit_edge
  %187 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %arrayidx51, align 8
  %and2.i258 = and i64 %188, -4294967296
  %add4.i259 = or i64 %and2.i258, %conv.i253
  store i64 %add4.i259, ptr %arrayidx51, align 8
  %arrayidx53 = getelementptr i64, ptr %portstats, i32 66
  %add.ptr51.i.i262 = getelementptr i8, ptr %inst, i32 312
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i262) #9, !srcloc !170
  %190 = tail call i32 @llvm.bswap.i32(i32 %189) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i263 = zext i32 %190 to i64
  %191 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %arrayidx53, align 8
  %and.i264 = and i64 %192, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i264, i64 %conv.i263)
  %cmp.i265 = icmp ugt i64 %and.i264, %conv.i263
  br i1 %cmp.i265, label %if.then.i267, label %sparx5_update_counter.exit260.sparx5_update_counter.exit270_crit_edge

sparx5_update_counter.exit260.sparx5_update_counter.exit270_crit_edge: ; preds = %sparx5_update_counter.exit260
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit270

if.then.i267:                                     ; preds = %sparx5_update_counter.exit260
  call void @__sanitizer_cov_trace_pc() #11
  %add.i266 = add i64 %192, 4294967296
  %193 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store8_noabort(i32 %193)
  store i64 %add.i266, ptr %arrayidx53, align 8
  br label %sparx5_update_counter.exit270

sparx5_update_counter.exit270:                    ; preds = %if.then.i267, %sparx5_update_counter.exit260.sparx5_update_counter.exit270_crit_edge
  %194 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %arrayidx53, align 8
  %and2.i268 = and i64 %195, -4294967296
  %add4.i269 = or i64 %and2.i268, %conv.i263
  store i64 %add4.i269, ptr %arrayidx53, align 8
  %arrayidx55 = getelementptr i64, ptr %portstats, i32 67
  %add.ptr51.i.i272 = getelementptr i8, ptr %inst, i32 172
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i272) #9, !srcloc !170
  %197 = tail call i32 @llvm.bswap.i32(i32 %196) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i273 = zext i32 %197 to i64
  %198 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %arrayidx55, align 8
  %and.i274 = and i64 %199, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i274, i64 %conv.i273)
  %cmp.i275 = icmp ugt i64 %and.i274, %conv.i273
  br i1 %cmp.i275, label %if.then.i277, label %sparx5_update_counter.exit270.sparx5_update_counter.exit280_crit_edge

sparx5_update_counter.exit270.sparx5_update_counter.exit280_crit_edge: ; preds = %sparx5_update_counter.exit270
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit280

if.then.i277:                                     ; preds = %sparx5_update_counter.exit270
  call void @__sanitizer_cov_trace_pc() #11
  %add.i276 = add i64 %199, 4294967296
  %200 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store8_noabort(i32 %200)
  store i64 %add.i276, ptr %arrayidx55, align 8
  br label %sparx5_update_counter.exit280

sparx5_update_counter.exit280:                    ; preds = %if.then.i277, %sparx5_update_counter.exit270.sparx5_update_counter.exit280_crit_edge
  %201 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %arrayidx55, align 8
  %and2.i278 = and i64 %202, -4294967296
  %add4.i279 = or i64 %and2.i278, %conv.i273
  store i64 %add4.i279, ptr %arrayidx55, align 8
  %arrayidx57 = getelementptr i64, ptr %portstats, i32 68
  %add.ptr51.i.i282 = getelementptr i8, ptr %inst, i32 316
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i282) #9, !srcloc !170
  %204 = tail call i32 @llvm.bswap.i32(i32 %203) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i283 = zext i32 %204 to i64
  %205 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %arrayidx57, align 8
  %and.i284 = and i64 %206, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i284, i64 %conv.i283)
  %cmp.i285 = icmp ugt i64 %and.i284, %conv.i283
  br i1 %cmp.i285, label %if.then.i287, label %sparx5_update_counter.exit280.sparx5_update_counter.exit290_crit_edge

sparx5_update_counter.exit280.sparx5_update_counter.exit290_crit_edge: ; preds = %sparx5_update_counter.exit280
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit290

if.then.i287:                                     ; preds = %sparx5_update_counter.exit280
  call void @__sanitizer_cov_trace_pc() #11
  %add.i286 = add i64 %206, 4294967296
  %207 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store8_noabort(i32 %207)
  store i64 %add.i286, ptr %arrayidx57, align 8
  br label %sparx5_update_counter.exit290

sparx5_update_counter.exit290:                    ; preds = %if.then.i287, %sparx5_update_counter.exit280.sparx5_update_counter.exit290_crit_edge
  %208 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %arrayidx57, align 8
  %and2.i288 = and i64 %209, -4294967296
  %add4.i289 = or i64 %and2.i288, %conv.i283
  store i64 %add4.i289, ptr %arrayidx57, align 8
  %arrayidx59 = getelementptr i64, ptr %portstats, i32 69
  %add.ptr51.i.i292 = getelementptr i8, ptr %inst, i32 176
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i292) #9, !srcloc !170
  %211 = tail call i32 @llvm.bswap.i32(i32 %210) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i293 = zext i32 %211 to i64
  %212 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %arrayidx59, align 8
  %and.i294 = and i64 %213, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i294, i64 %conv.i293)
  %cmp.i295 = icmp ugt i64 %and.i294, %conv.i293
  br i1 %cmp.i295, label %if.then.i297, label %sparx5_update_counter.exit290.sparx5_update_counter.exit300_crit_edge

sparx5_update_counter.exit290.sparx5_update_counter.exit300_crit_edge: ; preds = %sparx5_update_counter.exit290
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit300

if.then.i297:                                     ; preds = %sparx5_update_counter.exit290
  call void @__sanitizer_cov_trace_pc() #11
  %add.i296 = add i64 %213, 4294967296
  %214 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store8_noabort(i32 %214)
  store i64 %add.i296, ptr %arrayidx59, align 8
  br label %sparx5_update_counter.exit300

sparx5_update_counter.exit300:                    ; preds = %if.then.i297, %sparx5_update_counter.exit290.sparx5_update_counter.exit300_crit_edge
  %215 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %arrayidx59, align 8
  %and2.i298 = and i64 %216, -4294967296
  %add4.i299 = or i64 %and2.i298, %conv.i293
  store i64 %add4.i299, ptr %arrayidx59, align 8
  %arrayidx61 = getelementptr i64, ptr %portstats, i32 70
  %add.ptr51.i.i302 = getelementptr i8, ptr %inst, i32 320
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i302) #9, !srcloc !170
  %218 = tail call i32 @llvm.bswap.i32(i32 %217) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i303 = zext i32 %218 to i64
  %219 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %arrayidx61, align 8
  %and.i304 = and i64 %220, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i304, i64 %conv.i303)
  %cmp.i305 = icmp ugt i64 %and.i304, %conv.i303
  br i1 %cmp.i305, label %if.then.i307, label %sparx5_update_counter.exit300.sparx5_update_counter.exit310_crit_edge

sparx5_update_counter.exit300.sparx5_update_counter.exit310_crit_edge: ; preds = %sparx5_update_counter.exit300
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit310

if.then.i307:                                     ; preds = %sparx5_update_counter.exit300
  call void @__sanitizer_cov_trace_pc() #11
  %add.i306 = add i64 %220, 4294967296
  %221 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store8_noabort(i32 %221)
  store i64 %add.i306, ptr %arrayidx61, align 8
  br label %sparx5_update_counter.exit310

sparx5_update_counter.exit310:                    ; preds = %if.then.i307, %sparx5_update_counter.exit300.sparx5_update_counter.exit310_crit_edge
  %222 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %arrayidx61, align 8
  %and2.i308 = and i64 %223, -4294967296
  %add4.i309 = or i64 %and2.i308, %conv.i303
  store i64 %add4.i309, ptr %arrayidx61, align 8
  %arrayidx63 = getelementptr i64, ptr %portstats, i32 71
  %add.ptr51.i.i312 = getelementptr i8, ptr %inst, i32 180
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i312) #9, !srcloc !170
  %225 = tail call i32 @llvm.bswap.i32(i32 %224) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i313 = zext i32 %225 to i64
  %226 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %arrayidx63, align 8
  %and.i314 = and i64 %227, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i314, i64 %conv.i313)
  %cmp.i315 = icmp ugt i64 %and.i314, %conv.i313
  br i1 %cmp.i315, label %if.then.i317, label %sparx5_update_counter.exit310.sparx5_update_counter.exit320_crit_edge

sparx5_update_counter.exit310.sparx5_update_counter.exit320_crit_edge: ; preds = %sparx5_update_counter.exit310
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit320

if.then.i317:                                     ; preds = %sparx5_update_counter.exit310
  call void @__sanitizer_cov_trace_pc() #11
  %add.i316 = add i64 %227, 4294967296
  %228 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store8_noabort(i32 %228)
  store i64 %add.i316, ptr %arrayidx63, align 8
  br label %sparx5_update_counter.exit320

sparx5_update_counter.exit320:                    ; preds = %if.then.i317, %sparx5_update_counter.exit310.sparx5_update_counter.exit320_crit_edge
  %229 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load8_noabort(i32 %229)
  %230 = load i64, ptr %arrayidx63, align 8
  %and2.i318 = and i64 %230, -4294967296
  %add4.i319 = or i64 %and2.i318, %conv.i313
  store i64 %add4.i319, ptr %arrayidx63, align 8
  %arrayidx65 = getelementptr i64, ptr %portstats, i32 72
  %add.ptr51.i.i322 = getelementptr i8, ptr %inst, i32 324
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i322) #9, !srcloc !170
  %232 = tail call i32 @llvm.bswap.i32(i32 %231) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i323 = zext i32 %232 to i64
  %233 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load8_noabort(i32 %233)
  %234 = load i64, ptr %arrayidx65, align 8
  %and.i324 = and i64 %234, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i324, i64 %conv.i323)
  %cmp.i325 = icmp ugt i64 %and.i324, %conv.i323
  br i1 %cmp.i325, label %if.then.i327, label %sparx5_update_counter.exit320.sparx5_update_counter.exit330_crit_edge

sparx5_update_counter.exit320.sparx5_update_counter.exit330_crit_edge: ; preds = %sparx5_update_counter.exit320
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit330

if.then.i327:                                     ; preds = %sparx5_update_counter.exit320
  call void @__sanitizer_cov_trace_pc() #11
  %add.i326 = add i64 %234, 4294967296
  %235 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store8_noabort(i32 %235)
  store i64 %add.i326, ptr %arrayidx65, align 8
  br label %sparx5_update_counter.exit330

sparx5_update_counter.exit330:                    ; preds = %if.then.i327, %sparx5_update_counter.exit320.sparx5_update_counter.exit330_crit_edge
  %236 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load8_noabort(i32 %236)
  %237 = load i64, ptr %arrayidx65, align 8
  %and2.i328 = and i64 %237, -4294967296
  %add4.i329 = or i64 %and2.i328, %conv.i323
  store i64 %add4.i329, ptr %arrayidx65, align 8
  %arrayidx67 = getelementptr i64, ptr %portstats, i32 73
  %add.ptr51.i.i332 = getelementptr i8, ptr %inst, i32 184
  %238 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i332) #9, !srcloc !170
  %239 = tail call i32 @llvm.bswap.i32(i32 %238) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i333 = zext i32 %239 to i64
  %240 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load8_noabort(i32 %240)
  %241 = load i64, ptr %arrayidx67, align 8
  %and.i334 = and i64 %241, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i334, i64 %conv.i333)
  %cmp.i335 = icmp ugt i64 %and.i334, %conv.i333
  br i1 %cmp.i335, label %if.then.i337, label %sparx5_update_counter.exit330.sparx5_update_counter.exit340_crit_edge

sparx5_update_counter.exit330.sparx5_update_counter.exit340_crit_edge: ; preds = %sparx5_update_counter.exit330
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit340

if.then.i337:                                     ; preds = %sparx5_update_counter.exit330
  call void @__sanitizer_cov_trace_pc() #11
  %add.i336 = add i64 %241, 4294967296
  %242 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store8_noabort(i32 %242)
  store i64 %add.i336, ptr %arrayidx67, align 8
  br label %sparx5_update_counter.exit340

sparx5_update_counter.exit340:                    ; preds = %if.then.i337, %sparx5_update_counter.exit330.sparx5_update_counter.exit340_crit_edge
  %243 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load8_noabort(i32 %243)
  %244 = load i64, ptr %arrayidx67, align 8
  %and2.i338 = and i64 %244, -4294967296
  %add4.i339 = or i64 %and2.i338, %conv.i333
  store i64 %add4.i339, ptr %arrayidx67, align 8
  %arrayidx69 = getelementptr i64, ptr %portstats, i32 74
  %add.ptr51.i.i342 = getelementptr i8, ptr %inst, i32 328
  %245 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i342) #9, !srcloc !170
  %246 = tail call i32 @llvm.bswap.i32(i32 %245) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i343 = zext i32 %246 to i64
  %247 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load8_noabort(i32 %247)
  %248 = load i64, ptr %arrayidx69, align 8
  %and.i344 = and i64 %248, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i344, i64 %conv.i343)
  %cmp.i345 = icmp ugt i64 %and.i344, %conv.i343
  br i1 %cmp.i345, label %if.then.i347, label %sparx5_update_counter.exit340.sparx5_update_counter.exit350_crit_edge

sparx5_update_counter.exit340.sparx5_update_counter.exit350_crit_edge: ; preds = %sparx5_update_counter.exit340
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit350

if.then.i347:                                     ; preds = %sparx5_update_counter.exit340
  call void @__sanitizer_cov_trace_pc() #11
  %add.i346 = add i64 %248, 4294967296
  %249 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store8_noabort(i32 %249)
  store i64 %add.i346, ptr %arrayidx69, align 8
  br label %sparx5_update_counter.exit350

sparx5_update_counter.exit350:                    ; preds = %if.then.i347, %sparx5_update_counter.exit340.sparx5_update_counter.exit350_crit_edge
  %250 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load8_noabort(i32 %250)
  %251 = load i64, ptr %arrayidx69, align 8
  %and2.i348 = and i64 %251, -4294967296
  %add4.i349 = or i64 %and2.i348, %conv.i343
  store i64 %add4.i349, ptr %arrayidx69, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sparx5_get_asm_rmon_stats(ptr noundef %portstats, ptr noundef %inst, i32 noundef %portno) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i64, ptr %portstats, i32 41
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %portno)
  %cmp.not.i.i = icmp slt i32 %portno, 65
  br i1 %cmp.not.i.i, label %entry.spx5_inst_rd.exit_crit_edge, label %do.end.i.i, !prof !169

entry.spx5_inst_rd.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit

spx5_inst_rd.exit:                                ; preds = %do.end.i.i, %entry.spx5_inst_rd.exit_crit_edge
  %mul.i.i = shl i32 %portno, 9
  %add.ptr50.i.i = getelementptr i8, ptr %inst, i32 %mul.i.i
  %add.ptr51.i.i = getelementptr i8, ptr %add.ptr50.i.i, i32 40
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i) #9, !srcloc !170
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i = zext i32 %1 to i64
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  %and.i = and i64 %3, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %conv.i)
  %cmp.i = icmp ugt i64 %and.i, %conv.i
  br i1 %cmp.i, label %if.then.i, label %spx5_inst_rd.exit.sparx5_update_counter.exit_crit_edge

spx5_inst_rd.exit.sparx5_update_counter.exit_crit_edge: ; preds = %spx5_inst_rd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit

if.then.i:                                        ; preds = %spx5_inst_rd.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i64 %3, 4294967296
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add.i, ptr %arrayidx, align 8
  br label %sparx5_update_counter.exit

sparx5_update_counter.exit:                       ; preds = %if.then.i, %spx5_inst_rd.exit.sparx5_update_counter.exit_crit_edge
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx, align 8
  %and2.i = and i64 %6, -4294967296
  %add4.i = or i64 %and2.i, %conv.i
  store i64 %add4.i, ptr %arrayidx, align 8
  %arrayidx1 = getelementptr i64, ptr %portstats, i32 42
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit.spx5_inst_rd.exit181_crit_edge, label %do.end.i.i177, !prof !169

sparx5_update_counter.exit.spx5_inst_rd.exit181_crit_edge: ; preds = %sparx5_update_counter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit181

do.end.i.i177:                                    ; preds = %sparx5_update_counter.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit181

spx5_inst_rd.exit181:                             ; preds = %do.end.i.i177, %sparx5_update_counter.exit.spx5_inst_rd.exit181_crit_edge
  %add.ptr51.i.i180 = getelementptr i8, ptr %add.ptr50.i.i, i32 204
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i180) #9, !srcloc !170
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i182 = zext i32 %8 to i64
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx1, align 8
  %and.i183 = and i64 %10, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i183, i64 %conv.i182)
  %cmp.i184 = icmp ugt i64 %and.i183, %conv.i182
  br i1 %cmp.i184, label %if.then.i186, label %spx5_inst_rd.exit181.sparx5_update_counter.exit189_crit_edge

spx5_inst_rd.exit181.sparx5_update_counter.exit189_crit_edge: ; preds = %spx5_inst_rd.exit181
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit189

if.then.i186:                                     ; preds = %spx5_inst_rd.exit181
  call void @__sanitizer_cov_trace_pc() #11
  %add.i185 = add i64 %10, 4294967296
  %11 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %add.i185, ptr %arrayidx1, align 8
  br label %sparx5_update_counter.exit189

sparx5_update_counter.exit189:                    ; preds = %if.then.i186, %spx5_inst_rd.exit181.sparx5_update_counter.exit189_crit_edge
  %12 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx1, align 8
  %and2.i187 = and i64 %13, -4294967296
  %add4.i188 = or i64 %and2.i187, %conv.i182
  store i64 %add4.i188, ptr %arrayidx1, align 8
  %arrayidx3 = getelementptr i64, ptr %portstats, i32 33
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit189.spx5_inst_rd.exit195_crit_edge, label %do.end.i.i191, !prof !169

sparx5_update_counter.exit189.spx5_inst_rd.exit195_crit_edge: ; preds = %sparx5_update_counter.exit189
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit195

do.end.i.i191:                                    ; preds = %sparx5_update_counter.exit189
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit195

spx5_inst_rd.exit195:                             ; preds = %do.end.i.i191, %sparx5_update_counter.exit189.spx5_inst_rd.exit195_crit_edge
  %add.ptr51.i.i194 = getelementptr i8, ptr %add.ptr50.i.i, i32 56
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i194) #9, !srcloc !170
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i196 = zext i32 %15 to i64
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx3, align 8
  %and.i197 = and i64 %17, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i197, i64 %conv.i196)
  %cmp.i198 = icmp ugt i64 %and.i197, %conv.i196
  br i1 %cmp.i198, label %if.then.i200, label %spx5_inst_rd.exit195.sparx5_update_counter.exit203_crit_edge

spx5_inst_rd.exit195.sparx5_update_counter.exit203_crit_edge: ; preds = %spx5_inst_rd.exit195
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit203

if.then.i200:                                     ; preds = %spx5_inst_rd.exit195
  call void @__sanitizer_cov_trace_pc() #11
  %add.i199 = add i64 %17, 4294967296
  %18 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add.i199, ptr %arrayidx3, align 8
  br label %sparx5_update_counter.exit203

sparx5_update_counter.exit203:                    ; preds = %if.then.i200, %spx5_inst_rd.exit195.sparx5_update_counter.exit203_crit_edge
  %19 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx3, align 8
  %and2.i201 = and i64 %20, -4294967296
  %add4.i202 = or i64 %and2.i201, %conv.i196
  store i64 %add4.i202, ptr %arrayidx3, align 8
  %arrayidx5 = getelementptr i64, ptr %portstats, i32 34
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit203.spx5_inst_rd.exit209_crit_edge, label %do.end.i.i205, !prof !169

sparx5_update_counter.exit203.spx5_inst_rd.exit209_crit_edge: ; preds = %sparx5_update_counter.exit203
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit209

do.end.i.i205:                                    ; preds = %sparx5_update_counter.exit203
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit209

spx5_inst_rd.exit209:                             ; preds = %do.end.i.i205, %sparx5_update_counter.exit203.spx5_inst_rd.exit209_crit_edge
  %add.ptr51.i.i208 = getelementptr i8, ptr %add.ptr50.i.i, i32 220
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i208) #9, !srcloc !170
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i210 = zext i32 %22 to i64
  %23 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx5, align 8
  %and.i211 = and i64 %24, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i211, i64 %conv.i210)
  %cmp.i212 = icmp ugt i64 %and.i211, %conv.i210
  br i1 %cmp.i212, label %if.then.i214, label %spx5_inst_rd.exit209.sparx5_update_counter.exit217_crit_edge

spx5_inst_rd.exit209.sparx5_update_counter.exit217_crit_edge: ; preds = %spx5_inst_rd.exit209
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit217

if.then.i214:                                     ; preds = %spx5_inst_rd.exit209
  call void @__sanitizer_cov_trace_pc() #11
  %add.i213 = add i64 %24, 4294967296
  %25 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %add.i213, ptr %arrayidx5, align 8
  br label %sparx5_update_counter.exit217

sparx5_update_counter.exit217:                    ; preds = %if.then.i214, %spx5_inst_rd.exit209.sparx5_update_counter.exit217_crit_edge
  %26 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx5, align 8
  %and2.i215 = and i64 %27, -4294967296
  %add4.i216 = or i64 %and2.i215, %conv.i210
  store i64 %add4.i216, ptr %arrayidx5, align 8
  %arrayidx7 = getelementptr i64, ptr %portstats, i32 43
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit217.spx5_inst_rd.exit223_crit_edge, label %do.end.i.i219, !prof !169

sparx5_update_counter.exit217.spx5_inst_rd.exit223_crit_edge: ; preds = %sparx5_update_counter.exit217
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit223

do.end.i.i219:                                    ; preds = %sparx5_update_counter.exit217
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit223

spx5_inst_rd.exit223:                             ; preds = %do.end.i.i219, %sparx5_update_counter.exit217.spx5_inst_rd.exit223_crit_edge
  %add.ptr51.i.i222 = getelementptr i8, ptr %add.ptr50.i.i, i32 44
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i222) #9, !srcloc !170
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i224 = zext i32 %29 to i64
  %30 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx7, align 8
  %and.i225 = and i64 %31, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i225, i64 %conv.i224)
  %cmp.i226 = icmp ugt i64 %and.i225, %conv.i224
  br i1 %cmp.i226, label %if.then.i228, label %spx5_inst_rd.exit223.sparx5_update_counter.exit231_crit_edge

spx5_inst_rd.exit223.sparx5_update_counter.exit231_crit_edge: ; preds = %spx5_inst_rd.exit223
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit231

if.then.i228:                                     ; preds = %spx5_inst_rd.exit223
  call void @__sanitizer_cov_trace_pc() #11
  %add.i227 = add i64 %31, 4294967296
  %32 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %add.i227, ptr %arrayidx7, align 8
  br label %sparx5_update_counter.exit231

sparx5_update_counter.exit231:                    ; preds = %if.then.i228, %spx5_inst_rd.exit223.sparx5_update_counter.exit231_crit_edge
  %33 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx7, align 8
  %and2.i229 = and i64 %34, -4294967296
  %add4.i230 = or i64 %and2.i229, %conv.i224
  store i64 %add4.i230, ptr %arrayidx7, align 8
  %arrayidx9 = getelementptr i64, ptr %portstats, i32 44
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit231.spx5_inst_rd.exit237_crit_edge, label %do.end.i.i233, !prof !169

sparx5_update_counter.exit231.spx5_inst_rd.exit237_crit_edge: ; preds = %sparx5_update_counter.exit231
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit237

do.end.i.i233:                                    ; preds = %sparx5_update_counter.exit231
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit237

spx5_inst_rd.exit237:                             ; preds = %do.end.i.i233, %sparx5_update_counter.exit231.spx5_inst_rd.exit237_crit_edge
  %add.ptr51.i.i236 = getelementptr i8, ptr %add.ptr50.i.i, i32 208
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i236) #9, !srcloc !170
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i238 = zext i32 %36 to i64
  %37 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx9, align 8
  %and.i239 = and i64 %38, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i239, i64 %conv.i238)
  %cmp.i240 = icmp ugt i64 %and.i239, %conv.i238
  br i1 %cmp.i240, label %if.then.i242, label %spx5_inst_rd.exit237.sparx5_update_counter.exit245_crit_edge

spx5_inst_rd.exit237.sparx5_update_counter.exit245_crit_edge: ; preds = %spx5_inst_rd.exit237
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit245

if.then.i242:                                     ; preds = %spx5_inst_rd.exit237
  call void @__sanitizer_cov_trace_pc() #11
  %add.i241 = add i64 %38, 4294967296
  %39 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %add.i241, ptr %arrayidx9, align 8
  br label %sparx5_update_counter.exit245

sparx5_update_counter.exit245:                    ; preds = %if.then.i242, %spx5_inst_rd.exit237.sparx5_update_counter.exit245_crit_edge
  %40 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx9, align 8
  %and2.i243 = and i64 %41, -4294967296
  %add4.i244 = or i64 %and2.i243, %conv.i238
  store i64 %add4.i244, ptr %arrayidx9, align 8
  %arrayidx11 = getelementptr i64, ptr %portstats, i32 45
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit245.spx5_inst_rd.exit251_crit_edge, label %do.end.i.i247, !prof !169

sparx5_update_counter.exit245.spx5_inst_rd.exit251_crit_edge: ; preds = %sparx5_update_counter.exit245
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit251

do.end.i.i247:                                    ; preds = %sparx5_update_counter.exit245
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit251

spx5_inst_rd.exit251:                             ; preds = %do.end.i.i247, %sparx5_update_counter.exit245.spx5_inst_rd.exit251_crit_edge
  %add.ptr51.i.i250 = getelementptr i8, ptr %add.ptr50.i.i, i32 60
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i250) #9, !srcloc !170
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i252 = zext i32 %43 to i64
  %44 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx11, align 8
  %and.i253 = and i64 %45, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i253, i64 %conv.i252)
  %cmp.i254 = icmp ugt i64 %and.i253, %conv.i252
  br i1 %cmp.i254, label %if.then.i256, label %spx5_inst_rd.exit251.sparx5_update_counter.exit259_crit_edge

spx5_inst_rd.exit251.sparx5_update_counter.exit259_crit_edge: ; preds = %spx5_inst_rd.exit251
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit259

if.then.i256:                                     ; preds = %spx5_inst_rd.exit251
  call void @__sanitizer_cov_trace_pc() #11
  %add.i255 = add i64 %45, 4294967296
  %46 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %add.i255, ptr %arrayidx11, align 8
  br label %sparx5_update_counter.exit259

sparx5_update_counter.exit259:                    ; preds = %if.then.i256, %spx5_inst_rd.exit251.sparx5_update_counter.exit259_crit_edge
  %47 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx11, align 8
  %and2.i257 = and i64 %48, -4294967296
  %add4.i258 = or i64 %and2.i257, %conv.i252
  store i64 %add4.i258, ptr %arrayidx11, align 8
  %arrayidx13 = getelementptr i64, ptr %portstats, i32 46
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit259.spx5_inst_rd.exit265_crit_edge, label %do.end.i.i261, !prof !169

sparx5_update_counter.exit259.spx5_inst_rd.exit265_crit_edge: ; preds = %sparx5_update_counter.exit259
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit265

do.end.i.i261:                                    ; preds = %sparx5_update_counter.exit259
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit265

spx5_inst_rd.exit265:                             ; preds = %do.end.i.i261, %sparx5_update_counter.exit259.spx5_inst_rd.exit265_crit_edge
  %add.ptr51.i.i264 = getelementptr i8, ptr %add.ptr50.i.i, i32 224
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i264) #9, !srcloc !170
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i266 = zext i32 %50 to i64
  %51 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx13, align 8
  %and.i267 = and i64 %52, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i267, i64 %conv.i266)
  %cmp.i268 = icmp ugt i64 %and.i267, %conv.i266
  br i1 %cmp.i268, label %if.then.i270, label %spx5_inst_rd.exit265.sparx5_update_counter.exit273_crit_edge

spx5_inst_rd.exit265.sparx5_update_counter.exit273_crit_edge: ; preds = %spx5_inst_rd.exit265
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit273

if.then.i270:                                     ; preds = %spx5_inst_rd.exit265
  call void @__sanitizer_cov_trace_pc() #11
  %add.i269 = add i64 %52, 4294967296
  %53 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %add.i269, ptr %arrayidx13, align 8
  br label %sparx5_update_counter.exit273

sparx5_update_counter.exit273:                    ; preds = %if.then.i270, %spx5_inst_rd.exit265.sparx5_update_counter.exit273_crit_edge
  %54 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx13, align 8
  %and2.i271 = and i64 %55, -4294967296
  %add4.i272 = or i64 %and2.i271, %conv.i266
  store i64 %add4.i272, ptr %arrayidx13, align 8
  %arrayidx15 = getelementptr i64, ptr %portstats, i32 47
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit273.spx5_inst_rd.exit279_crit_edge, label %do.end.i.i275, !prof !169

sparx5_update_counter.exit273.spx5_inst_rd.exit279_crit_edge: ; preds = %sparx5_update_counter.exit273
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit279

do.end.i.i275:                                    ; preds = %sparx5_update_counter.exit273
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit279

spx5_inst_rd.exit279:                             ; preds = %do.end.i.i275, %sparx5_update_counter.exit273.spx5_inst_rd.exit279_crit_edge
  %add.ptr51.i.i278 = getelementptr i8, ptr %add.ptr50.i.i, i32 64
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i278) #9, !srcloc !170
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i280 = zext i32 %57 to i64
  %58 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx15, align 8
  %and.i281 = and i64 %59, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i281, i64 %conv.i280)
  %cmp.i282 = icmp ugt i64 %and.i281, %conv.i280
  br i1 %cmp.i282, label %if.then.i284, label %spx5_inst_rd.exit279.sparx5_update_counter.exit287_crit_edge

spx5_inst_rd.exit279.sparx5_update_counter.exit287_crit_edge: ; preds = %spx5_inst_rd.exit279
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit287

if.then.i284:                                     ; preds = %spx5_inst_rd.exit279
  call void @__sanitizer_cov_trace_pc() #11
  %add.i283 = add i64 %59, 4294967296
  %60 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %add.i283, ptr %arrayidx15, align 8
  br label %sparx5_update_counter.exit287

sparx5_update_counter.exit287:                    ; preds = %if.then.i284, %spx5_inst_rd.exit279.sparx5_update_counter.exit287_crit_edge
  %61 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx15, align 8
  %and2.i285 = and i64 %62, -4294967296
  %add4.i286 = or i64 %and2.i285, %conv.i280
  store i64 %add4.i286, ptr %arrayidx15, align 8
  %arrayidx17 = getelementptr i64, ptr %portstats, i32 48
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit287.spx5_inst_rd.exit293_crit_edge, label %do.end.i.i289, !prof !169

sparx5_update_counter.exit287.spx5_inst_rd.exit293_crit_edge: ; preds = %sparx5_update_counter.exit287
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit293

do.end.i.i289:                                    ; preds = %sparx5_update_counter.exit287
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit293

spx5_inst_rd.exit293:                             ; preds = %do.end.i.i289, %sparx5_update_counter.exit287.spx5_inst_rd.exit293_crit_edge
  %add.ptr51.i.i292 = getelementptr i8, ptr %add.ptr50.i.i, i32 228
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i292) #9, !srcloc !170
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i294 = zext i32 %64 to i64
  %65 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx17, align 8
  %and.i295 = and i64 %66, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i295, i64 %conv.i294)
  %cmp.i296 = icmp ugt i64 %and.i295, %conv.i294
  br i1 %cmp.i296, label %if.then.i298, label %spx5_inst_rd.exit293.sparx5_update_counter.exit301_crit_edge

spx5_inst_rd.exit293.sparx5_update_counter.exit301_crit_edge: ; preds = %spx5_inst_rd.exit293
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit301

if.then.i298:                                     ; preds = %spx5_inst_rd.exit293
  call void @__sanitizer_cov_trace_pc() #11
  %add.i297 = add i64 %66, 4294967296
  %67 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %add.i297, ptr %arrayidx17, align 8
  br label %sparx5_update_counter.exit301

sparx5_update_counter.exit301:                    ; preds = %if.then.i298, %spx5_inst_rd.exit293.sparx5_update_counter.exit301_crit_edge
  %68 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx17, align 8
  %and2.i299 = and i64 %69, -4294967296
  %add4.i300 = or i64 %and2.i299, %conv.i294
  store i64 %add4.i300, ptr %arrayidx17, align 8
  %arrayidx19 = getelementptr i64, ptr %portstats, i32 49
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit301.spx5_inst_rd.exit307_crit_edge, label %do.end.i.i303, !prof !169

sparx5_update_counter.exit301.spx5_inst_rd.exit307_crit_edge: ; preds = %sparx5_update_counter.exit301
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit307

do.end.i.i303:                                    ; preds = %sparx5_update_counter.exit301
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit307

spx5_inst_rd.exit307:                             ; preds = %do.end.i.i303, %sparx5_update_counter.exit301.spx5_inst_rd.exit307_crit_edge
  %add.ptr51.i.i306 = getelementptr i8, ptr %add.ptr50.i.i, i32 68
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i306) #9, !srcloc !170
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i308 = zext i32 %71 to i64
  %72 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx19, align 8
  %and.i309 = and i64 %73, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i309, i64 %conv.i308)
  %cmp.i310 = icmp ugt i64 %and.i309, %conv.i308
  br i1 %cmp.i310, label %if.then.i312, label %spx5_inst_rd.exit307.sparx5_update_counter.exit315_crit_edge

spx5_inst_rd.exit307.sparx5_update_counter.exit315_crit_edge: ; preds = %spx5_inst_rd.exit307
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit315

if.then.i312:                                     ; preds = %spx5_inst_rd.exit307
  call void @__sanitizer_cov_trace_pc() #11
  %add.i311 = add i64 %73, 4294967296
  %74 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %add.i311, ptr %arrayidx19, align 8
  br label %sparx5_update_counter.exit315

sparx5_update_counter.exit315:                    ; preds = %if.then.i312, %spx5_inst_rd.exit307.sparx5_update_counter.exit315_crit_edge
  %75 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx19, align 8
  %and2.i313 = and i64 %76, -4294967296
  %add4.i314 = or i64 %and2.i313, %conv.i308
  store i64 %add4.i314, ptr %arrayidx19, align 8
  %arrayidx21 = getelementptr i64, ptr %portstats, i32 50
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit315.spx5_inst_rd.exit321_crit_edge, label %do.end.i.i317, !prof !169

sparx5_update_counter.exit315.spx5_inst_rd.exit321_crit_edge: ; preds = %sparx5_update_counter.exit315
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit321

do.end.i.i317:                                    ; preds = %sparx5_update_counter.exit315
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit321

spx5_inst_rd.exit321:                             ; preds = %do.end.i.i317, %sparx5_update_counter.exit315.spx5_inst_rd.exit321_crit_edge
  %add.ptr51.i.i320 = getelementptr i8, ptr %add.ptr50.i.i, i32 232
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i320) #9, !srcloc !170
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i322 = zext i32 %78 to i64
  %79 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %arrayidx21, align 8
  %and.i323 = and i64 %80, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i323, i64 %conv.i322)
  %cmp.i324 = icmp ugt i64 %and.i323, %conv.i322
  br i1 %cmp.i324, label %if.then.i326, label %spx5_inst_rd.exit321.sparx5_update_counter.exit329_crit_edge

spx5_inst_rd.exit321.sparx5_update_counter.exit329_crit_edge: ; preds = %spx5_inst_rd.exit321
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit329

if.then.i326:                                     ; preds = %spx5_inst_rd.exit321
  call void @__sanitizer_cov_trace_pc() #11
  %add.i325 = add i64 %80, 4294967296
  %81 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %add.i325, ptr %arrayidx21, align 8
  br label %sparx5_update_counter.exit329

sparx5_update_counter.exit329:                    ; preds = %if.then.i326, %spx5_inst_rd.exit321.sparx5_update_counter.exit329_crit_edge
  %82 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %arrayidx21, align 8
  %and2.i327 = and i64 %83, -4294967296
  %add4.i328 = or i64 %and2.i327, %conv.i322
  store i64 %add4.i328, ptr %arrayidx21, align 8
  %arrayidx23 = getelementptr i64, ptr %portstats, i32 51
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit329.spx5_inst_rd.exit335_crit_edge, label %do.end.i.i331, !prof !169

sparx5_update_counter.exit329.spx5_inst_rd.exit335_crit_edge: ; preds = %sparx5_update_counter.exit329
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit335

do.end.i.i331:                                    ; preds = %sparx5_update_counter.exit329
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit335

spx5_inst_rd.exit335:                             ; preds = %do.end.i.i331, %sparx5_update_counter.exit329.spx5_inst_rd.exit335_crit_edge
  %add.ptr51.i.i334 = getelementptr i8, ptr %add.ptr50.i.i, i32 72
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i334) #9, !srcloc !170
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i336 = zext i32 %85 to i64
  %86 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %arrayidx23, align 8
  %and.i337 = and i64 %87, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i337, i64 %conv.i336)
  %cmp.i338 = icmp ugt i64 %and.i337, %conv.i336
  br i1 %cmp.i338, label %if.then.i340, label %spx5_inst_rd.exit335.sparx5_update_counter.exit343_crit_edge

spx5_inst_rd.exit335.sparx5_update_counter.exit343_crit_edge: ; preds = %spx5_inst_rd.exit335
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit343

if.then.i340:                                     ; preds = %spx5_inst_rd.exit335
  call void @__sanitizer_cov_trace_pc() #11
  %add.i339 = add i64 %87, 4294967296
  %88 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %add.i339, ptr %arrayidx23, align 8
  br label %sparx5_update_counter.exit343

sparx5_update_counter.exit343:                    ; preds = %if.then.i340, %spx5_inst_rd.exit335.sparx5_update_counter.exit343_crit_edge
  %89 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx23, align 8
  %and2.i341 = and i64 %90, -4294967296
  %add4.i342 = or i64 %and2.i341, %conv.i336
  store i64 %add4.i342, ptr %arrayidx23, align 8
  %arrayidx25 = getelementptr i64, ptr %portstats, i32 52
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit343.spx5_inst_rd.exit349_crit_edge, label %do.end.i.i345, !prof !169

sparx5_update_counter.exit343.spx5_inst_rd.exit349_crit_edge: ; preds = %sparx5_update_counter.exit343
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit349

do.end.i.i345:                                    ; preds = %sparx5_update_counter.exit343
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit349

spx5_inst_rd.exit349:                             ; preds = %do.end.i.i345, %sparx5_update_counter.exit343.spx5_inst_rd.exit349_crit_edge
  %add.ptr51.i.i348 = getelementptr i8, ptr %add.ptr50.i.i, i32 236
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i348) #9, !srcloc !170
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i350 = zext i32 %92 to i64
  %93 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %arrayidx25, align 8
  %and.i351 = and i64 %94, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i351, i64 %conv.i350)
  %cmp.i352 = icmp ugt i64 %and.i351, %conv.i350
  br i1 %cmp.i352, label %if.then.i354, label %spx5_inst_rd.exit349.sparx5_update_counter.exit357_crit_edge

spx5_inst_rd.exit349.sparx5_update_counter.exit357_crit_edge: ; preds = %spx5_inst_rd.exit349
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit357

if.then.i354:                                     ; preds = %spx5_inst_rd.exit349
  call void @__sanitizer_cov_trace_pc() #11
  %add.i353 = add i64 %94, 4294967296
  %95 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %add.i353, ptr %arrayidx25, align 8
  br label %sparx5_update_counter.exit357

sparx5_update_counter.exit357:                    ; preds = %if.then.i354, %spx5_inst_rd.exit349.sparx5_update_counter.exit357_crit_edge
  %96 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %arrayidx25, align 8
  %and2.i355 = and i64 %97, -4294967296
  %add4.i356 = or i64 %and2.i355, %conv.i350
  store i64 %add4.i356, ptr %arrayidx25, align 8
  %arrayidx27 = getelementptr i64, ptr %portstats, i32 53
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit357.spx5_inst_rd.exit363_crit_edge, label %do.end.i.i359, !prof !169

sparx5_update_counter.exit357.spx5_inst_rd.exit363_crit_edge: ; preds = %sparx5_update_counter.exit357
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit363

do.end.i.i359:                                    ; preds = %sparx5_update_counter.exit357
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit363

spx5_inst_rd.exit363:                             ; preds = %do.end.i.i359, %sparx5_update_counter.exit357.spx5_inst_rd.exit363_crit_edge
  %add.ptr51.i.i362 = getelementptr i8, ptr %add.ptr50.i.i, i32 76
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i362) #9, !srcloc !170
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i364 = zext i32 %99 to i64
  %100 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %arrayidx27, align 8
  %and.i365 = and i64 %101, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i365, i64 %conv.i364)
  %cmp.i366 = icmp ugt i64 %and.i365, %conv.i364
  br i1 %cmp.i366, label %if.then.i368, label %spx5_inst_rd.exit363.sparx5_update_counter.exit371_crit_edge

spx5_inst_rd.exit363.sparx5_update_counter.exit371_crit_edge: ; preds = %spx5_inst_rd.exit363
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit371

if.then.i368:                                     ; preds = %spx5_inst_rd.exit363
  call void @__sanitizer_cov_trace_pc() #11
  %add.i367 = add i64 %101, 4294967296
  %102 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %add.i367, ptr %arrayidx27, align 8
  br label %sparx5_update_counter.exit371

sparx5_update_counter.exit371:                    ; preds = %if.then.i368, %spx5_inst_rd.exit363.sparx5_update_counter.exit371_crit_edge
  %103 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx27, align 8
  %and2.i369 = and i64 %104, -4294967296
  %add4.i370 = or i64 %and2.i369, %conv.i364
  store i64 %add4.i370, ptr %arrayidx27, align 8
  %arrayidx29 = getelementptr i64, ptr %portstats, i32 54
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit371.spx5_inst_rd.exit377_crit_edge, label %do.end.i.i373, !prof !169

sparx5_update_counter.exit371.spx5_inst_rd.exit377_crit_edge: ; preds = %sparx5_update_counter.exit371
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit377

do.end.i.i373:                                    ; preds = %sparx5_update_counter.exit371
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit377

spx5_inst_rd.exit377:                             ; preds = %do.end.i.i373, %sparx5_update_counter.exit371.spx5_inst_rd.exit377_crit_edge
  %add.ptr51.i.i376 = getelementptr i8, ptr %add.ptr50.i.i, i32 240
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i376) #9, !srcloc !170
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i378 = zext i32 %106 to i64
  %107 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %arrayidx29, align 8
  %and.i379 = and i64 %108, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i379, i64 %conv.i378)
  %cmp.i380 = icmp ugt i64 %and.i379, %conv.i378
  br i1 %cmp.i380, label %if.then.i382, label %spx5_inst_rd.exit377.sparx5_update_counter.exit385_crit_edge

spx5_inst_rd.exit377.sparx5_update_counter.exit385_crit_edge: ; preds = %spx5_inst_rd.exit377
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit385

if.then.i382:                                     ; preds = %spx5_inst_rd.exit377
  call void @__sanitizer_cov_trace_pc() #11
  %add.i381 = add i64 %108, 4294967296
  %109 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %add.i381, ptr %arrayidx29, align 8
  br label %sparx5_update_counter.exit385

sparx5_update_counter.exit385:                    ; preds = %if.then.i382, %spx5_inst_rd.exit377.sparx5_update_counter.exit385_crit_edge
  %110 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %arrayidx29, align 8
  %and2.i383 = and i64 %111, -4294967296
  %add4.i384 = or i64 %and2.i383, %conv.i378
  store i64 %add4.i384, ptr %arrayidx29, align 8
  %arrayidx31 = getelementptr i64, ptr %portstats, i32 55
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit385.spx5_inst_rd.exit391_crit_edge, label %do.end.i.i387, !prof !169

sparx5_update_counter.exit385.spx5_inst_rd.exit391_crit_edge: ; preds = %sparx5_update_counter.exit385
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit391

do.end.i.i387:                                    ; preds = %sparx5_update_counter.exit385
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit391

spx5_inst_rd.exit391:                             ; preds = %do.end.i.i387, %sparx5_update_counter.exit385.spx5_inst_rd.exit391_crit_edge
  %add.ptr51.i.i390 = getelementptr i8, ptr %add.ptr50.i.i, i32 80
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i390) #9, !srcloc !170
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i392 = zext i32 %113 to i64
  %114 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %arrayidx31, align 8
  %and.i393 = and i64 %115, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i393, i64 %conv.i392)
  %cmp.i394 = icmp ugt i64 %and.i393, %conv.i392
  br i1 %cmp.i394, label %if.then.i396, label %spx5_inst_rd.exit391.sparx5_update_counter.exit399_crit_edge

spx5_inst_rd.exit391.sparx5_update_counter.exit399_crit_edge: ; preds = %spx5_inst_rd.exit391
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit399

if.then.i396:                                     ; preds = %spx5_inst_rd.exit391
  call void @__sanitizer_cov_trace_pc() #11
  %add.i395 = add i64 %115, 4294967296
  %116 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %add.i395, ptr %arrayidx31, align 8
  br label %sparx5_update_counter.exit399

sparx5_update_counter.exit399:                    ; preds = %if.then.i396, %spx5_inst_rd.exit391.sparx5_update_counter.exit399_crit_edge
  %117 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %arrayidx31, align 8
  %and2.i397 = and i64 %118, -4294967296
  %add4.i398 = or i64 %and2.i397, %conv.i392
  store i64 %add4.i398, ptr %arrayidx31, align 8
  %arrayidx33 = getelementptr i64, ptr %portstats, i32 56
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit399.spx5_inst_rd.exit405_crit_edge, label %do.end.i.i401, !prof !169

sparx5_update_counter.exit399.spx5_inst_rd.exit405_crit_edge: ; preds = %sparx5_update_counter.exit399
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit405

do.end.i.i401:                                    ; preds = %sparx5_update_counter.exit399
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit405

spx5_inst_rd.exit405:                             ; preds = %do.end.i.i401, %sparx5_update_counter.exit399.spx5_inst_rd.exit405_crit_edge
  %add.ptr51.i.i404 = getelementptr i8, ptr %add.ptr50.i.i, i32 244
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i404) #9, !srcloc !170
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i406 = zext i32 %120 to i64
  %121 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %arrayidx33, align 8
  %and.i407 = and i64 %122, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i407, i64 %conv.i406)
  %cmp.i408 = icmp ugt i64 %and.i407, %conv.i406
  br i1 %cmp.i408, label %if.then.i410, label %spx5_inst_rd.exit405.sparx5_update_counter.exit413_crit_edge

spx5_inst_rd.exit405.sparx5_update_counter.exit413_crit_edge: ; preds = %spx5_inst_rd.exit405
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit413

if.then.i410:                                     ; preds = %spx5_inst_rd.exit405
  call void @__sanitizer_cov_trace_pc() #11
  %add.i409 = add i64 %122, 4294967296
  %123 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %add.i409, ptr %arrayidx33, align 8
  br label %sparx5_update_counter.exit413

sparx5_update_counter.exit413:                    ; preds = %if.then.i410, %spx5_inst_rd.exit405.sparx5_update_counter.exit413_crit_edge
  %124 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %arrayidx33, align 8
  %and2.i411 = and i64 %125, -4294967296
  %add4.i412 = or i64 %and2.i411, %conv.i406
  store i64 %add4.i412, ptr %arrayidx33, align 8
  %arrayidx35 = getelementptr i64, ptr %portstats, i32 57
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit413.spx5_inst_rd.exit419_crit_edge, label %do.end.i.i415, !prof !169

sparx5_update_counter.exit413.spx5_inst_rd.exit419_crit_edge: ; preds = %sparx5_update_counter.exit413
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit419

do.end.i.i415:                                    ; preds = %sparx5_update_counter.exit413
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit419

spx5_inst_rd.exit419:                             ; preds = %do.end.i.i415, %sparx5_update_counter.exit413.spx5_inst_rd.exit419_crit_edge
  %add.ptr51.i.i418 = getelementptr i8, ptr %add.ptr50.i.i, i32 84
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i418) #9, !srcloc !170
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i420 = zext i32 %127 to i64
  %128 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %arrayidx35, align 8
  %and.i421 = and i64 %129, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i421, i64 %conv.i420)
  %cmp.i422 = icmp ugt i64 %and.i421, %conv.i420
  br i1 %cmp.i422, label %if.then.i424, label %spx5_inst_rd.exit419.sparx5_update_counter.exit427_crit_edge

spx5_inst_rd.exit419.sparx5_update_counter.exit427_crit_edge: ; preds = %spx5_inst_rd.exit419
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit427

if.then.i424:                                     ; preds = %spx5_inst_rd.exit419
  call void @__sanitizer_cov_trace_pc() #11
  %add.i423 = add i64 %129, 4294967296
  %130 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %add.i423, ptr %arrayidx35, align 8
  br label %sparx5_update_counter.exit427

sparx5_update_counter.exit427:                    ; preds = %if.then.i424, %spx5_inst_rd.exit419.sparx5_update_counter.exit427_crit_edge
  %131 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %arrayidx35, align 8
  %and2.i425 = and i64 %132, -4294967296
  %add4.i426 = or i64 %and2.i425, %conv.i420
  store i64 %add4.i426, ptr %arrayidx35, align 8
  %arrayidx37 = getelementptr i64, ptr %portstats, i32 58
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit427.spx5_inst_rd.exit433_crit_edge, label %do.end.i.i429, !prof !169

sparx5_update_counter.exit427.spx5_inst_rd.exit433_crit_edge: ; preds = %sparx5_update_counter.exit427
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit433

do.end.i.i429:                                    ; preds = %sparx5_update_counter.exit427
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit433

spx5_inst_rd.exit433:                             ; preds = %do.end.i.i429, %sparx5_update_counter.exit427.spx5_inst_rd.exit433_crit_edge
  %add.ptr51.i.i432 = getelementptr i8, ptr %add.ptr50.i.i, i32 248
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i432) #9, !srcloc !170
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i434 = zext i32 %134 to i64
  %135 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %arrayidx37, align 8
  %and.i435 = and i64 %136, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i435, i64 %conv.i434)
  %cmp.i436 = icmp ugt i64 %and.i435, %conv.i434
  br i1 %cmp.i436, label %if.then.i438, label %spx5_inst_rd.exit433.sparx5_update_counter.exit441_crit_edge

spx5_inst_rd.exit433.sparx5_update_counter.exit441_crit_edge: ; preds = %spx5_inst_rd.exit433
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit441

if.then.i438:                                     ; preds = %spx5_inst_rd.exit433
  call void @__sanitizer_cov_trace_pc() #11
  %add.i437 = add i64 %136, 4294967296
  %137 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %add.i437, ptr %arrayidx37, align 8
  br label %sparx5_update_counter.exit441

sparx5_update_counter.exit441:                    ; preds = %if.then.i438, %spx5_inst_rd.exit433.sparx5_update_counter.exit441_crit_edge
  %138 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %arrayidx37, align 8
  %and2.i439 = and i64 %139, -4294967296
  %add4.i440 = or i64 %and2.i439, %conv.i434
  store i64 %add4.i440, ptr %arrayidx37, align 8
  %arrayidx39 = getelementptr i64, ptr %portstats, i32 59
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit441.spx5_inst_rd.exit447_crit_edge, label %do.end.i.i443, !prof !169

sparx5_update_counter.exit441.spx5_inst_rd.exit447_crit_edge: ; preds = %sparx5_update_counter.exit441
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit447

do.end.i.i443:                                    ; preds = %sparx5_update_counter.exit441
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit447

spx5_inst_rd.exit447:                             ; preds = %do.end.i.i443, %sparx5_update_counter.exit441.spx5_inst_rd.exit447_crit_edge
  %add.ptr51.i.i446 = getelementptr i8, ptr %add.ptr50.i.i, i32 88
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i446) #9, !srcloc !170
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i448 = zext i32 %141 to i64
  %142 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %arrayidx39, align 8
  %and.i449 = and i64 %143, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i449, i64 %conv.i448)
  %cmp.i450 = icmp ugt i64 %and.i449, %conv.i448
  br i1 %cmp.i450, label %if.then.i452, label %spx5_inst_rd.exit447.sparx5_update_counter.exit455_crit_edge

spx5_inst_rd.exit447.sparx5_update_counter.exit455_crit_edge: ; preds = %spx5_inst_rd.exit447
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit455

if.then.i452:                                     ; preds = %spx5_inst_rd.exit447
  call void @__sanitizer_cov_trace_pc() #11
  %add.i451 = add i64 %143, 4294967296
  %144 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %add.i451, ptr %arrayidx39, align 8
  br label %sparx5_update_counter.exit455

sparx5_update_counter.exit455:                    ; preds = %if.then.i452, %spx5_inst_rd.exit447.sparx5_update_counter.exit455_crit_edge
  %145 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %arrayidx39, align 8
  %and2.i453 = and i64 %146, -4294967296
  %add4.i454 = or i64 %and2.i453, %conv.i448
  store i64 %add4.i454, ptr %arrayidx39, align 8
  %arrayidx41 = getelementptr i64, ptr %portstats, i32 60
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit455.spx5_inst_rd.exit461_crit_edge, label %do.end.i.i457, !prof !169

sparx5_update_counter.exit455.spx5_inst_rd.exit461_crit_edge: ; preds = %sparx5_update_counter.exit455
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit461

do.end.i.i457:                                    ; preds = %sparx5_update_counter.exit455
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit461

spx5_inst_rd.exit461:                             ; preds = %do.end.i.i457, %sparx5_update_counter.exit455.spx5_inst_rd.exit461_crit_edge
  %add.ptr51.i.i460 = getelementptr i8, ptr %add.ptr50.i.i, i32 252
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i460) #9, !srcloc !170
  %148 = tail call i32 @llvm.bswap.i32(i32 %147) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i462 = zext i32 %148 to i64
  %149 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %arrayidx41, align 8
  %and.i463 = and i64 %150, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i463, i64 %conv.i462)
  %cmp.i464 = icmp ugt i64 %and.i463, %conv.i462
  br i1 %cmp.i464, label %if.then.i466, label %spx5_inst_rd.exit461.sparx5_update_counter.exit469_crit_edge

spx5_inst_rd.exit461.sparx5_update_counter.exit469_crit_edge: ; preds = %spx5_inst_rd.exit461
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit469

if.then.i466:                                     ; preds = %spx5_inst_rd.exit461
  call void @__sanitizer_cov_trace_pc() #11
  %add.i465 = add i64 %150, 4294967296
  %151 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %add.i465, ptr %arrayidx41, align 8
  br label %sparx5_update_counter.exit469

sparx5_update_counter.exit469:                    ; preds = %if.then.i466, %spx5_inst_rd.exit461.sparx5_update_counter.exit469_crit_edge
  %152 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %arrayidx41, align 8
  %and2.i467 = and i64 %153, -4294967296
  %add4.i468 = or i64 %and2.i467, %conv.i462
  store i64 %add4.i468, ptr %arrayidx41, align 8
  %arrayidx43 = getelementptr i64, ptr %portstats, i32 61
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit469.spx5_inst_rd.exit475_crit_edge, label %do.end.i.i471, !prof !169

sparx5_update_counter.exit469.spx5_inst_rd.exit475_crit_edge: ; preds = %sparx5_update_counter.exit469
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit475

do.end.i.i471:                                    ; preds = %sparx5_update_counter.exit469
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit475

spx5_inst_rd.exit475:                             ; preds = %do.end.i.i471, %sparx5_update_counter.exit469.spx5_inst_rd.exit475_crit_edge
  %add.ptr51.i.i474 = getelementptr i8, ptr %add.ptr50.i.i, i32 120
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i474) #9, !srcloc !170
  %155 = tail call i32 @llvm.bswap.i32(i32 %154) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i476 = zext i32 %155 to i64
  %156 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %arrayidx43, align 8
  %and.i477 = and i64 %157, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i477, i64 %conv.i476)
  %cmp.i478 = icmp ugt i64 %and.i477, %conv.i476
  br i1 %cmp.i478, label %if.then.i480, label %spx5_inst_rd.exit475.sparx5_update_counter.exit483_crit_edge

spx5_inst_rd.exit475.sparx5_update_counter.exit483_crit_edge: ; preds = %spx5_inst_rd.exit475
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit483

if.then.i480:                                     ; preds = %spx5_inst_rd.exit475
  call void @__sanitizer_cov_trace_pc() #11
  %add.i479 = add i64 %157, 4294967296
  %158 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 %add.i479, ptr %arrayidx43, align 8
  br label %sparx5_update_counter.exit483

sparx5_update_counter.exit483:                    ; preds = %if.then.i480, %spx5_inst_rd.exit475.sparx5_update_counter.exit483_crit_edge
  %159 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %arrayidx43, align 8
  %and2.i481 = and i64 %160, -4294967296
  %add4.i482 = or i64 %and2.i481, %conv.i476
  store i64 %add4.i482, ptr %arrayidx43, align 8
  %arrayidx45 = getelementptr i64, ptr %portstats, i32 62
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit483.spx5_inst_rd.exit489_crit_edge, label %do.end.i.i485, !prof !169

sparx5_update_counter.exit483.spx5_inst_rd.exit489_crit_edge: ; preds = %sparx5_update_counter.exit483
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit489

do.end.i.i485:                                    ; preds = %sparx5_update_counter.exit483
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit489

spx5_inst_rd.exit489:                             ; preds = %do.end.i.i485, %sparx5_update_counter.exit483.spx5_inst_rd.exit489_crit_edge
  %add.ptr51.i.i488 = getelementptr i8, ptr %add.ptr50.i.i, i32 276
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i488) #9, !srcloc !170
  %162 = tail call i32 @llvm.bswap.i32(i32 %161) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i490 = zext i32 %162 to i64
  %163 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %arrayidx45, align 8
  %and.i491 = and i64 %164, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i491, i64 %conv.i490)
  %cmp.i492 = icmp ugt i64 %and.i491, %conv.i490
  br i1 %cmp.i492, label %if.then.i494, label %spx5_inst_rd.exit489.sparx5_update_counter.exit497_crit_edge

spx5_inst_rd.exit489.sparx5_update_counter.exit497_crit_edge: ; preds = %spx5_inst_rd.exit489
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit497

if.then.i494:                                     ; preds = %spx5_inst_rd.exit489
  call void @__sanitizer_cov_trace_pc() #11
  %add.i493 = add i64 %164, 4294967296
  %165 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %add.i493, ptr %arrayidx45, align 8
  br label %sparx5_update_counter.exit497

sparx5_update_counter.exit497:                    ; preds = %if.then.i494, %spx5_inst_rd.exit489.sparx5_update_counter.exit497_crit_edge
  %166 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %arrayidx45, align 8
  %and2.i495 = and i64 %167, -4294967296
  %add4.i496 = or i64 %and2.i495, %conv.i490
  store i64 %add4.i496, ptr %arrayidx45, align 8
  %arrayidx47 = getelementptr i64, ptr %portstats, i32 63
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit497.spx5_inst_rd.exit503_crit_edge, label %do.end.i.i499, !prof !169

sparx5_update_counter.exit497.spx5_inst_rd.exit503_crit_edge: ; preds = %sparx5_update_counter.exit497
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit503

do.end.i.i499:                                    ; preds = %sparx5_update_counter.exit497
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit503

spx5_inst_rd.exit503:                             ; preds = %do.end.i.i499, %sparx5_update_counter.exit497.spx5_inst_rd.exit503_crit_edge
  %add.ptr51.i.i502 = getelementptr i8, ptr %add.ptr50.i.i, i32 124
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i502) #9, !srcloc !170
  %169 = tail call i32 @llvm.bswap.i32(i32 %168) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i504 = zext i32 %169 to i64
  %170 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %arrayidx47, align 8
  %and.i505 = and i64 %171, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i505, i64 %conv.i504)
  %cmp.i506 = icmp ugt i64 %and.i505, %conv.i504
  br i1 %cmp.i506, label %if.then.i508, label %spx5_inst_rd.exit503.sparx5_update_counter.exit511_crit_edge

spx5_inst_rd.exit503.sparx5_update_counter.exit511_crit_edge: ; preds = %spx5_inst_rd.exit503
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit511

if.then.i508:                                     ; preds = %spx5_inst_rd.exit503
  call void @__sanitizer_cov_trace_pc() #11
  %add.i507 = add i64 %171, 4294967296
  %172 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store8_noabort(i32 %172)
  store i64 %add.i507, ptr %arrayidx47, align 8
  br label %sparx5_update_counter.exit511

sparx5_update_counter.exit511:                    ; preds = %if.then.i508, %spx5_inst_rd.exit503.sparx5_update_counter.exit511_crit_edge
  %173 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %arrayidx47, align 8
  %and2.i509 = and i64 %174, -4294967296
  %add4.i510 = or i64 %and2.i509, %conv.i504
  store i64 %add4.i510, ptr %arrayidx47, align 8
  %arrayidx49 = getelementptr i64, ptr %portstats, i32 64
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit511.spx5_inst_rd.exit517_crit_edge, label %do.end.i.i513, !prof !169

sparx5_update_counter.exit511.spx5_inst_rd.exit517_crit_edge: ; preds = %sparx5_update_counter.exit511
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit517

do.end.i.i513:                                    ; preds = %sparx5_update_counter.exit511
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit517

spx5_inst_rd.exit517:                             ; preds = %do.end.i.i513, %sparx5_update_counter.exit511.spx5_inst_rd.exit517_crit_edge
  %add.ptr51.i.i516 = getelementptr i8, ptr %add.ptr50.i.i, i32 280
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i516) #9, !srcloc !170
  %176 = tail call i32 @llvm.bswap.i32(i32 %175) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i518 = zext i32 %176 to i64
  %177 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %arrayidx49, align 8
  %and.i519 = and i64 %178, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i519, i64 %conv.i518)
  %cmp.i520 = icmp ugt i64 %and.i519, %conv.i518
  br i1 %cmp.i520, label %if.then.i522, label %spx5_inst_rd.exit517.sparx5_update_counter.exit525_crit_edge

spx5_inst_rd.exit517.sparx5_update_counter.exit525_crit_edge: ; preds = %spx5_inst_rd.exit517
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit525

if.then.i522:                                     ; preds = %spx5_inst_rd.exit517
  call void @__sanitizer_cov_trace_pc() #11
  %add.i521 = add i64 %178, 4294967296
  %179 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 %add.i521, ptr %arrayidx49, align 8
  br label %sparx5_update_counter.exit525

sparx5_update_counter.exit525:                    ; preds = %if.then.i522, %spx5_inst_rd.exit517.sparx5_update_counter.exit525_crit_edge
  %180 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %arrayidx49, align 8
  %and2.i523 = and i64 %181, -4294967296
  %add4.i524 = or i64 %and2.i523, %conv.i518
  store i64 %add4.i524, ptr %arrayidx49, align 8
  %arrayidx51 = getelementptr i64, ptr %portstats, i32 65
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit525.spx5_inst_rd.exit531_crit_edge, label %do.end.i.i527, !prof !169

sparx5_update_counter.exit525.spx5_inst_rd.exit531_crit_edge: ; preds = %sparx5_update_counter.exit525
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit531

do.end.i.i527:                                    ; preds = %sparx5_update_counter.exit525
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit531

spx5_inst_rd.exit531:                             ; preds = %do.end.i.i527, %sparx5_update_counter.exit525.spx5_inst_rd.exit531_crit_edge
  %add.ptr51.i.i530 = getelementptr i8, ptr %add.ptr50.i.i, i32 128
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i530) #9, !srcloc !170
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i532 = zext i32 %183 to i64
  %184 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %arrayidx51, align 8
  %and.i533 = and i64 %185, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i533, i64 %conv.i532)
  %cmp.i534 = icmp ugt i64 %and.i533, %conv.i532
  br i1 %cmp.i534, label %if.then.i536, label %spx5_inst_rd.exit531.sparx5_update_counter.exit539_crit_edge

spx5_inst_rd.exit531.sparx5_update_counter.exit539_crit_edge: ; preds = %spx5_inst_rd.exit531
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit539

if.then.i536:                                     ; preds = %spx5_inst_rd.exit531
  call void @__sanitizer_cov_trace_pc() #11
  %add.i535 = add i64 %185, 4294967296
  %186 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store8_noabort(i32 %186)
  store i64 %add.i535, ptr %arrayidx51, align 8
  br label %sparx5_update_counter.exit539

sparx5_update_counter.exit539:                    ; preds = %if.then.i536, %spx5_inst_rd.exit531.sparx5_update_counter.exit539_crit_edge
  %187 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %arrayidx51, align 8
  %and2.i537 = and i64 %188, -4294967296
  %add4.i538 = or i64 %and2.i537, %conv.i532
  store i64 %add4.i538, ptr %arrayidx51, align 8
  %arrayidx53 = getelementptr i64, ptr %portstats, i32 66
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit539.spx5_inst_rd.exit545_crit_edge, label %do.end.i.i541, !prof !169

sparx5_update_counter.exit539.spx5_inst_rd.exit545_crit_edge: ; preds = %sparx5_update_counter.exit539
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit545

do.end.i.i541:                                    ; preds = %sparx5_update_counter.exit539
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit545

spx5_inst_rd.exit545:                             ; preds = %do.end.i.i541, %sparx5_update_counter.exit539.spx5_inst_rd.exit545_crit_edge
  %add.ptr51.i.i544 = getelementptr i8, ptr %add.ptr50.i.i, i32 284
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i544) #9, !srcloc !170
  %190 = tail call i32 @llvm.bswap.i32(i32 %189) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i546 = zext i32 %190 to i64
  %191 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %arrayidx53, align 8
  %and.i547 = and i64 %192, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i547, i64 %conv.i546)
  %cmp.i548 = icmp ugt i64 %and.i547, %conv.i546
  br i1 %cmp.i548, label %if.then.i550, label %spx5_inst_rd.exit545.sparx5_update_counter.exit553_crit_edge

spx5_inst_rd.exit545.sparx5_update_counter.exit553_crit_edge: ; preds = %spx5_inst_rd.exit545
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit553

if.then.i550:                                     ; preds = %spx5_inst_rd.exit545
  call void @__sanitizer_cov_trace_pc() #11
  %add.i549 = add i64 %192, 4294967296
  %193 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store8_noabort(i32 %193)
  store i64 %add.i549, ptr %arrayidx53, align 8
  br label %sparx5_update_counter.exit553

sparx5_update_counter.exit553:                    ; preds = %if.then.i550, %spx5_inst_rd.exit545.sparx5_update_counter.exit553_crit_edge
  %194 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %arrayidx53, align 8
  %and2.i551 = and i64 %195, -4294967296
  %add4.i552 = or i64 %and2.i551, %conv.i546
  store i64 %add4.i552, ptr %arrayidx53, align 8
  %arrayidx55 = getelementptr i64, ptr %portstats, i32 67
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit553.spx5_inst_rd.exit559_crit_edge, label %do.end.i.i555, !prof !169

sparx5_update_counter.exit553.spx5_inst_rd.exit559_crit_edge: ; preds = %sparx5_update_counter.exit553
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit559

do.end.i.i555:                                    ; preds = %sparx5_update_counter.exit553
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit559

spx5_inst_rd.exit559:                             ; preds = %do.end.i.i555, %sparx5_update_counter.exit553.spx5_inst_rd.exit559_crit_edge
  %add.ptr51.i.i558 = getelementptr i8, ptr %add.ptr50.i.i, i32 132
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i558) #9, !srcloc !170
  %197 = tail call i32 @llvm.bswap.i32(i32 %196) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i560 = zext i32 %197 to i64
  %198 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %arrayidx55, align 8
  %and.i561 = and i64 %199, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i561, i64 %conv.i560)
  %cmp.i562 = icmp ugt i64 %and.i561, %conv.i560
  br i1 %cmp.i562, label %if.then.i564, label %spx5_inst_rd.exit559.sparx5_update_counter.exit567_crit_edge

spx5_inst_rd.exit559.sparx5_update_counter.exit567_crit_edge: ; preds = %spx5_inst_rd.exit559
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit567

if.then.i564:                                     ; preds = %spx5_inst_rd.exit559
  call void @__sanitizer_cov_trace_pc() #11
  %add.i563 = add i64 %199, 4294967296
  %200 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store8_noabort(i32 %200)
  store i64 %add.i563, ptr %arrayidx55, align 8
  br label %sparx5_update_counter.exit567

sparx5_update_counter.exit567:                    ; preds = %if.then.i564, %spx5_inst_rd.exit559.sparx5_update_counter.exit567_crit_edge
  %201 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %arrayidx55, align 8
  %and2.i565 = and i64 %202, -4294967296
  %add4.i566 = or i64 %and2.i565, %conv.i560
  store i64 %add4.i566, ptr %arrayidx55, align 8
  %arrayidx57 = getelementptr i64, ptr %portstats, i32 68
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit567.spx5_inst_rd.exit573_crit_edge, label %do.end.i.i569, !prof !169

sparx5_update_counter.exit567.spx5_inst_rd.exit573_crit_edge: ; preds = %sparx5_update_counter.exit567
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit573

do.end.i.i569:                                    ; preds = %sparx5_update_counter.exit567
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit573

spx5_inst_rd.exit573:                             ; preds = %do.end.i.i569, %sparx5_update_counter.exit567.spx5_inst_rd.exit573_crit_edge
  %add.ptr51.i.i572 = getelementptr i8, ptr %add.ptr50.i.i, i32 288
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i572) #9, !srcloc !170
  %204 = tail call i32 @llvm.bswap.i32(i32 %203) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i574 = zext i32 %204 to i64
  %205 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %arrayidx57, align 8
  %and.i575 = and i64 %206, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i575, i64 %conv.i574)
  %cmp.i576 = icmp ugt i64 %and.i575, %conv.i574
  br i1 %cmp.i576, label %if.then.i578, label %spx5_inst_rd.exit573.sparx5_update_counter.exit581_crit_edge

spx5_inst_rd.exit573.sparx5_update_counter.exit581_crit_edge: ; preds = %spx5_inst_rd.exit573
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit581

if.then.i578:                                     ; preds = %spx5_inst_rd.exit573
  call void @__sanitizer_cov_trace_pc() #11
  %add.i577 = add i64 %206, 4294967296
  %207 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store8_noabort(i32 %207)
  store i64 %add.i577, ptr %arrayidx57, align 8
  br label %sparx5_update_counter.exit581

sparx5_update_counter.exit581:                    ; preds = %if.then.i578, %spx5_inst_rd.exit573.sparx5_update_counter.exit581_crit_edge
  %208 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %arrayidx57, align 8
  %and2.i579 = and i64 %209, -4294967296
  %add4.i580 = or i64 %and2.i579, %conv.i574
  store i64 %add4.i580, ptr %arrayidx57, align 8
  %arrayidx59 = getelementptr i64, ptr %portstats, i32 69
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit581.spx5_inst_rd.exit587_crit_edge, label %do.end.i.i583, !prof !169

sparx5_update_counter.exit581.spx5_inst_rd.exit587_crit_edge: ; preds = %sparx5_update_counter.exit581
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit587

do.end.i.i583:                                    ; preds = %sparx5_update_counter.exit581
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit587

spx5_inst_rd.exit587:                             ; preds = %do.end.i.i583, %sparx5_update_counter.exit581.spx5_inst_rd.exit587_crit_edge
  %add.ptr51.i.i586 = getelementptr i8, ptr %add.ptr50.i.i, i32 136
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i586) #9, !srcloc !170
  %211 = tail call i32 @llvm.bswap.i32(i32 %210) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i588 = zext i32 %211 to i64
  %212 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %arrayidx59, align 8
  %and.i589 = and i64 %213, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i589, i64 %conv.i588)
  %cmp.i590 = icmp ugt i64 %and.i589, %conv.i588
  br i1 %cmp.i590, label %if.then.i592, label %spx5_inst_rd.exit587.sparx5_update_counter.exit595_crit_edge

spx5_inst_rd.exit587.sparx5_update_counter.exit595_crit_edge: ; preds = %spx5_inst_rd.exit587
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit595

if.then.i592:                                     ; preds = %spx5_inst_rd.exit587
  call void @__sanitizer_cov_trace_pc() #11
  %add.i591 = add i64 %213, 4294967296
  %214 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store8_noabort(i32 %214)
  store i64 %add.i591, ptr %arrayidx59, align 8
  br label %sparx5_update_counter.exit595

sparx5_update_counter.exit595:                    ; preds = %if.then.i592, %spx5_inst_rd.exit587.sparx5_update_counter.exit595_crit_edge
  %215 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %arrayidx59, align 8
  %and2.i593 = and i64 %216, -4294967296
  %add4.i594 = or i64 %and2.i593, %conv.i588
  store i64 %add4.i594, ptr %arrayidx59, align 8
  %arrayidx61 = getelementptr i64, ptr %portstats, i32 70
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit595.spx5_inst_rd.exit601_crit_edge, label %do.end.i.i597, !prof !169

sparx5_update_counter.exit595.spx5_inst_rd.exit601_crit_edge: ; preds = %sparx5_update_counter.exit595
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit601

do.end.i.i597:                                    ; preds = %sparx5_update_counter.exit595
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit601

spx5_inst_rd.exit601:                             ; preds = %do.end.i.i597, %sparx5_update_counter.exit595.spx5_inst_rd.exit601_crit_edge
  %add.ptr51.i.i600 = getelementptr i8, ptr %add.ptr50.i.i, i32 292
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i600) #9, !srcloc !170
  %218 = tail call i32 @llvm.bswap.i32(i32 %217) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i602 = zext i32 %218 to i64
  %219 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %arrayidx61, align 8
  %and.i603 = and i64 %220, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i603, i64 %conv.i602)
  %cmp.i604 = icmp ugt i64 %and.i603, %conv.i602
  br i1 %cmp.i604, label %if.then.i606, label %spx5_inst_rd.exit601.sparx5_update_counter.exit609_crit_edge

spx5_inst_rd.exit601.sparx5_update_counter.exit609_crit_edge: ; preds = %spx5_inst_rd.exit601
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit609

if.then.i606:                                     ; preds = %spx5_inst_rd.exit601
  call void @__sanitizer_cov_trace_pc() #11
  %add.i605 = add i64 %220, 4294967296
  %221 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store8_noabort(i32 %221)
  store i64 %add.i605, ptr %arrayidx61, align 8
  br label %sparx5_update_counter.exit609

sparx5_update_counter.exit609:                    ; preds = %if.then.i606, %spx5_inst_rd.exit601.sparx5_update_counter.exit609_crit_edge
  %222 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %arrayidx61, align 8
  %and2.i607 = and i64 %223, -4294967296
  %add4.i608 = or i64 %and2.i607, %conv.i602
  store i64 %add4.i608, ptr %arrayidx61, align 8
  %arrayidx63 = getelementptr i64, ptr %portstats, i32 71
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit609.spx5_inst_rd.exit615_crit_edge, label %do.end.i.i611, !prof !169

sparx5_update_counter.exit609.spx5_inst_rd.exit615_crit_edge: ; preds = %sparx5_update_counter.exit609
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit615

do.end.i.i611:                                    ; preds = %sparx5_update_counter.exit609
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit615

spx5_inst_rd.exit615:                             ; preds = %do.end.i.i611, %sparx5_update_counter.exit609.spx5_inst_rd.exit615_crit_edge
  %add.ptr51.i.i614 = getelementptr i8, ptr %add.ptr50.i.i, i32 140
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i614) #9, !srcloc !170
  %225 = tail call i32 @llvm.bswap.i32(i32 %224) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i616 = zext i32 %225 to i64
  %226 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %arrayidx63, align 8
  %and.i617 = and i64 %227, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i617, i64 %conv.i616)
  %cmp.i618 = icmp ugt i64 %and.i617, %conv.i616
  br i1 %cmp.i618, label %if.then.i620, label %spx5_inst_rd.exit615.sparx5_update_counter.exit623_crit_edge

spx5_inst_rd.exit615.sparx5_update_counter.exit623_crit_edge: ; preds = %spx5_inst_rd.exit615
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit623

if.then.i620:                                     ; preds = %spx5_inst_rd.exit615
  call void @__sanitizer_cov_trace_pc() #11
  %add.i619 = add i64 %227, 4294967296
  %228 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store8_noabort(i32 %228)
  store i64 %add.i619, ptr %arrayidx63, align 8
  br label %sparx5_update_counter.exit623

sparx5_update_counter.exit623:                    ; preds = %if.then.i620, %spx5_inst_rd.exit615.sparx5_update_counter.exit623_crit_edge
  %229 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load8_noabort(i32 %229)
  %230 = load i64, ptr %arrayidx63, align 8
  %and2.i621 = and i64 %230, -4294967296
  %add4.i622 = or i64 %and2.i621, %conv.i616
  store i64 %add4.i622, ptr %arrayidx63, align 8
  %arrayidx65 = getelementptr i64, ptr %portstats, i32 72
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit623.spx5_inst_rd.exit629_crit_edge, label %do.end.i.i625, !prof !169

sparx5_update_counter.exit623.spx5_inst_rd.exit629_crit_edge: ; preds = %sparx5_update_counter.exit623
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit629

do.end.i.i625:                                    ; preds = %sparx5_update_counter.exit623
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit629

spx5_inst_rd.exit629:                             ; preds = %do.end.i.i625, %sparx5_update_counter.exit623.spx5_inst_rd.exit629_crit_edge
  %add.ptr51.i.i628 = getelementptr i8, ptr %add.ptr50.i.i, i32 296
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i628) #9, !srcloc !170
  %232 = tail call i32 @llvm.bswap.i32(i32 %231) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i630 = zext i32 %232 to i64
  %233 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load8_noabort(i32 %233)
  %234 = load i64, ptr %arrayidx65, align 8
  %and.i631 = and i64 %234, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i631, i64 %conv.i630)
  %cmp.i632 = icmp ugt i64 %and.i631, %conv.i630
  br i1 %cmp.i632, label %if.then.i634, label %spx5_inst_rd.exit629.sparx5_update_counter.exit637_crit_edge

spx5_inst_rd.exit629.sparx5_update_counter.exit637_crit_edge: ; preds = %spx5_inst_rd.exit629
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit637

if.then.i634:                                     ; preds = %spx5_inst_rd.exit629
  call void @__sanitizer_cov_trace_pc() #11
  %add.i633 = add i64 %234, 4294967296
  %235 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store8_noabort(i32 %235)
  store i64 %add.i633, ptr %arrayidx65, align 8
  br label %sparx5_update_counter.exit637

sparx5_update_counter.exit637:                    ; preds = %if.then.i634, %spx5_inst_rd.exit629.sparx5_update_counter.exit637_crit_edge
  %236 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load8_noabort(i32 %236)
  %237 = load i64, ptr %arrayidx65, align 8
  %and2.i635 = and i64 %237, -4294967296
  %add4.i636 = or i64 %and2.i635, %conv.i630
  store i64 %add4.i636, ptr %arrayidx65, align 8
  %arrayidx67 = getelementptr i64, ptr %portstats, i32 73
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit637.spx5_inst_rd.exit643_crit_edge, label %do.end.i.i639, !prof !169

sparx5_update_counter.exit637.spx5_inst_rd.exit643_crit_edge: ; preds = %sparx5_update_counter.exit637
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit643

do.end.i.i639:                                    ; preds = %sparx5_update_counter.exit637
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit643

spx5_inst_rd.exit643:                             ; preds = %do.end.i.i639, %sparx5_update_counter.exit637.spx5_inst_rd.exit643_crit_edge
  %add.ptr51.i.i642 = getelementptr i8, ptr %add.ptr50.i.i, i32 144
  %238 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i642) #9, !srcloc !170
  %239 = tail call i32 @llvm.bswap.i32(i32 %238) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i644 = zext i32 %239 to i64
  %240 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load8_noabort(i32 %240)
  %241 = load i64, ptr %arrayidx67, align 8
  %and.i645 = and i64 %241, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i645, i64 %conv.i644)
  %cmp.i646 = icmp ugt i64 %and.i645, %conv.i644
  br i1 %cmp.i646, label %if.then.i648, label %spx5_inst_rd.exit643.sparx5_update_counter.exit651_crit_edge

spx5_inst_rd.exit643.sparx5_update_counter.exit651_crit_edge: ; preds = %spx5_inst_rd.exit643
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit651

if.then.i648:                                     ; preds = %spx5_inst_rd.exit643
  call void @__sanitizer_cov_trace_pc() #11
  %add.i647 = add i64 %241, 4294967296
  %242 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store8_noabort(i32 %242)
  store i64 %add.i647, ptr %arrayidx67, align 8
  br label %sparx5_update_counter.exit651

sparx5_update_counter.exit651:                    ; preds = %if.then.i648, %spx5_inst_rd.exit643.sparx5_update_counter.exit651_crit_edge
  %243 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load8_noabort(i32 %243)
  %244 = load i64, ptr %arrayidx67, align 8
  %and2.i649 = and i64 %244, -4294967296
  %add4.i650 = or i64 %and2.i649, %conv.i644
  store i64 %add4.i650, ptr %arrayidx67, align 8
  %arrayidx69 = getelementptr i64, ptr %portstats, i32 74
  br i1 %cmp.not.i.i, label %sparx5_update_counter.exit651.spx5_inst_rd.exit657_crit_edge, label %do.end.i.i653, !prof !169

sparx5_update_counter.exit651.spx5_inst_rd.exit657_crit_edge: ; preds = %sparx5_update_counter.exit651
  call void @__sanitizer_cov_trace_pc() #11
  br label %spx5_inst_rd.exit657

do.end.i.i653:                                    ; preds = %sparx5_update_counter.exit651
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %spx5_inst_rd.exit657

spx5_inst_rd.exit657:                             ; preds = %do.end.i.i653, %sparx5_update_counter.exit651.spx5_inst_rd.exit657_crit_edge
  %add.ptr51.i.i656 = getelementptr i8, ptr %add.ptr50.i.i, i32 300
  %245 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i656) #9, !srcloc !170
  %246 = tail call i32 @llvm.bswap.i32(i32 %245) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv.i658 = zext i32 %246 to i64
  %247 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load8_noabort(i32 %247)
  %248 = load i64, ptr %arrayidx69, align 8
  %and.i659 = and i64 %248, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i659, i64 %conv.i658)
  %cmp.i660 = icmp ugt i64 %and.i659, %conv.i658
  br i1 %cmp.i660, label %if.then.i662, label %spx5_inst_rd.exit657.sparx5_update_counter.exit665_crit_edge

spx5_inst_rd.exit657.sparx5_update_counter.exit665_crit_edge: ; preds = %spx5_inst_rd.exit657
  call void @__sanitizer_cov_trace_pc() #11
  br label %sparx5_update_counter.exit665

if.then.i662:                                     ; preds = %spx5_inst_rd.exit657
  call void @__sanitizer_cov_trace_pc() #11
  %add.i661 = add i64 %248, 4294967296
  %249 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store8_noabort(i32 %249)
  store i64 %add.i661, ptr %arrayidx69, align 8
  br label %sparx5_update_counter.exit665

sparx5_update_counter.exit665:                    ; preds = %if.then.i662, %spx5_inst_rd.exit657.sparx5_update_counter.exit665_crit_edge
  %250 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load8_noabort(i32 %250)
  %251 = load i64, ptr %arrayidx69, align 8
  %and2.i663 = and i64 %251, -4294967296
  %add4.i664 = or i64 %and2.i663, %conv.i658
  store i64 %add4.i664, ptr %arrayidx69, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158}
!llvm.module.flags = !{!160, !161, !162, !163, !164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = !{ptr @sparx5_ethtool_ops, !1, !"sparx5_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 1186, i32 26}
!2 = !{ptr @sparx_stats_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 1213, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 1219, i32 43}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 1221, i32 24}
!9 = !{ptr @sparx_stats_init.__key.3, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 1222, i32 2}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @sparx_stats_init.__key.5, !10, !"__key", i1 false, i1 false}
!13 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.h", i32 360, i32 2}
!16 = !{ptr @sparx5_rmon_ranges, !17, !"sparx5_rmon_ranges", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 800, i32 45}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 129, i32 2}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 130, i32 2}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 131, i32 2}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 132, i32 2}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 133, i32 2}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 134, i32 2}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 135, i32 2}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 136, i32 2}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 137, i32 2}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 138, i32 2}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 139, i32 2}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 140, i32 2}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 141, i32 2}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 142, i32 2}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 143, i32 2}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 144, i32 2}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 145, i32 2}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 146, i32 2}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 147, i32 2}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 148, i32 2}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 149, i32 2}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 150, i32 2}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 151, i32 2}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 152, i32 2}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 153, i32 2}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 154, i32 2}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 155, i32 2}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 156, i32 2}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 157, i32 2}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 158, i32 2}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 159, i32 2}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 160, i32 2}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 161, i32 2}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 162, i32 2}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 163, i32 2}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 164, i32 2}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 165, i32 2}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 166, i32 2}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 167, i32 2}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 168, i32 2}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 169, i32 2}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 170, i32 2}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 171, i32 2}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 172, i32 2}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 173, i32 2}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 174, i32 2}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 175, i32 2}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 176, i32 2}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 177, i32 2}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 178, i32 2}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 179, i32 2}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 180, i32 2}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 181, i32 2}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 182, i32 2}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 183, i32 2}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 184, i32 2}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 185, i32 2}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 186, i32 2}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 187, i32 2}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 188, i32 2}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 189, i32 2}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 190, i32 2}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 191, i32 2}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 192, i32 2}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 193, i32 2}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 194, i32 2}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 195, i32 2}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 196, i32 2}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 197, i32 2}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 198, i32 2}
!158 = !{ptr @sparx5_stats_layout, !159, !"sparx5_stats_layout", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_ethtool.c", i32 128, i32 26}
!160 = !{i32 1, !"wchar_size", i32 2}
!161 = !{i32 1, !"min_enum_size", i32 4}
!162 = !{i32 8, !"branch-target-enforcement", i32 0}
!163 = !{i32 8, !"sign-return-address", i32 0}
!164 = !{i32 8, !"sign-return-address-all", i32 0}
!165 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!166 = !{i32 7, !"uwtable", i32 1}
!167 = !{i32 7, !"frame-pointer", i32 2}
!168 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!169 = !{!"branch_weights", i32 2000, i32 1}
!170 = !{i64 6219826}
!171 = !{i64 2157376905}
!172 = !{i64 2157377836}
!173 = !{i64 2157380305}
!174 = !{i64 2157380609}
!175 = !{i64 6219408}
!176 = !{i64 2157378316}
