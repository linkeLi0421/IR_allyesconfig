; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phylink_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpaa2_mac = type { ptr, %struct.dpmac_link_state, ptr, ptr, %struct.dpmac_attr, %struct.phylink_config, ptr, i32, i32, ptr, ptr }
%struct.dpmac_link_state = type { i32, i64, i32, i32, i64, i64 }
%struct.dpmac_attr = type { i16, i32, i32, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.100, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.100 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
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
%struct.fsl_mc_device = type { %struct.device, i64, i16, i32, i16, ptr, %struct.fsl_mc_obj_desc, ptr, ptr, ptr, ptr, ptr }
%struct.fsl_mc_obj_desc = type { [16 x i8], i32, i16, i16, i16, i8, i8, i32, [16 x i8], i16 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.phylink_link_state = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i8 }

@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No dpmac@%d node found.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RGMII delay not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@dpaa2_mac_phylink_ops = internal constant { %struct.phylink_mac_ops, [60 x i8] } { %struct.phylink_mac_ops { ptr @phylink_generic_validate, ptr null, ptr null, ptr null, ptr @dpaa2_mac_config, ptr null, ptr null, ptr @dpaa2_mac_link_down, ptr @dpaa2_mac_link_up }, [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"phylink_fwnode_phy_connect() = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dpmac_open() = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dpmac_get_attributes() = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@dpaa2_mac_ethtool_stats = internal global { [28 x [32 x i8]], [224 x i8] } { [28 x [32 x i8]] [[32 x i8] c"[mac] rx 64 bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[mac] rx 65-127 bytes\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[mac] rx 128-255 bytes\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[mac] rx 256-511 bytes\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[mac] rx 512-1023 bytes\00\00\00\00\00\00\00\00\00", [32 x i8] c"[mac] rx 1024-1518 bytes\00\00\00\00\00\00\00\00", [32 x i8] c"[mac] rx 1519-max bytes\00\00\00\00\00\00\00\00\00", [32 x i8] c"[mac] rx frags\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[mac] rx jabber\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[mac] rx frame discards\00\00\00\00\00\00\00\00\00", [32 x i8] c"[mac] rx align errors\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[mac] tx undersized\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[mac] rx oversized\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[mac] rx pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[mac] tx b-pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[mac] rx bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[mac] rx m-cast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[mac] rx b-cast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[mac] rx all frames\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[mac] rx u-cast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[mac] rx frame errors\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[mac] tx bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[mac] tx m-cast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[mac] tx b-cast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[mac] tx u-cast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[mac] tx frame errors\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[mac] rx frames ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"[mac] tx frames ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [224 x i8] zeroinitializer }, align 32
@dpaa2_mac_get_ethtool_stats.__print_once = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dpmac_get_counter error %d\0A\00", [36 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pcs-handle\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pcs-handle node not found\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pcs-handle node not available\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lynx_pcs_create() failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: dpmac_set_link_state() = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.dpaa2_mac_config = private unnamed_addr constant [17 x i8] c"dpaa2_mac_config\00", align 1
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dpmac_set_link_state() = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.dpaa2_mac_link_up = private unnamed_addr constant [18 x i8] c"dpaa2_mac_link_up\00", align 1
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dpmacs\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@switch.table.dpaa2_mac_connect = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 9, i32 4, i32 18, i32 9, i32 26, i32 9, i32 9, i32 28], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 21]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 240, i32 23 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 257, i32 23 }
@___asan_gen_.23 = private unnamed_addr constant [22 x i8] c"dpaa2_mac_phylink_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 173, i32 37 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 311, i32 23 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 345, i32 23 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 352, i32 23 }
@___asan_gen_.35 = private unnamed_addr constant [24 x i8] c"dpaa2_mac_ethtool_stats\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 384, i32 13 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 443, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 187, i32 43 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 190, i32 29 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 195, i32 28 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 207, i32 28 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 118, i32 28 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 170, i32 28 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 51, i32 39 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [52 x i8] c"../drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 73, i32 50 }
@___asan_gen_.68 = private unnamed_addr constant [31 x i8] c"switch.table.dpaa2_mac_connect\00", align 1
@llvm.compiler.used = appending global [18 x ptr] [ptr @.str, ptr @.str.1, ptr @dpaa2_mac_phylink_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @dpaa2_mac_ethtool_stats, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @switch.table.dpaa2_mac_connect], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_mac_phylink_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_mac_ethtool_stats to i32), i32 896, i32 1120, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dpaa2_mac_connect to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpaa2_mac_connect(ptr noundef %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %net_dev1 = getelementptr inbounds %struct.dpaa2_mac, ptr %mac, i32 0, i32 2
  %0 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_dev1, align 8
  %link_type = getelementptr inbounds %struct.dpaa2_mac, ptr %mac, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %link_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_type, align 4
  %if_link_type = getelementptr inbounds %struct.dpaa2_mac, ptr %mac, i32 0, i32 8
  %4 = ptrtoint ptr %if_link_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %if_link_type, align 8
  %fw_node = getelementptr inbounds %struct.dpaa2_mac, ptr %mac, i32 0, i32 10
  %5 = ptrtoint ptr %fw_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw_node, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %attr = getelementptr inbounds %struct.dpaa2_mac, ptr %mac, i32 0, i32 4
  %7 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %attr, align 8
  %conv = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %conv) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %.elt139 = getelementptr inbounds %struct.dpaa2_mac, ptr %mac, i32 0, i32 4, i32 2
  %9 = ptrtoint ptr %.elt139 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack140 = load i32, ptr %.elt139, align 8
  %call.i = tail call i32 @fwnode_get_phy_mode(ptr noundef nonnull %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.if.end6_crit_edge, label %if.end.i

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end.i:                                         ; preds = %if.end
  %switch.tableidx = add i32 %.unpack140, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 8
  br i1 %10, label %switch.hole_check, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check:                                ; preds = %if.end.i
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -105, %switch.maskindex
  %11 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %switch.lobit.not = icmp eq i8 %11, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.dpaa2_mac_connect, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end6

if.end6:                                          ; preds = %switch.lookup, %if.end.if.end6_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %if.end.if.end6_crit_edge ], [ %switch.load, %switch.lookup ]
  %if_mode = getelementptr inbounds %struct.dpaa2_mac, ptr %mac, i32 0, i32 7
  %13 = ptrtoint ptr %if_mode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i.ph, ptr %if_mode, align 4
  %cmp.i.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end6.is_of_node.exit.thread_crit_edge, label %is_of_node.exit

if.end6.is_of_node.exit.thread_crit_edge:         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_of_node.exit.thread

is_of_node.exit:                                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %cmp.i145 = icmp eq ptr %15, @of_fwnode_ops
  %add.ptr = getelementptr i8, ptr %6, i32 -12
  %spec.select = select i1 %cmp.i145, ptr %add.ptr, ptr null
  br label %is_of_node.exit.thread

is_of_node.exit.thread:                           ; preds = %is_of_node.exit, %if.end6.is_of_node.exit.thread_crit_edge
  %16 = phi ptr [ null, %if.end6.is_of_node.exit.thread_crit_edge ], [ %spec.select, %is_of_node.exit ]
  %call10 = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef %16) #7
  br i1 %call10, label %land.lhs.true, label %is_of_node.exit.thread.if.end23_crit_edge

is_of_node.exit.thread.if.end23_crit_edge:        ; preds = %is_of_node.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

land.lhs.true:                                    ; preds = %is_of_node.exit.thread
  %17 = ptrtoint ptr %if_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %if_mode, align 4
  %.off = add i32 %18, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then22, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end23:                                         ; preds = %land.lhs.true.if.end23_crit_edge, %is_of_node.exit.thread.if.end23_crit_edge
  %19 = ptrtoint ptr %link_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %link_type, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %if.end23.if.end45_crit_edge [
    i32 2, label %land.lhs.true28
    i32 3, label %if.end23.if.then37_crit_edge
  ]

if.end23.if.then37_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then37

if.end23.if.end45_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

land.lhs.true28:                                  ; preds = %if.end23
  %22 = ptrtoint ptr %.elt139 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %.elt139, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp30.not = icmp eq i32 %23, 4
  br i1 %cmp30.not, label %land.lhs.true28.if.end45_crit_edge, label %land.lhs.true28.if.then37_crit_edge

land.lhs.true28.if.then37_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then37

land.lhs.true28.if.end45_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then37:                                        ; preds = %land.lhs.true28.if.then37_crit_edge, %if.end23.if.then37_crit_edge
  %call.i146 = tail call ptr @fwnode_find_reference(ptr noundef nonnull %6, ptr noundef nonnull @.str.7, i32 noundef 0) #7
  %cmp.i.i147 = icmp ugt ptr %call.i146, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i147, label %if.then.i, label %if.end.i148

if.then.i:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net_dev1, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.8) #10
  br label %if.end45

if.end.i148:                                      ; preds = %if.then37
  %call2.i = tail call zeroext i1 @fwnode_device_is_available(ptr noundef %call.i146) #7
  br i1 %call2.i, label %if.end5.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net_dev1, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %27, ptr noundef nonnull @.str.9) #10
  tail call void @fwnode_handle_put(ptr noundef %call.i146) #7
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i148
  %call6.i = tail call ptr @fwnode_mdio_find_device(ptr noundef %call.i146) #7
  tail call void @fwnode_handle_put(ptr noundef %call.i146) #7
  %tobool.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i, label %if.end5.i.cleanup_crit_edge, label %if.end8.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i:                                        ; preds = %if.end5.i
  %call9.i = tail call ptr @lynx_pcs_create(ptr noundef nonnull %call6.i) #7
  %pcs.i = getelementptr inbounds %struct.dpaa2_mac, ptr %mac, i32 0, i32 9
  %28 = ptrtoint ptr %pcs.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call9.i, ptr %pcs.i, align 4
  %tobool11.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end8.i.if.end45_crit_edge

if.end8.i.if.end45_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net_dev1, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.10) #10
  tail call void @put_device(ptr noundef nonnull %call6.i) #7
  br label %cleanup

if.end45:                                         ; preds = %if.end8.i.if.end45_crit_edge, %if.then.i, %land.lhs.true28.if.end45_crit_edge, %if.end23.if.end45_crit_edge
  %phylink_config = getelementptr inbounds %struct.dpaa2_mac, ptr %mac, i32 0, i32 5
  %31 = getelementptr inbounds %struct.dpaa2_mac, ptr %mac, i32 0, i32 5, i32 2
  %32 = call ptr @memset(ptr %31, i32 0, i32 16)
  %dev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  %33 = ptrtoint ptr %phylink_config to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dev, ptr %phylink_config, align 8
  %type = getelementptr inbounds %struct.dpaa2_mac, ptr %mac, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %type, align 4
  %mac_capabilities = getelementptr inbounds %struct.dpaa2_mac, ptr %mac, i32 0, i32 5, i32 8
  %35 = ptrtoint ptr %mac_capabilities to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1963, ptr %mac_capabilities, align 4
  %36 = ptrtoint ptr %if_mode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %if_mode, align 4
  %supported_interfaces = getelementptr inbounds %struct.dpaa2_mac, ptr %mac, i32 0, i32 5, i32 7
  %rem.i = and i32 %37, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %37, 5
  %add.ptr.i = getelementptr i32, ptr %supported_interfaces, i32 %div2.i
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %39
  store i32 %or.i, ptr %add.ptr.i, align 4
  %pcs = getelementptr inbounds %struct.dpaa2_mac, ptr %mac, i32 0, i32 9
  %40 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pcs, align 4
  %tobool52.not = icmp eq ptr %41, null
  br i1 %tobool52.not, label %if.end45.if.end61_crit_edge, label %if.then53

if.end45.if.end61_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then53:                                        ; preds = %if.end45
  %42 = ptrtoint ptr %if_mode to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %if_mode, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %43, label %if.then53.if.end61_crit_edge [
    i32 21, label %if.then53.sw.bb_crit_edge
    i32 4, label %if.then53.sw.bb_crit_edge163
  ]

if.then53.sw.bb_crit_edge163:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then53.sw.bb_crit_edge:                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then53.if.end61_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

sw.bb:                                            ; preds = %if.then53.sw.bb_crit_edge, %if.then53.sw.bb_crit_edge163
  %45 = ptrtoint ptr %supported_interfaces to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %supported_interfaces, align 4
  %or.i144 = or i32 %46, 2097168
  store i32 %or.i144, ptr %supported_interfaces, align 4
  br label %if.end61

if.end61:                                         ; preds = %sw.bb, %if.then53.if.end61_crit_edge, %if.end45.if.end61_crit_edge
  %47 = ptrtoint ptr %if_mode to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %if_mode, align 4
  %call64 = tail call ptr @phylink_create(ptr noundef %phylink_config, ptr noundef nonnull %6, i32 noundef %48, ptr noundef nonnull @dpaa2_mac_phylink_ops) #7
  %cmp.i150 = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i150, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %call64 to i32
  br label %err_pcs_destroy

if.end68:                                         ; preds = %if.end61
  %phylink69 = getelementptr inbounds %struct.dpaa2_mac, ptr %mac, i32 0, i32 6
  %50 = ptrtoint ptr %phylink69 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call64, ptr %phylink69, align 8
  %51 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pcs, align 4
  %tobool71.not = icmp eq ptr %52, null
  br i1 %tobool71.not, label %if.end68.if.end75_crit_edge, label %if.then72

if.end68.if.end75_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phylink_set_pcs(ptr noundef %call64, ptr noundef nonnull %52) #7
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.end68.if.end75_crit_edge
  %53 = ptrtoint ptr %phylink69 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %phylink69, align 8
  %call77 = tail call i32 @phylink_fwnode_phy_connect(ptr noundef %54, ptr noundef nonnull %6, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end75.cleanup_crit_edge, label %if.then79

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %call77) #10
  %55 = ptrtoint ptr %phylink69 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %phylink69, align 8
  tail call void @phylink_destroy(ptr noundef %56) #7
  br label %err_pcs_destroy

err_pcs_destroy:                                  ; preds = %if.then79, %if.then66
  %err.0 = phi i32 [ %49, %if.then66 ], [ %call77, %if.then79 ]
  %57 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pcs, align 4
  %tobool.not.i152 = icmp eq ptr %58, null
  br i1 %tobool.not.i152, label %err_pcs_destroy.cleanup_crit_edge, label %if.then.i154

err_pcs_destroy.cleanup_crit_edge:                ; preds = %err_pcs_destroy
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i154:                                     ; preds = %err_pcs_destroy
  call void @__sanitizer_cov_trace_pc() #9
  %call.i153 = tail call ptr @lynx_get_mdio_device(ptr noundef nonnull %58) #7
  tail call void @lynx_pcs_destroy(ptr noundef nonnull %58) #7
  tail call void @put_device(ptr noundef %call.i153) #7
  %59 = ptrtoint ptr %pcs to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %pcs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i154, %err_pcs_destroy.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.then12.i, %if.end5.i.cleanup_crit_edge, %if.then3.i, %if.then22, %switch.hole_check.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then22 ], [ -19, %if.then ], [ 0, %if.end75.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ %err.0, %err_pcs_destroy.cleanup_crit_edge ], [ %err.0, %if.then.i154 ], [ -517, %if.end5.i.cleanup_crit_edge ], [ -19, %if.then3.i ], [ -12, %if.then12.i ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_phy_is_fixed_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phylink_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_set_pcs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_fwnode_phy_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpaa2_mac_disconnect(ptr nocapture noundef %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phylink = getelementptr inbounds %struct.dpaa2_mac, ptr %mac, i32 0, i32 6
  %0 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phylink, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  tail call void @phylink_disconnect_phy(ptr noundef nonnull %1) #7
  %2 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phylink, align 8
  tail call void @phylink_destroy(ptr noundef %3) #7
  %pcs.i = getelementptr inbounds %struct.dpaa2_mac, ptr %mac, i32 0, i32 9
  %4 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcs.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %if.then.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call ptr @lynx_get_mdio_device(ptr noundef nonnull %5) #7
  tail call void @lynx_pcs_destroy(ptr noundef nonnull %5) #7
  tail call void @put_device(ptr noundef %call.i) #7
  %6 = ptrtoint ptr %pcs.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pcs.i, align 4
  br label %return

return:                                           ; preds = %if.then.i, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_disconnect_phy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpaa2_mac_open(ptr noundef %mac) local_unnamed_addr #0 align 64 {
entry:
  %id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 8
  %net_dev1 = getelementptr inbounds %struct.dpaa2_mac, ptr %mac, i32 0, i32 2
  %2 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev1, align 8
  %mc_io = getelementptr inbounds %struct.dpaa2_mac, ptr %mac, i32 0, i32 3
  %4 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc_io, align 4
  %id = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %mc_handle = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 4
  %call = tail call i32 @dpmac_open(ptr noundef %5, i32 noundef 0, i32 noundef %7, ptr noundef %mc_handle) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %8 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mc_handle, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool3.not = icmp eq i16 %9, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mc_io, align 4
  %attr = getelementptr inbounds %struct.dpaa2_mac, ptr %mac, i32 0, i32 4
  %call6 = tail call i32 @dpmac_get_attributes(ptr noundef %11, i32 noundef 0, i16 noundef zeroext %9, ptr noundef %attr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %call6) #10
  br label %err_close_dpmac

if.end9:                                          ; preds = %if.end
  %12 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mac, align 8
  %14 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %attr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #7
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %id.i, align 4, !annotation !47
  %parent1.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent1.i, align 8
  %call.i = tail call ptr @dev_fwnode(ptr noundef %18) #7
  %tobool.not.i.i.i = icmp eq ptr %call.i, null
  %cmp.i.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %if.end9.if.then15_crit_edge, label %is_of_node.exit.i

if.end9.if.then15_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

is_of_node.exit.i:                                ; preds = %if.end9
  %ops.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i.i, align 4
  %cmp.i.i = icmp eq ptr %20, @of_fwnode_ops
  br i1 %cmp.i.i, label %if.then.i, label %is_of_node.exit.i.if.then15_crit_edge

is_of_node.exit.i.if.then15_crit_edge:            ; preds = %is_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

if.then.i:                                        ; preds = %is_of_node.exit.i
  %call3.i = tail call ptr @of_find_node_by_name(ptr noundef null, ptr noundef nonnull @.str.13) #7
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %dpaa2_mac_get_node.exit.thread57, label %cond.true.i

dpaa2_mac_get_node.exit.thread57:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #7
  br label %is_of_node.exit.thread

cond.true.i:                                      ; preds = %if.then.i
  %fwnode6.i = getelementptr inbounds %struct.device_node, ptr %call3.i, i32 0, i32 3
  %call16.i = tail call ptr @fwnode_get_next_child_node(ptr noundef nonnull %fwnode6.i, ptr noundef null) #7
  %tobool17.not77.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not77.i, label %cond.true.i.dpaa2_mac_get_node.exit.thread62_crit_edge, label %for.body.lr.ph.i

cond.true.i.dpaa2_mac_get_node.exit.thread62_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dpaa2_mac_get_node.exit.thread62

for.body.lr.ph.i:                                 ; preds = %cond.true.i
  %conv.i = zext i16 %15 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %child.078.i = phi ptr [ %call16.i, %for.body.lr.ph.i ], [ %call40.i, %for.inc.i.for.body.i_crit_edge ]
  %cmp.i.i61.i = icmp ugt ptr %child.078.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i61.i, label %for.body.i.for.inc.i_crit_edge, label %is_of_node.exit66.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

is_of_node.exit66.i:                              ; preds = %for.body.i
  %ops.i63.i = getelementptr inbounds %struct.fwnode_handle, ptr %child.078.i, i32 0, i32 1
  %21 = ptrtoint ptr %ops.i63.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i63.i, align 4
  %cmp.i64.i = icmp eq ptr %22, @of_fwnode_ops
  br i1 %cmp.i64.i, label %if.end33.i, label %is_of_node.exit66.i.for.inc.i_crit_edge

is_of_node.exit66.i.for.inc.i_crit_edge:          ; preds = %is_of_node.exit66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end33.i:                                       ; preds = %is_of_node.exit66.i
  %add.ptr.i = getelementptr i8, ptr %child.078.i, i32 -12
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.14, ptr noundef nonnull %id.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool34.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool34.not.i, label %if.end36.i, label %if.end33.i.for.inc.i_crit_edge

if.end33.i.for.inc.i_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end36.i:                                       ; preds = %if.end33.i
  %23 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv.i)
  %cmp.i = icmp eq i32 %24, %conv.i
  br i1 %cmp.i, label %is_of_node.exit, label %if.end36.i.for.inc.i_crit_edge

if.end36.i.for.inc.i_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end36.i.for.inc.i_crit_edge, %if.end33.i.for.inc.i_crit_edge, %is_of_node.exit66.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %call40.i = call ptr @fwnode_get_next_child_node(ptr noundef nonnull %fwnode6.i, ptr noundef nonnull %child.078.i) #7
  %tobool17.not.i = icmp eq ptr %call40.i, null
  br i1 %tobool17.not.i, label %for.inc.i.dpaa2_mac_get_node.exit.thread62_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.dpaa2_mac_get_node.exit.thread62_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dpaa2_mac_get_node.exit.thread62

dpaa2_mac_get_node.exit.thread62:                 ; preds = %for.inc.i.dpaa2_mac_get_node.exit.thread62_crit_edge, %cond.true.i.dpaa2_mac_get_node.exit.thread62_crit_edge
  call void @of_node_put(ptr noundef nonnull %call3.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #7
  br label %is_of_node.exit.thread

if.then15:                                        ; preds = %is_of_node.exit.i.if.then15_crit_edge, %if.end9.if.then15_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #7
  br label %err_close_dpmac

is_of_node.exit.thread:                           ; preds = %dpaa2_mac_get_node.exit.thread62, %dpaa2_mac_get_node.exit.thread57
  %fw_node1866 = getelementptr inbounds %struct.dpaa2_mac, ptr %mac, i32 0, i32 10
  %25 = ptrtoint ptr %fw_node1866 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %fw_node1866, align 8
  br label %29

is_of_node.exit:                                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  %ops.i63.i.le = getelementptr inbounds %struct.fwnode_handle, ptr %child.078.i, i32 0, i32 1
  call void @of_node_put(ptr noundef nonnull %call3.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #7
  %fw_node18 = getelementptr inbounds %struct.dpaa2_mac, ptr %mac, i32 0, i32 10
  %26 = ptrtoint ptr %fw_node18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %child.078.i, ptr %fw_node18, align 8
  %27 = ptrtoint ptr %ops.i63.i.le to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i63.i.le, align 4
  %cmp.i53 = icmp eq ptr %28, @of_fwnode_ops
  %spec.select = select i1 %cmp.i53, ptr %add.ptr.i, ptr null
  br label %29

29:                                               ; preds = %is_of_node.exit, %is_of_node.exit.thread
  %30 = phi ptr [ null, %is_of_node.exit.thread ], [ %spec.select, %is_of_node.exit ]
  %of_node = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 133, i32 27
  %31 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %of_node, align 16
  br label %cleanup

err_close_dpmac:                                  ; preds = %if.then15, %if.then8
  %err.0 = phi i32 [ %call6, %if.then8 ], [ -517, %if.then15 ]
  %32 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mc_io, align 4
  %34 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %mc_handle, align 8
  %call25 = call i32 @dpmac_close(ptr noundef %33, i32 noundef 0, i16 noundef zeroext %35) #7
  br label %cleanup

cleanup:                                          ; preds = %err_close_dpmac, %29, %if.then
  %retval.0 = phi i32 [ -19, %if.then ], [ %err.0, %err_close_dpmac ], [ 0, %29 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpmac_open(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpmac_get_attributes(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpmac_close(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpaa2_mac_close(ptr nocapture noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 8
  %mc_io = getelementptr inbounds %struct.dpaa2_mac, ptr %mac, i32 0, i32 3
  %2 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_io, align 4
  %mc_handle = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mc_handle, align 8
  %call = tail call i32 @dpmac_close(ptr noundef %3, i32 noundef 0, i16 noundef zeroext %5) #7
  %fw_node = getelementptr inbounds %struct.dpaa2_mac, ptr %mac, i32 0, i32 10
  %6 = ptrtoint ptr %fw_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw_node, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @fwnode_handle_put(ptr noundef nonnull %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dpaa2_mac_get_sset_count() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 28
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpaa2_mac_get_strings(ptr noundef %data) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %p.04 = phi ptr [ %data, %entry ], [ %add.ptr, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [28 x [32 x i8]], ptr @dpaa2_mac_ethtool_stats, i32 0, i32 %i.05
  %call = tail call i32 @strlcpy(ptr noundef %p.04, ptr noundef %arrayidx, i32 noundef 32) #7
  %add.ptr = getelementptr i8, ptr %p.04, i32 32
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 28
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpaa2_mac_get_ethtool_stats(ptr nocapture noundef readonly %mac, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  %value = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #7
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %value, align 8, !annotation !47
  %mc_io = getelementptr inbounds %struct.dpaa2_mac, ptr %mac, i32 0, i32 3
  %mc_handle = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 4
  %net_dev = getelementptr inbounds %struct.dpaa2_mac, ptr %mac, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.014 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mc_io, align 4
  %5 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mc_handle, align 8
  %call = call i32 @dpmac_get_counter(ptr noundef %4, i32 noundef 0, i16 noundef zeroext %6, i32 noundef %i.014, ptr noundef nonnull %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %do.body

do.body:                                          ; preds = %for.body
  %.b13 = load i1, ptr @dpaa2_mac_get_ethtool_stats.__print_once, align 1
  br i1 %.b13, label %do.body.for.inc_crit_edge, label %if.then2

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @dpaa2_mac_get_ethtool_stats.__print_once, align 1
  %7 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net_dev, align 8
  call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.5, ptr noundef %8, ptr noundef nonnull @.str.6, i32 noundef %call) #10
  br label %for.inc

if.end3:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %value, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end3, %if.then2, %do.body.for.inc_crit_edge
  %.sink = phi i64 [ %10, %if.end3 ], [ -1, %if.then2 ], [ -1, %do.body.for.inc_crit_edge ]
  %add.ptr4 = getelementptr i64, ptr %data, i32 %i.014
  %11 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %.sink, ptr %add.ptr4, align 8
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, 28
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpmac_get_counter(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_get_phy_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_find_reference(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_mdio_find_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lynx_pcs_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_generic_validate(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpaa2_mac_config(ptr noundef %config, i32 noundef %mode, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %config, i32 -72
  %state1 = getelementptr i8, ptr %config, i32 -64
  %an_enabled = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 6
  %0 = ptrtoint ptr %an_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %an_enabled, align 4
  %options2 = getelementptr i8, ptr %config, i32 -56
  %1 = ptrtoint ptr %options2 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %options2, align 8
  %and = and i64 %2, -2
  %3 = lshr i8 %bf.load, 6
  %.lobit = and i8 %3, 1
  %4 = zext i8 %.lobit to i64
  %and.sink = or i64 %and, %4
  store i64 %and.sink, ptr %options2, align 8
  %mc_io = getelementptr i8, ptr %config, i32 -20
  %5 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mc_io, align 4
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 8
  %mc_handle = getelementptr inbounds %struct.fsl_mc_device, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mc_handle, align 8
  %call = tail call i32 @dpmac_set_link_state(ptr noundef %6, i32 noundef 0, i16 noundef zeroext %10, ptr noundef %state1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %entry.if.end5_crit_edge, label %if.then4

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %net_dev = getelementptr i8, ptr %config, i32 -24
  %11 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net_dev, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.dpaa2_mac_config, i32 noundef %call) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpaa2_mac_link_down(ptr noundef %config, i32 noundef %mode, i32 noundef %interface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %config, i32 -72
  %state = getelementptr i8, ptr %config, i32 -64
  %up = getelementptr i8, ptr %config, i32 -48
  %0 = ptrtoint ptr %up to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %up, align 8
  %mc_io = getelementptr i8, ptr %config, i32 -20
  %1 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mc_io, align 4
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %mc_handle = getelementptr inbounds %struct.fsl_mc_device, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mc_handle, align 8
  %call = tail call i32 @dpmac_set_link_state(ptr noundef %2, i32 noundef 0, i16 noundef zeroext %6, ptr noundef %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %net_dev = getelementptr i8, ptr %config, i32 -24
  %7 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net_dev, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.12, i32 noundef %call) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpaa2_mac_link_up(ptr noundef %config, ptr nocapture noundef readnone %phy, i32 noundef %mode, i32 noundef %interface, i32 noundef %speed, i32 noundef %duplex, i1 noundef zeroext %tx_pause, i1 noundef zeroext %rx_pause) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %config, i32 -72
  %state = getelementptr i8, ptr %config, i32 -64
  %up = getelementptr i8, ptr %config, i32 -48
  %0 = ptrtoint ptr %up to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %up, align 8
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %speed, ptr %state, align 8
  %2 = zext i32 %duplex to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %duplex, label %entry.if.end5_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then3
  ]

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %options = getelementptr i8, ptr %config, i32 -56
  %3 = ptrtoint ptr %options to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %options, align 8
  %or = or i64 %4, 2
  store i64 %or, ptr %options, align 8
  br label %if.end5

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %options4 = getelementptr i8, ptr %config, i32 -56
  %5 = ptrtoint ptr %options4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %options4, align 8
  %and = and i64 %6, -3
  store i64 %and, ptr %options4, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then, %entry.if.end5_crit_edge
  %options7 = getelementptr i8, ptr %config, i32 -56
  %7 = ptrtoint ptr %options7 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %options7, align 8
  %and11 = and i64 %8, -13
  %masksel = select i1 %rx_pause, i64 4, i64 0
  %and11.sink = or i64 %and11, %masksel
  %xor41 = xor i1 %tx_pause, %rx_pause
  %options18 = getelementptr i8, ptr %config, i32 -56
  %masksel42 = select i1 %xor41, i64 8, i64 0
  %and22.sink = or i64 %and11.sink, %masksel42
  %9 = ptrtoint ptr %options18 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %and22.sink, ptr %options18, align 8
  %mc_io = getelementptr i8, ptr %config, i32 -20
  %10 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mc_io, align 4
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %mc_handle = getelementptr inbounds %struct.fsl_mc_device, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mc_handle, align 8
  %call = tail call i32 @dpmac_set_link_state(ptr noundef %11, i32 noundef 0, i16 noundef zeroext %15, ptr noundef %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool24.not = icmp eq i32 %call, 0
  br i1 %tobool24.not, label %if.end5.if.end26_crit_edge, label %if.then25

if.end5.if.end26_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then25:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %net_dev = getelementptr i8, ptr %config, i32 -24
  %16 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net_dev, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %17, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.dpaa2_mac_link_up, i32 noundef %call) #10
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end5.if.end26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpmac_set_link_state(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lynx_get_mdio_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lynx_pcs_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c", i32 240, i32 23}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c", i32 257, i32 23}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c", i32 311, i32 23}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c", i32 345, i32 23}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c", i32 352, i32 23}
!10 = distinct !{null, !11, !"__print_once", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c", i32 443, i32 4}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c", i32 187, i32 43}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c", i32 190, i32 29}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c", i32 195, i32 28}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c", i32 207, i32 28}
!22 = !{ptr @dpaa2_mac_phylink_ops, !23, !"dpaa2_mac_phylink_ops", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c", i32 173, i32 37}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c", i32 118, i32 28}
!26 = !{ptr @__func__.dpaa2_mac_config, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c", i32 119, i32 7}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c", i32 170, i32 28}
!30 = !{ptr @__func__.dpaa2_mac_link_up, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c", i32 155, i32 7}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c", i32 51, i32 39}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c", i32 73, i32 50}
!36 = !{ptr @dpaa2_mac_ethtool_stats, !37, !"dpaa2_mac_ethtool_stats", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c", i32 384, i32 13}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"auto-init"}
