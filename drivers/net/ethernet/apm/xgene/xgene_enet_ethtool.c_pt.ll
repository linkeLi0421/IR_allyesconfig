; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/apm/xgene/xgene_enet_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/apm/xgene/xgene_enet_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgene_gstrings_stats = type { [32 x i8], i32, i32, i32 }
%struct.xgene_enet_pdata = type { ptr, ptr, i32, ptr, ptr, i32, [8 x ptr], [8 x ptr], [8 x i16], [8 x i16], ptr, i32, i32, [16 x i32], i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.xgene_enet_cle, ptr, i64, i64, %struct.spinlock, ptr, %struct.spinlock, ptr, ptr, ptr, %struct.delayed_work, i32, i8, i8, i8, i16, [4 x i32], [4 x i32], %struct.spinlock, i8, i8, i8, ptr, i8, i32, i8, i8 }
%struct.xgene_enet_cle = type { ptr, %struct.xgene_cle_ptree, i32, i32, i32, i32, i32 }
%struct.xgene_cle_ptree = type { ptr, ptr, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.xgene_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.143, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.143 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.142, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.142 = type { [3 x i32], [3 x i32], [3 x i32] }

@xgene_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @xgene_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgene_get_pauseparam, ptr @xgene_set_pauseparam, ptr null, ptr @xgene_get_strings, ptr null, ptr @xgene_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @xgene_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgene_get_link_ksettings, ptr @xgene_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@gstrings_extd_stats = internal constant { [44 x %struct.xgene_gstrings_stats], [496 x i8] } { [44 x %struct.xgene_gstrings_stats] [%struct.xgene_gstrings_stats { [32 x i8] c"tx_rx_64b_frame_cntr\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 32, i32 31 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_rx_127b_frame_cntr\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 33, i32 31 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_rx_255b_frame_cntr\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 34, i32 31 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_rx_511b_frame_cntr\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 35, i32 31 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_rx_1023b_frame_cntr\00\00\00\00\00\00\00\00\00\00", i32 0, i32 36, i32 31 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_rx_1518b_frame_cntr\00\00\00\00\00\00\00\00\00\00", i32 0, i32 37, i32 31 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_rx_1522b_frame_cntr\00\00\00\00\00\00\00\00\00\00", i32 0, i32 38, i32 31 }, %struct.xgene_gstrings_stats { [32 x i8] c"rx_fcs_error_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 41, i32 16 }, %struct.xgene_gstrings_stats { [32 x i8] c"rx_multicast_pkt_cntr\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 42, i32 31 }, %struct.xgene_gstrings_stats { [32 x i8] c"rx_broadcast_pkt_cntr\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 43, i32 31 }, %struct.xgene_gstrings_stats { [32 x i8] c"rx_ctrl_frame_pkt_cntr\00\00\00\00\00\00\00\00\00\00", i32 0, i32 44, i32 16 }, %struct.xgene_gstrings_stats { [32 x i8] c"rx_pause_frame_pkt_cntr\00\00\00\00\00\00\00\00\00", i32 0, i32 45, i32 16 }, %struct.xgene_gstrings_stats { [32 x i8] c"rx_unk_opcode_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 46, i32 16 }, %struct.xgene_gstrings_stats { [32 x i8] c"rx_align_err_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 47, i32 16 }, %struct.xgene_gstrings_stats { [32 x i8] c"rx_frame_len_err_cntr\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 48, i32 16 }, %struct.xgene_gstrings_stats { [32 x i8] c"rx_frame_len_err_recov_cntr\00\00\00\00\00", i32 0, i32 39, i32 0 }, %struct.xgene_gstrings_stats { [32 x i8] c"rx_code_err_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 49, i32 16 }, %struct.xgene_gstrings_stats { [32 x i8] c"rx_carrier_sense_err_cntr\00\00\00\00\00\00\00", i32 0, i32 50, i32 16 }, %struct.xgene_gstrings_stats { [32 x i8] c"rx_undersize_pkt_cntr\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 51, i32 16 }, %struct.xgene_gstrings_stats { [32 x i8] c"rx_oversize_pkt_cntr\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 52, i32 16 }, %struct.xgene_gstrings_stats { [32 x i8] c"rx_fragments_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 53, i32 16 }, %struct.xgene_gstrings_stats { [32 x i8] c"rx_jabber_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 54, i32 16 }, %struct.xgene_gstrings_stats { [32 x i8] c"rx_jabber_recov_cntr\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 39, i32 0 }, %struct.xgene_gstrings_stats { [32 x i8] c"rx_dropped_pkt_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 55, i32 16 }, %struct.xgene_gstrings_stats { [32 x i8] c"rx_overrun_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 39, i32 0 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_multicast_pkt_cntr\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 58, i32 31 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_broadcast_pkt_cntr\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 59, i32 31 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_pause_ctrl_frame_cntr\00\00\00\00\00\00\00\00", i32 0, i32 60, i32 16 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_defer_pkt_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 61, i32 31 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_excv_defer_pkt_cntr\00\00\00\00\00\00\00\00\00\00", i32 0, i32 62, i32 31 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_single_col_pkt_cntr\00\00\00\00\00\00\00\00\00\00", i32 0, i32 63, i32 31 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_multi_col_pkt_cntr\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 64, i32 31 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_late_col_pkt_cntr\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 65, i32 31 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_excv_col_pkt_cntr\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 66, i32 31 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_total_col_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 67, i32 31 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_pause_frames_hnrd_cntr\00\00\00\00\00\00\00", i32 0, i32 68, i32 16 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_drop_frame_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 69, i32 16 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_jabber_frame_cntr\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 70, i32 12 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_fcs_error_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 71, i32 12 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_ctrl_frame_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 72, i32 12 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_oversize_frame_cntr\00\00\00\00\00\00\00\00\00\00", i32 0, i32 73, i32 12 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_undersize_frame_cntr\00\00\00\00\00\00\00\00\00", i32 0, i32 74, i32 12 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_fragments_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 75, i32 12 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_underrun_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 39, i32 0 }], [496 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xgene_enet\00", [21 x i8] zeroinitializer }, align 32
@gstrings_stats = internal constant { [10 x %struct.xgene_gstrings_stats], [104 x i8] } { [10 x %struct.xgene_gstrings_stats] [%struct.xgene_gstrings_stats { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 0, i32 0 }, %struct.xgene_gstrings_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, i32 0, i32 0 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 24, i32 0, i32 0 }, %struct.xgene_gstrings_stats { [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 32, i32 0, i32 0 }, %struct.xgene_gstrings_stats { [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 40, i32 0, i32 0 }, %struct.xgene_gstrings_stats { [32 x i8] c"rx_length_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 80, i32 0, i32 0 }, %struct.xgene_gstrings_stats { [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 96, i32 0, i32 0 }, %struct.xgene_gstrings_stats { [32 x i8] c"rx_frame_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 104, i32 0, i32 0 }, %struct.xgene_gstrings_stats { [32 x i8] c"rx_fifo_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 112, i32 0, i32 0 }], [104 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.2 = private unnamed_addr constant [18 x i8] c"xgene_ethtool_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 328, i32 33 }
@___asan_gen_.5 = private unnamed_addr constant [20 x i8] c"gstrings_extd_stats\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 39, i32 42 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 105, i32 23 }
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"gstrings_stats\00", align 1
@___asan_gen_.12 = private constant [55 x i8] c"../drivers/net/ethernet/apm/xgene/xgene_enet_ethtool.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 26, i32 42 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @xgene_ethtool_ops, ptr @gstrings_extd_stats, ptr @.str, ptr @gstrings_stats], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gstrings_extd_stats to i32), i32 1936, i32 2432, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gstrings_stats to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xgene_extd_stats_init(ptr noundef %pdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call5.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 352, i32 noundef 3264) #9
  %extd_stats = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 30
  %2 = ptrtoint ptr %extd_stats to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5.i, ptr %extd_stats, align 4
  %tobool.not = icmp eq ptr %call5.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @xgene_get_extd_stats(ptr noundef %pdata)
  %3 = ptrtoint ptr %extd_stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extd_stats, align 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 352)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_get_extd_stats(ptr noundef %pdata) unnamed_addr #0 align 64 {
entry:
  %rx_drop = alloca i32, align 4
  %tx_drop = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_drop) #9
  %0 = ptrtoint ptr %rx_drop to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rx_drop, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_drop) #9
  %1 = ptrtoint ptr %tx_drop to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tx_drop, align 4, !annotation !19
  %extd_stats = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 30
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.064 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %addr = getelementptr [44 x %struct.xgene_gstrings_stats], ptr @gstrings_extd_stats, i32 0, i32 %i.064, i32 2
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %call = tail call i32 @xgene_enet_rd_stat(ptr noundef %pdata, i32 noundef %3) #9
  %mask2 = getelementptr [44 x %struct.xgene_gstrings_stats], ptr @gstrings_extd_stats, i32 0, i32 %i.064, i32 3
  %4 = ptrtoint ptr %mask2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %sub5 = sub i32 32, %5
  %shr = lshr i32 -1, %sub5
  %and6 = and i32 %shr, %call
  %conv = zext i32 %and6 to i64
  %6 = ptrtoint ptr %extd_stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extd_stats, align 4
  %arrayidx7 = getelementptr i64, ptr %7, i32 %i.064
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx7, align 8
  %add8 = add i64 %9, %conv
  store i64 %add8, ptr %arrayidx7, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, 44
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %phy_mode = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 27
  %10 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phy_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %11)
  %cmp9 = icmp eq i32 %11, 15
  %12 = ptrtoint ptr %extd_stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %extd_stats, align 4
  %arrayidx13 = getelementptr i64, ptr %13, i32 13
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %arrayidx13, align 8
  br label %if.end29

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx13, align 8
  %arrayidx17 = getelementptr i64, ptr %13, i32 7
  %17 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx17, align 8
  %sub18 = sub i64 %18, %16
  store i64 %sub18, ptr %arrayidx17, align 8
  %19 = ptrtoint ptr %extd_stats to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %extd_stats, align 4
  %arrayidx20 = getelementptr i64, ptr %20, i32 18
  %21 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx20, align 8
  %arrayidx22 = getelementptr i64, ptr %20, i32 14
  %23 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx22, align 8
  %sub23 = sub i64 %24, %22
  store i64 %sub23, ptr %arrayidx22, align 8
  %25 = load ptr, ptr %extd_stats, align 4
  %arrayidx25 = getelementptr i64, ptr %25, i32 42
  %26 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx25, align 8
  %arrayidx27 = getelementptr i64, ptr %25, i32 38
  %28 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx27, align 8
  %sub28 = sub i64 %29, %27
  store i64 %sub28, ptr %arrayidx27, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then11
  %mac_ops = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 34
  %30 = ptrtoint ptr %mac_ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mac_ops, align 4
  %get_drop_cnt = getelementptr inbounds %struct.xgene_mac_ops, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %get_drop_cnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get_drop_cnt, align 4
  call void %33(ptr noundef %pdata, ptr noundef nonnull %rx_drop, ptr noundef nonnull %tx_drop) #9
  %34 = ptrtoint ptr %rx_drop to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_drop, align 4
  %conv30 = zext i32 %35 to i64
  %36 = ptrtoint ptr %extd_stats to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %extd_stats, align 4
  %arrayidx32 = getelementptr i64, ptr %37, i32 24
  %38 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx32, align 8
  %add33 = add i64 %39, %conv30
  store i64 %add33, ptr %arrayidx32, align 8
  %40 = ptrtoint ptr %tx_drop to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_drop, align 4
  %conv34 = zext i32 %41 to i64
  %42 = load ptr, ptr %extd_stats, align 4
  %arrayidx36 = getelementptr i64, ptr %42, i32 43
  %43 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx36, align 8
  %add37 = add i64 %44, %conv34
  store i64 %add37, ptr %arrayidx36, align 8
  %false_rflr = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 31
  %45 = ptrtoint ptr %false_rflr to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %false_rflr, align 8
  %47 = load ptr, ptr %extd_stats, align 4
  %arrayidx39 = getelementptr i64, ptr %47, i32 15
  %48 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %46, ptr %arrayidx39, align 8
  %vlan_rjbr = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 32
  %49 = ptrtoint ptr %vlan_rjbr to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %vlan_rjbr, align 8
  %51 = load ptr, ptr %extd_stats, align 4
  %arrayidx41 = getelementptr i64, ptr %51, i32 22
  %52 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %50, ptr %arrayidx41, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_drop) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_drop) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @xgene_enet_set_ethtool_ops(ptr nocapture noundef writeonly %ndev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @xgene_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xgene_enet_rd_stat(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xgene_get_drvinfo(ptr nocapture noundef readonly %ndev, ptr noundef %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr i8, ptr %ndev, i32 2320
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %driver, ptr @.str, i32 11)
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %strcpy = tail call ptr @strcpy(ptr %bus_info, ptr %4) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xgene_get_pauseparam(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %pp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pause_autoneg = getelementptr i8, ptr %ndev, i32 2928
  %0 = ptrtoint ptr %pause_autoneg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pause_autoneg, align 8
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pp, i32 0, i32 1
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %autoneg, align 4
  %tx_pause = getelementptr i8, ptr %ndev, i32 2932
  %3 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tx_pause, align 4, !range !20
  %5 = zext i8 %4 to i32
  %tx_pause1 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pp, i32 0, i32 3
  %6 = ptrtoint ptr %tx_pause1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tx_pause1, align 4
  %rx_pause = getelementptr i8, ptr %ndev, i32 2933
  %7 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rx_pause, align 1, !range !20
  %9 = zext i8 %8 to i32
  %rx_pause4 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pp, i32 0, i32 2
  %10 = ptrtoint ptr %rx_pause4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rx_pause4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_set_pauseparam(ptr noundef %ndev, ptr noundef %pp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %phy_mode = getelementptr i8, ptr %ndev, i32 2544
  %2 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_mode, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.else [
    i32 12, label %entry.if.then_crit_edge
    i32 11, label %entry.if.then_crit_edge79
    i32 10, label %entry.if.then_crit_edge80
    i32 9, label %entry.if.then_crit_edge81
    i32 4, label %entry.if.then_crit_edge82
  ]

entry.if.then_crit_edge82:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge81:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge80:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge79:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge79, %entry.if.then_crit_edge80, %entry.if.then_crit_edge81, %entry.if.then_crit_edge82
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call5 = tail call zeroext i1 @phy_validate_pause(ptr noundef nonnull %1, ptr noundef %pp) #9
  br i1 %call5, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pp, i32 0, i32 1
  %5 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %autoneg, align 4
  %pause_autoneg = getelementptr i8, ptr %ndev, i32 2928
  %7 = ptrtoint ptr %pause_autoneg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %pause_autoneg, align 8
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pp, i32 0, i32 3
  %8 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8 = icmp ne i32 %9, 0
  %tx_pause9 = getelementptr i8, ptr %ndev, i32 2932
  %frombool = zext i1 %tobool8 to i8
  %10 = ptrtoint ptr %tx_pause9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %tx_pause9, align 4
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pp, i32 0, i32 2
  %11 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool10 = icmp ne i32 %12, 0
  %rx_pause11 = getelementptr i8, ptr %ndev, i32 2933
  %frombool12 = zext i1 %tobool10 to i8
  %13 = ptrtoint ptr %rx_pause11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool12, ptr %rx_pause11, align 1
  %14 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14 = icmp ne i32 %15, 0
  %16 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool16 = icmp ne i32 %17, 0
  tail call void @phy_set_asym_pause(ptr noundef nonnull %1, i1 noundef zeroext %tobool14, i1 noundef zeroext %tobool16) #9
  %18 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool18.not = icmp eq i32 %19, 0
  br i1 %tobool18.not, label %if.then19, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then19:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %mac_ops = getelementptr i8, ptr %ndev, i32 2668
  %20 = ptrtoint ptr %mac_ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mac_ops, align 4
  %flowctl_tx = getelementptr inbounds %struct.xgene_mac_ops, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %flowctl_tx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %flowctl_tx, align 4
  %24 = ptrtoint ptr %tx_pause9 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tx_pause9, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool21 = icmp ne i8 %25, 0
  tail call void %23(ptr noundef %add.ptr.i, i1 noundef zeroext %tobool21) #9
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %autoneg26 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pp, i32 0, i32 1
  %26 = ptrtoint ptr %autoneg26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %autoneg26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool27.not = icmp eq i32 %27, 0
  br i1 %tobool27.not, label %if.end29, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %tx_pause30 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pp, i32 0, i32 3
  %28 = ptrtoint ptr %tx_pause30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_pause30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool31 = icmp ne i32 %29, 0
  %tx_pause32 = getelementptr i8, ptr %ndev, i32 2932
  %frombool33 = zext i1 %tobool31 to i8
  %30 = ptrtoint ptr %tx_pause32 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool33, ptr %tx_pause32, align 4
  %rx_pause34 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pp, i32 0, i32 2
  %31 = ptrtoint ptr %rx_pause34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_pause34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool35 = icmp ne i32 %32, 0
  %rx_pause36 = getelementptr i8, ptr %ndev, i32 2933
  %frombool37 = zext i1 %tobool35 to i8
  %33 = ptrtoint ptr %rx_pause36 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool37, ptr %rx_pause36, align 1
  %mac_ops38 = getelementptr i8, ptr %ndev, i32 2668
  %34 = ptrtoint ptr %mac_ops38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mac_ops38, align 4
  %flowctl_tx39 = getelementptr inbounds %struct.xgene_mac_ops, ptr %35, i32 0, i32 14
  %36 = ptrtoint ptr %flowctl_tx39 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %flowctl_tx39, align 4
  tail call void %37(ptr noundef %add.ptr.i, i1 noundef zeroext %tobool31) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end29, %if.then19
  %mac_ops38.sink = phi ptr [ %mac_ops38, %if.end29 ], [ %mac_ops, %if.then19 ]
  %rx_pause36.sink = phi ptr [ %rx_pause36, %if.end29 ], [ %rx_pause11, %if.then19 ]
  %38 = ptrtoint ptr %mac_ops38.sink to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mac_ops38.sink, align 4
  %flowctl_rx43 = getelementptr inbounds %struct.xgene_mac_ops, ptr %39, i32 0, i32 13
  %40 = ptrtoint ptr %flowctl_rx43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %flowctl_rx43, align 4
  %42 = ptrtoint ptr %rx_pause36.sink to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %rx_pause36.sink, align 1, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool45 = icmp ne i8 %43, 0
  tail call void %41(ptr noundef %add.ptr.i, i1 noundef zeroext %tobool45) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_get_strings(ptr nocapture noundef readnone %ndev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp.not = icmp eq i32 %stringset, 1
  br i1 %cmp.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %0 = call ptr @memcpy(ptr %data, ptr @gstrings_stats, i32 32)
  %add.ptr = getelementptr i8, ptr %data, i32 32
  %1 = call ptr @memcpy(ptr %add.ptr, ptr getelementptr inbounds ([10 x %struct.xgene_gstrings_stats], ptr @gstrings_stats, i32 0, i32 1), i32 32)
  %add.ptr.1 = getelementptr i8, ptr %data, i32 64
  %2 = call ptr @memcpy(ptr %add.ptr.1, ptr getelementptr inbounds ([10 x %struct.xgene_gstrings_stats], ptr @gstrings_stats, i32 0, i32 2), i32 32)
  %add.ptr.2 = getelementptr i8, ptr %data, i32 96
  %3 = call ptr @memcpy(ptr %add.ptr.2, ptr getelementptr inbounds ([10 x %struct.xgene_gstrings_stats], ptr @gstrings_stats, i32 0, i32 3), i32 32)
  %add.ptr.3 = getelementptr i8, ptr %data, i32 128
  %4 = call ptr @memcpy(ptr %add.ptr.3, ptr getelementptr inbounds ([10 x %struct.xgene_gstrings_stats], ptr @gstrings_stats, i32 0, i32 4), i32 32)
  %add.ptr.4 = getelementptr i8, ptr %data, i32 160
  %5 = call ptr @memcpy(ptr %add.ptr.4, ptr getelementptr inbounds ([10 x %struct.xgene_gstrings_stats], ptr @gstrings_stats, i32 0, i32 5), i32 32)
  %add.ptr.5 = getelementptr i8, ptr %data, i32 192
  %6 = call ptr @memcpy(ptr %add.ptr.5, ptr getelementptr inbounds ([10 x %struct.xgene_gstrings_stats], ptr @gstrings_stats, i32 0, i32 6), i32 32)
  %add.ptr.6 = getelementptr i8, ptr %data, i32 224
  %7 = call ptr @memcpy(ptr %add.ptr.6, ptr getelementptr inbounds ([10 x %struct.xgene_gstrings_stats], ptr @gstrings_stats, i32 0, i32 7), i32 32)
  %add.ptr.7 = getelementptr i8, ptr %data, i32 256
  %8 = call ptr @memcpy(ptr %add.ptr.7, ptr getelementptr inbounds ([10 x %struct.xgene_gstrings_stats], ptr @gstrings_stats, i32 0, i32 8), i32 32)
  %add.ptr.8 = getelementptr i8, ptr %data, i32 288
  %9 = call ptr @memcpy(ptr %add.ptr.8, ptr getelementptr inbounds ([10 x %struct.xgene_gstrings_stats], ptr @gstrings_stats, i32 0, i32 9), i32 32)
  %add.ptr.9 = getelementptr i8, ptr %data, i32 320
  br label %for.body4

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.body.preheader
  %p.124 = phi ptr [ %add.ptr8, %for.body4.for.body4_crit_edge ], [ %add.ptr.9, %for.body.preheader ]
  %i.123 = phi i32 [ %inc10, %for.body4.for.body4_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx5 = getelementptr [44 x %struct.xgene_gstrings_stats], ptr @gstrings_extd_stats, i32 0, i32 %i.123
  %10 = call ptr @memcpy(ptr %p.124, ptr %arrayidx5, i32 32)
  %add.ptr8 = getelementptr i8, ptr %p.124, i32 32
  %inc10 = add nuw nsw i32 %i.123, 1
  %exitcond.not = icmp eq i32 %inc10, 44
  br i1 %exitcond.not, label %for.body4.cleanup_crit_edge, label %for.body4.for.body4_crit_edge

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body4

for.body4.cleanup_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_get_ethtool_stats(ptr noundef %ndev, ptr nocapture noundef readnone %dummy, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  %stats = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %stats) #9
  %0 = call ptr @memset(ptr %stats, i32 255, i32 192)
  %call1 = call ptr @dev_get_stats(ptr noundef %ndev, ptr noundef nonnull %stats) #9
  %1 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %stats, align 8
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %data, align 8
  %add.ptr.1 = getelementptr inbounds i8, ptr %stats, i32 8
  %4 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr.1, align 8
  %arrayidx2.1 = getelementptr i64, ptr %data, i32 1
  %6 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %arrayidx2.1, align 8
  %add.ptr.2 = getelementptr inbounds i8, ptr %stats, i32 16
  %7 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %add.ptr.2, align 8
  %arrayidx2.2 = getelementptr i64, ptr %data, i32 2
  %9 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %arrayidx2.2, align 8
  %add.ptr.3 = getelementptr inbounds i8, ptr %stats, i32 24
  %10 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %add.ptr.3, align 8
  %arrayidx2.3 = getelementptr i64, ptr %data, i32 3
  %12 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %arrayidx2.3, align 8
  %add.ptr.4 = getelementptr inbounds i8, ptr %stats, i32 32
  %13 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %add.ptr.4, align 8
  %arrayidx2.4 = getelementptr i64, ptr %data, i32 4
  %15 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %arrayidx2.4, align 8
  %add.ptr.5 = getelementptr inbounds i8, ptr %stats, i32 40
  %16 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr.5, align 8
  %arrayidx2.5 = getelementptr i64, ptr %data, i32 5
  %18 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %arrayidx2.5, align 8
  %add.ptr.6 = getelementptr inbounds i8, ptr %stats, i32 80
  %19 = ptrtoint ptr %add.ptr.6 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %add.ptr.6, align 8
  %arrayidx2.6 = getelementptr i64, ptr %data, i32 6
  %21 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %arrayidx2.6, align 8
  %add.ptr.7 = getelementptr inbounds i8, ptr %stats, i32 96
  %22 = ptrtoint ptr %add.ptr.7 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %add.ptr.7, align 8
  %arrayidx2.7 = getelementptr i64, ptr %data, i32 7
  %24 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %arrayidx2.7, align 8
  %add.ptr.8 = getelementptr inbounds i8, ptr %stats, i32 104
  %25 = ptrtoint ptr %add.ptr.8 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %add.ptr.8, align 8
  %arrayidx2.8 = getelementptr i64, ptr %data, i32 8
  %27 = ptrtoint ptr %arrayidx2.8 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %arrayidx2.8, align 8
  %add.ptr.9 = getelementptr inbounds i8, ptr %stats, i32 112
  %28 = ptrtoint ptr %add.ptr.9 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %add.ptr.9, align 8
  %arrayidx2.9 = getelementptr i64, ptr %data, i32 9
  %30 = ptrtoint ptr %arrayidx2.9 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %arrayidx2.9, align 8
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  call fastcc void @xgene_get_extd_stats(ptr noundef %add.ptr.i)
  %extd_stats = getelementptr i8, ptr %ndev, i32 2604
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %entry
  %i.122 = phi i32 [ 0, %entry ], [ %inc9, %for.body5.for.body5_crit_edge ]
  %31 = ptrtoint ptr %extd_stats to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %extd_stats, align 4
  %arrayidx6 = getelementptr i64, ptr %32, i32 %i.122
  %33 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx6, align 8
  %add = add nuw nsw i32 %i.122, 10
  %arrayidx7 = getelementptr i64, ptr %data, i32 %add
  %35 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %arrayidx7, align 8
  %inc9 = add nuw nsw i32 %i.122, 1
  %exitcond.not = icmp eq i32 %inc9, 44
  br i1 %exitcond.not, label %for.end10, label %for.body5.for.body5_crit_edge

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5

for.end10:                                        ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %stats) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgene_get_sset_count(ptr nocapture noundef readnone %ndev, i32 noundef %sset) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp.not = icmp eq i32 %sset, 1
  %. = select i1 %cmp.not, i32 54, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_get_link_ksettings(ptr nocapture noundef readonly %ndev, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %phy_mode = getelementptr i8, ptr %ndev, i32 2544
  %2 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_mode, align 8
  %4 = add i32 %3, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @phy_ethtool_ksettings_get(ptr noundef nonnull %1, ptr noundef %cmd) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp5 = icmp eq i32 %3, 4
  br i1 %cmp5, label %if.then6, label %if.else18

if.then6:                                         ; preds = %if.else
  %mdio_driver = getelementptr i8, ptr %ndev, i32 2918
  %6 = ptrtoint ptr %mdio_driver to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mdio_driver, align 2, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end11, label %if.then7

if.then7:                                         ; preds = %if.then6
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %if.then7.cleanup_crit_edge, label %if.end10

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @phy_ethtool_ksettings_get(ptr noundef nonnull %1, ptr noundef %cmd) #9
  br label %cleanup

if.end11:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef 608) #9
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising, i32 noundef 608) #9
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1000, ptr %speed, align 4
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %9 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %duplex, align 4
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %10 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %port, align 1
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %11 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %autoneg, align 1
  br label %cleanup

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %link_modes19 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes19, i32 noundef 5120) #9
  %advertising23 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising23, i32 noundef 5120) #9
  %speed26 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %12 = ptrtoint ptr %speed26 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 10000, ptr %speed26, align 4
  %duplex28 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %13 = ptrtoint ptr %duplex28 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %duplex28, align 4
  %port30 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %14 = ptrtoint ptr %port30 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %port30, align 1
  %autoneg32 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %15 = ptrtoint ptr %autoneg32 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %autoneg32, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else18, %if.end11, %if.end10, %if.then7.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 0, %if.end10 ], [ -19, %if.then.cleanup_crit_edge ], [ -19, %if.then7.cleanup_crit_edge ], [ 0, %if.end11 ], [ 0, %if.else18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_set_link_ksettings(ptr nocapture noundef readonly %ndev, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %phy_mode = getelementptr i8, ptr %ndev, i32 2544
  %2 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_mode, align 8
  %4 = add i32 %3, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.then7, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  %mdio_driver = getelementptr i8, ptr %ndev, i32 2918
  %6 = ptrtoint ptr %mdio_driver to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mdio_driver, align 2, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not = icmp eq i8 %7, 0
  br i1 %tobool8.not, label %if.then7.cleanup_crit_edge, label %if.then9

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.then7
  %tobool10.not = icmp eq ptr %1, null
  br i1 %tobool10.not, label %if.then9.cleanup_crit_edge, label %if.then9.cleanup.sink.split_crit_edge

if.then9.cleanup.sink.split_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then9.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %call13 = tail call i32 @phy_ethtool_ksettings_set(ptr noundef nonnull %1, ptr noundef %cmd) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then9.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then.cleanup_crit_edge ], [ -19, %if.then9.cleanup_crit_edge ], [ -22, %if.then7.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ %call13, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @phy_validate_pause(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_set_asym_pause(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_ethtool_ksettings_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_ksettings_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @gstrings_extd_stats, !1, !"gstrings_extd_stats", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_ethtool.c", i32 39, i32 42}
!2 = !{ptr @xgene_ethtool_ops, !3, !"xgene_ethtool_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_ethtool.c", i32 328, i32 33}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_ethtool.c", i32 105, i32 23}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_ethtool.c", i32 106, i32 26}
!8 = !{ptr @gstrings_stats, !9, !"gstrings_stats", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_ethtool.c", i32 26, i32 42}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"auto-init"}
!20 = !{i8 0, i8 2}
