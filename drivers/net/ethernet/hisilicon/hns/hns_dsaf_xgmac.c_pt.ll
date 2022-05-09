; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/hisilicon/hns/hns_dsaf_xgmac.c_pt.bc'
source_filename = "../drivers/net/ethernet/hisilicon/hns/hns_dsaf_xgmac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mac_stats_string = type { [32 x i8], i32 }
%struct.mac_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, ptr, i32, i32, ptr }
%struct.mac_params = type { [6 x i8], ptr, ptr, i8, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.dsaf_device = type { ptr, %struct.hnae_ae_dev, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, [1 x ptr], [1 x ptr], [6 x ptr], ptr, [18 x %struct.dsaf_hw_stats], %struct.dsaf_int_stat, %struct.spinlock }
%struct.hnae_ae_dev = type { %struct.device, ptr, ptr, %struct.list_head, ptr, i32, [16 x i8], %struct.list_head, %struct.spinlock }
%struct.dsaf_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], i64 }
%struct.dsaf_int_stat = type { [6 x %struct.dsaf_int_xge_src], [6 x %struct.dsaf_int_ppe_src], [6 x %struct.dsaf_int_rocee_src], [1 x %struct.dsaf_int_tbl_src] }
%struct.dsaf_int_xge_src = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dsaf_int_ppe_src = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dsaf_int_rocee_src = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dsaf_int_tbl_src = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dsaf_misc_op = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mac_info = type { i16, i8, i8, i32, i8, i8, i8, i8, i8, i8 }
%struct.hns_mac_cb = type { ptr, ptr, %struct.mac_priv, ptr, ptr, ptr, ptr, ptr, ptr, [6 x i8], i32, i32, i32, [128 x %struct.mac_entry_idx], i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i64, i64, i32, i32, i32, i32, ptr, %struct.mac_hw_stats }
%struct.mac_priv = type { ptr }
%struct.mac_entry_idx = type { [6 x i8], i16 }
%struct.mac_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@hns_xgmac_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 151, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"error mac mode:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hns_xgmac_enable\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/hisilicon/hns/hns_dsaf_xgmac.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hns_xgmac_enable._entry_ptr = internal global ptr @hns_xgmac_enable._entry, section ".printk_index", align 4
@g_xgmac_stats_string = internal constant { [68 x %struct.mac_stats_string], [624 x i8] } { [68 x %struct.mac_stats_string] [%struct.mac_stats_string { [32 x i8] c"xgmac_tx_bad_pkts_minto64\00\00\00\00\00\00\00", i32 440 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_good_pkts_minto64\00\00\00\00\00\00", i32 432 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_total_pkts_minto64\00\00\00\00\00", i32 448 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_pkts_64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 456 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_pkts_65to127\00\00\00\00\00\00\00\00\00\00\00", i32 464 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_pkts_128to255\00\00\00\00\00\00\00\00\00\00", i32 472 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_pkts_256to511\00\00\00\00\00\00\00\00\00\00", i32 480 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_pkts_512to1023\00\00\00\00\00\00\00\00\00", i32 488 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_pkts_1024to1518\00\00\00\00\00\00\00\00", i32 496 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_pkts_1519tomax\00\00\00\00\00\00\00\00\00", i32 504 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_good_pkts_1519tomax\00\00\00\00", i32 512 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_good_pkts_untralmax\00\00\00\00", i32 520 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_bad_pkts_untralmax\00\00\00\00\00", i32 528 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_good_pkts_all\00\00\00\00\00\00\00\00\00\00", i32 368 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_good_byte_all\00\00\00\00\00\00\00\00\00\00", i32 360 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_total_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 384 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_total_byt\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 376 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_uc_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 408 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_mc_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 416 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_bc_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 424 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_pause_frame_num\00\00\00\00\00\00\00\00", i32 560 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_pfc_per_1pause_framer\00\00", i32 568 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_pfc_per_2pause_framer\00\00", i32 576 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_pfc_per_3pause_framer\00\00", i32 584 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_pfc_per_4pause_framer\00\00", i32 592 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_pfc_per_5pause_framer\00\00", i32 600 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_pfc_per_6pause_framer\00\00", i32 608 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_pfc_per_7pause_framer\00\00", i32 616 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_mac_ctrol_frame\00\00\00\00\00\00\00\00", i32 624 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_1731_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 632 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_1588_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 640 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_good_pkt_from_dsaf\00\00\00\00\00", i32 648 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_bad_pkt_from_dsaf\00\00\00\00\00\00", i32 656 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_bad_pkt_64tomax\00\00\00\00\00\00\00\00", i32 400 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_bad_pkts_minto64\00\00\00\00\00\00\00", i32 64 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_good_pkts_minto64\00\00\00\00\00\00", i32 72 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_total_pkts_minto64\00\00\00\00\00", i32 80 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_pkt_64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 96 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_pkt_65to127\00\00\00\00\00\00\00\00\00\00\00\00", i32 104 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_pkt_128to255\00\00\00\00\00\00\00\00\00\00\00", i32 112 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_pkt_256to511\00\00\00\00\00\00\00\00\00\00\00", i32 120 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_pkt_512to1023\00\00\00\00\00\00\00\00\00\00", i32 128 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_pkt_1024to1518\00\00\00\00\00\00\00\00\00", i32 136 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_pkt_1519tomax\00\00\00\00\00\00\00\00\00\00", i32 144 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_good_pkt_1519tomax\00\00\00\00\00", i32 152 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_good_pkt_untramax\00\00\00\00\00\00", i32 160 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_bad_pkt_untramax\00\00\00\00\00\00\00", i32 168 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_good_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_good_byt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_byt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_uc_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 40 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_mc_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_bc_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 56 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_pause_frame_num\00\00\00\00\00\00\00\00", i32 216 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_pfc_per_1pause_frame\00\00\00", i32 224 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_pfc_per_2pause_frame\00\00\00", i32 232 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_pfc_per_3pause_frame\00\00\00", i32 240 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_pfc_per_4pause_frame\00\00\00", i32 248 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_pfc_per_5pause_frame\00\00\00", i32 256 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_pfc_per_6pause_frame\00\00\00", i32 264 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_pfc_per_7pause_frame\00\00\00", i32 272 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_mac_control\00\00\00\00\00\00\00\00\00\00\00\00", i32 280 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_good_pkt_todsaf\00\00\00\00\00\00\00\00", i32 336 }, %struct.mac_stats_string { [32 x i8] c"xgmac_tx_bad_pkt_todsaf\00\00\00\00\00\00\00\00\00", i32 344 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_1731_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 352 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_symbol_err_pkt\00\00\00\00\00\00\00\00\00", i32 328 }, %struct.mac_stats_string { [32 x i8] c"xgmac_rx_fcs_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 176 }], [624 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 151, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [21 x i8] c"g_xgmac_stats_string\00", align 1
@___asan_gen_.25 = private constant [55 x i8] c"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_xgmac.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 13, i32 38 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @hns_xgmac_enable._entry, ptr @hns_xgmac_enable._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @g_xgmac_stats_string], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_xgmac_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_xgmac_stats_string to i32), i32 2448, i32 3072, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hns_xgmac_config(ptr noundef %mac_cb, ptr nocapture noundef readonly %mac_param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_cb, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 132, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @hns_xgmac_init, ptr %call.i, align 4
  %mac_enable = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %mac_enable to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @hns_xgmac_enable, ptr %mac_enable, align 4
  %mac_disable = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %mac_disable to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @hns_xgmac_disable, ptr %mac_disable, align 4
  %mac_id = getelementptr inbounds %struct.mac_params, ptr %mac_param, i32 0, i32 3
  %5 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mac_id, align 4
  %mac_id1 = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 27
  %7 = ptrtoint ptr %mac_id1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %mac_id1, align 4
  %mac_mode = getelementptr inbounds %struct.mac_params, ptr %mac_param, i32 0, i32 4
  %8 = ptrtoint ptr %mac_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mac_mode, align 4
  %mac_mode2 = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 26
  %10 = ptrtoint ptr %mac_mode2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %mac_mode2, align 4
  %vaddr = getelementptr inbounds %struct.mac_params, ptr %mac_param, i32 0, i32 1
  %11 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vaddr, align 4
  %io_base = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 29
  %13 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %io_base, align 4
  %dev3 = getelementptr inbounds %struct.mac_params, ptr %mac_param, i32 0, i32 2
  %14 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev3, align 4
  %dev4 = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 32
  %16 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %dev4, align 4
  %mac_cb5 = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 28
  %17 = ptrtoint ptr %mac_cb5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %mac_cb, ptr %mac_cb5, align 4
  %set_mac_addr = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %set_mac_addr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @hns_xgmac_set_pausefrm_mac_addr, ptr %set_mac_addr, align 4
  %set_an_mode = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 7
  %19 = ptrtoint ptr %set_an_mode to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %set_an_mode, align 4
  %config_loopback = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 8
  %20 = ptrtoint ptr %config_loopback to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %config_loopback, align 4
  %config_pad_and_crc = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 10
  %21 = ptrtoint ptr %config_pad_and_crc to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @hns_xgmac_config_pad_and_crc, ptr %config_pad_and_crc, align 4
  %mac_free = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %mac_free to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @hns_xgmac_free, ptr %mac_free, align 4
  %adjust_link = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 5
  %23 = ptrtoint ptr %adjust_link to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %adjust_link, align 4
  %set_tx_auto_pause_frames = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 11
  %24 = ptrtoint ptr %set_tx_auto_pause_frames to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @hns_xgmac_set_tx_auto_pause_frames, ptr %set_tx_auto_pause_frames, align 4
  %config_max_frame_length = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 9
  %25 = ptrtoint ptr %config_max_frame_length to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @hns_xgmac_config_max_frame_length, ptr %config_max_frame_length, align 4
  %mac_pausefrm_cfg = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 13
  %26 = ptrtoint ptr %mac_pausefrm_cfg to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @hns_xgmac_pausefrm_cfg, ptr %mac_pausefrm_cfg, align 4
  %autoneg_stat = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 14
  %27 = ptrtoint ptr %autoneg_stat to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %autoneg_stat, align 4
  %get_info = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 23
  %28 = ptrtoint ptr %get_info to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @hns_xgmac_get_info, ptr %get_info, align 4
  %get_pause_enable = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 16
  %29 = ptrtoint ptr %get_pause_enable to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @hns_xgmac_get_pausefrm_cfg, ptr %get_pause_enable, align 4
  %get_link_status = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 17
  %30 = ptrtoint ptr %get_link_status to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @hns_xgmac_get_link_status, ptr %get_link_status, align 4
  %get_regs = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 18
  %31 = ptrtoint ptr %get_regs to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @hns_xgmac_get_regs, ptr %get_regs, align 4
  %get_ethtool_stats = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 22
  %32 = ptrtoint ptr %get_ethtool_stats to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @hns_xgmac_get_stats, ptr %get_ethtool_stats, align 4
  %get_sset_count = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 21
  %33 = ptrtoint ptr %get_sset_count to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @hns_xgmac_get_sset_count, ptr %get_sset_count, align 4
  %get_regs_count = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 19
  %34 = ptrtoint ptr %get_regs_count to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @hns_xgmac_get_regs_count, ptr %get_regs_count, align 4
  %get_strings = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 20
  %35 = ptrtoint ptr %get_strings to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @hns_xgmac_get_strings, ptr %get_strings, align 4
  %update_stats = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 24
  %36 = ptrtoint ptr %update_stats to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @hns_xgmac_update_stats, ptr %update_stats, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_xgmac_init(ptr nocapture noundef readonly %mac_drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 32
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %mac_id = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 27
  %4 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mac_id, align 4
  %conv = zext i8 %5 to i32
  %misc_op = getelementptr inbounds %struct.dsaf_device, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %misc_op to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %misc_op, align 4
  %xge_srst = getelementptr inbounds %struct.dsaf_misc_op, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %xge_srst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xge_srst, align 4
  tail call void %9(ptr noundef %3, i32 noundef %conv, i1 noundef zeroext false) #7
  tail call void @msleep(i32 noundef 100) #7
  %10 = ptrtoint ptr %misc_op to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %misc_op, align 4
  %xge_srst2 = getelementptr inbounds %struct.dsaf_misc_op, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %xge_srst2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xge_srst2, align 4
  tail call void %13(ptr noundef %3, i32 noundef %conv, i1 noundef zeroext true) #7
  tail call void @msleep(i32 noundef 100) #7
  %io_base.i = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %14 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 33554432) #7, !srcloc !20
  %16 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 -1) #7, !srcloc !20
  %18 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i13 = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i13, i32 0) #7, !srcloc !20
  %20 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %21, i32 1860
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i15) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %23 = and i32 %22, -50331649
  %24 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %add.ptr.i1.i = getelementptr i8, ptr %25, i32 1860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 %23) #7, !srcloc !20
  %26 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i17.i = getelementptr i8, ptr %27, i32 256
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i17.i) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %29 = and i32 %28, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i17.i, i32 %29) #7, !srcloc !20
  %30 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i19.i = getelementptr i8, ptr %31, i32 256
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i19.i) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %33 = and i32 %32, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i19.i, i32 %33) #7, !srcloc !20
  %34 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i21.i = getelementptr i8, ptr %35, i32 420
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i21.i) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %37 = and i32 %36, -201326593
  %38 = or i32 %37, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i21.i, i32 %38) #7, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_xgmac_enable(ptr nocapture noundef readonly %mac_drv, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base.i = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 420
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %3 = and i32 %2, -201326593
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %3) #7, !srcloc !20
  %4 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %do.end [
    i32 2, label %if.then
    i32 1, label %if.then2
    i32 3, label %if.then5
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i18 = getelementptr i8, ptr %6, i32 256
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i18) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %8 = or i32 %7, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i18, i32 %8) #7, !srcloc !20
  br label %if.end8

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i20 = getelementptr i8, ptr %10, i32 256
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i20) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %12 = or i32 %11, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i20, i32 %12) #7, !srcloc !20
  br label %if.end8

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i23 = getelementptr i8, ptr %14, i32 256
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i23) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %16 = or i32 %15, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i23, i32 %16) #7, !srcloc !20
  %17 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i26 = getelementptr i8, ptr %18, i32 256
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i26) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %20 = or i32 %19, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i26, i32 %20) #7, !srcloc !20
  br label %if.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 32
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str, i32 noundef %mode) #10
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.then5, %if.then2, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_xgmac_disable(ptr nocapture noundef readonly %mac_drv, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %mode, label %entry.if.end7_crit_edge [
    i32 2, label %if.then
    i32 1, label %if.then2
    i32 3, label %if.then5
  ]

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %io_base.i = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %1 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %2, i32 256
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %4 = and i32 %3, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %4) #7, !srcloc !20
  br label %if.end7

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %io_base.i14 = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %5 = ptrtoint ptr %io_base.i14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_base.i14, align 4
  %add.ptr.i.i.i15 = getelementptr i8, ptr %6, i32 256
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i15) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %8 = and i32 %7, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i15, i32 %8) #7, !srcloc !20
  br label %if.end7

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %io_base.i16 = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %9 = ptrtoint ptr %io_base.i16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_base.i16, align 4
  %add.ptr.i.i.i17 = getelementptr i8, ptr %10, i32 256
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i17) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %12 = and i32 %11, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i17, i32 %12) #7, !srcloc !20
  %13 = ptrtoint ptr %io_base.i16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_base.i16, align 4
  %add.ptr.i.i.i19 = getelementptr i8, ptr %14, i32 256
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i19) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %16 = and i32 %15, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i19, i32 %16) #7, !srcloc !20
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then2, %if.then, %entry.if.end7_crit_edge
  %io_base.i20 = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %17 = ptrtoint ptr %io_base.i20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_base.i20, align 4
  %add.ptr.i.i.i21 = getelementptr i8, ptr %18, i32 420
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i21) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %20 = and i32 %19, -201326593
  %21 = or i32 %20, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i21, i32 %21) #7, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_xgmac_set_pausefrm_mac_addr(ptr nocapture noundef readonly %mac_drv, ptr nocapture noundef readonly %mac_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %mac_addr, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac_addr, align 1
  %conv2 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl, %conv
  %arrayidx3 = getelementptr i8, ptr %mac_addr, i32 5
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %arrayidx5 = getelementptr i8, ptr %mac_addr, i32 4
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %7 to i32
  %shl7 = shl nuw nsw i32 %conv6, 8
  %or8 = or i32 %shl7, %conv4
  %arrayidx9 = getelementptr i8, ptr %mac_addr, i32 3
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %9 to i32
  %shl11 = shl nuw nsw i32 %conv10, 16
  %or12 = or i32 %or8, %shl11
  %arrayidx13 = getelementptr i8, ptr %mac_addr, i32 2
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %11 to i32
  %shl15 = shl nuw i32 %conv14, 24
  %or16 = or i32 %or12, %shl15
  %io_base = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %12 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %or16) #7
  %add.ptr.i = getelementptr i8, ptr %13, i32 368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #7, !srcloc !20
  %15 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i24 = getelementptr i8, ptr %16, i32 364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %17) #7, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_xgmac_config_pad_and_crc(ptr nocapture noundef readonly %mac_drv, i8 noundef zeroext %newval) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 260
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %3 = and i32 %2, -50331905
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %newval)
  %tobool = icmp ne i8 %newval, 0
  %5 = select i1 %tobool, i32 2, i32 0
  %6 = zext i1 %tobool to i32
  %7 = select i1 %tobool, i32 65536, i32 0
  %or = or i32 %5, %6
  %or20 = or i32 %or, %7
  %or37 = or i32 %or20, %4
  %8 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %or37) #7
  %add.ptr.i51 = getelementptr i8, ptr %9, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %10) #7, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_xgmac_free(ptr nocapture noundef readonly %mac_drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 32
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %mac_id1 = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 27
  %4 = ptrtoint ptr %mac_id1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mac_id1, align 4
  %conv = zext i8 %5 to i32
  %misc_op = getelementptr inbounds %struct.dsaf_device, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %misc_op to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %misc_op, align 4
  %xge_srst = getelementptr inbounds %struct.dsaf_misc_op, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %xge_srst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xge_srst, align 4
  tail call void %9(ptr noundef %3, i32 noundef %conv, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_xgmac_set_tx_auto_pause_frames(ptr nocapture noundef readonly %mac_drv, i16 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %enable)
  %tobool = icmp ne i16 %enable, 0
  %lnot.ext = zext i1 %tobool to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 352
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %3 = and i32 %2, -16777217
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %or.i = or i32 %4, %lnot.ext
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #7, !srcloc !20
  br i1 %tobool, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 4
  %conv = zext i16 %enable to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv) #7
  %add.ptr.i = getelementptr i8, ptr %7, i32 356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #7, !srcloc !20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_xgmac_config_max_frame_length(ptr nocapture noundef readonly %mac_drv, i16 noundef zeroext %newval) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %conv = zext i16 %newval to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv) #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_xgmac_pausefrm_cfg(ptr nocapture noundef readonly %mac_drv, i32 noundef %rx_en, i32 noundef %tx_en) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 352
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %3 = and i32 %2, -50331649
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_en)
  %tobool = icmp ne i32 %tx_en, 0
  %5 = zext i1 %tobool to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_en)
  %tobool11.not = icmp eq i32 %rx_en, 0
  %shl16 = select i1 %tobool11.not, i32 0, i32 2
  %or = or i32 %shl16, %5
  %or2030 = or i32 %or, %4
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %or2030) #7
  %add.ptr.i31 = getelementptr i8, ptr %7, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %8) #7, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_xgmac_get_info(ptr nocapture noundef readonly %mac_drv, ptr nocapture noundef writeonly %mac_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 260
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %sum.shift = lshr i32 %2, 25
  %3 = trunc i32 %sum.shift to i8
  %conv1 = and i8 %3, 1
  %pad_and_crc_en = getelementptr inbounds %struct.mac_info, ptr %mac_info, i32 0, i32 7
  %4 = ptrtoint ptr %pad_and_crc_en to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv1, ptr %pad_and_crc_en, align 1
  %auto_neg = getelementptr inbounds %struct.mac_info, ptr %mac_info, i32 0, i32 2
  %5 = ptrtoint ptr %auto_neg to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %auto_neg, align 1
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 4
  %add.ptr.i35 = getelementptr i8, ptr %7, i32 356
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #7, !srcloc !21
  %9 = lshr i32 %8, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %conv4 = trunc i32 %9 to i8
  %tx_pause_time = getelementptr inbounds %struct.mac_info, ptr %mac_info, i32 0, i32 5
  %10 = ptrtoint ptr %tx_pause_time to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv4, ptr %tx_pause_time, align 1
  %11 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_base, align 4
  %add.ptr.i36 = getelementptr i8, ptr %12, i32 64
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #7, !srcloc !21
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %and7 = and i32 %14, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp ne i32 %and7, 0
  %15 = and i32 %14, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool11 = icmp ne i32 %15, 0
  %16 = and i1 %tobool.not, %tobool11
  %conv12 = zext i1 %16 to i8
  %port_en = getelementptr inbounds %struct.mac_info, ptr %mac_info, i32 0, i32 9
  %17 = ptrtoint ptr %port_en to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv12, ptr %port_en, align 1
  %duplex = getelementptr inbounds %struct.mac_info, ptr %mac_info, i32 0, i32 1
  %18 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %duplex, align 2
  %19 = ptrtoint ptr %mac_info to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 10000, ptr %mac_info, align 4
  %20 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base, align 4
  %add.ptr.i37 = getelementptr i8, ptr %21, i32 352
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #7, !srcloc !21
  %23 = lshr i32 %22, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %24 = trunc i32 %23 to i8
  %25 = lshr i8 %24, 1
  %conv18 = and i8 %25, 1
  %rx_pause_en = getelementptr inbounds %struct.mac_info, ptr %mac_info, i32 0, i32 6
  %26 = ptrtoint ptr %rx_pause_en to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv18, ptr %rx_pause_en, align 2
  %conv22 = and i8 %24, 1
  %tx_pause_en = getelementptr inbounds %struct.mac_info, ptr %mac_info, i32 0, i32 4
  %27 = ptrtoint ptr %tx_pause_en to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv22, ptr %tx_pause_en, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_xgmac_get_pausefrm_cfg(ptr nocapture noundef readonly %mac_drv, ptr nocapture noundef writeonly %rx_en, ptr nocapture noundef writeonly %tx_en) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 352
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %and = lshr i32 %3, 1
  %shr = and i32 %and, 1
  %4 = ptrtoint ptr %rx_en to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr, ptr %rx_en, align 4
  %5 = and i32 %3, 1
  %6 = ptrtoint ptr %tx_en to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tx_en, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_xgmac_get_link_status(ptr nocapture noundef readonly %mac_drv, ptr nocapture noundef writeonly %link_stat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 84
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %4 = ptrtoint ptr %link_stat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %link_stat, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_xgmac_get_regs(ptr noundef readonly %mac_drv, ptr noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %data, align 4
  %5 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_base, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !21
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx3 = getelementptr i32, ptr %data, i32 1
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx3, align 4
  %10 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base, align 4
  %add.ptr.i1583 = getelementptr i8, ptr %11, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1583) #7, !srcloc !21
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx6 = getelementptr i32, ptr %data, i32 2
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx6, align 4
  %15 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_base, align 4
  %add.ptr.i1584 = getelementptr i8, ptr %16, i32 12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1584) #7, !srcloc !21
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx9 = getelementptr i32, ptr %data, i32 3
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx9, align 4
  %20 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base, align 4
  %add.ptr.i1585 = getelementptr i8, ptr %21, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1585) #7, !srcloc !21
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx12 = getelementptr i32, ptr %data, i32 4
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx12, align 4
  %25 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_base, align 4
  %add.ptr.i1586 = getelementptr i8, ptr %26, i32 20
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1586) #7, !srcloc !21
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx15 = getelementptr i32, ptr %data, i32 5
  %29 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx15, align 4
  %30 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_base, align 4
  %add.ptr.i1587 = getelementptr i8, ptr %31, i32 64
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1587) #7, !srcloc !21
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx18 = getelementptr i32, ptr %data, i32 6
  %34 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx18, align 4
  %35 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_base, align 4
  %add.ptr.i1588 = getelementptr i8, ptr %36, i32 68
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1588) #7, !srcloc !21
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx21 = getelementptr i32, ptr %data, i32 7
  %39 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx21, align 4
  %40 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io_base, align 4
  %add.ptr.i1589 = getelementptr i8, ptr %41, i32 72
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1589) #7, !srcloc !21
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx24 = getelementptr i32, ptr %data, i32 8
  %44 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx24, align 4
  %45 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %io_base, align 4
  %add.ptr.i1590 = getelementptr i8, ptr %46, i32 80
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1590) #7, !srcloc !21
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx27 = getelementptr i32, ptr %data, i32 9
  %49 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx27, align 4
  %50 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %io_base, align 4
  %add.ptr.i1591 = getelementptr i8, ptr %51, i32 84
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1591) #7, !srcloc !21
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx30 = getelementptr i32, ptr %data, i32 10
  %54 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx30, align 4
  %55 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %io_base, align 4
  %add.ptr.i1592 = getelementptr i8, ptr %56, i32 192
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1592) #7, !srcloc !21
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx33 = getelementptr i32, ptr %data, i32 11
  %59 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arrayidx33, align 4
  %60 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %io_base, align 4
  %add.ptr.i1593 = getelementptr i8, ptr %61, i32 196
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1593) #7, !srcloc !21
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx36 = getelementptr i32, ptr %data, i32 12
  %64 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx36, align 4
  %65 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %io_base, align 4
  %add.ptr.i1594 = getelementptr i8, ptr %66, i32 256
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1594) #7, !srcloc !21
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx39 = getelementptr i32, ptr %data, i32 13
  %69 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %arrayidx39, align 4
  %70 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %io_base, align 4
  %add.ptr.i1595 = getelementptr i8, ptr %71, i32 260
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1595) #7, !srcloc !21
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx42 = getelementptr i32, ptr %data, i32 14
  %74 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx42, align 4
  %75 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %io_base, align 4
  %add.ptr.i1596 = getelementptr i8, ptr %76, i32 288
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1596) #7, !srcloc !21
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx45 = getelementptr i32, ptr %data, i32 15
  %79 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %arrayidx45, align 4
  %80 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %io_base, align 4
  %add.ptr.i1597 = getelementptr i8, ptr %81, i32 292
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1597) #7, !srcloc !21
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx48 = getelementptr i32, ptr %data, i32 16
  %84 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %arrayidx48, align 4
  %85 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %io_base, align 4
  %add.ptr.i1598 = getelementptr i8, ptr %86, i32 296
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1598) #7, !srcloc !21
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx51 = getelementptr i32, ptr %data, i32 17
  %89 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %arrayidx51, align 4
  %90 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %io_base, align 4
  %add.ptr.i1599 = getelementptr i8, ptr %91, i32 300
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1599) #7, !srcloc !21
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx54 = getelementptr i32, ptr %data, i32 18
  %94 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %arrayidx54, align 4
  %95 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %io_base, align 4
  %add.ptr.i1600 = getelementptr i8, ptr %96, i32 304
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1600) #7, !srcloc !21
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx57 = getelementptr i32, ptr %data, i32 19
  %99 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %arrayidx57, align 4
  %100 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %io_base, align 4
  %add.ptr.i1601 = getelementptr i8, ptr %101, i32 308
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1601) #7, !srcloc !21
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx60 = getelementptr i32, ptr %data, i32 20
  %104 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %arrayidx60, align 4
  %105 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %io_base, align 4
  %add.ptr.i1602 = getelementptr i8, ptr %106, i32 312
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1602) #7, !srcloc !21
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx63 = getelementptr i32, ptr %data, i32 21
  %109 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %arrayidx63, align 4
  %110 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %io_base, align 4
  %add.ptr.i1603 = getelementptr i8, ptr %111, i32 316
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1603) #7, !srcloc !21
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx66 = getelementptr i32, ptr %data, i32 22
  %114 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %arrayidx66, align 4
  %115 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %io_base, align 4
  %add.ptr.i1604 = getelementptr i8, ptr %116, i32 352
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1604) #7, !srcloc !21
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx69 = getelementptr i32, ptr %data, i32 23
  %119 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %arrayidx69, align 4
  %120 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %io_base, align 4
  %add.ptr.i1605 = getelementptr i8, ptr %121, i32 356
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1605) #7, !srcloc !21
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx72 = getelementptr i32, ptr %data, i32 24
  %124 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %arrayidx72, align 4
  %125 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %io_base, align 4
  %add.ptr.i1606 = getelementptr i8, ptr %126, i32 360
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1606) #7, !srcloc !21
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx75 = getelementptr i32, ptr %data, i32 25
  %129 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %arrayidx75, align 4
  %130 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %io_base, align 4
  %add.ptr.i1607 = getelementptr i8, ptr %131, i32 364
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1607) #7, !srcloc !21
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx78 = getelementptr i32, ptr %data, i32 26
  %134 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %arrayidx78, align 4
  %135 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %io_base, align 4
  %add.ptr.i1608 = getelementptr i8, ptr %136, i32 368
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1608) #7, !srcloc !21
  %138 = tail call i32 @llvm.bswap.i32(i32 %137) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx81 = getelementptr i32, ptr %data, i32 27
  %139 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %arrayidx81, align 4
  %140 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %io_base, align 4
  %add.ptr.i1609 = getelementptr i8, ptr %141, i32 372
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1609) #7, !srcloc !21
  %143 = tail call i32 @llvm.bswap.i32(i32 %142) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx84 = getelementptr i32, ptr %data, i32 28
  %144 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %arrayidx84, align 4
  %145 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %io_base, align 4
  %add.ptr.i1610 = getelementptr i8, ptr %146, i32 376
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1610) #7, !srcloc !21
  %148 = tail call i32 @llvm.bswap.i32(i32 %147) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx87 = getelementptr i32, ptr %data, i32 29
  %149 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %arrayidx87, align 4
  %150 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %io_base, align 4
  %add.ptr.i1611 = getelementptr i8, ptr %151, i32 380
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1611) #7, !srcloc !21
  %153 = tail call i32 @llvm.bswap.i32(i32 %152) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx90 = getelementptr i32, ptr %data, i32 30
  %154 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %arrayidx90, align 4
  %155 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %io_base, align 4
  %add.ptr.i1612 = getelementptr i8, ptr %156, i32 384
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1612) #7, !srcloc !21
  %158 = tail call i32 @llvm.bswap.i32(i32 %157) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx93 = getelementptr i32, ptr %data, i32 31
  %159 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %arrayidx93, align 4
  %160 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %io_base, align 4
  %add.ptr.i1613 = getelementptr i8, ptr %161, i32 388
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1613) #7, !srcloc !21
  %163 = tail call i32 @llvm.bswap.i32(i32 %162) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx96 = getelementptr i32, ptr %data, i32 32
  %164 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %arrayidx96, align 4
  %165 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %io_base, align 4
  %add.ptr.i1614 = getelementptr i8, ptr %166, i32 392
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1614) #7, !srcloc !21
  %168 = tail call i32 @llvm.bswap.i32(i32 %167) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx99 = getelementptr i32, ptr %data, i32 33
  %169 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %arrayidx99, align 4
  %170 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %io_base, align 4
  %add.ptr.i1615 = getelementptr i8, ptr %171, i32 396
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1615) #7, !srcloc !21
  %173 = tail call i32 @llvm.bswap.i32(i32 %172) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx102 = getelementptr i32, ptr %data, i32 34
  %174 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %arrayidx102, align 4
  %175 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %io_base, align 4
  %add.ptr.i1616 = getelementptr i8, ptr %176, i32 400
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1616) #7, !srcloc !21
  %178 = tail call i32 @llvm.bswap.i32(i32 %177) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx105 = getelementptr i32, ptr %data, i32 35
  %179 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %arrayidx105, align 4
  %180 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %io_base, align 4
  %add.ptr.i1617 = getelementptr i8, ptr %181, i32 404
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1617) #7, !srcloc !21
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx108 = getelementptr i32, ptr %data, i32 36
  %184 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %arrayidx108, align 4
  %185 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %io_base, align 4
  %add.ptr.i1618 = getelementptr i8, ptr %186, i32 408
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1618) #7, !srcloc !21
  %188 = tail call i32 @llvm.bswap.i32(i32 %187) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx111 = getelementptr i32, ptr %data, i32 37
  %189 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %arrayidx111, align 4
  %190 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %io_base, align 4
  %add.ptr.i1619 = getelementptr i8, ptr %191, i32 412
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1619) #7, !srcloc !21
  %193 = tail call i32 @llvm.bswap.i32(i32 %192) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx114 = getelementptr i32, ptr %data, i32 38
  %194 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %arrayidx114, align 4
  %195 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %io_base, align 4
  %add.ptr.i1620 = getelementptr i8, ptr %196, i32 416
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1620) #7, !srcloc !21
  %198 = tail call i32 @llvm.bswap.i32(i32 %197) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx117 = getelementptr i32, ptr %data, i32 39
  %199 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %arrayidx117, align 4
  %200 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %io_base, align 4
  %add.ptr.i1621 = getelementptr i8, ptr %201, i32 420
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1621) #7, !srcloc !21
  %203 = tail call i32 @llvm.bswap.i32(i32 %202) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx120 = getelementptr i32, ptr %data, i32 40
  %204 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %arrayidx120, align 4
  %205 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %io_base, align 4
  %add.ptr.i1622 = getelementptr i8, ptr %206, i32 424
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1622) #7, !srcloc !21
  %208 = tail call i32 @llvm.bswap.i32(i32 %207) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx123 = getelementptr i32, ptr %data, i32 41
  %209 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %arrayidx123, align 4
  %210 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %io_base, align 4
  %add.ptr.i1623 = getelementptr i8, ptr %211, i32 448
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1623) #7, !srcloc !21
  %213 = tail call i32 @llvm.bswap.i32(i32 %212) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx126 = getelementptr i32, ptr %data, i32 42
  %214 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %arrayidx126, align 4
  %215 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %io_base, align 4
  %add.ptr.i1624 = getelementptr i8, ptr %216, i32 452
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1624) #7, !srcloc !21
  %218 = tail call i32 @llvm.bswap.i32(i32 %217) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx129 = getelementptr i32, ptr %data, i32 43
  %219 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %arrayidx129, align 4
  %220 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %io_base, align 4
  %add.ptr.i1625 = getelementptr i8, ptr %221, i32 456
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1625) #7, !srcloc !21
  %223 = tail call i32 @llvm.bswap.i32(i32 %222) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx132 = getelementptr i32, ptr %data, i32 44
  %224 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %arrayidx132, align 4
  %225 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %io_base, align 4
  %add.ptr.i1626 = getelementptr i8, ptr %226, i32 460
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1626) #7, !srcloc !21
  %228 = tail call i32 @llvm.bswap.i32(i32 %227) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx135 = getelementptr i32, ptr %data, i32 45
  %229 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %228, ptr %arrayidx135, align 4
  %230 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %io_base, align 4
  %add.ptr.i1627 = getelementptr i8, ptr %231, i32 464
  %232 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1627) #7, !srcloc !21
  %233 = tail call i32 @llvm.bswap.i32(i32 %232) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx138 = getelementptr i32, ptr %data, i32 46
  %234 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %233, ptr %arrayidx138, align 4
  %235 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %io_base, align 4
  %add.ptr.i1628 = getelementptr i8, ptr %236, i32 468
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1628) #7, !srcloc !21
  %238 = tail call i32 @llvm.bswap.i32(i32 %237) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx141 = getelementptr i32, ptr %data, i32 47
  %239 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %238, ptr %arrayidx141, align 4
  %240 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %io_base, align 4
  %add.ptr.i1629 = getelementptr i8, ptr %241, i32 472
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1629) #7, !srcloc !21
  %243 = tail call i32 @llvm.bswap.i32(i32 %242) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx144 = getelementptr i32, ptr %data, i32 48
  %244 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %243, ptr %arrayidx144, align 4
  %245 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %io_base, align 4
  %add.ptr.i1630 = getelementptr i8, ptr %246, i32 476
  %247 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1630) #7, !srcloc !21
  %248 = tail call i32 @llvm.bswap.i32(i32 %247) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx147 = getelementptr i32, ptr %data, i32 49
  %249 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %arrayidx147, align 4
  %250 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %io_base, align 4
  %add.ptr.i1631 = getelementptr i8, ptr %251, i32 480
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1631) #7, !srcloc !21
  %253 = tail call i32 @llvm.bswap.i32(i32 %252) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx150 = getelementptr i32, ptr %data, i32 50
  %254 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %253, ptr %arrayidx150, align 4
  %255 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %io_base, align 4
  %add.ptr.i1632 = getelementptr i8, ptr %256, i32 816
  %257 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1632) #7, !srcloc !21
  %258 = tail call i32 @llvm.bswap.i32(i32 %257) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx153 = getelementptr i32, ptr %data, i32 51
  %259 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %258, ptr %arrayidx153, align 4
  %260 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %io_base, align 4
  %add.ptr.i1633 = getelementptr i8, ptr %261, i32 1028
  %262 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1633) #7, !srcloc !21
  %263 = tail call i32 @llvm.bswap.i32(i32 %262) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx156 = getelementptr i32, ptr %data, i32 52
  %264 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %263, ptr %arrayidx156, align 4
  %265 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %io_base, align 4
  %add.ptr.i1634 = getelementptr i8, ptr %266, i32 1040
  %267 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1634) #7, !srcloc !21
  %268 = tail call i32 @llvm.bswap.i32(i32 %267) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx159 = getelementptr i32, ptr %data, i32 53
  %269 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %268, ptr %arrayidx159, align 4
  %270 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %io_base, align 4
  %add.ptr.i1635 = getelementptr i8, ptr %271, i32 1044
  %272 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1635) #7, !srcloc !21
  %273 = tail call i32 @llvm.bswap.i32(i32 %272) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx162 = getelementptr i32, ptr %data, i32 54
  %274 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %273, ptr %arrayidx162, align 4
  %275 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %io_base, align 4
  %add.ptr.i1636 = getelementptr i8, ptr %276, i32 1056
  %277 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1636) #7, !srcloc !21
  %278 = tail call i32 @llvm.bswap.i32(i32 %277) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx165 = getelementptr i32, ptr %data, i32 55
  %279 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %278, ptr %arrayidx165, align 4
  %280 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %io_base, align 4
  %add.ptr.i1637 = getelementptr i8, ptr %281, i32 1060
  %282 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1637) #7, !srcloc !21
  %283 = tail call i32 @llvm.bswap.i32(i32 %282) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx168 = getelementptr i32, ptr %data, i32 56
  %284 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %283, ptr %arrayidx168, align 4
  %285 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %io_base, align 4
  %add.ptr.i1638 = getelementptr i8, ptr %286, i32 1064
  %287 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1638) #7, !srcloc !21
  %288 = tail call i32 @llvm.bswap.i32(i32 %287) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx171 = getelementptr i32, ptr %data, i32 57
  %289 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %288, ptr %arrayidx171, align 4
  %290 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %io_base, align 4
  %add.ptr.i1639 = getelementptr i8, ptr %291, i32 1068
  %292 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1639) #7, !srcloc !21
  %293 = tail call i32 @llvm.bswap.i32(i32 %292) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx174 = getelementptr i32, ptr %data, i32 58
  %294 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %293, ptr %arrayidx174, align 4
  %295 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %io_base, align 4
  %add.ptr.i1640 = getelementptr i8, ptr %296, i32 1072
  %297 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1640) #7, !srcloc !21
  %298 = tail call i32 @llvm.bswap.i32(i32 %297) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx177 = getelementptr i32, ptr %data, i32 59
  %299 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %298, ptr %arrayidx177, align 4
  %300 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %io_base, align 4
  %add.ptr.i1641 = getelementptr i8, ptr %301, i32 1076
  %302 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1641) #7, !srcloc !21
  %303 = tail call i32 @llvm.bswap.i32(i32 %302) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx180 = getelementptr i32, ptr %data, i32 60
  %304 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %303, ptr %arrayidx180, align 4
  %305 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %io_base, align 4
  %add.ptr.i1642 = getelementptr i8, ptr %306, i32 1216
  %307 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1642) #7, !srcloc !21
  %308 = tail call i32 @llvm.bswap.i32(i32 %307) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx183 = getelementptr i32, ptr %data, i32 61
  %309 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %308, ptr %arrayidx183, align 4
  %310 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %io_base, align 4
  %add.ptr.i1643 = getelementptr i8, ptr %311, i32 1220
  %312 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1643) #7, !srcloc !21
  %313 = tail call i32 @llvm.bswap.i32(i32 %312) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx186 = getelementptr i32, ptr %data, i32 62
  %314 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %313, ptr %arrayidx186, align 4
  %315 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %io_base, align 4
  %add.ptr.i1644 = getelementptr i8, ptr %316, i32 1224
  %317 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1644) #7, !srcloc !21
  %318 = tail call i32 @llvm.bswap.i32(i32 %317) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx189 = getelementptr i32, ptr %data, i32 63
  %319 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %318, ptr %arrayidx189, align 4
  %320 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %io_base, align 4
  %add.ptr.i1645 = getelementptr i8, ptr %321, i32 1228
  %322 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1645) #7, !srcloc !21
  %323 = tail call i32 @llvm.bswap.i32(i32 %322) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx192 = getelementptr i32, ptr %data, i32 64
  %324 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %323, ptr %arrayidx192, align 4
  %325 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %io_base, align 4
  %add.ptr.i1646 = getelementptr i8, ptr %326, i32 1792
  %327 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1646) #7, !srcloc !21
  %328 = tail call i32 @llvm.bswap.i32(i32 %327) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx195 = getelementptr i32, ptr %data, i32 65
  %329 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %328, ptr %arrayidx195, align 4
  %330 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %io_base, align 4
  %add.ptr.i1647 = getelementptr i8, ptr %331, i32 1796
  %332 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1647) #7, !srcloc !21
  %333 = tail call i32 @llvm.bswap.i32(i32 %332) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx198 = getelementptr i32, ptr %data, i32 66
  %334 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %333, ptr %arrayidx198, align 4
  %335 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %io_base, align 4
  %add.ptr.i1648 = getelementptr i8, ptr %336, i32 1800
  %337 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1648) #7, !srcloc !21
  %338 = tail call i32 @llvm.bswap.i32(i32 %337) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx201 = getelementptr i32, ptr %data, i32 67
  %339 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %338, ptr %arrayidx201, align 4
  %340 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %io_base, align 4
  %add.ptr.i1649 = getelementptr i8, ptr %341, i32 1804
  %342 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1649) #7, !srcloc !21
  %343 = tail call i32 @llvm.bswap.i32(i32 %342) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx204 = getelementptr i32, ptr %data, i32 68
  %344 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 %343, ptr %arrayidx204, align 4
  %345 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %io_base, align 4
  %add.ptr.i1650 = getelementptr i8, ptr %346, i32 1856
  %347 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1650) #7, !srcloc !21
  %348 = tail call i32 @llvm.bswap.i32(i32 %347) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx207 = getelementptr i32, ptr %data, i32 69
  %349 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 %348, ptr %arrayidx207, align 4
  %350 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %io_base, align 4
  %add.ptr.i1651 = getelementptr i8, ptr %351, i32 1860
  %352 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1651) #7, !srcloc !21
  %353 = tail call i32 @llvm.bswap.i32(i32 %352) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx210 = getelementptr i32, ptr %data, i32 70
  %354 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 %353, ptr %arrayidx210, align 4
  %355 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %io_base, align 4
  %add.ptr.i1652 = getelementptr i8, ptr %356, i32 1872
  %357 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1652) #7, !srcloc !21
  %358 = tail call i32 @llvm.bswap.i32(i32 %357) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx213 = getelementptr i32, ptr %data, i32 71
  %359 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 %358, ptr %arrayidx213, align 4
  %360 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %io_base, align 4
  %add.ptr.i1653 = getelementptr i8, ptr %361, i32 1888
  %362 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1653) #7, !srcloc !21
  %363 = tail call i32 @llvm.bswap.i32(i32 %362) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %arrayidx216 = getelementptr i32, ptr %data, i32 72
  %364 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 %363, ptr %arrayidx216, align 4
  %365 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %io_base, align 4
  %add.ptr = getelementptr i8, ptr %366, i32 3072
  %add.ptr.i1654 = getelementptr i8, ptr %366, i32 3076
  %367 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1654) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %368 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %369 = zext i32 %367 to i64
  %370 = zext i32 %368 to i64
  %371 = shl nuw i64 %370, 32
  %372 = or i64 %371, %369
  %373 = tail call i64 @llvm.bswap.i64(i64 %372) #7
  %conv = trunc i64 %373 to i32
  %arrayidx220 = getelementptr i32, ptr %data, i32 73
  %374 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 %conv, ptr %arrayidx220, align 4
  %shr = lshr i64 %373, 32
  %conv221 = trunc i64 %shr to i32
  %add.ptr223 = getelementptr i32, ptr %data, i32 74
  %375 = ptrtoint ptr %add.ptr223 to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 %conv221, ptr %add.ptr223, align 4
  %376 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %io_base, align 4
  %add.ptr226 = getelementptr i8, ptr %377, i32 3080
  %add.ptr.i1655 = getelementptr i8, ptr %377, i32 3084
  %378 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1655) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %379 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr226) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %380 = zext i32 %378 to i64
  %381 = zext i32 %379 to i64
  %382 = shl nuw i64 %381, 32
  %383 = or i64 %382, %380
  %384 = tail call i64 @llvm.bswap.i64(i64 %383) #7
  %conv229 = trunc i64 %384 to i32
  %arrayidx230 = getelementptr i32, ptr %data, i32 75
  %385 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 %conv229, ptr %arrayidx230, align 4
  %shr231 = lshr i64 %384, 32
  %conv232 = trunc i64 %shr231 to i32
  %add.ptr234 = getelementptr i32, ptr %data, i32 76
  %386 = ptrtoint ptr %add.ptr234 to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 %conv232, ptr %add.ptr234, align 4
  %387 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %io_base, align 4
  %add.ptr239 = getelementptr i8, ptr %388, i32 3088
  %add.ptr.i1656 = getelementptr i8, ptr %388, i32 3092
  %389 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1656) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %390 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr239) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %391 = zext i32 %389 to i64
  %392 = zext i32 %390 to i64
  %393 = shl nuw i64 %392, 32
  %394 = or i64 %393, %391
  %395 = tail call i64 @llvm.bswap.i64(i64 %394) #7
  %conv242 = trunc i64 %395 to i32
  %arrayidx243 = getelementptr i32, ptr %data, i32 77
  %396 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 %conv242, ptr %arrayidx243, align 4
  %shr244 = lshr i64 %395, 32
  %conv245 = trunc i64 %shr244 to i32
  %add.ptr247 = getelementptr i32, ptr %data, i32 78
  %397 = ptrtoint ptr %add.ptr247 to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 %conv245, ptr %add.ptr247, align 4
  %398 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %io_base, align 4
  %add.ptr252 = getelementptr i8, ptr %399, i32 3096
  %add.ptr.i1657 = getelementptr i8, ptr %399, i32 3100
  %400 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1657) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %401 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr252) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %402 = zext i32 %400 to i64
  %403 = zext i32 %401 to i64
  %404 = shl nuw i64 %403, 32
  %405 = or i64 %404, %402
  %406 = tail call i64 @llvm.bswap.i64(i64 %405) #7
  %conv255 = trunc i64 %406 to i32
  %arrayidx256 = getelementptr i32, ptr %data, i32 79
  %407 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 %conv255, ptr %arrayidx256, align 4
  %shr257 = lshr i64 %406, 32
  %conv258 = trunc i64 %shr257 to i32
  %add.ptr260 = getelementptr i32, ptr %data, i32 80
  %408 = ptrtoint ptr %add.ptr260 to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 %conv258, ptr %add.ptr260, align 4
  %409 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %io_base, align 4
  %add.ptr265 = getelementptr i8, ptr %410, i32 3104
  %add.ptr.i1658 = getelementptr i8, ptr %410, i32 3108
  %411 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1658) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %412 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr265) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %413 = zext i32 %411 to i64
  %414 = zext i32 %412 to i64
  %415 = shl nuw i64 %414, 32
  %416 = or i64 %415, %413
  %417 = tail call i64 @llvm.bswap.i64(i64 %416) #7
  %conv268 = trunc i64 %417 to i32
  %arrayidx269 = getelementptr i32, ptr %data, i32 81
  %418 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_store4_noabort(i32 %418)
  store i32 %conv268, ptr %arrayidx269, align 4
  %shr270 = lshr i64 %417, 32
  %conv271 = trunc i64 %shr270 to i32
  %add.ptr273 = getelementptr i32, ptr %data, i32 82
  %419 = ptrtoint ptr %add.ptr273 to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 %conv271, ptr %add.ptr273, align 4
  %420 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %io_base, align 4
  %add.ptr278 = getelementptr i8, ptr %421, i32 3112
  %add.ptr.i1659 = getelementptr i8, ptr %421, i32 3116
  %422 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1659) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %423 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr278) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %424 = zext i32 %422 to i64
  %425 = zext i32 %423 to i64
  %426 = shl nuw i64 %425, 32
  %427 = or i64 %426, %424
  %428 = tail call i64 @llvm.bswap.i64(i64 %427) #7
  %conv281 = trunc i64 %428 to i32
  %arrayidx282 = getelementptr i32, ptr %data, i32 83
  %429 = ptrtoint ptr %arrayidx282 to i32
  call void @__asan_store4_noabort(i32 %429)
  store i32 %conv281, ptr %arrayidx282, align 4
  %shr283 = lshr i64 %428, 32
  %conv284 = trunc i64 %shr283 to i32
  %add.ptr286 = getelementptr i32, ptr %data, i32 84
  %430 = ptrtoint ptr %add.ptr286 to i32
  call void @__asan_store4_noabort(i32 %430)
  store i32 %conv284, ptr %add.ptr286, align 4
  %431 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %io_base, align 4
  %add.ptr291 = getelementptr i8, ptr %432, i32 3120
  %add.ptr.i1660 = getelementptr i8, ptr %432, i32 3124
  %433 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1660) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %434 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr291) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %435 = zext i32 %433 to i64
  %436 = zext i32 %434 to i64
  %437 = shl nuw i64 %436, 32
  %438 = or i64 %437, %435
  %439 = tail call i64 @llvm.bswap.i64(i64 %438) #7
  %conv294 = trunc i64 %439 to i32
  %arrayidx295 = getelementptr i32, ptr %data, i32 85
  %440 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_store4_noabort(i32 %440)
  store i32 %conv294, ptr %arrayidx295, align 4
  %shr296 = lshr i64 %439, 32
  %conv297 = trunc i64 %shr296 to i32
  %add.ptr299 = getelementptr i32, ptr %data, i32 86
  %441 = ptrtoint ptr %add.ptr299 to i32
  call void @__asan_store4_noabort(i32 %441)
  store i32 %conv297, ptr %add.ptr299, align 4
  %442 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %io_base, align 4
  %add.ptr304 = getelementptr i8, ptr %443, i32 3128
  %add.ptr.i1661 = getelementptr i8, ptr %443, i32 3132
  %444 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1661) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %445 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr304) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %446 = zext i32 %444 to i64
  %447 = zext i32 %445 to i64
  %448 = shl nuw i64 %447, 32
  %449 = or i64 %448, %446
  %450 = tail call i64 @llvm.bswap.i64(i64 %449) #7
  %conv307 = trunc i64 %450 to i32
  %arrayidx308 = getelementptr i32, ptr %data, i32 87
  %451 = ptrtoint ptr %arrayidx308 to i32
  call void @__asan_store4_noabort(i32 %451)
  store i32 %conv307, ptr %arrayidx308, align 4
  %shr309 = lshr i64 %450, 32
  %conv310 = trunc i64 %shr309 to i32
  %add.ptr312 = getelementptr i32, ptr %data, i32 88
  %452 = ptrtoint ptr %add.ptr312 to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 %conv310, ptr %add.ptr312, align 4
  %453 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %io_base, align 4
  %add.ptr317 = getelementptr i8, ptr %454, i32 3136
  %add.ptr.i1662 = getelementptr i8, ptr %454, i32 3140
  %455 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1662) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %456 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr317) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %457 = zext i32 %455 to i64
  %458 = zext i32 %456 to i64
  %459 = shl nuw i64 %458, 32
  %460 = or i64 %459, %457
  %461 = tail call i64 @llvm.bswap.i64(i64 %460) #7
  %conv320 = trunc i64 %461 to i32
  %arrayidx321 = getelementptr i32, ptr %data, i32 89
  %462 = ptrtoint ptr %arrayidx321 to i32
  call void @__asan_store4_noabort(i32 %462)
  store i32 %conv320, ptr %arrayidx321, align 4
  %shr322 = lshr i64 %461, 32
  %conv323 = trunc i64 %shr322 to i32
  %add.ptr325 = getelementptr i32, ptr %data, i32 90
  %463 = ptrtoint ptr %add.ptr325 to i32
  call void @__asan_store4_noabort(i32 %463)
  store i32 %conv323, ptr %add.ptr325, align 4
  %464 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %io_base, align 4
  %add.ptr330 = getelementptr i8, ptr %465, i32 3144
  %add.ptr.i1663 = getelementptr i8, ptr %465, i32 3148
  %466 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1663) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %467 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr330) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %468 = zext i32 %466 to i64
  %469 = zext i32 %467 to i64
  %470 = shl nuw i64 %469, 32
  %471 = or i64 %470, %468
  %472 = tail call i64 @llvm.bswap.i64(i64 %471) #7
  %conv333 = trunc i64 %472 to i32
  %arrayidx334 = getelementptr i32, ptr %data, i32 91
  %473 = ptrtoint ptr %arrayidx334 to i32
  call void @__asan_store4_noabort(i32 %473)
  store i32 %conv333, ptr %arrayidx334, align 4
  %shr335 = lshr i64 %472, 32
  %conv336 = trunc i64 %shr335 to i32
  %add.ptr338 = getelementptr i32, ptr %data, i32 92
  %474 = ptrtoint ptr %add.ptr338 to i32
  call void @__asan_store4_noabort(i32 %474)
  store i32 %conv336, ptr %add.ptr338, align 4
  %475 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %io_base, align 4
  %add.ptr343 = getelementptr i8, ptr %476, i32 3152
  %add.ptr.i1664 = getelementptr i8, ptr %476, i32 3156
  %477 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1664) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %478 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr343) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %479 = zext i32 %477 to i64
  %480 = zext i32 %478 to i64
  %481 = shl nuw i64 %480, 32
  %482 = or i64 %481, %479
  %483 = tail call i64 @llvm.bswap.i64(i64 %482) #7
  %conv346 = trunc i64 %483 to i32
  %arrayidx347 = getelementptr i32, ptr %data, i32 93
  %484 = ptrtoint ptr %arrayidx347 to i32
  call void @__asan_store4_noabort(i32 %484)
  store i32 %conv346, ptr %arrayidx347, align 4
  %shr348 = lshr i64 %483, 32
  %conv349 = trunc i64 %shr348 to i32
  %add.ptr351 = getelementptr i32, ptr %data, i32 94
  %485 = ptrtoint ptr %add.ptr351 to i32
  call void @__asan_store4_noabort(i32 %485)
  store i32 %conv349, ptr %add.ptr351, align 4
  %486 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %io_base, align 4
  %add.ptr356 = getelementptr i8, ptr %487, i32 3160
  %add.ptr.i1665 = getelementptr i8, ptr %487, i32 3164
  %488 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1665) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %489 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr356) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %490 = zext i32 %488 to i64
  %491 = zext i32 %489 to i64
  %492 = shl nuw i64 %491, 32
  %493 = or i64 %492, %490
  %494 = tail call i64 @llvm.bswap.i64(i64 %493) #7
  %conv359 = trunc i64 %494 to i32
  %arrayidx360 = getelementptr i32, ptr %data, i32 95
  %495 = ptrtoint ptr %arrayidx360 to i32
  call void @__asan_store4_noabort(i32 %495)
  store i32 %conv359, ptr %arrayidx360, align 4
  %shr361 = lshr i64 %494, 32
  %conv362 = trunc i64 %shr361 to i32
  %add.ptr364 = getelementptr i32, ptr %data, i32 96
  %496 = ptrtoint ptr %add.ptr364 to i32
  call void @__asan_store4_noabort(i32 %496)
  store i32 %conv362, ptr %add.ptr364, align 4
  %497 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %io_base, align 4
  %add.ptr369 = getelementptr i8, ptr %498, i32 3168
  %add.ptr.i1666 = getelementptr i8, ptr %498, i32 3172
  %499 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1666) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %500 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr369) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %501 = zext i32 %499 to i64
  %502 = zext i32 %500 to i64
  %503 = shl nuw i64 %502, 32
  %504 = or i64 %503, %501
  %505 = tail call i64 @llvm.bswap.i64(i64 %504) #7
  %conv372 = trunc i64 %505 to i32
  %arrayidx373 = getelementptr i32, ptr %data, i32 97
  %506 = ptrtoint ptr %arrayidx373 to i32
  call void @__asan_store4_noabort(i32 %506)
  store i32 %conv372, ptr %arrayidx373, align 4
  %shr374 = lshr i64 %505, 32
  %conv375 = trunc i64 %shr374 to i32
  %add.ptr377 = getelementptr i32, ptr %data, i32 98
  %507 = ptrtoint ptr %add.ptr377 to i32
  call void @__asan_store4_noabort(i32 %507)
  store i32 %conv375, ptr %add.ptr377, align 4
  %508 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %io_base, align 4
  %add.ptr382 = getelementptr i8, ptr %509, i32 3176
  %add.ptr.i1667 = getelementptr i8, ptr %509, i32 3180
  %510 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1667) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %511 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr382) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %512 = zext i32 %510 to i64
  %513 = zext i32 %511 to i64
  %514 = shl nuw i64 %513, 32
  %515 = or i64 %514, %512
  %516 = tail call i64 @llvm.bswap.i64(i64 %515) #7
  %conv385 = trunc i64 %516 to i32
  %arrayidx386 = getelementptr i32, ptr %data, i32 99
  %517 = ptrtoint ptr %arrayidx386 to i32
  call void @__asan_store4_noabort(i32 %517)
  store i32 %conv385, ptr %arrayidx386, align 4
  %shr387 = lshr i64 %516, 32
  %conv388 = trunc i64 %shr387 to i32
  %add.ptr390 = getelementptr i32, ptr %data, i32 100
  %518 = ptrtoint ptr %add.ptr390 to i32
  call void @__asan_store4_noabort(i32 %518)
  store i32 %conv388, ptr %add.ptr390, align 4
  %519 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %io_base, align 4
  %add.ptr395 = getelementptr i8, ptr %520, i32 3184
  %add.ptr.i1668 = getelementptr i8, ptr %520, i32 3188
  %521 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1668) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %522 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr395) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %523 = zext i32 %521 to i64
  %524 = zext i32 %522 to i64
  %525 = shl nuw i64 %524, 32
  %526 = or i64 %525, %523
  %527 = tail call i64 @llvm.bswap.i64(i64 %526) #7
  %conv398 = trunc i64 %527 to i32
  %arrayidx399 = getelementptr i32, ptr %data, i32 101
  %528 = ptrtoint ptr %arrayidx399 to i32
  call void @__asan_store4_noabort(i32 %528)
  store i32 %conv398, ptr %arrayidx399, align 4
  %shr400 = lshr i64 %527, 32
  %conv401 = trunc i64 %shr400 to i32
  %add.ptr403 = getelementptr i32, ptr %data, i32 102
  %529 = ptrtoint ptr %add.ptr403 to i32
  call void @__asan_store4_noabort(i32 %529)
  store i32 %conv401, ptr %add.ptr403, align 4
  %530 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %io_base, align 4
  %add.ptr408 = getelementptr i8, ptr %531, i32 3192
  %add.ptr.i1669 = getelementptr i8, ptr %531, i32 3196
  %532 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1669) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %533 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr408) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %534 = zext i32 %532 to i64
  %535 = zext i32 %533 to i64
  %536 = shl nuw i64 %535, 32
  %537 = or i64 %536, %534
  %538 = tail call i64 @llvm.bswap.i64(i64 %537) #7
  %conv411 = trunc i64 %538 to i32
  %arrayidx412 = getelementptr i32, ptr %data, i32 103
  %539 = ptrtoint ptr %arrayidx412 to i32
  call void @__asan_store4_noabort(i32 %539)
  store i32 %conv411, ptr %arrayidx412, align 4
  %shr413 = lshr i64 %538, 32
  %conv414 = trunc i64 %shr413 to i32
  %add.ptr416 = getelementptr i32, ptr %data, i32 104
  %540 = ptrtoint ptr %add.ptr416 to i32
  call void @__asan_store4_noabort(i32 %540)
  store i32 %conv414, ptr %add.ptr416, align 4
  %541 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %io_base, align 4
  %add.ptr421 = getelementptr i8, ptr %542, i32 3200
  %add.ptr.i1670 = getelementptr i8, ptr %542, i32 3204
  %543 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1670) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %544 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr421) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %545 = zext i32 %543 to i64
  %546 = zext i32 %544 to i64
  %547 = shl nuw i64 %546, 32
  %548 = or i64 %547, %545
  %549 = tail call i64 @llvm.bswap.i64(i64 %548) #7
  %conv424 = trunc i64 %549 to i32
  %arrayidx425 = getelementptr i32, ptr %data, i32 105
  %550 = ptrtoint ptr %arrayidx425 to i32
  call void @__asan_store4_noabort(i32 %550)
  store i32 %conv424, ptr %arrayidx425, align 4
  %shr426 = lshr i64 %549, 32
  %conv427 = trunc i64 %shr426 to i32
  %add.ptr429 = getelementptr i32, ptr %data, i32 106
  %551 = ptrtoint ptr %add.ptr429 to i32
  call void @__asan_store4_noabort(i32 %551)
  store i32 %conv427, ptr %add.ptr429, align 4
  %552 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %io_base, align 4
  %add.ptr434 = getelementptr i8, ptr %553, i32 3208
  %add.ptr.i1671 = getelementptr i8, ptr %553, i32 3212
  %554 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1671) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %555 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr434) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %556 = zext i32 %554 to i64
  %557 = zext i32 %555 to i64
  %558 = shl nuw i64 %557, 32
  %559 = or i64 %558, %556
  %560 = tail call i64 @llvm.bswap.i64(i64 %559) #7
  %conv437 = trunc i64 %560 to i32
  %arrayidx438 = getelementptr i32, ptr %data, i32 107
  %561 = ptrtoint ptr %arrayidx438 to i32
  call void @__asan_store4_noabort(i32 %561)
  store i32 %conv437, ptr %arrayidx438, align 4
  %shr439 = lshr i64 %560, 32
  %conv440 = trunc i64 %shr439 to i32
  %add.ptr442 = getelementptr i32, ptr %data, i32 108
  %562 = ptrtoint ptr %add.ptr442 to i32
  call void @__asan_store4_noabort(i32 %562)
  store i32 %conv440, ptr %add.ptr442, align 4
  %563 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %io_base, align 4
  %add.ptr447 = getelementptr i8, ptr %564, i32 3216
  %add.ptr.i1672 = getelementptr i8, ptr %564, i32 3220
  %565 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1672) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %566 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr447) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %567 = zext i32 %565 to i64
  %568 = zext i32 %566 to i64
  %569 = shl nuw i64 %568, 32
  %570 = or i64 %569, %567
  %571 = tail call i64 @llvm.bswap.i64(i64 %570) #7
  %conv450 = trunc i64 %571 to i32
  %arrayidx451 = getelementptr i32, ptr %data, i32 109
  %572 = ptrtoint ptr %arrayidx451 to i32
  call void @__asan_store4_noabort(i32 %572)
  store i32 %conv450, ptr %arrayidx451, align 4
  %shr452 = lshr i64 %571, 32
  %conv453 = trunc i64 %shr452 to i32
  %add.ptr455 = getelementptr i32, ptr %data, i32 110
  %573 = ptrtoint ptr %add.ptr455 to i32
  call void @__asan_store4_noabort(i32 %573)
  store i32 %conv453, ptr %add.ptr455, align 4
  %574 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %io_base, align 4
  %add.ptr460 = getelementptr i8, ptr %575, i32 3224
  %add.ptr.i1673 = getelementptr i8, ptr %575, i32 3228
  %576 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1673) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %577 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr460) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %578 = zext i32 %576 to i64
  %579 = zext i32 %577 to i64
  %580 = shl nuw i64 %579, 32
  %581 = or i64 %580, %578
  %582 = tail call i64 @llvm.bswap.i64(i64 %581) #7
  %conv463 = trunc i64 %582 to i32
  %arrayidx464 = getelementptr i32, ptr %data, i32 111
  %583 = ptrtoint ptr %arrayidx464 to i32
  call void @__asan_store4_noabort(i32 %583)
  store i32 %conv463, ptr %arrayidx464, align 4
  %shr465 = lshr i64 %582, 32
  %conv466 = trunc i64 %shr465 to i32
  %add.ptr468 = getelementptr i32, ptr %data, i32 112
  %584 = ptrtoint ptr %add.ptr468 to i32
  call void @__asan_store4_noabort(i32 %584)
  store i32 %conv466, ptr %add.ptr468, align 4
  %585 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %io_base, align 4
  %add.ptr473 = getelementptr i8, ptr %586, i32 3232
  %add.ptr.i1674 = getelementptr i8, ptr %586, i32 3236
  %587 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1674) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %588 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr473) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %589 = zext i32 %587 to i64
  %590 = zext i32 %588 to i64
  %591 = shl nuw i64 %590, 32
  %592 = or i64 %591, %589
  %593 = tail call i64 @llvm.bswap.i64(i64 %592) #7
  %conv476 = trunc i64 %593 to i32
  %arrayidx477 = getelementptr i32, ptr %data, i32 113
  %594 = ptrtoint ptr %arrayidx477 to i32
  call void @__asan_store4_noabort(i32 %594)
  store i32 %conv476, ptr %arrayidx477, align 4
  %shr478 = lshr i64 %593, 32
  %conv479 = trunc i64 %shr478 to i32
  %add.ptr481 = getelementptr i32, ptr %data, i32 114
  %595 = ptrtoint ptr %add.ptr481 to i32
  call void @__asan_store4_noabort(i32 %595)
  store i32 %conv479, ptr %add.ptr481, align 4
  %596 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %io_base, align 4
  %add.ptr486 = getelementptr i8, ptr %597, i32 3240
  %add.ptr.i1675 = getelementptr i8, ptr %597, i32 3244
  %598 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1675) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %599 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr486) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %600 = zext i32 %598 to i64
  %601 = zext i32 %599 to i64
  %602 = shl nuw i64 %601, 32
  %603 = or i64 %602, %600
  %604 = tail call i64 @llvm.bswap.i64(i64 %603) #7
  %conv489 = trunc i64 %604 to i32
  %arrayidx490 = getelementptr i32, ptr %data, i32 115
  %605 = ptrtoint ptr %arrayidx490 to i32
  call void @__asan_store4_noabort(i32 %605)
  store i32 %conv489, ptr %arrayidx490, align 4
  %shr491 = lshr i64 %604, 32
  %conv492 = trunc i64 %shr491 to i32
  %add.ptr494 = getelementptr i32, ptr %data, i32 116
  %606 = ptrtoint ptr %add.ptr494 to i32
  call void @__asan_store4_noabort(i32 %606)
  store i32 %conv492, ptr %add.ptr494, align 4
  %607 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %io_base, align 4
  %add.ptr499 = getelementptr i8, ptr %608, i32 3248
  %add.ptr.i1676 = getelementptr i8, ptr %608, i32 3252
  %609 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1676) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %610 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr499) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %611 = zext i32 %609 to i64
  %612 = zext i32 %610 to i64
  %613 = shl nuw i64 %612, 32
  %614 = or i64 %613, %611
  %615 = tail call i64 @llvm.bswap.i64(i64 %614) #7
  %conv502 = trunc i64 %615 to i32
  %arrayidx503 = getelementptr i32, ptr %data, i32 117
  %616 = ptrtoint ptr %arrayidx503 to i32
  call void @__asan_store4_noabort(i32 %616)
  store i32 %conv502, ptr %arrayidx503, align 4
  %shr504 = lshr i64 %615, 32
  %conv505 = trunc i64 %shr504 to i32
  %add.ptr507 = getelementptr i32, ptr %data, i32 118
  %617 = ptrtoint ptr %add.ptr507 to i32
  call void @__asan_store4_noabort(i32 %617)
  store i32 %conv505, ptr %add.ptr507, align 4
  %618 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %io_base, align 4
  %add.ptr512 = getelementptr i8, ptr %619, i32 3256
  %add.ptr.i1677 = getelementptr i8, ptr %619, i32 3260
  %620 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1677) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %621 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr512) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %622 = zext i32 %620 to i64
  %623 = zext i32 %621 to i64
  %624 = shl nuw i64 %623, 32
  %625 = or i64 %624, %622
  %626 = tail call i64 @llvm.bswap.i64(i64 %625) #7
  %conv515 = trunc i64 %626 to i32
  %arrayidx516 = getelementptr i32, ptr %data, i32 119
  %627 = ptrtoint ptr %arrayidx516 to i32
  call void @__asan_store4_noabort(i32 %627)
  store i32 %conv515, ptr %arrayidx516, align 4
  %shr517 = lshr i64 %626, 32
  %conv518 = trunc i64 %shr517 to i32
  %add.ptr520 = getelementptr i32, ptr %data, i32 120
  %628 = ptrtoint ptr %add.ptr520 to i32
  call void @__asan_store4_noabort(i32 %628)
  store i32 %conv518, ptr %add.ptr520, align 4
  %629 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load ptr, ptr %io_base, align 4
  %add.ptr525 = getelementptr i8, ptr %630, i32 3264
  %add.ptr.i1678 = getelementptr i8, ptr %630, i32 3268
  %631 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1678) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %632 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr525) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %633 = zext i32 %631 to i64
  %634 = zext i32 %632 to i64
  %635 = shl nuw i64 %634, 32
  %636 = or i64 %635, %633
  %637 = tail call i64 @llvm.bswap.i64(i64 %636) #7
  %conv528 = trunc i64 %637 to i32
  %arrayidx529 = getelementptr i32, ptr %data, i32 121
  %638 = ptrtoint ptr %arrayidx529 to i32
  call void @__asan_store4_noabort(i32 %638)
  store i32 %conv528, ptr %arrayidx529, align 4
  %shr530 = lshr i64 %637, 32
  %conv531 = trunc i64 %shr530 to i32
  %add.ptr533 = getelementptr i32, ptr %data, i32 122
  %639 = ptrtoint ptr %add.ptr533 to i32
  call void @__asan_store4_noabort(i32 %639)
  store i32 %conv531, ptr %add.ptr533, align 4
  %640 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %io_base, align 4
  %add.ptr538 = getelementptr i8, ptr %641, i32 3272
  %add.ptr.i1679 = getelementptr i8, ptr %641, i32 3276
  %642 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1679) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %643 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr538) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %644 = zext i32 %642 to i64
  %645 = zext i32 %643 to i64
  %646 = shl nuw i64 %645, 32
  %647 = or i64 %646, %644
  %648 = tail call i64 @llvm.bswap.i64(i64 %647) #7
  %conv541 = trunc i64 %648 to i32
  %arrayidx542 = getelementptr i32, ptr %data, i32 123
  %649 = ptrtoint ptr %arrayidx542 to i32
  call void @__asan_store4_noabort(i32 %649)
  store i32 %conv541, ptr %arrayidx542, align 4
  %shr543 = lshr i64 %648, 32
  %conv544 = trunc i64 %shr543 to i32
  %add.ptr546 = getelementptr i32, ptr %data, i32 124
  %650 = ptrtoint ptr %add.ptr546 to i32
  call void @__asan_store4_noabort(i32 %650)
  store i32 %conv544, ptr %add.ptr546, align 4
  %651 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %io_base, align 4
  %add.ptr551 = getelementptr i8, ptr %652, i32 3280
  %add.ptr.i1680 = getelementptr i8, ptr %652, i32 3284
  %653 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1680) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %654 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr551) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %655 = zext i32 %653 to i64
  %656 = zext i32 %654 to i64
  %657 = shl nuw i64 %656, 32
  %658 = or i64 %657, %655
  %659 = tail call i64 @llvm.bswap.i64(i64 %658) #7
  %conv554 = trunc i64 %659 to i32
  %arrayidx555 = getelementptr i32, ptr %data, i32 125
  %660 = ptrtoint ptr %arrayidx555 to i32
  call void @__asan_store4_noabort(i32 %660)
  store i32 %conv554, ptr %arrayidx555, align 4
  %shr556 = lshr i64 %659, 32
  %conv557 = trunc i64 %shr556 to i32
  %add.ptr559 = getelementptr i32, ptr %data, i32 126
  %661 = ptrtoint ptr %add.ptr559 to i32
  call void @__asan_store4_noabort(i32 %661)
  store i32 %conv557, ptr %add.ptr559, align 4
  %662 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %io_base, align 4
  %add.ptr564 = getelementptr i8, ptr %663, i32 3288
  %add.ptr.i1681 = getelementptr i8, ptr %663, i32 3292
  %664 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1681) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %665 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr564) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %666 = zext i32 %664 to i64
  %667 = zext i32 %665 to i64
  %668 = shl nuw i64 %667, 32
  %669 = or i64 %668, %666
  %670 = tail call i64 @llvm.bswap.i64(i64 %669) #7
  %conv567 = trunc i64 %670 to i32
  %arrayidx568 = getelementptr i32, ptr %data, i32 127
  %671 = ptrtoint ptr %arrayidx568 to i32
  call void @__asan_store4_noabort(i32 %671)
  store i32 %conv567, ptr %arrayidx568, align 4
  %shr569 = lshr i64 %670, 32
  %conv570 = trunc i64 %shr569 to i32
  %add.ptr572 = getelementptr i32, ptr %data, i32 128
  %672 = ptrtoint ptr %add.ptr572 to i32
  call void @__asan_store4_noabort(i32 %672)
  store i32 %conv570, ptr %add.ptr572, align 4
  %673 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %io_base, align 4
  %add.ptr577 = getelementptr i8, ptr %674, i32 3296
  %add.ptr.i1682 = getelementptr i8, ptr %674, i32 3300
  %675 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1682) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %676 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr577) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %677 = zext i32 %675 to i64
  %678 = zext i32 %676 to i64
  %679 = shl nuw i64 %678, 32
  %680 = or i64 %679, %677
  %681 = tail call i64 @llvm.bswap.i64(i64 %680) #7
  %conv580 = trunc i64 %681 to i32
  %arrayidx581 = getelementptr i32, ptr %data, i32 129
  %682 = ptrtoint ptr %arrayidx581 to i32
  call void @__asan_store4_noabort(i32 %682)
  store i32 %conv580, ptr %arrayidx581, align 4
  %shr582 = lshr i64 %681, 32
  %conv583 = trunc i64 %shr582 to i32
  %add.ptr585 = getelementptr i32, ptr %data, i32 130
  %683 = ptrtoint ptr %add.ptr585 to i32
  call void @__asan_store4_noabort(i32 %683)
  store i32 %conv583, ptr %add.ptr585, align 4
  %684 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %io_base, align 4
  %add.ptr590 = getelementptr i8, ptr %685, i32 3304
  %add.ptr.i1683 = getelementptr i8, ptr %685, i32 3308
  %686 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1683) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %687 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr590) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %688 = zext i32 %686 to i64
  %689 = zext i32 %687 to i64
  %690 = shl nuw i64 %689, 32
  %691 = or i64 %690, %688
  %692 = tail call i64 @llvm.bswap.i64(i64 %691) #7
  %conv593 = trunc i64 %692 to i32
  %arrayidx594 = getelementptr i32, ptr %data, i32 131
  %693 = ptrtoint ptr %arrayidx594 to i32
  call void @__asan_store4_noabort(i32 %693)
  store i32 %conv593, ptr %arrayidx594, align 4
  %shr595 = lshr i64 %692, 32
  %conv596 = trunc i64 %shr595 to i32
  %add.ptr598 = getelementptr i32, ptr %data, i32 132
  %694 = ptrtoint ptr %add.ptr598 to i32
  call void @__asan_store4_noabort(i32 %694)
  store i32 %conv596, ptr %add.ptr598, align 4
  %695 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %io_base, align 4
  %add.ptr603 = getelementptr i8, ptr %696, i32 3312
  %add.ptr.i1684 = getelementptr i8, ptr %696, i32 3316
  %697 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1684) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %698 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr603) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %699 = zext i32 %697 to i64
  %700 = zext i32 %698 to i64
  %701 = shl nuw i64 %700, 32
  %702 = or i64 %701, %699
  %703 = tail call i64 @llvm.bswap.i64(i64 %702) #7
  %conv606 = trunc i64 %703 to i32
  %arrayidx607 = getelementptr i32, ptr %data, i32 133
  %704 = ptrtoint ptr %arrayidx607 to i32
  call void @__asan_store4_noabort(i32 %704)
  store i32 %conv606, ptr %arrayidx607, align 4
  %shr608 = lshr i64 %703, 32
  %conv609 = trunc i64 %shr608 to i32
  %add.ptr611 = getelementptr i32, ptr %data, i32 134
  %705 = ptrtoint ptr %add.ptr611 to i32
  call void @__asan_store4_noabort(i32 %705)
  store i32 %conv609, ptr %add.ptr611, align 4
  %706 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %io_base, align 4
  %add.ptr616 = getelementptr i8, ptr %707, i32 3320
  %add.ptr.i1685 = getelementptr i8, ptr %707, i32 3324
  %708 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1685) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %709 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr616) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %710 = zext i32 %708 to i64
  %711 = zext i32 %709 to i64
  %712 = shl nuw i64 %711, 32
  %713 = or i64 %712, %710
  %714 = tail call i64 @llvm.bswap.i64(i64 %713) #7
  %conv619 = trunc i64 %714 to i32
  %arrayidx620 = getelementptr i32, ptr %data, i32 135
  %715 = ptrtoint ptr %arrayidx620 to i32
  call void @__asan_store4_noabort(i32 %715)
  store i32 %conv619, ptr %arrayidx620, align 4
  %shr621 = lshr i64 %714, 32
  %conv622 = trunc i64 %shr621 to i32
  %add.ptr624 = getelementptr i32, ptr %data, i32 136
  %716 = ptrtoint ptr %add.ptr624 to i32
  call void @__asan_store4_noabort(i32 %716)
  store i32 %conv622, ptr %add.ptr624, align 4
  %717 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load ptr, ptr %io_base, align 4
  %add.ptr629 = getelementptr i8, ptr %718, i32 3328
  %add.ptr.i1686 = getelementptr i8, ptr %718, i32 3332
  %719 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1686) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %720 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr629) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %721 = zext i32 %719 to i64
  %722 = zext i32 %720 to i64
  %723 = shl nuw i64 %722, 32
  %724 = or i64 %723, %721
  %725 = tail call i64 @llvm.bswap.i64(i64 %724) #7
  %conv632 = trunc i64 %725 to i32
  %arrayidx633 = getelementptr i32, ptr %data, i32 137
  %726 = ptrtoint ptr %arrayidx633 to i32
  call void @__asan_store4_noabort(i32 %726)
  store i32 %conv632, ptr %arrayidx633, align 4
  %shr634 = lshr i64 %725, 32
  %conv635 = trunc i64 %shr634 to i32
  %add.ptr637 = getelementptr i32, ptr %data, i32 138
  %727 = ptrtoint ptr %add.ptr637 to i32
  call void @__asan_store4_noabort(i32 %727)
  store i32 %conv635, ptr %add.ptr637, align 4
  %728 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %io_base, align 4
  %add.ptr642 = getelementptr i8, ptr %729, i32 3336
  %add.ptr.i1687 = getelementptr i8, ptr %729, i32 3340
  %730 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1687) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %731 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr642) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %732 = zext i32 %730 to i64
  %733 = zext i32 %731 to i64
  %734 = shl nuw i64 %733, 32
  %735 = or i64 %734, %732
  %736 = tail call i64 @llvm.bswap.i64(i64 %735) #7
  %conv645 = trunc i64 %736 to i32
  %arrayidx646 = getelementptr i32, ptr %data, i32 139
  %737 = ptrtoint ptr %arrayidx646 to i32
  call void @__asan_store4_noabort(i32 %737)
  store i32 %conv645, ptr %arrayidx646, align 4
  %shr647 = lshr i64 %736, 32
  %conv648 = trunc i64 %shr647 to i32
  %add.ptr650 = getelementptr i32, ptr %data, i32 140
  %738 = ptrtoint ptr %add.ptr650 to i32
  call void @__asan_store4_noabort(i32 %738)
  store i32 %conv648, ptr %add.ptr650, align 4
  %739 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load ptr, ptr %io_base, align 4
  %add.ptr655 = getelementptr i8, ptr %740, i32 3344
  %add.ptr.i1688 = getelementptr i8, ptr %740, i32 3348
  %741 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1688) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %742 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr655) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %743 = zext i32 %741 to i64
  %744 = zext i32 %742 to i64
  %745 = shl nuw i64 %744, 32
  %746 = or i64 %745, %743
  %747 = tail call i64 @llvm.bswap.i64(i64 %746) #7
  %conv658 = trunc i64 %747 to i32
  %arrayidx659 = getelementptr i32, ptr %data, i32 141
  %748 = ptrtoint ptr %arrayidx659 to i32
  call void @__asan_store4_noabort(i32 %748)
  store i32 %conv658, ptr %arrayidx659, align 4
  %shr660 = lshr i64 %747, 32
  %conv661 = trunc i64 %shr660 to i32
  %add.ptr663 = getelementptr i32, ptr %data, i32 142
  %749 = ptrtoint ptr %add.ptr663 to i32
  call void @__asan_store4_noabort(i32 %749)
  store i32 %conv661, ptr %add.ptr663, align 4
  %750 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load ptr, ptr %io_base, align 4
  %add.ptr668 = getelementptr i8, ptr %751, i32 3352
  %add.ptr.i1689 = getelementptr i8, ptr %751, i32 3356
  %752 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1689) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %753 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr668) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %754 = zext i32 %752 to i64
  %755 = zext i32 %753 to i64
  %756 = shl nuw i64 %755, 32
  %757 = or i64 %756, %754
  %758 = tail call i64 @llvm.bswap.i64(i64 %757) #7
  %conv671 = trunc i64 %758 to i32
  %arrayidx672 = getelementptr i32, ptr %data, i32 143
  %759 = ptrtoint ptr %arrayidx672 to i32
  call void @__asan_store4_noabort(i32 %759)
  store i32 %conv671, ptr %arrayidx672, align 4
  %shr673 = lshr i64 %758, 32
  %conv674 = trunc i64 %shr673 to i32
  %add.ptr676 = getelementptr i32, ptr %data, i32 144
  %760 = ptrtoint ptr %add.ptr676 to i32
  call void @__asan_store4_noabort(i32 %760)
  store i32 %conv674, ptr %add.ptr676, align 4
  %761 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load ptr, ptr %io_base, align 4
  %add.ptr681 = getelementptr i8, ptr %762, i32 3360
  %add.ptr.i1690 = getelementptr i8, ptr %762, i32 3364
  %763 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1690) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %764 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr681) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %765 = zext i32 %763 to i64
  %766 = zext i32 %764 to i64
  %767 = shl nuw i64 %766, 32
  %768 = or i64 %767, %765
  %769 = tail call i64 @llvm.bswap.i64(i64 %768) #7
  %conv684 = trunc i64 %769 to i32
  %arrayidx685 = getelementptr i32, ptr %data, i32 145
  %770 = ptrtoint ptr %arrayidx685 to i32
  call void @__asan_store4_noabort(i32 %770)
  store i32 %conv684, ptr %arrayidx685, align 4
  %shr686 = lshr i64 %769, 32
  %conv687 = trunc i64 %shr686 to i32
  %add.ptr689 = getelementptr i32, ptr %data, i32 146
  %771 = ptrtoint ptr %add.ptr689 to i32
  call void @__asan_store4_noabort(i32 %771)
  store i32 %conv687, ptr %add.ptr689, align 4
  %772 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load ptr, ptr %io_base, align 4
  %add.ptr694 = getelementptr i8, ptr %773, i32 3368
  %add.ptr.i1691 = getelementptr i8, ptr %773, i32 3372
  %774 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1691) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %775 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr694) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %776 = zext i32 %774 to i64
  %777 = zext i32 %775 to i64
  %778 = shl nuw i64 %777, 32
  %779 = or i64 %778, %776
  %780 = tail call i64 @llvm.bswap.i64(i64 %779) #7
  %conv697 = trunc i64 %780 to i32
  %arrayidx698 = getelementptr i32, ptr %data, i32 147
  %781 = ptrtoint ptr %arrayidx698 to i32
  call void @__asan_store4_noabort(i32 %781)
  store i32 %conv697, ptr %arrayidx698, align 4
  %shr699 = lshr i64 %780, 32
  %conv700 = trunc i64 %shr699 to i32
  %add.ptr702 = getelementptr i32, ptr %data, i32 148
  %782 = ptrtoint ptr %add.ptr702 to i32
  call void @__asan_store4_noabort(i32 %782)
  store i32 %conv700, ptr %add.ptr702, align 4
  %783 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load ptr, ptr %io_base, align 4
  %add.ptr707 = getelementptr i8, ptr %784, i32 3376
  %add.ptr.i1692 = getelementptr i8, ptr %784, i32 3380
  %785 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1692) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %786 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr707) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %787 = zext i32 %785 to i64
  %788 = zext i32 %786 to i64
  %789 = shl nuw i64 %788, 32
  %790 = or i64 %789, %787
  %791 = tail call i64 @llvm.bswap.i64(i64 %790) #7
  %conv710 = trunc i64 %791 to i32
  %arrayidx711 = getelementptr i32, ptr %data, i32 149
  %792 = ptrtoint ptr %arrayidx711 to i32
  call void @__asan_store4_noabort(i32 %792)
  store i32 %conv710, ptr %arrayidx711, align 4
  %shr712 = lshr i64 %791, 32
  %conv713 = trunc i64 %shr712 to i32
  %add.ptr715 = getelementptr i32, ptr %data, i32 150
  %793 = ptrtoint ptr %add.ptr715 to i32
  call void @__asan_store4_noabort(i32 %793)
  store i32 %conv713, ptr %add.ptr715, align 4
  %794 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load ptr, ptr %io_base, align 4
  %add.ptr720 = getelementptr i8, ptr %795, i32 3384
  %add.ptr.i1693 = getelementptr i8, ptr %795, i32 3388
  %796 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1693) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %797 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr720) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %798 = zext i32 %796 to i64
  %799 = zext i32 %797 to i64
  %800 = shl nuw i64 %799, 32
  %801 = or i64 %800, %798
  %802 = tail call i64 @llvm.bswap.i64(i64 %801) #7
  %conv723 = trunc i64 %802 to i32
  %arrayidx724 = getelementptr i32, ptr %data, i32 151
  %803 = ptrtoint ptr %arrayidx724 to i32
  call void @__asan_store4_noabort(i32 %803)
  store i32 %conv723, ptr %arrayidx724, align 4
  %shr725 = lshr i64 %802, 32
  %conv726 = trunc i64 %shr725 to i32
  %add.ptr728 = getelementptr i32, ptr %data, i32 152
  %804 = ptrtoint ptr %add.ptr728 to i32
  call void @__asan_store4_noabort(i32 %804)
  store i32 %conv726, ptr %add.ptr728, align 4
  %805 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %805)
  %806 = load ptr, ptr %io_base, align 4
  %add.ptr733 = getelementptr i8, ptr %806, i32 3392
  %add.ptr.i1694 = getelementptr i8, ptr %806, i32 3396
  %807 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1694) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %808 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr733) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %809 = zext i32 %807 to i64
  %810 = zext i32 %808 to i64
  %811 = shl nuw i64 %810, 32
  %812 = or i64 %811, %809
  %813 = tail call i64 @llvm.bswap.i64(i64 %812) #7
  %conv736 = trunc i64 %813 to i32
  %arrayidx737 = getelementptr i32, ptr %data, i32 153
  %814 = ptrtoint ptr %arrayidx737 to i32
  call void @__asan_store4_noabort(i32 %814)
  store i32 %conv736, ptr %arrayidx737, align 4
  %shr738 = lshr i64 %813, 32
  %conv739 = trunc i64 %shr738 to i32
  %add.ptr741 = getelementptr i32, ptr %data, i32 154
  %815 = ptrtoint ptr %add.ptr741 to i32
  call void @__asan_store4_noabort(i32 %815)
  store i32 %conv739, ptr %add.ptr741, align 4
  %816 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load ptr, ptr %io_base, align 4
  %add.ptr746 = getelementptr i8, ptr %817, i32 3400
  %add.ptr.i1695 = getelementptr i8, ptr %817, i32 3404
  %818 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1695) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %819 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr746) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %820 = zext i32 %818 to i64
  %821 = zext i32 %819 to i64
  %822 = shl nuw i64 %821, 32
  %823 = or i64 %822, %820
  %824 = tail call i64 @llvm.bswap.i64(i64 %823) #7
  %conv749 = trunc i64 %824 to i32
  %arrayidx750 = getelementptr i32, ptr %data, i32 155
  %825 = ptrtoint ptr %arrayidx750 to i32
  call void @__asan_store4_noabort(i32 %825)
  store i32 %conv749, ptr %arrayidx750, align 4
  %shr751 = lshr i64 %824, 32
  %conv752 = trunc i64 %shr751 to i32
  %add.ptr754 = getelementptr i32, ptr %data, i32 156
  %826 = ptrtoint ptr %add.ptr754 to i32
  call void @__asan_store4_noabort(i32 %826)
  store i32 %conv752, ptr %add.ptr754, align 4
  %827 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %827)
  %828 = load ptr, ptr %io_base, align 4
  %add.ptr759 = getelementptr i8, ptr %828, i32 3408
  %add.ptr.i1696 = getelementptr i8, ptr %828, i32 3412
  %829 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1696) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %830 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr759) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %831 = zext i32 %829 to i64
  %832 = zext i32 %830 to i64
  %833 = shl nuw i64 %832, 32
  %834 = or i64 %833, %831
  %835 = tail call i64 @llvm.bswap.i64(i64 %834) #7
  %conv762 = trunc i64 %835 to i32
  %arrayidx763 = getelementptr i32, ptr %data, i32 157
  %836 = ptrtoint ptr %arrayidx763 to i32
  call void @__asan_store4_noabort(i32 %836)
  store i32 %conv762, ptr %arrayidx763, align 4
  %shr764 = lshr i64 %835, 32
  %conv765 = trunc i64 %shr764 to i32
  %add.ptr767 = getelementptr i32, ptr %data, i32 158
  %837 = ptrtoint ptr %add.ptr767 to i32
  call void @__asan_store4_noabort(i32 %837)
  store i32 %conv765, ptr %add.ptr767, align 4
  %838 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %838)
  %839 = load ptr, ptr %io_base, align 4
  %add.ptr772 = getelementptr i8, ptr %839, i32 3416
  %add.ptr.i1697 = getelementptr i8, ptr %839, i32 3420
  %840 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1697) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %841 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr772) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %842 = zext i32 %840 to i64
  %843 = zext i32 %841 to i64
  %844 = shl nuw i64 %843, 32
  %845 = or i64 %844, %842
  %846 = tail call i64 @llvm.bswap.i64(i64 %845) #7
  %conv775 = trunc i64 %846 to i32
  %arrayidx776 = getelementptr i32, ptr %data, i32 159
  %847 = ptrtoint ptr %arrayidx776 to i32
  call void @__asan_store4_noabort(i32 %847)
  store i32 %conv775, ptr %arrayidx776, align 4
  %shr777 = lshr i64 %846, 32
  %conv778 = trunc i64 %shr777 to i32
  %add.ptr780 = getelementptr i32, ptr %data, i32 160
  %848 = ptrtoint ptr %add.ptr780 to i32
  call void @__asan_store4_noabort(i32 %848)
  store i32 %conv778, ptr %add.ptr780, align 4
  %849 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %849)
  %850 = load ptr, ptr %io_base, align 4
  %add.ptr785 = getelementptr i8, ptr %850, i32 3424
  %add.ptr.i1698 = getelementptr i8, ptr %850, i32 3428
  %851 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1698) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %852 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr785) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %853 = zext i32 %851 to i64
  %854 = zext i32 %852 to i64
  %855 = shl nuw i64 %854, 32
  %856 = or i64 %855, %853
  %857 = tail call i64 @llvm.bswap.i64(i64 %856) #7
  %conv788 = trunc i64 %857 to i32
  %arrayidx789 = getelementptr i32, ptr %data, i32 161
  %858 = ptrtoint ptr %arrayidx789 to i32
  call void @__asan_store4_noabort(i32 %858)
  store i32 %conv788, ptr %arrayidx789, align 4
  %shr790 = lshr i64 %857, 32
  %conv791 = trunc i64 %shr790 to i32
  %add.ptr793 = getelementptr i32, ptr %data, i32 162
  %859 = ptrtoint ptr %add.ptr793 to i32
  call void @__asan_store4_noabort(i32 %859)
  store i32 %conv791, ptr %add.ptr793, align 4
  %860 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %860)
  %861 = load ptr, ptr %io_base, align 4
  %add.ptr798 = getelementptr i8, ptr %861, i32 3432
  %add.ptr.i1699 = getelementptr i8, ptr %861, i32 3436
  %862 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1699) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %863 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr798) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %864 = zext i32 %862 to i64
  %865 = zext i32 %863 to i64
  %866 = shl nuw i64 %865, 32
  %867 = or i64 %866, %864
  %868 = tail call i64 @llvm.bswap.i64(i64 %867) #7
  %conv801 = trunc i64 %868 to i32
  %arrayidx802 = getelementptr i32, ptr %data, i32 163
  %869 = ptrtoint ptr %arrayidx802 to i32
  call void @__asan_store4_noabort(i32 %869)
  store i32 %conv801, ptr %arrayidx802, align 4
  %shr803 = lshr i64 %868, 32
  %conv804 = trunc i64 %shr803 to i32
  %add.ptr806 = getelementptr i32, ptr %data, i32 164
  %870 = ptrtoint ptr %add.ptr806 to i32
  call void @__asan_store4_noabort(i32 %870)
  store i32 %conv804, ptr %add.ptr806, align 4
  %871 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %871)
  %872 = load ptr, ptr %io_base, align 4
  %add.ptr811 = getelementptr i8, ptr %872, i32 3440
  %add.ptr.i1700 = getelementptr i8, ptr %872, i32 3444
  %873 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1700) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %874 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr811) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %875 = zext i32 %873 to i64
  %876 = zext i32 %874 to i64
  %877 = shl nuw i64 %876, 32
  %878 = or i64 %877, %875
  %879 = tail call i64 @llvm.bswap.i64(i64 %878) #7
  %conv814 = trunc i64 %879 to i32
  %arrayidx815 = getelementptr i32, ptr %data, i32 165
  %880 = ptrtoint ptr %arrayidx815 to i32
  call void @__asan_store4_noabort(i32 %880)
  store i32 %conv814, ptr %arrayidx815, align 4
  %shr816 = lshr i64 %879, 32
  %conv817 = trunc i64 %shr816 to i32
  %add.ptr819 = getelementptr i32, ptr %data, i32 166
  %881 = ptrtoint ptr %add.ptr819 to i32
  call void @__asan_store4_noabort(i32 %881)
  store i32 %conv817, ptr %add.ptr819, align 4
  %882 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %882)
  %883 = load ptr, ptr %io_base, align 4
  %add.ptr824 = getelementptr i8, ptr %883, i32 3448
  %add.ptr.i1701 = getelementptr i8, ptr %883, i32 3452
  %884 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1701) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %885 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr824) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %886 = zext i32 %884 to i64
  %887 = zext i32 %885 to i64
  %888 = shl nuw i64 %887, 32
  %889 = or i64 %888, %886
  %890 = tail call i64 @llvm.bswap.i64(i64 %889) #7
  %conv827 = trunc i64 %890 to i32
  %arrayidx828 = getelementptr i32, ptr %data, i32 167
  %891 = ptrtoint ptr %arrayidx828 to i32
  call void @__asan_store4_noabort(i32 %891)
  store i32 %conv827, ptr %arrayidx828, align 4
  %shr829 = lshr i64 %890, 32
  %conv830 = trunc i64 %shr829 to i32
  %add.ptr832 = getelementptr i32, ptr %data, i32 168
  %892 = ptrtoint ptr %add.ptr832 to i32
  call void @__asan_store4_noabort(i32 %892)
  store i32 %conv830, ptr %add.ptr832, align 4
  %893 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %893)
  %894 = load ptr, ptr %io_base, align 4
  %add.ptr837 = getelementptr i8, ptr %894, i32 3456
  %add.ptr.i1702 = getelementptr i8, ptr %894, i32 3460
  %895 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1702) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %896 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr837) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %897 = zext i32 %895 to i64
  %898 = zext i32 %896 to i64
  %899 = shl nuw i64 %898, 32
  %900 = or i64 %899, %897
  %901 = tail call i64 @llvm.bswap.i64(i64 %900) #7
  %conv840 = trunc i64 %901 to i32
  %arrayidx841 = getelementptr i32, ptr %data, i32 169
  %902 = ptrtoint ptr %arrayidx841 to i32
  call void @__asan_store4_noabort(i32 %902)
  store i32 %conv840, ptr %arrayidx841, align 4
  %shr842 = lshr i64 %901, 32
  %conv843 = trunc i64 %shr842 to i32
  %add.ptr845 = getelementptr i32, ptr %data, i32 170
  %903 = ptrtoint ptr %add.ptr845 to i32
  call void @__asan_store4_noabort(i32 %903)
  store i32 %conv843, ptr %add.ptr845, align 4
  %904 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %904)
  %905 = load ptr, ptr %io_base, align 4
  %add.ptr850 = getelementptr i8, ptr %905, i32 3464
  %add.ptr.i1703 = getelementptr i8, ptr %905, i32 3468
  %906 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1703) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %907 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr850) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %908 = zext i32 %906 to i64
  %909 = zext i32 %907 to i64
  %910 = shl nuw i64 %909, 32
  %911 = or i64 %910, %908
  %912 = tail call i64 @llvm.bswap.i64(i64 %911) #7
  %conv853 = trunc i64 %912 to i32
  %arrayidx854 = getelementptr i32, ptr %data, i32 171
  %913 = ptrtoint ptr %arrayidx854 to i32
  call void @__asan_store4_noabort(i32 %913)
  store i32 %conv853, ptr %arrayidx854, align 4
  %shr855 = lshr i64 %912, 32
  %conv856 = trunc i64 %shr855 to i32
  %add.ptr858 = getelementptr i32, ptr %data, i32 172
  %914 = ptrtoint ptr %add.ptr858 to i32
  call void @__asan_store4_noabort(i32 %914)
  store i32 %conv856, ptr %add.ptr858, align 4
  %915 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %915)
  %916 = load ptr, ptr %io_base, align 4
  %add.ptr863 = getelementptr i8, ptr %916, i32 3472
  %add.ptr.i1704 = getelementptr i8, ptr %916, i32 3476
  %917 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1704) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %918 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr863) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %919 = zext i32 %917 to i64
  %920 = zext i32 %918 to i64
  %921 = shl nuw i64 %920, 32
  %922 = or i64 %921, %919
  %923 = tail call i64 @llvm.bswap.i64(i64 %922) #7
  %conv866 = trunc i64 %923 to i32
  %arrayidx867 = getelementptr i32, ptr %data, i32 173
  %924 = ptrtoint ptr %arrayidx867 to i32
  call void @__asan_store4_noabort(i32 %924)
  store i32 %conv866, ptr %arrayidx867, align 4
  %shr868 = lshr i64 %923, 32
  %conv869 = trunc i64 %shr868 to i32
  %add.ptr871 = getelementptr i32, ptr %data, i32 174
  %925 = ptrtoint ptr %add.ptr871 to i32
  call void @__asan_store4_noabort(i32 %925)
  store i32 %conv869, ptr %add.ptr871, align 4
  %926 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %926)
  %927 = load ptr, ptr %io_base, align 4
  %add.ptr876 = getelementptr i8, ptr %927, i32 3480
  %add.ptr.i1705 = getelementptr i8, ptr %927, i32 3484
  %928 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1705) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %929 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr876) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %930 = zext i32 %928 to i64
  %931 = zext i32 %929 to i64
  %932 = shl nuw i64 %931, 32
  %933 = or i64 %932, %930
  %934 = tail call i64 @llvm.bswap.i64(i64 %933) #7
  %conv879 = trunc i64 %934 to i32
  %arrayidx880 = getelementptr i32, ptr %data, i32 175
  %935 = ptrtoint ptr %arrayidx880 to i32
  call void @__asan_store4_noabort(i32 %935)
  store i32 %conv879, ptr %arrayidx880, align 4
  %shr881 = lshr i64 %934, 32
  %conv882 = trunc i64 %shr881 to i32
  %add.ptr884 = getelementptr i32, ptr %data, i32 176
  %936 = ptrtoint ptr %add.ptr884 to i32
  call void @__asan_store4_noabort(i32 %936)
  store i32 %conv882, ptr %add.ptr884, align 4
  %937 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %937)
  %938 = load ptr, ptr %io_base, align 4
  %add.ptr889 = getelementptr i8, ptr %938, i32 3488
  %add.ptr.i1706 = getelementptr i8, ptr %938, i32 3492
  %939 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1706) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %940 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr889) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %941 = zext i32 %939 to i64
  %942 = zext i32 %940 to i64
  %943 = shl nuw i64 %942, 32
  %944 = or i64 %943, %941
  %945 = tail call i64 @llvm.bswap.i64(i64 %944) #7
  %conv892 = trunc i64 %945 to i32
  %arrayidx893 = getelementptr i32, ptr %data, i32 177
  %946 = ptrtoint ptr %arrayidx893 to i32
  call void @__asan_store4_noabort(i32 %946)
  store i32 %conv892, ptr %arrayidx893, align 4
  %shr894 = lshr i64 %945, 32
  %conv895 = trunc i64 %shr894 to i32
  %add.ptr897 = getelementptr i32, ptr %data, i32 178
  %947 = ptrtoint ptr %add.ptr897 to i32
  call void @__asan_store4_noabort(i32 %947)
  store i32 %conv895, ptr %add.ptr897, align 4
  %948 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %948)
  %949 = load ptr, ptr %io_base, align 4
  %add.ptr902 = getelementptr i8, ptr %949, i32 3496
  %add.ptr.i1707 = getelementptr i8, ptr %949, i32 3500
  %950 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1707) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %951 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr902) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %952 = zext i32 %950 to i64
  %953 = zext i32 %951 to i64
  %954 = shl nuw i64 %953, 32
  %955 = or i64 %954, %952
  %956 = tail call i64 @llvm.bswap.i64(i64 %955) #7
  %conv905 = trunc i64 %956 to i32
  %arrayidx906 = getelementptr i32, ptr %data, i32 179
  %957 = ptrtoint ptr %arrayidx906 to i32
  call void @__asan_store4_noabort(i32 %957)
  store i32 %conv905, ptr %arrayidx906, align 4
  %shr907 = lshr i64 %956, 32
  %conv908 = trunc i64 %shr907 to i32
  %add.ptr910 = getelementptr i32, ptr %data, i32 180
  %958 = ptrtoint ptr %add.ptr910 to i32
  call void @__asan_store4_noabort(i32 %958)
  store i32 %conv908, ptr %add.ptr910, align 4
  %959 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %959)
  %960 = load ptr, ptr %io_base, align 4
  %add.ptr915 = getelementptr i8, ptr %960, i32 3504
  %add.ptr.i1708 = getelementptr i8, ptr %960, i32 3508
  %961 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1708) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %962 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr915) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %963 = zext i32 %961 to i64
  %964 = zext i32 %962 to i64
  %965 = shl nuw i64 %964, 32
  %966 = or i64 %965, %963
  %967 = tail call i64 @llvm.bswap.i64(i64 %966) #7
  %conv918 = trunc i64 %967 to i32
  %arrayidx919 = getelementptr i32, ptr %data, i32 181
  %968 = ptrtoint ptr %arrayidx919 to i32
  call void @__asan_store4_noabort(i32 %968)
  store i32 %conv918, ptr %arrayidx919, align 4
  %shr920 = lshr i64 %967, 32
  %conv921 = trunc i64 %shr920 to i32
  %add.ptr923 = getelementptr i32, ptr %data, i32 182
  %969 = ptrtoint ptr %add.ptr923 to i32
  call void @__asan_store4_noabort(i32 %969)
  store i32 %conv921, ptr %add.ptr923, align 4
  %970 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %970)
  %971 = load ptr, ptr %io_base, align 4
  %add.ptr928 = getelementptr i8, ptr %971, i32 3512
  %add.ptr.i1709 = getelementptr i8, ptr %971, i32 3516
  %972 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1709) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %973 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr928) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %974 = zext i32 %972 to i64
  %975 = zext i32 %973 to i64
  %976 = shl nuw i64 %975, 32
  %977 = or i64 %976, %974
  %978 = tail call i64 @llvm.bswap.i64(i64 %977) #7
  %conv931 = trunc i64 %978 to i32
  %arrayidx932 = getelementptr i32, ptr %data, i32 183
  %979 = ptrtoint ptr %arrayidx932 to i32
  call void @__asan_store4_noabort(i32 %979)
  store i32 %conv931, ptr %arrayidx932, align 4
  %shr933 = lshr i64 %978, 32
  %conv934 = trunc i64 %shr933 to i32
  %add.ptr936 = getelementptr i32, ptr %data, i32 184
  %980 = ptrtoint ptr %add.ptr936 to i32
  call void @__asan_store4_noabort(i32 %980)
  store i32 %conv934, ptr %add.ptr936, align 4
  %981 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %981)
  %982 = load ptr, ptr %io_base, align 4
  %add.ptr941 = getelementptr i8, ptr %982, i32 3520
  %add.ptr.i1710 = getelementptr i8, ptr %982, i32 3524
  %983 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1710) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %984 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr941) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %985 = zext i32 %983 to i64
  %986 = zext i32 %984 to i64
  %987 = shl nuw i64 %986, 32
  %988 = or i64 %987, %985
  %989 = tail call i64 @llvm.bswap.i64(i64 %988) #7
  %conv944 = trunc i64 %989 to i32
  %arrayidx945 = getelementptr i32, ptr %data, i32 185
  %990 = ptrtoint ptr %arrayidx945 to i32
  call void @__asan_store4_noabort(i32 %990)
  store i32 %conv944, ptr %arrayidx945, align 4
  %shr946 = lshr i64 %989, 32
  %conv947 = trunc i64 %shr946 to i32
  %add.ptr949 = getelementptr i32, ptr %data, i32 186
  %991 = ptrtoint ptr %add.ptr949 to i32
  call void @__asan_store4_noabort(i32 %991)
  store i32 %conv947, ptr %add.ptr949, align 4
  %992 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %992)
  %993 = load ptr, ptr %io_base, align 4
  %add.ptr954 = getelementptr i8, ptr %993, i32 3528
  %add.ptr.i1711 = getelementptr i8, ptr %993, i32 3532
  %994 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1711) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %995 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr954) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %996 = zext i32 %994 to i64
  %997 = zext i32 %995 to i64
  %998 = shl nuw i64 %997, 32
  %999 = or i64 %998, %996
  %1000 = tail call i64 @llvm.bswap.i64(i64 %999) #7
  %conv957 = trunc i64 %1000 to i32
  %arrayidx958 = getelementptr i32, ptr %data, i32 187
  %1001 = ptrtoint ptr %arrayidx958 to i32
  call void @__asan_store4_noabort(i32 %1001)
  store i32 %conv957, ptr %arrayidx958, align 4
  %shr959 = lshr i64 %1000, 32
  %conv960 = trunc i64 %shr959 to i32
  %add.ptr962 = getelementptr i32, ptr %data, i32 188
  %1002 = ptrtoint ptr %add.ptr962 to i32
  call void @__asan_store4_noabort(i32 %1002)
  store i32 %conv960, ptr %add.ptr962, align 4
  %1003 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %1003)
  %1004 = load ptr, ptr %io_base, align 4
  %add.ptr967 = getelementptr i8, ptr %1004, i32 3536
  %add.ptr.i1712 = getelementptr i8, ptr %1004, i32 3540
  %1005 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1712) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %1006 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr967) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %1007 = zext i32 %1005 to i64
  %1008 = zext i32 %1006 to i64
  %1009 = shl nuw i64 %1008, 32
  %1010 = or i64 %1009, %1007
  %1011 = tail call i64 @llvm.bswap.i64(i64 %1010) #7
  %conv970 = trunc i64 %1011 to i32
  %arrayidx971 = getelementptr i32, ptr %data, i32 189
  %1012 = ptrtoint ptr %arrayidx971 to i32
  call void @__asan_store4_noabort(i32 %1012)
  store i32 %conv970, ptr %arrayidx971, align 4
  %shr972 = lshr i64 %1011, 32
  %conv973 = trunc i64 %shr972 to i32
  %add.ptr975 = getelementptr i32, ptr %data, i32 190
  %1013 = ptrtoint ptr %add.ptr975 to i32
  call void @__asan_store4_noabort(i32 %1013)
  store i32 %conv973, ptr %add.ptr975, align 4
  %1014 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %1014)
  %1015 = load ptr, ptr %io_base, align 4
  %add.ptr980 = getelementptr i8, ptr %1015, i32 3544
  %add.ptr.i1713 = getelementptr i8, ptr %1015, i32 3548
  %1016 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1713) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %1017 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr980) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %1018 = zext i32 %1016 to i64
  %1019 = zext i32 %1017 to i64
  %1020 = shl nuw i64 %1019, 32
  %1021 = or i64 %1020, %1018
  %1022 = tail call i64 @llvm.bswap.i64(i64 %1021) #7
  %conv983 = trunc i64 %1022 to i32
  %arrayidx984 = getelementptr i32, ptr %data, i32 191
  %1023 = ptrtoint ptr %arrayidx984 to i32
  call void @__asan_store4_noabort(i32 %1023)
  store i32 %conv983, ptr %arrayidx984, align 4
  %shr985 = lshr i64 %1022, 32
  %conv986 = trunc i64 %shr985 to i32
  %add.ptr988 = getelementptr i32, ptr %data, i32 192
  %1024 = ptrtoint ptr %add.ptr988 to i32
  call void @__asan_store4_noabort(i32 %1024)
  store i32 %conv986, ptr %add.ptr988, align 4
  %1025 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %1025)
  %1026 = load ptr, ptr %io_base, align 4
  %add.ptr993 = getelementptr i8, ptr %1026, i32 3552
  %add.ptr.i1714 = getelementptr i8, ptr %1026, i32 3556
  %1027 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1714) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %1028 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr993) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %1029 = zext i32 %1027 to i64
  %1030 = zext i32 %1028 to i64
  %1031 = shl nuw i64 %1030, 32
  %1032 = or i64 %1031, %1029
  %1033 = tail call i64 @llvm.bswap.i64(i64 %1032) #7
  %conv996 = trunc i64 %1033 to i32
  %arrayidx997 = getelementptr i32, ptr %data, i32 193
  %1034 = ptrtoint ptr %arrayidx997 to i32
  call void @__asan_store4_noabort(i32 %1034)
  store i32 %conv996, ptr %arrayidx997, align 4
  %shr998 = lshr i64 %1033, 32
  %conv999 = trunc i64 %shr998 to i32
  %add.ptr1001 = getelementptr i32, ptr %data, i32 194
  %1035 = ptrtoint ptr %add.ptr1001 to i32
  call void @__asan_store4_noabort(i32 %1035)
  store i32 %conv999, ptr %add.ptr1001, align 4
  %1036 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %1036)
  %1037 = load ptr, ptr %io_base, align 4
  %add.ptr1006 = getelementptr i8, ptr %1037, i32 3560
  %add.ptr.i1715 = getelementptr i8, ptr %1037, i32 3564
  %1038 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1715) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %1039 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1006) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %1040 = zext i32 %1038 to i64
  %1041 = zext i32 %1039 to i64
  %1042 = shl nuw i64 %1041, 32
  %1043 = or i64 %1042, %1040
  %1044 = tail call i64 @llvm.bswap.i64(i64 %1043) #7
  %conv1009 = trunc i64 %1044 to i32
  %arrayidx1010 = getelementptr i32, ptr %data, i32 195
  %1045 = ptrtoint ptr %arrayidx1010 to i32
  call void @__asan_store4_noabort(i32 %1045)
  store i32 %conv1009, ptr %arrayidx1010, align 4
  %shr1011 = lshr i64 %1044, 32
  %conv1012 = trunc i64 %shr1011 to i32
  %add.ptr1014 = getelementptr i32, ptr %data, i32 196
  %1046 = ptrtoint ptr %add.ptr1014 to i32
  call void @__asan_store4_noabort(i32 %1046)
  store i32 %conv1012, ptr %add.ptr1014, align 4
  %1047 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %1047)
  %1048 = load ptr, ptr %io_base, align 4
  %add.ptr1019 = getelementptr i8, ptr %1048, i32 3568
  %add.ptr.i1716 = getelementptr i8, ptr %1048, i32 3572
  %1049 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1716) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %1050 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1019) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %1051 = zext i32 %1049 to i64
  %1052 = zext i32 %1050 to i64
  %1053 = shl nuw i64 %1052, 32
  %1054 = or i64 %1053, %1051
  %1055 = tail call i64 @llvm.bswap.i64(i64 %1054) #7
  %conv1022 = trunc i64 %1055 to i32
  %arrayidx1023 = getelementptr i32, ptr %data, i32 197
  %1056 = ptrtoint ptr %arrayidx1023 to i32
  call void @__asan_store4_noabort(i32 %1056)
  store i32 %conv1022, ptr %arrayidx1023, align 4
  %shr1024 = lshr i64 %1055, 32
  %conv1025 = trunc i64 %shr1024 to i32
  %add.ptr1027 = getelementptr i32, ptr %data, i32 198
  %1057 = ptrtoint ptr %add.ptr1027 to i32
  call void @__asan_store4_noabort(i32 %1057)
  store i32 %conv1025, ptr %add.ptr1027, align 4
  %1058 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %1058)
  %1059 = load ptr, ptr %io_base, align 4
  %add.ptr1032 = getelementptr i8, ptr %1059, i32 3576
  %add.ptr.i1717 = getelementptr i8, ptr %1059, i32 3580
  %1060 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1717) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %1061 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1032) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %1062 = zext i32 %1060 to i64
  %1063 = zext i32 %1061 to i64
  %1064 = shl nuw i64 %1063, 32
  %1065 = or i64 %1064, %1062
  %1066 = tail call i64 @llvm.bswap.i64(i64 %1065) #7
  %conv1035 = trunc i64 %1066 to i32
  %arrayidx1036 = getelementptr i32, ptr %data, i32 199
  %1067 = ptrtoint ptr %arrayidx1036 to i32
  call void @__asan_store4_noabort(i32 %1067)
  store i32 %conv1035, ptr %arrayidx1036, align 4
  %shr1037 = lshr i64 %1066, 32
  %conv1038 = trunc i64 %shr1037 to i32
  %add.ptr1040 = getelementptr i32, ptr %data, i32 200
  %1068 = ptrtoint ptr %add.ptr1040 to i32
  call void @__asan_store4_noabort(i32 %1068)
  store i32 %conv1038, ptr %add.ptr1040, align 4
  %1069 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %1069)
  %1070 = load ptr, ptr %io_base, align 4
  %add.ptr1045 = getelementptr i8, ptr %1070, i32 3584
  %add.ptr.i1718 = getelementptr i8, ptr %1070, i32 3588
  %1071 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1718) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %1072 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1045) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %1073 = zext i32 %1071 to i64
  %1074 = zext i32 %1072 to i64
  %1075 = shl nuw i64 %1074, 32
  %1076 = or i64 %1075, %1073
  %1077 = tail call i64 @llvm.bswap.i64(i64 %1076) #7
  %conv1048 = trunc i64 %1077 to i32
  %arrayidx1049 = getelementptr i32, ptr %data, i32 201
  %1078 = ptrtoint ptr %arrayidx1049 to i32
  call void @__asan_store4_noabort(i32 %1078)
  store i32 %conv1048, ptr %arrayidx1049, align 4
  %shr1050 = lshr i64 %1077, 32
  %conv1051 = trunc i64 %shr1050 to i32
  %add.ptr1053 = getelementptr i32, ptr %data, i32 202
  %1079 = ptrtoint ptr %add.ptr1053 to i32
  call void @__asan_store4_noabort(i32 %1079)
  store i32 %conv1051, ptr %add.ptr1053, align 4
  %1080 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %1080)
  %1081 = load ptr, ptr %io_base, align 4
  %add.ptr1058 = getelementptr i8, ptr %1081, i32 3592
  %add.ptr.i1719 = getelementptr i8, ptr %1081, i32 3596
  %1082 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1719) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %1083 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1058) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %1084 = zext i32 %1082 to i64
  %1085 = zext i32 %1083 to i64
  %1086 = shl nuw i64 %1085, 32
  %1087 = or i64 %1086, %1084
  %1088 = tail call i64 @llvm.bswap.i64(i64 %1087) #7
  %conv1061 = trunc i64 %1088 to i32
  %arrayidx1062 = getelementptr i32, ptr %data, i32 203
  %1089 = ptrtoint ptr %arrayidx1062 to i32
  call void @__asan_store4_noabort(i32 %1089)
  store i32 %conv1061, ptr %arrayidx1062, align 4
  %shr1063 = lshr i64 %1088, 32
  %conv1064 = trunc i64 %shr1063 to i32
  %add.ptr1066 = getelementptr i32, ptr %data, i32 204
  %1090 = ptrtoint ptr %add.ptr1066 to i32
  call void @__asan_store4_noabort(i32 %1090)
  store i32 %conv1064, ptr %add.ptr1066, align 4
  %1091 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %1091)
  %1092 = load ptr, ptr %io_base, align 4
  %add.ptr1071 = getelementptr i8, ptr %1092, i32 3600
  %add.ptr.i1720 = getelementptr i8, ptr %1092, i32 3604
  %1093 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1720) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %1094 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1071) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %1095 = zext i32 %1093 to i64
  %1096 = zext i32 %1094 to i64
  %1097 = shl nuw i64 %1096, 32
  %1098 = or i64 %1097, %1095
  %1099 = tail call i64 @llvm.bswap.i64(i64 %1098) #7
  %conv1074 = trunc i64 %1099 to i32
  %arrayidx1075 = getelementptr i32, ptr %data, i32 205
  %1100 = ptrtoint ptr %arrayidx1075 to i32
  call void @__asan_store4_noabort(i32 %1100)
  store i32 %conv1074, ptr %arrayidx1075, align 4
  %shr1076 = lshr i64 %1099, 32
  %conv1077 = trunc i64 %shr1076 to i32
  %add.ptr1079 = getelementptr i32, ptr %data, i32 206
  %1101 = ptrtoint ptr %add.ptr1079 to i32
  call void @__asan_store4_noabort(i32 %1101)
  store i32 %conv1077, ptr %add.ptr1079, align 4
  %1102 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %1102)
  %1103 = load ptr, ptr %io_base, align 4
  %add.ptr1084 = getelementptr i8, ptr %1103, i32 3608
  %add.ptr.i1721 = getelementptr i8, ptr %1103, i32 3612
  %1104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1721) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %1105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1084) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %1106 = zext i32 %1104 to i64
  %1107 = zext i32 %1105 to i64
  %1108 = shl nuw i64 %1107, 32
  %1109 = or i64 %1108, %1106
  %1110 = tail call i64 @llvm.bswap.i64(i64 %1109) #7
  %conv1087 = trunc i64 %1110 to i32
  %arrayidx1088 = getelementptr i32, ptr %data, i32 207
  %1111 = ptrtoint ptr %arrayidx1088 to i32
  call void @__asan_store4_noabort(i32 %1111)
  store i32 %conv1087, ptr %arrayidx1088, align 4
  %add.ptr1092 = getelementptr i32, ptr %data, i32 208
  %1112 = call ptr @memset(ptr %add.ptr1092, i32 170, i32 24)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_xgmac_get_stats(ptr nocapture noundef readonly %mac_drv, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_cb = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 28
  %0 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_cb, align 4
  %hw_stats1 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %offset = getelementptr [68 x %struct.mac_stats_string], ptr @g_xgmac_stats_string, i32 0, i32 %i.06, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %hw_stats1, i32 %3
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr, align 8
  %arrayidx2 = getelementptr i64, ptr %data, i32 %i.06
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %arrayidx2, align 8
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 68
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hns_xgmac_get_sset_count(i32 noundef %stringset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stringset.off = add i32 %stringset, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stringset.off)
  %switch = icmp ult i32 %stringset.off, 2
  %spec.select = select i1 %switch, i32 68, i32 0
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hns_xgmac_get_regs_count() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 214
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_xgmac_get_strings(i32 noundef %stringset, ptr noundef %data) #0 align 64 {
entry:
  %buff = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buff) #7
  %0 = ptrtoint ptr %buff to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %data, ptr %buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp.not = icmp eq i32 %stringset, 1
  br i1 %cmp.not, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [68 x %struct.mac_stats_string], ptr @g_xgmac_stats_string, i32 0, i32 %i.05
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef %arrayidx) #7
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 68
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buff) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_xgmac_update_stats(ptr noundef readonly %mac_drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_cb = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 28
  %0 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_cb, align 4
  %hw_stats1 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31
  %io_base = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 3072
  %add.ptr.i = getelementptr i8, ptr %3, i32 3076
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %6 = zext i32 %4 to i64
  %7 = zext i32 %5 to i64
  %8 = shl nuw i64 %7, 32
  %9 = or i64 %8, %6
  %10 = tail call i64 @llvm.bswap.i64(i64 %9) #7
  %tx_fragment_err = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 55
  %11 = ptrtoint ptr %tx_fragment_err to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %tx_fragment_err, align 8
  %12 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base, align 4
  %add.ptr5 = getelementptr i8, ptr %13, i32 3080
  %add.ptr.i406 = getelementptr i8, ptr %13, i32 3084
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i406) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %16 = zext i32 %14 to i64
  %17 = zext i32 %15 to i64
  %18 = shl nuw i64 %17, 32
  %19 = or i64 %18, %16
  %20 = tail call i64 @llvm.bswap.i64(i64 %19) #7
  %tx_undersize = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 54
  %21 = ptrtoint ptr %tx_undersize to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %tx_undersize, align 8
  %22 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_base, align 4
  %add.ptr9 = getelementptr i8, ptr %23, i32 3088
  %add.ptr.i407 = getelementptr i8, ptr %23, i32 3092
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i407) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %26 = zext i32 %24 to i64
  %27 = zext i32 %25 to i64
  %28 = shl nuw i64 %27, 32
  %29 = or i64 %28, %26
  %30 = tail call i64 @llvm.bswap.i64(i64 %29) #7
  %tx_under_min_pkts = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 56
  %31 = ptrtoint ptr %tx_under_min_pkts to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %tx_under_min_pkts, align 8
  %32 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io_base, align 4
  %add.ptr13 = getelementptr i8, ptr %33, i32 3096
  %add.ptr.i408 = getelementptr i8, ptr %33, i32 3100
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i408) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %36 = zext i32 %34 to i64
  %37 = zext i32 %35 to i64
  %38 = shl nuw i64 %37, 32
  %39 = or i64 %38, %36
  %40 = tail call i64 @llvm.bswap.i64(i64 %39) #7
  %tx_64bytes = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 57
  %41 = ptrtoint ptr %tx_64bytes to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %tx_64bytes, align 8
  %42 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io_base, align 4
  %add.ptr17 = getelementptr i8, ptr %43, i32 3104
  %add.ptr.i409 = getelementptr i8, ptr %43, i32 3108
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i409) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %46 = zext i32 %44 to i64
  %47 = zext i32 %45 to i64
  %48 = shl nuw i64 %47, 32
  %49 = or i64 %48, %46
  %50 = tail call i64 @llvm.bswap.i64(i64 %49) #7
  %tx_65to127 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 58
  %51 = ptrtoint ptr %tx_65to127 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %tx_65to127, align 8
  %52 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %io_base, align 4
  %add.ptr21 = getelementptr i8, ptr %53, i32 3112
  %add.ptr.i410 = getelementptr i8, ptr %53, i32 3116
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i410) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %56 = zext i32 %54 to i64
  %57 = zext i32 %55 to i64
  %58 = shl nuw i64 %57, 32
  %59 = or i64 %58, %56
  %60 = tail call i64 @llvm.bswap.i64(i64 %59) #7
  %tx_128to255 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 59
  %61 = ptrtoint ptr %tx_128to255 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %tx_128to255, align 8
  %62 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %io_base, align 4
  %add.ptr25 = getelementptr i8, ptr %63, i32 3120
  %add.ptr.i411 = getelementptr i8, ptr %63, i32 3124
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i411) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %66 = zext i32 %64 to i64
  %67 = zext i32 %65 to i64
  %68 = shl nuw i64 %67, 32
  %69 = or i64 %68, %66
  %70 = tail call i64 @llvm.bswap.i64(i64 %69) #7
  %tx_256to511 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 60
  %71 = ptrtoint ptr %tx_256to511 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %tx_256to511, align 8
  %72 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %io_base, align 4
  %add.ptr29 = getelementptr i8, ptr %73, i32 3128
  %add.ptr.i412 = getelementptr i8, ptr %73, i32 3132
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i412) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %76 = zext i32 %74 to i64
  %77 = zext i32 %75 to i64
  %78 = shl nuw i64 %77, 32
  %79 = or i64 %78, %76
  %80 = tail call i64 @llvm.bswap.i64(i64 %79) #7
  %tx_512to1023 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 61
  %81 = ptrtoint ptr %tx_512to1023 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %80, ptr %tx_512to1023, align 8
  %82 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %io_base, align 4
  %add.ptr33 = getelementptr i8, ptr %83, i32 3136
  %add.ptr.i413 = getelementptr i8, ptr %83, i32 3140
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i413) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %86 = zext i32 %84 to i64
  %87 = zext i32 %85 to i64
  %88 = shl nuw i64 %87, 32
  %89 = or i64 %88, %86
  %90 = tail call i64 @llvm.bswap.i64(i64 %89) #7
  %tx_1024to1518 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 62
  %91 = ptrtoint ptr %tx_1024to1518 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %90, ptr %tx_1024to1518, align 8
  %92 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %io_base, align 4
  %add.ptr37 = getelementptr i8, ptr %93, i32 3144
  %add.ptr.i414 = getelementptr i8, ptr %93, i32 3148
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i414) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %96 = zext i32 %94 to i64
  %97 = zext i32 %95 to i64
  %98 = shl nuw i64 %97, 32
  %99 = or i64 %98, %96
  %100 = tail call i64 @llvm.bswap.i64(i64 %99) #7
  %tx_1519tomax = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 63
  %101 = ptrtoint ptr %tx_1519tomax to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %tx_1519tomax, align 8
  %102 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %io_base, align 4
  %add.ptr41 = getelementptr i8, ptr %103, i32 3152
  %add.ptr.i415 = getelementptr i8, ptr %103, i32 3156
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i415) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %106 = zext i32 %104 to i64
  %107 = zext i32 %105 to i64
  %108 = shl nuw i64 %107, 32
  %109 = or i64 %108, %106
  %110 = tail call i64 @llvm.bswap.i64(i64 %109) #7
  %tx_1519tomax_good = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 64
  %111 = ptrtoint ptr %tx_1519tomax_good to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %110, ptr %tx_1519tomax_good, align 8
  %112 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %io_base, align 4
  %add.ptr45 = getelementptr i8, ptr %113, i32 3160
  %add.ptr.i416 = getelementptr i8, ptr %113, i32 3164
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i416) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %116 = zext i32 %114 to i64
  %117 = zext i32 %115 to i64
  %118 = shl nuw i64 %117, 32
  %119 = or i64 %118, %116
  %120 = tail call i64 @llvm.bswap.i64(i64 %119) #7
  %tx_oversize = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 65
  %121 = ptrtoint ptr %tx_oversize to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %120, ptr %tx_oversize, align 8
  %122 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %io_base, align 4
  %add.ptr49 = getelementptr i8, ptr %123, i32 3168
  %add.ptr.i417 = getelementptr i8, ptr %123, i32 3172
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i417) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %126 = zext i32 %124 to i64
  %127 = zext i32 %125 to i64
  %128 = shl nuw i64 %127, 32
  %129 = or i64 %128, %126
  %130 = tail call i64 @llvm.bswap.i64(i64 %129) #7
  %tx_jabber_err = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 66
  %131 = ptrtoint ptr %tx_jabber_err to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %130, ptr %tx_jabber_err, align 8
  %132 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %io_base, align 4
  %add.ptr53 = getelementptr i8, ptr %133, i32 3176
  %add.ptr.i418 = getelementptr i8, ptr %133, i32 3180
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i418) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %136 = zext i32 %134 to i64
  %137 = zext i32 %135 to i64
  %138 = shl nuw i64 %137, 32
  %139 = or i64 %138, %136
  %140 = tail call i64 @llvm.bswap.i64(i64 %139) #7
  %tx_good_pkts = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 46
  %141 = ptrtoint ptr %tx_good_pkts to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %140, ptr %tx_good_pkts, align 8
  %142 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %io_base, align 4
  %add.ptr57 = getelementptr i8, ptr %143, i32 3184
  %add.ptr.i419 = getelementptr i8, ptr %143, i32 3188
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i419) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %146 = zext i32 %144 to i64
  %147 = zext i32 %145 to i64
  %148 = shl nuw i64 %147, 32
  %149 = or i64 %148, %146
  %150 = tail call i64 @llvm.bswap.i64(i64 %149) #7
  %tx_good_bytes = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 45
  %151 = ptrtoint ptr %tx_good_bytes to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %150, ptr %tx_good_bytes, align 8
  %152 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %io_base, align 4
  %add.ptr61 = getelementptr i8, ptr %153, i32 3192
  %add.ptr.i420 = getelementptr i8, ptr %153, i32 3196
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i420) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %156 = zext i32 %154 to i64
  %157 = zext i32 %155 to i64
  %158 = shl nuw i64 %157, 32
  %159 = or i64 %158, %156
  %160 = tail call i64 @llvm.bswap.i64(i64 %159) #7
  %tx_total_pkts = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 48
  %161 = ptrtoint ptr %tx_total_pkts to i32
  call void @__asan_store8_noabort(i32 %161)
  store i64 %160, ptr %tx_total_pkts, align 8
  %162 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %io_base, align 4
  %add.ptr65 = getelementptr i8, ptr %163, i32 3200
  %add.ptr.i421 = getelementptr i8, ptr %163, i32 3204
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i421) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %166 = zext i32 %164 to i64
  %167 = zext i32 %165 to i64
  %168 = shl nuw i64 %167, 32
  %169 = or i64 %168, %166
  %170 = tail call i64 @llvm.bswap.i64(i64 %169) #7
  %tx_total_bytes = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 47
  %171 = ptrtoint ptr %tx_total_bytes to i32
  call void @__asan_store8_noabort(i32 %171)
  store i64 %170, ptr %tx_total_bytes, align 8
  %172 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %io_base, align 4
  %add.ptr69 = getelementptr i8, ptr %173, i32 3208
  %add.ptr.i422 = getelementptr i8, ptr %173, i32 3212
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i422) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %176 = zext i32 %174 to i64
  %177 = zext i32 %175 to i64
  %178 = shl nuw i64 %177, 32
  %179 = or i64 %178, %176
  %180 = tail call i64 @llvm.bswap.i64(i64 %179) #7
  %tx_uc_pkts = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 51
  %181 = ptrtoint ptr %tx_uc_pkts to i32
  call void @__asan_store8_noabort(i32 %181)
  store i64 %180, ptr %tx_uc_pkts, align 8
  %182 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %io_base, align 4
  %add.ptr73 = getelementptr i8, ptr %183, i32 3216
  %add.ptr.i423 = getelementptr i8, ptr %183, i32 3220
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i423) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %186 = zext i32 %184 to i64
  %187 = zext i32 %185 to i64
  %188 = shl nuw i64 %187, 32
  %189 = or i64 %188, %186
  %190 = tail call i64 @llvm.bswap.i64(i64 %189) #7
  %tx_mc_pkts = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 52
  %191 = ptrtoint ptr %tx_mc_pkts to i32
  call void @__asan_store8_noabort(i32 %191)
  store i64 %190, ptr %tx_mc_pkts, align 8
  %192 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %io_base, align 4
  %add.ptr77 = getelementptr i8, ptr %193, i32 3224
  %add.ptr.i424 = getelementptr i8, ptr %193, i32 3228
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i424) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %196 = zext i32 %194 to i64
  %197 = zext i32 %195 to i64
  %198 = shl nuw i64 %197, 32
  %199 = or i64 %198, %196
  %200 = tail call i64 @llvm.bswap.i64(i64 %199) #7
  %tx_bc_pkts = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 53
  %201 = ptrtoint ptr %tx_bc_pkts to i32
  call void @__asan_store8_noabort(i32 %201)
  store i64 %200, ptr %tx_bc_pkts, align 8
  %202 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %io_base, align 4
  %add.ptr81 = getelementptr i8, ptr %203, i32 3232
  %add.ptr.i425 = getelementptr i8, ptr %203, i32 3236
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i425) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %205 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %206 = zext i32 %204 to i64
  %207 = zext i32 %205 to i64
  %208 = shl nuw i64 %207, 32
  %209 = or i64 %208, %206
  %210 = tail call i64 @llvm.bswap.i64(i64 %209) #7
  %tx_pfc_tc0 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 70
  %211 = ptrtoint ptr %tx_pfc_tc0 to i32
  call void @__asan_store8_noabort(i32 %211)
  store i64 %210, ptr %tx_pfc_tc0, align 8
  %212 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %io_base, align 4
  %add.ptr85 = getelementptr i8, ptr %213, i32 3240
  %add.ptr.i426 = getelementptr i8, ptr %213, i32 3244
  %214 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i426) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %216 = zext i32 %214 to i64
  %217 = zext i32 %215 to i64
  %218 = shl nuw i64 %217, 32
  %219 = or i64 %218, %216
  %220 = tail call i64 @llvm.bswap.i64(i64 %219) #7
  %tx_pfc_tc1 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 71
  %221 = ptrtoint ptr %tx_pfc_tc1 to i32
  call void @__asan_store8_noabort(i32 %221)
  store i64 %220, ptr %tx_pfc_tc1, align 8
  %222 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %io_base, align 4
  %add.ptr89 = getelementptr i8, ptr %223, i32 3248
  %add.ptr.i427 = getelementptr i8, ptr %223, i32 3252
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i427) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %226 = zext i32 %224 to i64
  %227 = zext i32 %225 to i64
  %228 = shl nuw i64 %227, 32
  %229 = or i64 %228, %226
  %230 = tail call i64 @llvm.bswap.i64(i64 %229) #7
  %tx_pfc_tc2 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 72
  %231 = ptrtoint ptr %tx_pfc_tc2 to i32
  call void @__asan_store8_noabort(i32 %231)
  store i64 %230, ptr %tx_pfc_tc2, align 8
  %232 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %io_base, align 4
  %add.ptr93 = getelementptr i8, ptr %233, i32 3256
  %add.ptr.i428 = getelementptr i8, ptr %233, i32 3260
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i428) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %236 = zext i32 %234 to i64
  %237 = zext i32 %235 to i64
  %238 = shl nuw i64 %237, 32
  %239 = or i64 %238, %236
  %240 = tail call i64 @llvm.bswap.i64(i64 %239) #7
  %tx_pfc_tc3 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 73
  %241 = ptrtoint ptr %tx_pfc_tc3 to i32
  call void @__asan_store8_noabort(i32 %241)
  store i64 %240, ptr %tx_pfc_tc3, align 8
  %242 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %io_base, align 4
  %add.ptr97 = getelementptr i8, ptr %243, i32 3264
  %add.ptr.i429 = getelementptr i8, ptr %243, i32 3268
  %244 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i429) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %245 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %246 = zext i32 %244 to i64
  %247 = zext i32 %245 to i64
  %248 = shl nuw i64 %247, 32
  %249 = or i64 %248, %246
  %250 = tail call i64 @llvm.bswap.i64(i64 %249) #7
  %tx_pfc_tc4 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 74
  %251 = ptrtoint ptr %tx_pfc_tc4 to i32
  call void @__asan_store8_noabort(i32 %251)
  store i64 %250, ptr %tx_pfc_tc4, align 8
  %252 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %io_base, align 4
  %add.ptr101 = getelementptr i8, ptr %253, i32 3272
  %add.ptr.i430 = getelementptr i8, ptr %253, i32 3276
  %254 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i430) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %256 = zext i32 %254 to i64
  %257 = zext i32 %255 to i64
  %258 = shl nuw i64 %257, 32
  %259 = or i64 %258, %256
  %260 = tail call i64 @llvm.bswap.i64(i64 %259) #7
  %tx_pfc_tc5 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 75
  %261 = ptrtoint ptr %tx_pfc_tc5 to i32
  call void @__asan_store8_noabort(i32 %261)
  store i64 %260, ptr %tx_pfc_tc5, align 8
  %262 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %io_base, align 4
  %add.ptr105 = getelementptr i8, ptr %263, i32 3280
  %add.ptr.i431 = getelementptr i8, ptr %263, i32 3284
  %264 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i431) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %265 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %266 = zext i32 %264 to i64
  %267 = zext i32 %265 to i64
  %268 = shl nuw i64 %267, 32
  %269 = or i64 %268, %266
  %270 = tail call i64 @llvm.bswap.i64(i64 %269) #7
  %tx_pfc_tc6 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 76
  %271 = ptrtoint ptr %tx_pfc_tc6 to i32
  call void @__asan_store8_noabort(i32 %271)
  store i64 %270, ptr %tx_pfc_tc6, align 8
  %272 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %io_base, align 4
  %add.ptr109 = getelementptr i8, ptr %273, i32 3288
  %add.ptr.i432 = getelementptr i8, ptr %273, i32 3292
  %274 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i432) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %275 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr109) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %276 = zext i32 %274 to i64
  %277 = zext i32 %275 to i64
  %278 = shl nuw i64 %277, 32
  %279 = or i64 %278, %276
  %280 = tail call i64 @llvm.bswap.i64(i64 %279) #7
  %tx_pfc_tc7 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 77
  %281 = ptrtoint ptr %tx_pfc_tc7 to i32
  call void @__asan_store8_noabort(i32 %281)
  store i64 %280, ptr %tx_pfc_tc7, align 8
  %282 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %io_base, align 4
  %add.ptr113 = getelementptr i8, ptr %283, i32 3296
  %add.ptr.i433 = getelementptr i8, ptr %283, i32 3300
  %284 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i433) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %285 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr113) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %286 = zext i32 %284 to i64
  %287 = zext i32 %285 to i64
  %288 = shl nuw i64 %287, 32
  %289 = or i64 %288, %286
  %290 = tail call i64 @llvm.bswap.i64(i64 %289) #7
  %tx_ctrl = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 78
  %291 = ptrtoint ptr %tx_ctrl to i32
  call void @__asan_store8_noabort(i32 %291)
  store i64 %290, ptr %tx_ctrl, align 8
  %292 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %io_base, align 4
  %add.ptr117 = getelementptr i8, ptr %293, i32 3304
  %add.ptr.i434 = getelementptr i8, ptr %293, i32 3308
  %294 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i434) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %295 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr117) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %296 = zext i32 %294 to i64
  %297 = zext i32 %295 to i64
  %298 = shl nuw i64 %297, 32
  %299 = or i64 %298, %296
  %300 = tail call i64 @llvm.bswap.i64(i64 %299) #7
  %tx_1731_pkts = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 79
  %301 = ptrtoint ptr %tx_1731_pkts to i32
  call void @__asan_store8_noabort(i32 %301)
  store i64 %300, ptr %tx_1731_pkts, align 8
  %302 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %io_base, align 4
  %add.ptr121 = getelementptr i8, ptr %303, i32 3312
  %add.ptr.i435 = getelementptr i8, ptr %303, i32 3316
  %304 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i435) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %305 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr121) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %306 = zext i32 %304 to i64
  %307 = zext i32 %305 to i64
  %308 = shl nuw i64 %307, 32
  %309 = or i64 %308, %306
  %310 = tail call i64 @llvm.bswap.i64(i64 %309) #7
  %tx_1588_pkts = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 80
  %311 = ptrtoint ptr %tx_1588_pkts to i32
  call void @__asan_store8_noabort(i32 %311)
  store i64 %310, ptr %tx_1588_pkts, align 8
  %312 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %io_base, align 4
  %add.ptr125 = getelementptr i8, ptr %313, i32 3320
  %add.ptr.i436 = getelementptr i8, ptr %313, i32 3324
  %314 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i436) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %315 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr125) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %316 = zext i32 %314 to i64
  %317 = zext i32 %315 to i64
  %318 = shl nuw i64 %317, 32
  %319 = or i64 %318, %316
  %320 = tail call i64 @llvm.bswap.i64(i64 %319) #7
  %rx_good_from_sw = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 81
  %321 = ptrtoint ptr %rx_good_from_sw to i32
  call void @__asan_store8_noabort(i32 %321)
  store i64 %320, ptr %rx_good_from_sw, align 8
  %322 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %io_base, align 4
  %add.ptr129 = getelementptr i8, ptr %323, i32 3328
  %add.ptr.i437 = getelementptr i8, ptr %323, i32 3332
  %324 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i437) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %325 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr129) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %326 = zext i32 %324 to i64
  %327 = zext i32 %325 to i64
  %328 = shl nuw i64 %327, 32
  %329 = or i64 %328, %326
  %330 = tail call i64 @llvm.bswap.i64(i64 %329) #7
  %rx_bad_from_sw = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 82
  %331 = ptrtoint ptr %rx_bad_from_sw to i32
  call void @__asan_store8_noabort(i32 %331)
  store i64 %330, ptr %rx_bad_from_sw, align 8
  %332 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %io_base, align 4
  %add.ptr133 = getelementptr i8, ptr %333, i32 3336
  %add.ptr.i438 = getelementptr i8, ptr %333, i32 3340
  %334 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i438) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %335 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr133) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %336 = zext i32 %334 to i64
  %337 = zext i32 %335 to i64
  %338 = shl nuw i64 %337, 32
  %339 = or i64 %338, %336
  %340 = tail call i64 @llvm.bswap.i64(i64 %339) #7
  %tx_bad_pkts = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 50
  %341 = ptrtoint ptr %tx_bad_pkts to i32
  call void @__asan_store8_noabort(i32 %341)
  store i64 %340, ptr %tx_bad_pkts, align 8
  %342 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %io_base, align 4
  %add.ptr137 = getelementptr i8, ptr %343, i32 3344
  %add.ptr.i439 = getelementptr i8, ptr %343, i32 3348
  %344 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i439) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %345 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr137) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %346 = zext i32 %344 to i64
  %347 = zext i32 %345 to i64
  %348 = shl nuw i64 %347, 32
  %349 = or i64 %348, %346
  %350 = tail call i64 @llvm.bswap.i64(i64 %349) #7
  %rx_fragment_err = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 8
  %351 = ptrtoint ptr %rx_fragment_err to i32
  call void @__asan_store8_noabort(i32 %351)
  store i64 %350, ptr %rx_fragment_err, align 8
  %352 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %io_base, align 4
  %add.ptr141 = getelementptr i8, ptr %353, i32 3352
  %add.ptr.i440 = getelementptr i8, ptr %353, i32 3356
  %354 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i440) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %355 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr141) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %356 = zext i32 %354 to i64
  %357 = zext i32 %355 to i64
  %358 = shl nuw i64 %357, 32
  %359 = or i64 %358, %356
  %360 = tail call i64 @llvm.bswap.i64(i64 %359) #7
  %rx_undersize = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 9
  %361 = ptrtoint ptr %rx_undersize to i32
  call void @__asan_store8_noabort(i32 %361)
  store i64 %360, ptr %rx_undersize, align 8
  %362 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %io_base, align 4
  %add.ptr145 = getelementptr i8, ptr %363, i32 3360
  %add.ptr.i441 = getelementptr i8, ptr %363, i32 3364
  %364 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i441) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %365 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr145) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %366 = zext i32 %364 to i64
  %367 = zext i32 %365 to i64
  %368 = shl nuw i64 %367, 32
  %369 = or i64 %368, %366
  %370 = tail call i64 @llvm.bswap.i64(i64 %369) #7
  %rx_under_min = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 10
  %371 = ptrtoint ptr %rx_under_min to i32
  call void @__asan_store8_noabort(i32 %371)
  store i64 %370, ptr %rx_under_min, align 8
  %372 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %io_base, align 4
  %add.ptr149 = getelementptr i8, ptr %373, i32 3368
  %add.ptr.i442 = getelementptr i8, ptr %373, i32 3372
  %374 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i442) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %375 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr149) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %376 = zext i32 %374 to i64
  %377 = zext i32 %375 to i64
  %378 = shl nuw i64 %377, 32
  %379 = or i64 %378, %376
  %380 = tail call i64 @llvm.bswap.i64(i64 %379) #7
  %rx_64bytes = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 12
  %381 = ptrtoint ptr %rx_64bytes to i32
  call void @__asan_store8_noabort(i32 %381)
  store i64 %380, ptr %rx_64bytes, align 8
  %382 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %io_base, align 4
  %add.ptr153 = getelementptr i8, ptr %383, i32 3376
  %add.ptr.i443 = getelementptr i8, ptr %383, i32 3380
  %384 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i443) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %385 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr153) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %386 = zext i32 %384 to i64
  %387 = zext i32 %385 to i64
  %388 = shl nuw i64 %387, 32
  %389 = or i64 %388, %386
  %390 = tail call i64 @llvm.bswap.i64(i64 %389) #7
  %rx_65to127 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 13
  %391 = ptrtoint ptr %rx_65to127 to i32
  call void @__asan_store8_noabort(i32 %391)
  store i64 %390, ptr %rx_65to127, align 8
  %392 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %io_base, align 4
  %add.ptr157 = getelementptr i8, ptr %393, i32 3384
  %add.ptr.i444 = getelementptr i8, ptr %393, i32 3388
  %394 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i444) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %395 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr157) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %396 = zext i32 %394 to i64
  %397 = zext i32 %395 to i64
  %398 = shl nuw i64 %397, 32
  %399 = or i64 %398, %396
  %400 = tail call i64 @llvm.bswap.i64(i64 %399) #7
  %rx_128to255 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 14
  %401 = ptrtoint ptr %rx_128to255 to i32
  call void @__asan_store8_noabort(i32 %401)
  store i64 %400, ptr %rx_128to255, align 8
  %402 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %io_base, align 4
  %add.ptr161 = getelementptr i8, ptr %403, i32 3392
  %add.ptr.i445 = getelementptr i8, ptr %403, i32 3396
  %404 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i445) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %405 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr161) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %406 = zext i32 %404 to i64
  %407 = zext i32 %405 to i64
  %408 = shl nuw i64 %407, 32
  %409 = or i64 %408, %406
  %410 = tail call i64 @llvm.bswap.i64(i64 %409) #7
  %rx_256to511 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 15
  %411 = ptrtoint ptr %rx_256to511 to i32
  call void @__asan_store8_noabort(i32 %411)
  store i64 %410, ptr %rx_256to511, align 8
  %412 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %io_base, align 4
  %add.ptr165 = getelementptr i8, ptr %413, i32 3400
  %add.ptr.i446 = getelementptr i8, ptr %413, i32 3404
  %414 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i446) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %415 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr165) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %416 = zext i32 %414 to i64
  %417 = zext i32 %415 to i64
  %418 = shl nuw i64 %417, 32
  %419 = or i64 %418, %416
  %420 = tail call i64 @llvm.bswap.i64(i64 %419) #7
  %rx_512to1023 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 16
  %421 = ptrtoint ptr %rx_512to1023 to i32
  call void @__asan_store8_noabort(i32 %421)
  store i64 %420, ptr %rx_512to1023, align 8
  %422 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %io_base, align 4
  %add.ptr169 = getelementptr i8, ptr %423, i32 3408
  %add.ptr.i447 = getelementptr i8, ptr %423, i32 3412
  %424 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i447) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %425 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr169) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %426 = zext i32 %424 to i64
  %427 = zext i32 %425 to i64
  %428 = shl nuw i64 %427, 32
  %429 = or i64 %428, %426
  %430 = tail call i64 @llvm.bswap.i64(i64 %429) #7
  %rx_1024to1518 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 17
  %431 = ptrtoint ptr %rx_1024to1518 to i32
  call void @__asan_store8_noabort(i32 %431)
  store i64 %430, ptr %rx_1024to1518, align 8
  %432 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %io_base, align 4
  %add.ptr173 = getelementptr i8, ptr %433, i32 3416
  %add.ptr.i448 = getelementptr i8, ptr %433, i32 3420
  %434 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i448) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %435 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr173) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %436 = zext i32 %434 to i64
  %437 = zext i32 %435 to i64
  %438 = shl nuw i64 %437, 32
  %439 = or i64 %438, %436
  %440 = tail call i64 @llvm.bswap.i64(i64 %439) #7
  %rx_1519tomax = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 18
  %441 = ptrtoint ptr %rx_1519tomax to i32
  call void @__asan_store8_noabort(i32 %441)
  store i64 %440, ptr %rx_1519tomax, align 8
  %442 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %io_base, align 4
  %add.ptr177 = getelementptr i8, ptr %443, i32 3424
  %add.ptr.i449 = getelementptr i8, ptr %443, i32 3428
  %444 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i449) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %445 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr177) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %446 = zext i32 %444 to i64
  %447 = zext i32 %445 to i64
  %448 = shl nuw i64 %447, 32
  %449 = or i64 %448, %446
  %450 = tail call i64 @llvm.bswap.i64(i64 %449) #7
  %rx_1519tomax_good = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 19
  %451 = ptrtoint ptr %rx_1519tomax_good to i32
  call void @__asan_store8_noabort(i32 %451)
  store i64 %450, ptr %rx_1519tomax_good, align 8
  %452 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %io_base, align 4
  %add.ptr181 = getelementptr i8, ptr %453, i32 3432
  %add.ptr.i450 = getelementptr i8, ptr %453, i32 3436
  %454 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i450) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %455 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr181) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %456 = zext i32 %454 to i64
  %457 = zext i32 %455 to i64
  %458 = shl nuw i64 %457, 32
  %459 = or i64 %458, %456
  %460 = tail call i64 @llvm.bswap.i64(i64 %459) #7
  %rx_oversize = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 20
  %461 = ptrtoint ptr %rx_oversize to i32
  call void @__asan_store8_noabort(i32 %461)
  store i64 %460, ptr %rx_oversize, align 8
  %462 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %io_base, align 4
  %add.ptr185 = getelementptr i8, ptr %463, i32 3440
  %add.ptr.i451 = getelementptr i8, ptr %463, i32 3444
  %464 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i451) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %465 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr185) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %466 = zext i32 %464 to i64
  %467 = zext i32 %465 to i64
  %468 = shl nuw i64 %467, 32
  %469 = or i64 %468, %466
  %470 = tail call i64 @llvm.bswap.i64(i64 %469) #7
  %rx_jabber_err = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 21
  %471 = ptrtoint ptr %rx_jabber_err to i32
  call void @__asan_store8_noabort(i32 %471)
  store i64 %470, ptr %rx_jabber_err, align 8
  %472 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %io_base, align 4
  %add.ptr189 = getelementptr i8, ptr %473, i32 3448
  %add.ptr.i452 = getelementptr i8, ptr %473, i32 3452
  %474 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i452) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %475 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr189) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %476 = zext i32 %474 to i64
  %477 = zext i32 %475 to i64
  %478 = shl nuw i64 %477, 32
  %479 = or i64 %478, %476
  %480 = tail call i64 @llvm.bswap.i64(i64 %479) #7
  %481 = ptrtoint ptr %hw_stats1 to i32
  call void @__asan_store8_noabort(i32 %481)
  store i64 %480, ptr %hw_stats1, align 8
  %482 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %io_base, align 4
  %add.ptr193 = getelementptr i8, ptr %483, i32 3456
  %add.ptr.i453 = getelementptr i8, ptr %483, i32 3460
  %484 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i453) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %485 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr193) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %486 = zext i32 %484 to i64
  %487 = zext i32 %485 to i64
  %488 = shl nuw i64 %487, 32
  %489 = or i64 %488, %486
  %490 = tail call i64 @llvm.bswap.i64(i64 %489) #7
  %rx_good_bytes = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 1
  %491 = ptrtoint ptr %rx_good_bytes to i32
  call void @__asan_store8_noabort(i32 %491)
  store i64 %490, ptr %rx_good_bytes, align 8
  %492 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %io_base, align 4
  %add.ptr197 = getelementptr i8, ptr %493, i32 3464
  %add.ptr.i454 = getelementptr i8, ptr %493, i32 3468
  %494 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i454) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %495 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr197) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %496 = zext i32 %494 to i64
  %497 = zext i32 %495 to i64
  %498 = shl nuw i64 %497, 32
  %499 = or i64 %498, %496
  %500 = tail call i64 @llvm.bswap.i64(i64 %499) #7
  %rx_total_pkts = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 2
  %501 = ptrtoint ptr %rx_total_pkts to i32
  call void @__asan_store8_noabort(i32 %501)
  store i64 %500, ptr %rx_total_pkts, align 8
  %502 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %io_base, align 4
  %add.ptr201 = getelementptr i8, ptr %503, i32 3472
  %add.ptr.i455 = getelementptr i8, ptr %503, i32 3476
  %504 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i455) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %505 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr201) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %506 = zext i32 %504 to i64
  %507 = zext i32 %505 to i64
  %508 = shl nuw i64 %507, 32
  %509 = or i64 %508, %506
  %510 = tail call i64 @llvm.bswap.i64(i64 %509) #7
  %rx_total_bytes = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 3
  %511 = ptrtoint ptr %rx_total_bytes to i32
  call void @__asan_store8_noabort(i32 %511)
  store i64 %510, ptr %rx_total_bytes, align 8
  %512 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %io_base, align 4
  %add.ptr205 = getelementptr i8, ptr %513, i32 3480
  %add.ptr.i456 = getelementptr i8, ptr %513, i32 3484
  %514 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i456) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %515 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr205) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %516 = zext i32 %514 to i64
  %517 = zext i32 %515 to i64
  %518 = shl nuw i64 %517, 32
  %519 = or i64 %518, %516
  %520 = tail call i64 @llvm.bswap.i64(i64 %519) #7
  %rx_uc_pkts = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 5
  %521 = ptrtoint ptr %rx_uc_pkts to i32
  call void @__asan_store8_noabort(i32 %521)
  store i64 %520, ptr %rx_uc_pkts, align 8
  %522 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %io_base, align 4
  %add.ptr209 = getelementptr i8, ptr %523, i32 3488
  %add.ptr.i457 = getelementptr i8, ptr %523, i32 3492
  %524 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i457) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %525 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr209) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %526 = zext i32 %524 to i64
  %527 = zext i32 %525 to i64
  %528 = shl nuw i64 %527, 32
  %529 = or i64 %528, %526
  %530 = tail call i64 @llvm.bswap.i64(i64 %529) #7
  %rx_mc_pkts = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 6
  %531 = ptrtoint ptr %rx_mc_pkts to i32
  call void @__asan_store8_noabort(i32 %531)
  store i64 %530, ptr %rx_mc_pkts, align 8
  %532 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %io_base, align 4
  %add.ptr213 = getelementptr i8, ptr %533, i32 3496
  %add.ptr.i458 = getelementptr i8, ptr %533, i32 3500
  %534 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i458) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %535 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr213) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %536 = zext i32 %534 to i64
  %537 = zext i32 %535 to i64
  %538 = shl nuw i64 %537, 32
  %539 = or i64 %538, %536
  %540 = tail call i64 @llvm.bswap.i64(i64 %539) #7
  %rx_bc_pkts = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 7
  %541 = ptrtoint ptr %rx_bc_pkts to i32
  call void @__asan_store8_noabort(i32 %541)
  store i64 %540, ptr %rx_bc_pkts, align 8
  %542 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %io_base, align 4
  %add.ptr217 = getelementptr i8, ptr %543, i32 3504
  %add.ptr.i459 = getelementptr i8, ptr %543, i32 3508
  %544 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i459) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %545 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr217) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %546 = zext i32 %544 to i64
  %547 = zext i32 %545 to i64
  %548 = shl nuw i64 %547, 32
  %549 = or i64 %548, %546
  %550 = tail call i64 @llvm.bswap.i64(i64 %549) #7
  %rx_pfc_tc0 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 27
  %551 = ptrtoint ptr %rx_pfc_tc0 to i32
  call void @__asan_store8_noabort(i32 %551)
  store i64 %550, ptr %rx_pfc_tc0, align 8
  %552 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %io_base, align 4
  %add.ptr221 = getelementptr i8, ptr %553, i32 3512
  %add.ptr.i460 = getelementptr i8, ptr %553, i32 3516
  %554 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i460) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %555 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr221) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %556 = zext i32 %554 to i64
  %557 = zext i32 %555 to i64
  %558 = shl nuw i64 %557, 32
  %559 = or i64 %558, %556
  %560 = tail call i64 @llvm.bswap.i64(i64 %559) #7
  %rx_pfc_tc1 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 28
  %561 = ptrtoint ptr %rx_pfc_tc1 to i32
  call void @__asan_store8_noabort(i32 %561)
  store i64 %560, ptr %rx_pfc_tc1, align 8
  %562 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %io_base, align 4
  %add.ptr225 = getelementptr i8, ptr %563, i32 3520
  %add.ptr.i461 = getelementptr i8, ptr %563, i32 3524
  %564 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i461) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %565 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr225) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %566 = zext i32 %564 to i64
  %567 = zext i32 %565 to i64
  %568 = shl nuw i64 %567, 32
  %569 = or i64 %568, %566
  %570 = tail call i64 @llvm.bswap.i64(i64 %569) #7
  %rx_pfc_tc2 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 29
  %571 = ptrtoint ptr %rx_pfc_tc2 to i32
  call void @__asan_store8_noabort(i32 %571)
  store i64 %570, ptr %rx_pfc_tc2, align 8
  %572 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %io_base, align 4
  %add.ptr229 = getelementptr i8, ptr %573, i32 3528
  %add.ptr.i462 = getelementptr i8, ptr %573, i32 3532
  %574 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i462) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %575 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr229) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %576 = zext i32 %574 to i64
  %577 = zext i32 %575 to i64
  %578 = shl nuw i64 %577, 32
  %579 = or i64 %578, %576
  %580 = tail call i64 @llvm.bswap.i64(i64 %579) #7
  %rx_pfc_tc3 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 30
  %581 = ptrtoint ptr %rx_pfc_tc3 to i32
  call void @__asan_store8_noabort(i32 %581)
  store i64 %580, ptr %rx_pfc_tc3, align 8
  %582 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %io_base, align 4
  %add.ptr233 = getelementptr i8, ptr %583, i32 3536
  %add.ptr.i463 = getelementptr i8, ptr %583, i32 3540
  %584 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i463) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %585 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr233) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %586 = zext i32 %584 to i64
  %587 = zext i32 %585 to i64
  %588 = shl nuw i64 %587, 32
  %589 = or i64 %588, %586
  %590 = tail call i64 @llvm.bswap.i64(i64 %589) #7
  %rx_pfc_tc4 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 31
  %591 = ptrtoint ptr %rx_pfc_tc4 to i32
  call void @__asan_store8_noabort(i32 %591)
  store i64 %590, ptr %rx_pfc_tc4, align 8
  %592 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %io_base, align 4
  %add.ptr237 = getelementptr i8, ptr %593, i32 3544
  %add.ptr.i464 = getelementptr i8, ptr %593, i32 3548
  %594 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i464) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %595 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr237) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %596 = zext i32 %594 to i64
  %597 = zext i32 %595 to i64
  %598 = shl nuw i64 %597, 32
  %599 = or i64 %598, %596
  %600 = tail call i64 @llvm.bswap.i64(i64 %599) #7
  %rx_pfc_tc5 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 32
  %601 = ptrtoint ptr %rx_pfc_tc5 to i32
  call void @__asan_store8_noabort(i32 %601)
  store i64 %600, ptr %rx_pfc_tc5, align 8
  %602 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %io_base, align 4
  %add.ptr241 = getelementptr i8, ptr %603, i32 3552
  %add.ptr.i465 = getelementptr i8, ptr %603, i32 3556
  %604 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i465) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %605 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr241) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %606 = zext i32 %604 to i64
  %607 = zext i32 %605 to i64
  %608 = shl nuw i64 %607, 32
  %609 = or i64 %608, %606
  %610 = tail call i64 @llvm.bswap.i64(i64 %609) #7
  %rx_pfc_tc6 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 33
  %611 = ptrtoint ptr %rx_pfc_tc6 to i32
  call void @__asan_store8_noabort(i32 %611)
  store i64 %610, ptr %rx_pfc_tc6, align 8
  %612 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %io_base, align 4
  %add.ptr245 = getelementptr i8, ptr %613, i32 3560
  %add.ptr.i466 = getelementptr i8, ptr %613, i32 3564
  %614 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i466) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %615 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr245) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %616 = zext i32 %614 to i64
  %617 = zext i32 %615 to i64
  %618 = shl nuw i64 %617, 32
  %619 = or i64 %618, %616
  %620 = tail call i64 @llvm.bswap.i64(i64 %619) #7
  %rx_pfc_tc7 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 34
  %621 = ptrtoint ptr %rx_pfc_tc7 to i32
  call void @__asan_store8_noabort(i32 %621)
  store i64 %620, ptr %rx_pfc_tc7, align 8
  %622 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %io_base, align 4
  %add.ptr249 = getelementptr i8, ptr %623, i32 3568
  %add.ptr.i467 = getelementptr i8, ptr %623, i32 3572
  %624 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i467) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %625 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr249) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %626 = zext i32 %624 to i64
  %627 = zext i32 %625 to i64
  %628 = shl nuw i64 %627, 32
  %629 = or i64 %628, %626
  %630 = tail call i64 @llvm.bswap.i64(i64 %629) #7
  %rx_unknown_ctrl = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 35
  %631 = ptrtoint ptr %rx_unknown_ctrl to i32
  call void @__asan_store8_noabort(i32 %631)
  store i64 %630, ptr %rx_unknown_ctrl, align 8
  %632 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %io_base, align 4
  %add.ptr253 = getelementptr i8, ptr %633, i32 3576
  %add.ptr.i468 = getelementptr i8, ptr %633, i32 3580
  %634 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i468) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %635 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr253) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %636 = zext i32 %634 to i64
  %637 = zext i32 %635 to i64
  %638 = shl nuw i64 %637, 32
  %639 = or i64 %638, %636
  %640 = tail call i64 @llvm.bswap.i64(i64 %639) #7
  %tx_good_to_sw = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 42
  %641 = ptrtoint ptr %tx_good_to_sw to i32
  call void @__asan_store8_noabort(i32 %641)
  store i64 %640, ptr %tx_good_to_sw, align 8
  %642 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %io_base, align 4
  %add.ptr257 = getelementptr i8, ptr %643, i32 3584
  %add.ptr.i469 = getelementptr i8, ptr %643, i32 3588
  %644 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i469) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %645 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr257) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %646 = zext i32 %644 to i64
  %647 = zext i32 %645 to i64
  %648 = shl nuw i64 %647, 32
  %649 = or i64 %648, %646
  %650 = tail call i64 @llvm.bswap.i64(i64 %649) #7
  %tx_bad_to_sw = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 43
  %651 = ptrtoint ptr %tx_bad_to_sw to i32
  call void @__asan_store8_noabort(i32 %651)
  store i64 %650, ptr %tx_bad_to_sw, align 8
  %652 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %io_base, align 4
  %add.ptr261 = getelementptr i8, ptr %653, i32 3592
  %add.ptr.i470 = getelementptr i8, ptr %653, i32 3596
  %654 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i470) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %655 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr261) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %656 = zext i32 %654 to i64
  %657 = zext i32 %655 to i64
  %658 = shl nuw i64 %657, 32
  %659 = or i64 %658, %656
  %660 = tail call i64 @llvm.bswap.i64(i64 %659) #7
  %rx_1731_pkts = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 44
  %661 = ptrtoint ptr %rx_1731_pkts to i32
  call void @__asan_store8_noabort(i32 %661)
  store i64 %660, ptr %rx_1731_pkts, align 8
  %662 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %io_base, align 4
  %add.ptr265 = getelementptr i8, ptr %663, i32 3600
  %add.ptr.i471 = getelementptr i8, ptr %663, i32 3604
  %664 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i471) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %665 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr265) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %666 = zext i32 %664 to i64
  %667 = zext i32 %665 to i64
  %668 = shl nuw i64 %667, 32
  %669 = or i64 %668, %666
  %670 = tail call i64 @llvm.bswap.i64(i64 %669) #7
  %rx_symbol_err = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 41
  %671 = ptrtoint ptr %rx_symbol_err to i32
  call void @__asan_store8_noabort(i32 %671)
  store i64 %670, ptr %rx_symbol_err, align 8
  %672 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %io_base, align 4
  %add.ptr269 = getelementptr i8, ptr %673, i32 3608
  %add.ptr.i472 = getelementptr i8, ptr %673, i32 3612
  %674 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i472) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %675 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr269) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %676 = zext i32 %674 to i64
  %677 = zext i32 %675 to i64
  %678 = shl nuw i64 %677, 32
  %679 = or i64 %678, %676
  %680 = tail call i64 @llvm.bswap.i64(i64 %679) #7
  %rx_fcs_err = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 22
  %681 = ptrtoint ptr %rx_fcs_err to i32
  call void @__asan_store8_noabort(i32 %681)
  store i64 %680, ptr %rx_fcs_err, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_xgmac.c", i32 151, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hns_xgmac_enable._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hns_xgmac_enable._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @g_xgmac_stats_string, !9, !"g_xgmac_stats_string", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_xgmac.c", i32 13, i32 38}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 2157129906}
!20 = !{i64 717811}
!21 = !{i64 718229}
!22 = !{i64 2157130707}
!23 = !{i64 2149382866}
!24 = !{i64 2149383288}
