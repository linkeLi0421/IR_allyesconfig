; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/hisilicon/hns/hns_dsaf_gmac.c_pt.bc'
source_filename = "../drivers/net/ethernet/hisilicon/hns/hns_dsaf_gmac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.hns_mac_cb = type { ptr, ptr, %struct.mac_priv, ptr, ptr, ptr, ptr, ptr, ptr, [6 x i8], i32, i32, i32, [128 x %struct.mac_entry_idx], i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i64, i64, i32, i32, i32, i32, ptr, %struct.mac_hw_stats }
%struct.mac_priv = type { ptr }
%struct.mac_entry_idx = type { [6 x i8], i16 }
%struct.mac_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mac_info = type { i16, i8, i8, i32, i8, i8, i8, i8, i8, i8 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hns_gmac_adjust_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 283, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"hns_gmac_adjust_link fail, speed%d mac%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hns_gmac_adjust_link\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/hisilicon/hns/hns_dsaf_gmac.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hns_gmac_adjust_link._entry_ptr = internal global ptr @hns_gmac_adjust_link._entry, section ".printk_index", align 4
@hns_gmac_config_loopback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 481, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"loop_mode error\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hns_gmac_config_loopback\00", [39 x i8] zeroinitializer }, align 32
@hns_gmac_config_loopback._entry_ptr = internal global ptr @hns_gmac_config_loopback._entry, section ".printk_index", align 4
@g_gmac_stats_string = internal constant { [45 x %struct.mac_stats_string], [396 x i8] } { [45 x %struct.mac_stats_string] [%struct.mac_stats_string { [32 x i8] c"gmac_rx_octets_total_ok\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.mac_stats_string { [32 x i8] c"gmac_rx_octets_bad\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 32 }, %struct.mac_stats_string { [32 x i8] c"gmac_rx_uc_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 40 }, %struct.mac_stats_string { [32 x i8] c"gmac_rx_mc_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48 }, %struct.mac_stats_string { [32 x i8] c"gmac_rx_bc_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 56 }, %struct.mac_stats_string { [32 x i8] c"gmac_rx_pkts_64octets\00\00\00\00\00\00\00\00\00\00\00", i32 96 }, %struct.mac_stats_string { [32 x i8] c"gmac_rx_pkts_65to127\00\00\00\00\00\00\00\00\00\00\00\00", i32 104 }, %struct.mac_stats_string { [32 x i8] c"gmac_rx_pkts_128to255\00\00\00\00\00\00\00\00\00\00\00", i32 112 }, %struct.mac_stats_string { [32 x i8] c"gmac_rx_pkts_256to511\00\00\00\00\00\00\00\00\00\00\00", i32 120 }, %struct.mac_stats_string { [32 x i8] c"gmac_rx_pkts_512to1023\00\00\00\00\00\00\00\00\00\00", i32 128 }, %struct.mac_stats_string { [32 x i8] c"gmac_rx_pkts_1024to1518\00\00\00\00\00\00\00\00\00", i32 136 }, %struct.mac_stats_string { [32 x i8] c"gmac_rx_pkts_1519tomax\00\00\00\00\00\00\00\00\00\00", i32 144 }, %struct.mac_stats_string { [32 x i8] c"gmac_rx_fcs_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 176 }, %struct.mac_stats_string { [32 x i8] c"gmac_rx_tagged\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 184 }, %struct.mac_stats_string { [32 x i8] c"gmac_rx_data_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 192 }, %struct.mac_stats_string { [32 x i8] c"gmac_rx_align_errors\00\00\00\00\00\00\00\00\00\00\00\00", i32 200 }, %struct.mac_stats_string { [32 x i8] c"gmac_rx_long_errors\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 160 }, %struct.mac_stats_string { [32 x i8] c"gmac_rx_jabber_errors\00\00\00\00\00\00\00\00\00\00\00", i32 168 }, %struct.mac_stats_string { [32 x i8] c"gmac_rx_pause_maccontrol\00\00\00\00\00\00\00\00", i32 216 }, %struct.mac_stats_string { [32 x i8] c"gmac_rx_unknown_maccontrol\00\00\00\00\00\00", i32 280 }, %struct.mac_stats_string { [32 x i8] c"gmac_rx_very_long_err\00\00\00\00\00\00\00\00\00\00\00", i32 208 }, %struct.mac_stats_string { [32 x i8] c"gmac_rx_runt_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 88 }, %struct.mac_stats_string { [32 x i8] c"gmac_rx_short_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 80 }, %struct.mac_stats_string { [32 x i8] c"gmac_rx_filt_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 288 }, %struct.mac_stats_string { [32 x i8] c"gmac_rx_octets_total_filt\00\00\00\00\00\00\00", i32 296 }, %struct.mac_stats_string { [32 x i8] c"gmac_rx_overrun_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 304 }, %struct.mac_stats_string { [32 x i8] c"gmac_rx_length_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 312 }, %struct.mac_stats_string { [32 x i8] c"gmac_rx_fail_comma\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 320 }, %struct.mac_stats_string { [32 x i8] c"gmac_tx_octets_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 360 }, %struct.mac_stats_string { [32 x i8] c"gmac_tx_octets_bad\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 392 }, %struct.mac_stats_string { [32 x i8] c"gmac_tx_uc_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 408 }, %struct.mac_stats_string { [32 x i8] c"gmac_tx_mc_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 416 }, %struct.mac_stats_string { [32 x i8] c"gmac_tx_bc_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 424 }, %struct.mac_stats_string { [32 x i8] c"gmac_tx_pkts_64octets\00\00\00\00\00\00\00\00\00\00\00", i32 456 }, %struct.mac_stats_string { [32 x i8] c"gmac_tx_pkts_65to127\00\00\00\00\00\00\00\00\00\00\00\00", i32 464 }, %struct.mac_stats_string { [32 x i8] c"gmac_tx_pkts_128to255\00\00\00\00\00\00\00\00\00\00\00", i32 472 }, %struct.mac_stats_string { [32 x i8] c"gmac_tx_pkts_256to511\00\00\00\00\00\00\00\00\00\00\00", i32 480 }, %struct.mac_stats_string { [32 x i8] c"gmac_tx_pkts_512to1023\00\00\00\00\00\00\00\00\00\00", i32 488 }, %struct.mac_stats_string { [32 x i8] c"gmac_tx_pkts_1024to1518\00\00\00\00\00\00\00\00\00", i32 496 }, %struct.mac_stats_string { [32 x i8] c"gmac_tx_pkts_1519tomax\00\00\00\00\00\00\00\00\00\00", i32 504 }, %struct.mac_stats_string { [32 x i8] c"gmac_tx_excessive_length_drop\00\00\00", i32 528 }, %struct.mac_stats_string { [32 x i8] c"gmac_tx_underrun\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 536 }, %struct.mac_stats_string { [32 x i8] c"gmac_tx_tagged\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 544 }, %struct.mac_stats_string { [32 x i8] c"gmac_tx_crc_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 552 }, %struct.mac_stats_string { [32 x i8] c"gmac_tx_pause_frames\00\00\00\00\00\00\00\00\00\00\00\00", i32 560 }], [396 x i8] zeroinitializer }, align 32
@hns_gmac_wait_fifo_clean._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 325, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hns ge %d fifo was not idle.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hns_gmac_wait_fifo_clean\00", [39 x i8] zeroinitializer }, align 32
@hns_gmac_wait_fifo_clean._entry_ptr = internal global ptr @hns_gmac_wait_fifo_clean._entry, section ".printk_index", align 4
@switch.table.hns_gmac_get_info = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 10, i16 100, i16 1000], [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 281, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 481, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [20 x i8] c"g_gmac_stats_string\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 12, i32 38 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [54 x i8] c"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_gmac.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 324, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [31 x i8] c"switch.table.hns_gmac_get_info\00", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @hns_gmac_adjust_link._entry, ptr @hns_gmac_adjust_link._entry_ptr, ptr @hns_gmac_config_loopback._entry, ptr @hns_gmac_config_loopback._entry_ptr, ptr @hns_gmac_wait_fifo_clean._entry, ptr @hns_gmac_wait_fifo_clean._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @g_gmac_stats_string, ptr @.str.7, ptr @.str.8, ptr @switch.table.hns_gmac_get_info], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_gmac_adjust_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_gmac_config_loopback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_gmac_stats_string to i32), i32 1620, i32 2016, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_gmac_wait_fifo_clean._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hns_gmac_get_info to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hns_gmac_config(ptr noundef %mac_cb, ptr nocapture noundef readonly %mac_param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_cb, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 132, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @hns_gmac_init, ptr %call.i, align 4
  %mac_enable = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %mac_enable to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @hns_gmac_enable, ptr %mac_enable, align 4
  %mac_disable = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %mac_disable to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @hns_gmac_disable, ptr %mac_disable, align 4
  %mac_free = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %mac_free to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @hns_gmac_free, ptr %mac_free, align 4
  %adjust_link = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %adjust_link to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @hns_gmac_adjust_link, ptr %adjust_link, align 4
  %need_adjust_link = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %need_adjust_link to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @hns_gmac_need_adjust_link, ptr %need_adjust_link, align 4
  %set_tx_auto_pause_frames = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 11
  %8 = ptrtoint ptr %set_tx_auto_pause_frames to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @hns_gmac_set_tx_auto_pause_frames, ptr %set_tx_auto_pause_frames, align 4
  %config_max_frame_length = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %config_max_frame_length to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @hns_gmac_config_max_frame_length, ptr %config_max_frame_length, align 4
  %mac_pausefrm_cfg = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 13
  %10 = ptrtoint ptr %mac_pausefrm_cfg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @hns_gmac_pause_frm_cfg, ptr %mac_pausefrm_cfg, align 4
  %mac_id = getelementptr inbounds %struct.mac_params, ptr %mac_param, i32 0, i32 3
  %11 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mac_id, align 4
  %mac_id1 = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 27
  %13 = ptrtoint ptr %mac_id1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %mac_id1, align 4
  %mac_mode = getelementptr inbounds %struct.mac_params, ptr %mac_param, i32 0, i32 4
  %14 = ptrtoint ptr %mac_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mac_mode, align 4
  %mac_mode2 = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 26
  %16 = ptrtoint ptr %mac_mode2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %mac_mode2, align 4
  %vaddr = getelementptr inbounds %struct.mac_params, ptr %mac_param, i32 0, i32 1
  %17 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vaddr, align 4
  %io_base = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 29
  %19 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %io_base, align 4
  %dev3 = getelementptr inbounds %struct.mac_params, ptr %mac_param, i32 0, i32 2
  %20 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev3, align 4
  %dev4 = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 32
  %22 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %dev4, align 4
  %mac_cb5 = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 28
  %23 = ptrtoint ptr %mac_cb5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %mac_cb, ptr %mac_cb5, align 4
  %set_mac_addr = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %set_mac_addr to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @hns_gmac_set_mac_addr, ptr %set_mac_addr, align 4
  %set_an_mode = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 7
  %25 = ptrtoint ptr %set_an_mode to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @hns_gmac_config_an_mode, ptr %set_an_mode, align 4
  %config_loopback = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 8
  %26 = ptrtoint ptr %config_loopback to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @hns_gmac_config_loopback, ptr %config_loopback, align 4
  %config_pad_and_crc = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 10
  %27 = ptrtoint ptr %config_pad_and_crc to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @hns_gmac_config_pad_and_crc, ptr %config_pad_and_crc, align 4
  %get_info = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 23
  %28 = ptrtoint ptr %get_info to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @hns_gmac_get_info, ptr %get_info, align 4
  %autoneg_stat = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 14
  %29 = ptrtoint ptr %autoneg_stat to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @hns_gmac_autoneg_stat, ptr %autoneg_stat, align 4
  %get_pause_enable = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 16
  %30 = ptrtoint ptr %get_pause_enable to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @hns_gmac_get_pausefrm_cfg, ptr %get_pause_enable, align 4
  %get_link_status = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 17
  %31 = ptrtoint ptr %get_link_status to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @hns_gmac_get_link_status, ptr %get_link_status, align 4
  %get_regs = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 18
  %32 = ptrtoint ptr %get_regs to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @hns_gmac_get_regs, ptr %get_regs, align 4
  %get_regs_count = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 19
  %33 = ptrtoint ptr %get_regs_count to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @hns_gmac_get_regs_count, ptr %get_regs_count, align 4
  %get_ethtool_stats = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 22
  %34 = ptrtoint ptr %get_ethtool_stats to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @hns_gmac_get_stats, ptr %get_ethtool_stats, align 4
  %get_sset_count = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 21
  %35 = ptrtoint ptr %get_sset_count to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @hns_gmac_get_sset_count, ptr %get_sset_count, align 4
  %get_strings = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 20
  %36 = ptrtoint ptr %get_strings to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @hns_gmac_get_strings, ptr %get_strings, align 4
  %update_stats = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 24
  %37 = ptrtoint ptr %update_stats to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @hns_gmac_update_stats, ptr %update_stats, align 4
  %set_promiscuous = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 12
  %38 = ptrtoint ptr %set_promiscuous to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @hns_gmac_set_promisc, ptr %set_promiscuous, align 4
  %wait_fifo_clean = getelementptr inbounds %struct.mac_driver, ptr %call.i, i32 0, i32 25
  %39 = ptrtoint ptr %wait_fifo_clean to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @hns_gmac_wait_fifo_clean, ptr %wait_fifo_clean, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_gmac_init(ptr nocapture noundef readonly %mac_drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %ge_srst = getelementptr inbounds %struct.dsaf_misc_op, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %ge_srst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ge_srst, align 4
  tail call void %9(ptr noundef %3, i32 noundef %conv, i1 noundef zeroext false) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #8
  %20 = ptrtoint ptr %misc_op to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %misc_op, align 4
  %ge_srst2 = getelementptr inbounds %struct.dsaf_misc_op, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %ge_srst2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ge_srst2, align 4
  tail call void %23(ptr noundef %3, i32 noundef %conv, i1 noundef zeroext true) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #8
  %io_base.i = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %34 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %35, i32 68
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %37 = and i32 %36, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %37) #8, !srcloc !32
  %38 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i14.i = getelementptr i8, ptr %39, i32 484
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i14.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %41 = or i32 %40, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i14.i, i32 %41) #8, !srcloc !32
  %42 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i16.i = getelementptr i8, ptr %43, i32 68
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i16.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %45 = and i32 %44, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i16.i, i32 %45) #8, !srcloc !32
  %46 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %47, i32 888
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %49 = and i32 %48, -50331649
  %50 = or i32 %49, 33554432
  %51 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %add.ptr.i19.i = getelementptr i8, ptr %52, i32 888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %50) #8, !srcloc !32
  %mac_cb = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 28
  %53 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mac_cb, align 4
  %mac_type = getelementptr inbounds %struct.hns_mac_cb, ptr %54, i32 0, i32 26
  %55 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mac_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp = icmp eq i32 %56, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i25 = getelementptr i8, ptr %58, i32 100
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i25) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %60 = or i32 %59, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i25, i32 %60) #8, !srcloc !32
  %61 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i7.i = getelementptr i8, ptr %62, i32 532
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %64 = or i32 %63, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 %64) #8, !srcloc !32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %65 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %66, i32 96
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i27) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %68 = or i32 %67, -1073741824
  %69 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %add.ptr.i31.i = getelementptr i8, ptr %70, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i, i32 %68) #8, !srcloc !32
  %71 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i28 = getelementptr i8, ptr %72, i32 436
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i28) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %74 = or i32 %73, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i28, i32 %74) #8, !srcloc !32
  %75 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i29 = getelementptr i8, ptr %76, i32 16
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i29) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %78 = and i32 %77, 16777215
  %79 = or i32 %78, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i29, i32 %79) #8, !srcloc !32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_gmac_enable(ptr nocapture noundef readonly %mac_drv, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %entry.if.end8_crit_edge [
    i32 2, label %entry.if.then_crit_edge
    i32 3, label %entry.if.then_crit_edge19
    i32 1, label %entry.if.then5_crit_edge
  ]

entry.if.then5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

entry.if.then_crit_edge19:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge19
  %io_base = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %1 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 68
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %4 = or i32 %3, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #8, !srcloc !32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %cond = icmp eq i32 %mode, 3
  br i1 %cond, label %if.then.if.then5_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then.if.then5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

if.then5:                                         ; preds = %if.then.if.then5_crit_edge, %entry.if.then5_crit_edge
  %io_base6 = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %5 = ptrtoint ptr %io_base6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_base6, align 4
  %add.ptr.i.i14 = getelementptr i8, ptr %6, i32 484
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i14) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %8 = and i32 %7, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i14, i32 %8) #8, !srcloc !32
  %9 = ptrtoint ptr %io_base6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_base6, align 4
  %add.ptr.i.i16 = getelementptr i8, ptr %10, i32 68
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i16) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %12 = or i32 %11, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i16, i32 %12) #8, !srcloc !32
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_gmac_disable(ptr nocapture noundef readonly %mac_drv, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %mode, label %entry.if.end8_crit_edge [
    i32 2, label %entry.if.then_crit_edge
    i32 3, label %entry.if.then_crit_edge18
    i32 1, label %entry.if.then5_crit_edge
  ]

entry.if.then5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

entry.if.then_crit_edge18:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge18
  %io_base = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %1 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 68
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %4 = and i32 %3, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #8, !srcloc !32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %cond = icmp eq i32 %mode, 3
  br i1 %cond, label %if.then.if.then5_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then.if.then5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

if.then5:                                         ; preds = %if.then.if.then5_crit_edge, %entry.if.then5_crit_edge
  %io_base6 = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %5 = ptrtoint ptr %io_base6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_base6, align 4
  %add.ptr.i.i14 = getelementptr i8, ptr %6, i32 484
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i14) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %8 = or i32 %7, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i14, i32 %8) #8, !srcloc !32
  %9 = ptrtoint ptr %io_base6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_base6, align 4
  %add.ptr.i.i16 = getelementptr i8, ptr %10, i32 68
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i16) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %12 = and i32 %11, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i16, i32 %12) #8, !srcloc !32
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_gmac_free(ptr nocapture noundef readonly %mac_drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %ge_srst = getelementptr inbounds %struct.dsaf_misc_op, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %ge_srst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ge_srst, align 4
  tail call void %9(ptr noundef %3, i32 noundef %conv, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_gmac_adjust_link(ptr nocapture noundef readonly %mac_drv, i32 noundef %speed, i32 noundef %full_duplex) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %full_duplex)
  %tobool = icmp ne i32 %full_duplex, 0
  %lnot.ext = zext i1 %tobool to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %3 = and i32 %2, -16777217
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %or.i = or i32 %4, %lnot.ext
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #8, !srcloc !32
  %6 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %speed, label %do.end [
    i32 10, label %sw.bb
    i32 100, label %sw.bb3
    i32 1000, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_base, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %8, i32 64
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %10 = and i32 %9, -251658241
  %11 = or i32 %10, 100663296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i13, i32 %11) #8, !srcloc !32
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base, align 4
  %add.ptr.i.i16 = getelementptr i8, ptr %13, i32 64
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i16) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %15 = and i32 %14, -251658241
  %16 = or i32 %15, 117440512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i16, i32 %16) #8, !srcloc !32
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_base, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %18, i32 64
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %20 = and i32 %19, -251658241
  %21 = or i32 %20, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i19, i32 %21) #8, !srcloc !32
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 32
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %mac_id = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 27
  %24 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %mac_id, align 4
  %conv = zext i8 %25 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str, i32 noundef %speed, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb5, %sw.bb3, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb5 ], [ 0, %sw.bb3 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @hns_gmac_need_adjust_link(ptr nocapture noundef readonly %mac_drv, i32 noundef %speed, i32 noundef %duplex) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_cb1 = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 28
  %0 = ptrtoint ptr %mac_cb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_cb1, align 4
  %speed2 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %speed2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %speed2, align 2
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %speed)
  %cmp.not = icmp eq i32 %conv, %speed
  br i1 %cmp.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %half_duplex = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %half_duplex to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %half_duplex, align 4
  %conv4 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4, i32 %duplex)
  %cmp5 = icmp eq i32 %conv4, %duplex
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %6 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %cmp5, %lor.rhs ]
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_gmac_set_tx_auto_pause_frames(ptr nocapture noundef readonly %mac_drv, i16 noundef zeroext %newval) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %conv = zext i16 %newval to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %3 = and i32 %2, 65535
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %or.i = or i32 %4, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #8, !srcloc !32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_gmac_config_max_frame_length(ptr nocapture noundef readonly %mac_drv, i16 noundef zeroext %newval) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %conv = zext i16 %newval to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 60
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %3 = and i32 %2, 65535
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %or.i = or i32 %4, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #8, !srcloc !32
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 4
  %add.ptr.i.i5 = getelementptr i8, ptr %7, i32 368
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %9 = and i32 %8, 65535
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %or.i8 = or i32 %10, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i8) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i5, i32 %11) #8, !srcloc !32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_gmac_pause_frm_cfg(ptr nocapture noundef readonly %mac_drv, i32 noundef %rx_pause_en, i32 noundef %tx_pause_en) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 72
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %3 = and i32 %2, -50331649
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_pause_en)
  %tobool = icmp ne i32 %rx_pause_en, 0
  %5 = zext i1 %tobool to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_pause_en)
  %tobool11.not = icmp eq i32 %tx_pause_en, 0
  %shl16 = select i1 %tobool11.not, i32 0, i32 2
  %or = or i32 %shl16, %5
  %or2030 = or i32 %or, %4
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %or2030) #8
  %add.ptr.i31 = getelementptr i8, ptr %7, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %8) #8, !srcloc !32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_gmac_set_mac_addr(ptr nocapture noundef readonly %mac_drv, ptr nocapture noundef readonly %mac_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %add.ptr.i = getelementptr i8, ptr %13, i32 532
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !29
  %15 = shl i32 %14, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %16 = and i32 %15, 65536
  %17 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %or16) #8
  %add.ptr.i30 = getelementptr i8, ptr %18, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %19) #8, !srcloc !32
  %20 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base, align 4
  %or22 = or i32 %or, %16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %22 = tail call i32 @llvm.bswap.i32(i32 %or22) #8
  %add.ptr.i31 = getelementptr i8, ptr %21, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %22) #8, !srcloc !32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_gmac_config_an_mode(ptr nocapture noundef readonly %mac_drv, i8 noundef zeroext %newval) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %newval)
  %tobool.not = icmp eq i8 %newval, 0
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %3 = and i32 %2, -536870913
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shl.i = select i1 %tobool.not, i32 0, i32 32
  %or.i = or i32 %4, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #8, !srcloc !32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_gmac_config_loopback(ptr nocapture noundef readonly %mac_drv, i32 noundef %loop_mode, i8 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loop_mode)
  %cond = icmp eq i32 %loop_mode, 0
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %io_base = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool.not = icmp eq i8 %enable, 0
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 476
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %3 = and i32 %2, -67108865
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shl.i = select i1 %tobool.not, i32 0, i32 4
  %or.i = or i32 %4, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #8, !srcloc !32
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 32
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.5) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_gmac_config_pad_and_crc(ptr nocapture noundef readonly %mac_drv, i8 noundef zeroext %newval) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %3 = and i32 %2, 1073741823
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %newval)
  %tobool.not = icmp eq i8 %newval, 0
  %or = select i1 %tobool.not, i32 0, i32 192
  %or20 = or i32 %or, %4
  %5 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %or20) #8
  %add.ptr.i31 = getelementptr i8, ptr %6, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %7) #8, !srcloc !32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_gmac_get_info(ptr nocapture noundef readonly %mac_drv, ptr nocapture noundef writeonly %mac_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base.i = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %3 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 96
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !29
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %7 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %8, i32 480
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %10 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i42.i = getelementptr i8, ptr %11, i32 60
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i42.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %13 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i44.i = getelementptr i8, ptr %14, i32 80
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i44.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %16 = and i32 %6, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %16)
  %17 = icmp eq i32 %16, 192
  %conv = zext i1 %17 to i8
  %pad_and_crc_en = getelementptr inbounds %struct.mac_info, ptr %mac_info, i32 0, i32 7
  %18 = ptrtoint ptr %pad_and_crc_en to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %pad_and_crc_en, align 1
  %19 = trunc i32 %6 to i8
  %20 = lshr i8 %19, 5
  %conv2 = and i8 %20, 1
  %auto_neg = getelementptr inbounds %struct.mac_info, ptr %mac_info, i32 0, i32 2
  %21 = ptrtoint ptr %auto_neg to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv2, ptr %auto_neg, align 1
  %22 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i36 = getelementptr i8, ptr %23, i32 28
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i36) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %25 = lshr i32 %24, 24
  %conv3 = trunc i32 %25 to i8
  %tx_pause_time = getelementptr inbounds %struct.mac_info, ptr %mac_info, i32 0, i32 5
  %26 = ptrtoint ptr %tx_pause_time to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv3, ptr %tx_pause_time, align 1
  %27 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i38 = getelementptr i8, ptr %28, i32 68
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i38) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %30 = and i32 %29, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %30)
  %31 = icmp eq i32 %30, 100663296
  %conv9 = zext i1 %31 to i8
  %port_en = getelementptr inbounds %struct.mac_info, ptr %mac_info, i32 0, i32 9
  %32 = ptrtoint ptr %port_en to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv9, ptr %port_en, align 1
  %33 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i42 = getelementptr i8, ptr %34, i32 8
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i42) #8, !srcloc !29
  %36 = lshr i32 %35, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %37 = trunc i32 %36 to i8
  %conv10 = and i8 %37, 1
  %duplex11 = getelementptr inbounds %struct.mac_info, ptr %mac_info, i32 0, i32 1
  %38 = ptrtoint ptr %duplex11 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv10, ptr %duplex11, align 2
  %39 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i45 = getelementptr i8, ptr %40, i32 64
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i45) #8, !srcloc !29
  %42 = lshr i32 %41, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %and.i.i46 = and i32 %42, 15
  %switch.tableidx = add nsw i32 %and.i.i46, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %43 = icmp ult i32 %switch.tableidx, 3
  br i1 %43, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.hns_gmac_get_info, i32 0, i32 %switch.tableidx
  %44 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %44)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %.sink = phi i16 [ %switch.load, %switch.lookup ], [ 0, %entry.sw.epilog_crit_edge ]
  %45 = ptrtoint ptr %mac_info to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %.sink, ptr %mac_info, align 4
  %46 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i48 = getelementptr i8, ptr %47, i32 72
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i48) #8, !srcloc !29
  %49 = lshr i32 %48, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %50 = trunc i32 %49 to i8
  %conv18 = and i8 %50, 1
  %rx_pause_en = getelementptr inbounds %struct.mac_info, ptr %mac_info, i32 0, i32 6
  %51 = ptrtoint ptr %rx_pause_en to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv18, ptr %rx_pause_en, align 2
  %52 = lshr i8 %50, 1
  %conv19 = and i8 %52, 1
  %tx_pause_en = getelementptr inbounds %struct.mac_info, ptr %mac_info, i32 0, i32 4
  %53 = ptrtoint ptr %tx_pause_en to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv19, ptr %tx_pause_en, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_gmac_autoneg_stat(ptr nocapture noundef readonly %mac_drv, ptr nocapture noundef writeonly %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !29
  %3 = lshr i32 %2, 29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %and.i = and i32 %3, 1
  %4 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and.i, ptr %enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_gmac_get_pausefrm_cfg(ptr nocapture noundef readonly %mac_drv, ptr nocapture noundef writeonly %rx_pause_en, ptr nocapture noundef writeonly %tx_pause_en) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 72
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !29
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %and = and i32 %3, 1
  %4 = ptrtoint ptr %rx_pause_en to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %rx_pause_en, align 4
  %5 = lshr i32 %3, 1
  %6 = and i32 %5, 1
  %7 = ptrtoint ptr %tx_pause_en to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tx_pause_en, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_gmac_get_link_status(ptr nocapture noundef readonly %mac_drv, ptr nocapture noundef writeonly %link_stat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 88
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %3 = lshr i32 %2, 12
  %shr.i = and i32 %3, 1
  %4 = ptrtoint ptr %link_stat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr.i, ptr %link_stat, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_gmac_get_regs(ptr noundef readonly %mac_drv, ptr noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !29
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %data, align 4
  %5 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_base, align 4
  %add.ptr.i445 = getelementptr i8, ptr %6, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i445) #8, !srcloc !29
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx3 = getelementptr i32, ptr %data, i32 1
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx3, align 4
  %10 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base, align 4
  %add.ptr.i446 = getelementptr i8, ptr %11, i32 28
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i446) #8, !srcloc !29
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx6 = getelementptr i32, ptr %data, i32 2
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx6, align 4
  %15 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_base, align 4
  %add.ptr.i447 = getelementptr i8, ptr %16, i32 32
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i447) #8, !srcloc !29
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx9 = getelementptr i32, ptr %data, i32 3
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx9, align 4
  %20 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base, align 4
  %add.ptr.i448 = getelementptr i8, ptr %21, i32 36
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i448) #8, !srcloc !29
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx12 = getelementptr i32, ptr %data, i32 4
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx12, align 4
  %25 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_base, align 4
  %add.ptr.i449 = getelementptr i8, ptr %26, i32 48
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i449) #8, !srcloc !29
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx15 = getelementptr i32, ptr %data, i32 5
  %29 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx15, align 4
  %30 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_base, align 4
  %add.ptr.i450 = getelementptr i8, ptr %31, i32 56
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i450) #8, !srcloc !29
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx18 = getelementptr i32, ptr %data, i32 6
  %34 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx18, align 4
  %35 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_base, align 4
  %add.ptr.i451 = getelementptr i8, ptr %36, i32 60
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i451) #8, !srcloc !29
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx21 = getelementptr i32, ptr %data, i32 7
  %39 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx21, align 4
  %40 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io_base, align 4
  %add.ptr.i452 = getelementptr i8, ptr %41, i32 64
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i452) #8, !srcloc !29
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx24 = getelementptr i32, ptr %data, i32 8
  %44 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx24, align 4
  %45 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %io_base, align 4
  %add.ptr.i453 = getelementptr i8, ptr %46, i32 68
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i453) #8, !srcloc !29
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx27 = getelementptr i32, ptr %data, i32 9
  %49 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx27, align 4
  %50 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %io_base, align 4
  %add.ptr.i454 = getelementptr i8, ptr %51, i32 72
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i454) #8, !srcloc !29
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx30 = getelementptr i32, ptr %data, i32 10
  %54 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx30, align 4
  %55 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %io_base, align 4
  %add.ptr.i455 = getelementptr i8, ptr %56, i32 80
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i455) #8, !srcloc !29
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx33 = getelementptr i32, ptr %data, i32 11
  %59 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arrayidx33, align 4
  %60 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %io_base, align 4
  %add.ptr.i456 = getelementptr i8, ptr %61, i32 88
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i456) #8, !srcloc !29
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx36 = getelementptr i32, ptr %data, i32 12
  %64 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx36, align 4
  %65 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %io_base, align 4
  %add.ptr.i457 = getelementptr i8, ptr %66, i32 92
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i457) #8, !srcloc !29
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx39 = getelementptr i32, ptr %data, i32 13
  %69 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %arrayidx39, align 4
  %70 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %io_base, align 4
  %add.ptr.i458 = getelementptr i8, ptr %71, i32 96
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i458) #8, !srcloc !29
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx42 = getelementptr i32, ptr %data, i32 14
  %74 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx42, align 4
  %75 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %io_base, align 4
  %add.ptr.i459 = getelementptr i8, ptr %76, i32 100
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i459) #8, !srcloc !29
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx45 = getelementptr i32, ptr %data, i32 15
  %79 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %arrayidx45, align 4
  %80 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %io_base, align 4
  %add.ptr.i460 = getelementptr i8, ptr %81, i32 116
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i460) #8, !srcloc !29
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx48 = getelementptr i32, ptr %data, i32 16
  %84 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %arrayidx48, align 4
  %85 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %io_base, align 4
  %add.ptr.i461 = getelementptr i8, ptr %86, i32 128
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i461) #8, !srcloc !29
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx51 = getelementptr i32, ptr %data, i32 17
  %89 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %arrayidx51, align 4
  %90 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %io_base, align 4
  %add.ptr.i462 = getelementptr i8, ptr %91, i32 132
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i462) #8, !srcloc !29
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx54 = getelementptr i32, ptr %data, i32 18
  %94 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %arrayidx54, align 4
  %95 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %io_base, align 4
  %add.ptr.i463 = getelementptr i8, ptr %96, i32 136
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i463) #8, !srcloc !29
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx57 = getelementptr i32, ptr %data, i32 19
  %99 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %arrayidx57, align 4
  %100 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %io_base, align 4
  %add.ptr.i464 = getelementptr i8, ptr %101, i32 140
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i464) #8, !srcloc !29
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx60 = getelementptr i32, ptr %data, i32 20
  %104 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %arrayidx60, align 4
  %105 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %io_base, align 4
  %add.ptr.i465 = getelementptr i8, ptr %106, i32 144
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i465) #8, !srcloc !29
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx63 = getelementptr i32, ptr %data, i32 21
  %109 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %arrayidx63, align 4
  %110 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %io_base, align 4
  %add.ptr.i466 = getelementptr i8, ptr %111, i32 148
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i466) #8, !srcloc !29
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx66 = getelementptr i32, ptr %data, i32 22
  %114 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %arrayidx66, align 4
  %115 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %io_base, align 4
  %add.ptr.i467 = getelementptr i8, ptr %116, i32 152
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i467) #8, !srcloc !29
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx69 = getelementptr i32, ptr %data, i32 23
  %119 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %arrayidx69, align 4
  %120 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %io_base, align 4
  %add.ptr.i468 = getelementptr i8, ptr %121, i32 156
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i468) #8, !srcloc !29
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx72 = getelementptr i32, ptr %data, i32 24
  %124 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %arrayidx72, align 4
  %125 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %io_base, align 4
  %add.ptr.i469 = getelementptr i8, ptr %126, i32 160
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i469) #8, !srcloc !29
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx75 = getelementptr i32, ptr %data, i32 25
  %129 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %arrayidx75, align 4
  %130 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %io_base, align 4
  %add.ptr.i470 = getelementptr i8, ptr %131, i32 164
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i470) #8, !srcloc !29
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx78 = getelementptr i32, ptr %data, i32 26
  %134 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %arrayidx78, align 4
  %135 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %io_base, align 4
  %add.ptr.i471 = getelementptr i8, ptr %136, i32 168
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i471) #8, !srcloc !29
  %138 = tail call i32 @llvm.bswap.i32(i32 %137) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx81 = getelementptr i32, ptr %data, i32 27
  %139 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %arrayidx81, align 4
  %140 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %io_base, align 4
  %add.ptr.i472 = getelementptr i8, ptr %141, i32 172
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i472) #8, !srcloc !29
  %143 = tail call i32 @llvm.bswap.i32(i32 %142) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx84 = getelementptr i32, ptr %data, i32 28
  %144 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %arrayidx84, align 4
  %145 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %io_base, align 4
  %add.ptr.i473 = getelementptr i8, ptr %146, i32 176
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i473) #8, !srcloc !29
  %148 = tail call i32 @llvm.bswap.i32(i32 %147) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx87 = getelementptr i32, ptr %data, i32 29
  %149 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %arrayidx87, align 4
  %150 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %io_base, align 4
  %add.ptr.i474 = getelementptr i8, ptr %151, i32 180
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i474) #8, !srcloc !29
  %153 = tail call i32 @llvm.bswap.i32(i32 %152) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx90 = getelementptr i32, ptr %data, i32 30
  %154 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %arrayidx90, align 4
  %155 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %io_base, align 4
  %add.ptr.i475 = getelementptr i8, ptr %156, i32 184
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i475) #8, !srcloc !29
  %158 = tail call i32 @llvm.bswap.i32(i32 %157) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx93 = getelementptr i32, ptr %data, i32 31
  %159 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %arrayidx93, align 4
  %160 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %io_base, align 4
  %add.ptr.i476 = getelementptr i8, ptr %161, i32 188
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i476) #8, !srcloc !29
  %163 = tail call i32 @llvm.bswap.i32(i32 %162) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx96 = getelementptr i32, ptr %data, i32 32
  %164 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %arrayidx96, align 4
  %165 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %io_base, align 4
  %add.ptr.i477 = getelementptr i8, ptr %166, i32 192
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i477) #8, !srcloc !29
  %168 = tail call i32 @llvm.bswap.i32(i32 %167) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx99 = getelementptr i32, ptr %data, i32 33
  %169 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %arrayidx99, align 4
  %170 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %io_base, align 4
  %add.ptr.i478 = getelementptr i8, ptr %171, i32 196
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i478) #8, !srcloc !29
  %173 = tail call i32 @llvm.bswap.i32(i32 %172) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx102 = getelementptr i32, ptr %data, i32 34
  %174 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %arrayidx102, align 4
  %175 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %io_base, align 4
  %add.ptr.i479 = getelementptr i8, ptr %176, i32 200
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i479) #8, !srcloc !29
  %178 = tail call i32 @llvm.bswap.i32(i32 %177) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx105 = getelementptr i32, ptr %data, i32 35
  %179 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %arrayidx105, align 4
  %180 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %io_base, align 4
  %add.ptr.i480 = getelementptr i8, ptr %181, i32 204
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i480) #8, !srcloc !29
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx108 = getelementptr i32, ptr %data, i32 36
  %184 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %arrayidx108, align 4
  %185 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %io_base, align 4
  %add.ptr.i481 = getelementptr i8, ptr %186, i32 208
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i481) #8, !srcloc !29
  %188 = tail call i32 @llvm.bswap.i32(i32 %187) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx111 = getelementptr i32, ptr %data, i32 37
  %189 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %arrayidx111, align 4
  %190 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %io_base, align 4
  %add.ptr.i482 = getelementptr i8, ptr %191, i32 212
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i482) #8, !srcloc !29
  %193 = tail call i32 @llvm.bswap.i32(i32 %192) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx114 = getelementptr i32, ptr %data, i32 38
  %194 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %arrayidx114, align 4
  %195 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %io_base, align 4
  %add.ptr.i483 = getelementptr i8, ptr %196, i32 216
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i483) #8, !srcloc !29
  %198 = tail call i32 @llvm.bswap.i32(i32 %197) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx117 = getelementptr i32, ptr %data, i32 39
  %199 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %arrayidx117, align 4
  %200 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %io_base, align 4
  %add.ptr.i484 = getelementptr i8, ptr %201, i32 232
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i484) #8, !srcloc !29
  %203 = tail call i32 @llvm.bswap.i32(i32 %202) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx120 = getelementptr i32, ptr %data, i32 40
  %204 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %arrayidx120, align 4
  %205 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %io_base, align 4
  %add.ptr.i485 = getelementptr i8, ptr %206, i32 236
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i485) #8, !srcloc !29
  %208 = tail call i32 @llvm.bswap.i32(i32 %207) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx123 = getelementptr i32, ptr %data, i32 41
  %209 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %arrayidx123, align 4
  %210 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %io_base, align 4
  %add.ptr.i486 = getelementptr i8, ptr %211, i32 256
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i486) #8, !srcloc !29
  %213 = tail call i32 @llvm.bswap.i32(i32 %212) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx126 = getelementptr i32, ptr %data, i32 42
  %214 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %arrayidx126, align 4
  %215 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %io_base, align 4
  %add.ptr.i487 = getelementptr i8, ptr %216, i32 260
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i487) #8, !srcloc !29
  %218 = tail call i32 @llvm.bswap.i32(i32 %217) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx129 = getelementptr i32, ptr %data, i32 43
  %219 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %arrayidx129, align 4
  %220 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %io_base, align 4
  %add.ptr.i488 = getelementptr i8, ptr %221, i32 264
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i488) #8, !srcloc !29
  %223 = tail call i32 @llvm.bswap.i32(i32 %222) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx132 = getelementptr i32, ptr %data, i32 44
  %224 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %arrayidx132, align 4
  %225 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %io_base, align 4
  %add.ptr.i489 = getelementptr i8, ptr %226, i32 268
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i489) #8, !srcloc !29
  %228 = tail call i32 @llvm.bswap.i32(i32 %227) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx135 = getelementptr i32, ptr %data, i32 45
  %229 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %228, ptr %arrayidx135, align 4
  %230 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %io_base, align 4
  %add.ptr.i490 = getelementptr i8, ptr %231, i32 272
  %232 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i490) #8, !srcloc !29
  %233 = tail call i32 @llvm.bswap.i32(i32 %232) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx138 = getelementptr i32, ptr %data, i32 46
  %234 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %233, ptr %arrayidx138, align 4
  %235 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %io_base, align 4
  %add.ptr.i491 = getelementptr i8, ptr %236, i32 276
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i491) #8, !srcloc !29
  %238 = tail call i32 @llvm.bswap.i32(i32 %237) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx141 = getelementptr i32, ptr %data, i32 47
  %239 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %238, ptr %arrayidx141, align 4
  %240 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %io_base, align 4
  %add.ptr.i492 = getelementptr i8, ptr %241, i32 280
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i492) #8, !srcloc !29
  %243 = tail call i32 @llvm.bswap.i32(i32 %242) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx144 = getelementptr i32, ptr %data, i32 48
  %244 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %243, ptr %arrayidx144, align 4
  %245 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %io_base, align 4
  %add.ptr.i493 = getelementptr i8, ptr %246, i32 284
  %247 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i493) #8, !srcloc !29
  %248 = tail call i32 @llvm.bswap.i32(i32 %247) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx147 = getelementptr i32, ptr %data, i32 49
  %249 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %arrayidx147, align 4
  %250 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %io_base, align 4
  %add.ptr.i494 = getelementptr i8, ptr %251, i32 288
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i494) #8, !srcloc !29
  %253 = tail call i32 @llvm.bswap.i32(i32 %252) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx150 = getelementptr i32, ptr %data, i32 50
  %254 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %253, ptr %arrayidx150, align 4
  %255 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %io_base, align 4
  %add.ptr.i495 = getelementptr i8, ptr %256, i32 292
  %257 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i495) #8, !srcloc !29
  %258 = tail call i32 @llvm.bswap.i32(i32 %257) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx153 = getelementptr i32, ptr %data, i32 51
  %259 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %258, ptr %arrayidx153, align 4
  %260 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %io_base, align 4
  %add.ptr.i496 = getelementptr i8, ptr %261, i32 296
  %262 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i496) #8, !srcloc !29
  %263 = tail call i32 @llvm.bswap.i32(i32 %262) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx156 = getelementptr i32, ptr %data, i32 52
  %264 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %263, ptr %arrayidx156, align 4
  %265 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %io_base, align 4
  %add.ptr.i497 = getelementptr i8, ptr %266, i32 300
  %267 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i497) #8, !srcloc !29
  %268 = tail call i32 @llvm.bswap.i32(i32 %267) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx159 = getelementptr i32, ptr %data, i32 53
  %269 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %268, ptr %arrayidx159, align 4
  %270 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %io_base, align 4
  %add.ptr.i498 = getelementptr i8, ptr %271, i32 332
  %272 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i498) #8, !srcloc !29
  %273 = tail call i32 @llvm.bswap.i32(i32 %272) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx162 = getelementptr i32, ptr %data, i32 54
  %274 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %273, ptr %arrayidx162, align 4
  %275 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %io_base, align 4
  %add.ptr.i499 = getelementptr i8, ptr %276, i32 336
  %277 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i499) #8, !srcloc !29
  %278 = tail call i32 @llvm.bswap.i32(i32 %277) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx165 = getelementptr i32, ptr %data, i32 55
  %279 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %278, ptr %arrayidx165, align 4
  %280 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %io_base, align 4
  %add.ptr.i500 = getelementptr i8, ptr %281, i32 340
  %282 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i500) #8, !srcloc !29
  %283 = tail call i32 @llvm.bswap.i32(i32 %282) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx168 = getelementptr i32, ptr %data, i32 56
  %284 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %283, ptr %arrayidx168, align 4
  %285 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %io_base, align 4
  %add.ptr.i501 = getelementptr i8, ptr %286, i32 344
  %287 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i501) #8, !srcloc !29
  %288 = tail call i32 @llvm.bswap.i32(i32 %287) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx171 = getelementptr i32, ptr %data, i32 57
  %289 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %288, ptr %arrayidx171, align 4
  %290 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %io_base, align 4
  %add.ptr.i502 = getelementptr i8, ptr %291, i32 348
  %292 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i502) #8, !srcloc !29
  %293 = tail call i32 @llvm.bswap.i32(i32 %292) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx174 = getelementptr i32, ptr %data, i32 58
  %294 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %293, ptr %arrayidx174, align 4
  %295 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %io_base, align 4
  %add.ptr.i503 = getelementptr i8, ptr %296, i32 368
  %297 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i503) #8, !srcloc !29
  %298 = tail call i32 @llvm.bswap.i32(i32 %297) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx177 = getelementptr i32, ptr %data, i32 59
  %299 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %298, ptr %arrayidx177, align 4
  %300 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %io_base, align 4
  %add.ptr.i504 = getelementptr i8, ptr %301, i32 424
  %302 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i504) #8, !srcloc !29
  %303 = tail call i32 @llvm.bswap.i32(i32 %302) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx180 = getelementptr i32, ptr %data, i32 60
  %304 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %303, ptr %arrayidx180, align 4
  %305 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %io_base, align 4
  %add.ptr.i505 = getelementptr i8, ptr %306, i32 432
  %307 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i505) #8, !srcloc !29
  %308 = tail call i32 @llvm.bswap.i32(i32 %307) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx183 = getelementptr i32, ptr %data, i32 61
  %309 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %308, ptr %arrayidx183, align 4
  %310 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %io_base, align 4
  %add.ptr.i506 = getelementptr i8, ptr %311, i32 436
  %312 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i506) #8, !srcloc !29
  %313 = tail call i32 @llvm.bswap.i32(i32 %312) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx186 = getelementptr i32, ptr %data, i32 62
  %314 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %313, ptr %arrayidx186, align 4
  %315 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %io_base, align 4
  %add.ptr.i507 = getelementptr i8, ptr %316, i32 460
  %317 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i507) #8, !srcloc !29
  %318 = tail call i32 @llvm.bswap.i32(i32 %317) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx189 = getelementptr i32, ptr %data, i32 63
  %319 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %318, ptr %arrayidx189, align 4
  %320 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %io_base, align 4
  %add.ptr.i508 = getelementptr i8, ptr %321, i32 464
  %322 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i508) #8, !srcloc !29
  %323 = tail call i32 @llvm.bswap.i32(i32 %322) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx192 = getelementptr i32, ptr %data, i32 64
  %324 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %323, ptr %arrayidx192, align 4
  %325 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %io_base, align 4
  %add.ptr.i509 = getelementptr i8, ptr %326, i32 476
  %327 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i509) #8, !srcloc !29
  %328 = tail call i32 @llvm.bswap.i32(i32 %327) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx195 = getelementptr i32, ptr %data, i32 65
  %329 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %328, ptr %arrayidx195, align 4
  %330 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %io_base, align 4
  %add.ptr.i510 = getelementptr i8, ptr %331, i32 480
  %332 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i510) #8, !srcloc !29
  %333 = tail call i32 @llvm.bswap.i32(i32 %332) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx198 = getelementptr i32, ptr %data, i32 66
  %334 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %333, ptr %arrayidx198, align 4
  %335 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %io_base, align 4
  %add.ptr.i511 = getelementptr i8, ptr %336, i32 488
  %337 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i511) #8, !srcloc !29
  %338 = tail call i32 @llvm.bswap.i32(i32 %337) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx201 = getelementptr i32, ptr %data, i32 67
  %339 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %338, ptr %arrayidx201, align 4
  %340 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %io_base, align 4
  %add.ptr.i512 = getelementptr i8, ptr %341, i32 492
  %342 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i512) #8, !srcloc !29
  %343 = tail call i32 @llvm.bswap.i32(i32 %342) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx204 = getelementptr i32, ptr %data, i32 68
  %344 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 %343, ptr %arrayidx204, align 4
  %345 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %io_base, align 4
  %add.ptr.i513 = getelementptr i8, ptr %346, i32 500
  %347 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i513) #8, !srcloc !29
  %348 = tail call i32 @llvm.bswap.i32(i32 %347) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx207 = getelementptr i32, ptr %data, i32 69
  %349 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 %348, ptr %arrayidx207, align 4
  %350 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %io_base, align 4
  %add.ptr.i514 = getelementptr i8, ptr %351, i32 504
  %352 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i514) #8, !srcloc !29
  %353 = tail call i32 @llvm.bswap.i32(i32 %352) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx210 = getelementptr i32, ptr %data, i32 70
  %354 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 %353, ptr %arrayidx210, align 4
  %355 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %io_base, align 4
  %add.ptr.i515 = getelementptr i8, ptr %356, i32 512
  %357 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i515) #8, !srcloc !29
  %358 = tail call i32 @llvm.bswap.i32(i32 %357) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx213 = getelementptr i32, ptr %data, i32 71
  %359 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 %358, ptr %arrayidx213, align 4
  %360 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %io_base, align 4
  %add.ptr.i516 = getelementptr i8, ptr %361, i32 516
  %362 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i516) #8, !srcloc !29
  %363 = tail call i32 @llvm.bswap.i32(i32 %362) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx216 = getelementptr i32, ptr %data, i32 72
  %364 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 %363, ptr %arrayidx216, align 4
  %365 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %io_base, align 4
  %add.ptr.i517 = getelementptr i8, ptr %366, i32 520
  %367 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i517) #8, !srcloc !29
  %368 = tail call i32 @llvm.bswap.i32(i32 %367) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx219 = getelementptr i32, ptr %data, i32 73
  %369 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 %368, ptr %arrayidx219, align 4
  %370 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %io_base, align 4
  %add.ptr.i518 = getelementptr i8, ptr %371, i32 524
  %372 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i518) #8, !srcloc !29
  %373 = tail call i32 @llvm.bswap.i32(i32 %372) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx222 = getelementptr i32, ptr %data, i32 74
  %374 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 %373, ptr %arrayidx222, align 4
  %375 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %io_base, align 4
  %add.ptr.i519 = getelementptr i8, ptr %376, i32 528
  %377 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i519) #8, !srcloc !29
  %378 = tail call i32 @llvm.bswap.i32(i32 %377) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx225 = getelementptr i32, ptr %data, i32 75
  %379 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 %378, ptr %arrayidx225, align 4
  %380 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %io_base, align 4
  %add.ptr.i520 = getelementptr i8, ptr %381, i32 532
  %382 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i520) #8, !srcloc !29
  %383 = tail call i32 @llvm.bswap.i32(i32 %382) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx228 = getelementptr i32, ptr %data, i32 76
  %384 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 %383, ptr %arrayidx228, align 4
  %385 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %io_base, align 4
  %add.ptr.i521 = getelementptr i8, ptr %386, i32 536
  %387 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i521) #8, !srcloc !29
  %388 = tail call i32 @llvm.bswap.i32(i32 %387) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx231 = getelementptr i32, ptr %data, i32 77
  %389 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 %388, ptr %arrayidx231, align 4
  %390 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %io_base, align 4
  %add.ptr.i522 = getelementptr i8, ptr %391, i32 540
  %392 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i522) #8, !srcloc !29
  %393 = tail call i32 @llvm.bswap.i32(i32 %392) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx234 = getelementptr i32, ptr %data, i32 78
  %394 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 %393, ptr %arrayidx234, align 4
  %395 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %io_base, align 4
  %add.ptr.i523 = getelementptr i8, ptr %396, i32 544
  %397 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i523) #8, !srcloc !29
  %398 = tail call i32 @llvm.bswap.i32(i32 %397) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx237 = getelementptr i32, ptr %data, i32 79
  %399 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 %398, ptr %arrayidx237, align 4
  %400 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %io_base, align 4
  %add.ptr.i524 = getelementptr i8, ptr %401, i32 548
  %402 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i524) #8, !srcloc !29
  %403 = tail call i32 @llvm.bswap.i32(i32 %402) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx240 = getelementptr i32, ptr %data, i32 80
  %404 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 %403, ptr %arrayidx240, align 4
  %405 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %io_base, align 4
  %add.ptr.i525 = getelementptr i8, ptr %406, i32 552
  %407 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i525) #8, !srcloc !29
  %408 = tail call i32 @llvm.bswap.i32(i32 %407) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx243 = getelementptr i32, ptr %data, i32 81
  %409 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 %408, ptr %arrayidx243, align 4
  %410 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %io_base, align 4
  %add.ptr.i526 = getelementptr i8, ptr %411, i32 556
  %412 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i526) #8, !srcloc !29
  %413 = tail call i32 @llvm.bswap.i32(i32 %412) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx246 = getelementptr i32, ptr %data, i32 82
  %414 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_store4_noabort(i32 %414)
  store i32 %413, ptr %arrayidx246, align 4
  %415 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %io_base, align 4
  %add.ptr.i527 = getelementptr i8, ptr %416, i32 560
  %417 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i527) #8, !srcloc !29
  %418 = tail call i32 @llvm.bswap.i32(i32 %417) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx249 = getelementptr i32, ptr %data, i32 83
  %419 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 %418, ptr %arrayidx249, align 4
  %420 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %io_base, align 4
  %add.ptr.i528 = getelementptr i8, ptr %421, i32 564
  %422 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i528) #8, !srcloc !29
  %423 = tail call i32 @llvm.bswap.i32(i32 %422) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx252 = getelementptr i32, ptr %data, i32 84
  %424 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 %423, ptr %arrayidx252, align 4
  %425 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %io_base, align 4
  %add.ptr.i529 = getelementptr i8, ptr %426, i32 568
  %427 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i529) #8, !srcloc !29
  %428 = tail call i32 @llvm.bswap.i32(i32 %427) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx255 = getelementptr i32, ptr %data, i32 85
  %429 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_store4_noabort(i32 %429)
  store i32 %428, ptr %arrayidx255, align 4
  %430 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %io_base, align 4
  %add.ptr.i530 = getelementptr i8, ptr %431, i32 572
  %432 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i530) #8, !srcloc !29
  %433 = tail call i32 @llvm.bswap.i32(i32 %432) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx258 = getelementptr i32, ptr %data, i32 86
  %434 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_store4_noabort(i32 %434)
  store i32 %433, ptr %arrayidx258, align 4
  %435 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %io_base, align 4
  %add.ptr.i531 = getelementptr i8, ptr %436, i32 576
  %437 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i531) #8, !srcloc !29
  %438 = tail call i32 @llvm.bswap.i32(i32 %437) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx261 = getelementptr i32, ptr %data, i32 87
  %439 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_store4_noabort(i32 %439)
  store i32 %438, ptr %arrayidx261, align 4
  %440 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %io_base, align 4
  %add.ptr.i532 = getelementptr i8, ptr %441, i32 888
  %442 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i532) #8, !srcloc !29
  %443 = tail call i32 @llvm.bswap.i32(i32 %442) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %arrayidx264 = getelementptr i32, ptr %data, i32 88
  %444 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_store4_noabort(i32 %444)
  store i32 %443, ptr %arrayidx264, align 4
  %uglygep = getelementptr i8, ptr %data, i32 356
  %445 = call ptr @memset(ptr %uglygep, i32 170, i32 28)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hns_gmac_get_regs_count() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 96
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_gmac_get_stats(ptr nocapture noundef readonly %mac_drv, ptr nocapture noundef writeonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_cb = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 28
  %0 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_cb, align 4
  %hw_stats1 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %offset = getelementptr [45 x %struct.mac_stats_string], ptr @g_gmac_stats_string, i32 0, i32 %i.06, i32 1
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
  %exitcond.not = icmp eq i32 %inc, 45
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hns_gmac_get_sset_count(i32 noundef %stringset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp = icmp eq i32 %stringset, 1
  %. = select i1 %cmp, i32 45, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_gmac_get_strings(i32 noundef %stringset, ptr noundef %data) #0 align 64 {
entry:
  %buff = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buff) #8
  %0 = ptrtoint ptr %buff to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %data, ptr %buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp.not = icmp eq i32 %stringset, 1
  br i1 %cmp.not, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [45 x %struct.mac_stats_string], ptr @g_gmac_stats_string, i32 0, i32 %i.05
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef %arrayidx) #8
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 45
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buff) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_gmac_update_stats(ptr noundef readonly %mac_drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_cb = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 28
  %0 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_cb, align 4
  %io_base = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 128
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !29
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv = zext i32 %5 to i64
  %rx_good_bytes = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 1
  %6 = ptrtoint ptr %rx_good_bytes to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rx_good_bytes, align 8
  %add = add i64 %7, %conv
  store i64 %add, ptr %rx_good_bytes, align 8
  %8 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base, align 4
  %add.ptr.i267 = getelementptr i8, ptr %9, i32 132
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i267) #8, !srcloc !29
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv4 = zext i32 %11 to i64
  %rx_bad_bytes = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 4
  %12 = ptrtoint ptr %rx_bad_bytes to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %rx_bad_bytes, align 8
  %add5 = add i64 %13, %conv4
  store i64 %add5, ptr %rx_bad_bytes, align 8
  %14 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base, align 4
  %add.ptr.i268 = getelementptr i8, ptr %15, i32 136
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i268) #8, !srcloc !29
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv8 = zext i32 %17 to i64
  %rx_uc_pkts = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 5
  %18 = ptrtoint ptr %rx_uc_pkts to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rx_uc_pkts, align 8
  %add9 = add i64 %19, %conv8
  store i64 %add9, ptr %rx_uc_pkts, align 8
  %20 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base, align 4
  %add.ptr.i269 = getelementptr i8, ptr %21, i32 140
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i269) #8, !srcloc !29
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv12 = zext i32 %23 to i64
  %rx_mc_pkts = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 6
  %24 = ptrtoint ptr %rx_mc_pkts to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rx_mc_pkts, align 8
  %add13 = add i64 %25, %conv12
  store i64 %add13, ptr %rx_mc_pkts, align 8
  %26 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_base, align 4
  %add.ptr.i270 = getelementptr i8, ptr %27, i32 144
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i270) #8, !srcloc !29
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv16 = zext i32 %29 to i64
  %rx_bc_pkts = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 7
  %30 = ptrtoint ptr %rx_bc_pkts to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %rx_bc_pkts, align 8
  %add17 = add i64 %31, %conv16
  store i64 %add17, ptr %rx_bc_pkts, align 8
  %32 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io_base, align 4
  %add.ptr.i271 = getelementptr i8, ptr %33, i32 148
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i271) #8, !srcloc !29
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv20 = zext i32 %35 to i64
  %rx_64bytes = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 12
  %36 = ptrtoint ptr %rx_64bytes to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %rx_64bytes, align 8
  %add21 = add i64 %37, %conv20
  store i64 %add21, ptr %rx_64bytes, align 8
  %38 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io_base, align 4
  %add.ptr.i272 = getelementptr i8, ptr %39, i32 152
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i272) #8, !srcloc !29
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv24 = zext i32 %41 to i64
  %rx_65to127 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 13
  %42 = ptrtoint ptr %rx_65to127 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %rx_65to127, align 8
  %add25 = add i64 %43, %conv24
  store i64 %add25, ptr %rx_65to127, align 8
  %44 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %io_base, align 4
  %add.ptr.i273 = getelementptr i8, ptr %45, i32 156
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i273) #8, !srcloc !29
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv28 = zext i32 %47 to i64
  %rx_128to255 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 14
  %48 = ptrtoint ptr %rx_128to255 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %rx_128to255, align 8
  %add29 = add i64 %49, %conv28
  store i64 %add29, ptr %rx_128to255, align 8
  %50 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %io_base, align 4
  %add.ptr.i274 = getelementptr i8, ptr %51, i32 160
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i274) #8, !srcloc !29
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv32 = zext i32 %53 to i64
  %rx_256to511 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 15
  %54 = ptrtoint ptr %rx_256to511 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %rx_256to511, align 8
  %add33 = add i64 %55, %conv32
  store i64 %add33, ptr %rx_256to511, align 8
  %56 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %io_base, align 4
  %add.ptr.i275 = getelementptr i8, ptr %57, i32 164
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i275) #8, !srcloc !29
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv36 = zext i32 %59 to i64
  %rx_512to1023 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 16
  %60 = ptrtoint ptr %rx_512to1023 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %rx_512to1023, align 8
  %add37 = add i64 %61, %conv36
  store i64 %add37, ptr %rx_512to1023, align 8
  %62 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %io_base, align 4
  %add.ptr.i276 = getelementptr i8, ptr %63, i32 168
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i276) #8, !srcloc !29
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv40 = zext i32 %65 to i64
  %rx_1024to1518 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 17
  %66 = ptrtoint ptr %rx_1024to1518 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %rx_1024to1518, align 8
  %add41 = add i64 %67, %conv40
  store i64 %add41, ptr %rx_1024to1518, align 8
  %68 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %io_base, align 4
  %add.ptr.i277 = getelementptr i8, ptr %69, i32 172
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i277) #8, !srcloc !29
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv44 = zext i32 %71 to i64
  %rx_1519tomax = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 18
  %72 = ptrtoint ptr %rx_1519tomax to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %rx_1519tomax, align 8
  %add45 = add i64 %73, %conv44
  store i64 %add45, ptr %rx_1519tomax, align 8
  %74 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %io_base, align 4
  %add.ptr.i278 = getelementptr i8, ptr %75, i32 176
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i278) #8, !srcloc !29
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv48 = zext i32 %77 to i64
  %rx_fcs_err = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 22
  %78 = ptrtoint ptr %rx_fcs_err to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %rx_fcs_err, align 8
  %add49 = add i64 %79, %conv48
  store i64 %add49, ptr %rx_fcs_err, align 8
  %80 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %io_base, align 4
  %add.ptr.i279 = getelementptr i8, ptr %81, i32 180
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i279) #8, !srcloc !29
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv52 = zext i32 %83 to i64
  %rx_vlan_pkts = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 23
  %84 = ptrtoint ptr %rx_vlan_pkts to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %rx_vlan_pkts, align 8
  %add53 = add i64 %85, %conv52
  store i64 %add53, ptr %rx_vlan_pkts, align 8
  %86 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %io_base, align 4
  %add.ptr.i280 = getelementptr i8, ptr %87, i32 184
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i280) #8, !srcloc !29
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv56 = zext i32 %89 to i64
  %rx_data_err = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 24
  %90 = ptrtoint ptr %rx_data_err to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %rx_data_err, align 8
  %add57 = add i64 %91, %conv56
  store i64 %add57, ptr %rx_data_err, align 8
  %92 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %io_base, align 4
  %add.ptr.i281 = getelementptr i8, ptr %93, i32 188
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i281) #8, !srcloc !29
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv60 = zext i32 %95 to i64
  %rx_align_err = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 25
  %96 = ptrtoint ptr %rx_align_err to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %rx_align_err, align 8
  %add61 = add i64 %97, %conv60
  store i64 %add61, ptr %rx_align_err, align 8
  %98 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %io_base, align 4
  %add.ptr.i282 = getelementptr i8, ptr %99, i32 192
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i282) #8, !srcloc !29
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv64 = zext i32 %101 to i64
  %rx_oversize = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 20
  %102 = ptrtoint ptr %rx_oversize to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %rx_oversize, align 8
  %add65 = add i64 %103, %conv64
  store i64 %add65, ptr %rx_oversize, align 8
  %104 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %io_base, align 4
  %add.ptr.i283 = getelementptr i8, ptr %105, i32 196
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i283) #8, !srcloc !29
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv68 = zext i32 %107 to i64
  %rx_jabber_err = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 21
  %108 = ptrtoint ptr %rx_jabber_err to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %rx_jabber_err, align 8
  %add69 = add i64 %109, %conv68
  store i64 %add69, ptr %rx_jabber_err, align 8
  %110 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %io_base, align 4
  %add.ptr.i284 = getelementptr i8, ptr %111, i32 200
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i284) #8, !srcloc !29
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv72 = zext i32 %113 to i64
  %rx_pfc_tc0 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 27
  %114 = ptrtoint ptr %rx_pfc_tc0 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %rx_pfc_tc0, align 8
  %add73 = add i64 %115, %conv72
  store i64 %add73, ptr %rx_pfc_tc0, align 8
  %116 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %io_base, align 4
  %add.ptr.i285 = getelementptr i8, ptr %117, i32 204
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i285) #8, !srcloc !29
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv76 = zext i32 %119 to i64
  %rx_unknown_ctrl = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 35
  %120 = ptrtoint ptr %rx_unknown_ctrl to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %rx_unknown_ctrl, align 8
  %add77 = add i64 %121, %conv76
  store i64 %add77, ptr %rx_unknown_ctrl, align 8
  %122 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %io_base, align 4
  %add.ptr.i286 = getelementptr i8, ptr %123, i32 208
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i286) #8, !srcloc !29
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv80 = zext i32 %125 to i64
  %rx_long_err = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 26
  %126 = ptrtoint ptr %rx_long_err to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %rx_long_err, align 8
  %add81 = add i64 %127, %conv80
  store i64 %add81, ptr %rx_long_err, align 8
  %128 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %io_base, align 4
  %add.ptr.i287 = getelementptr i8, ptr %129, i32 212
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i287) #8, !srcloc !29
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv84 = zext i32 %131 to i64
  %rx_minto64 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 11
  %132 = ptrtoint ptr %rx_minto64 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %rx_minto64, align 8
  %add85 = add i64 %133, %conv84
  store i64 %add85, ptr %rx_minto64, align 8
  %134 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %io_base, align 4
  %add.ptr.i288 = getelementptr i8, ptr %135, i32 216
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i288) #8, !srcloc !29
  %137 = tail call i32 @llvm.bswap.i32(i32 %136) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv88 = zext i32 %137 to i64
  %rx_under_min = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 10
  %138 = ptrtoint ptr %rx_under_min to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %rx_under_min, align 8
  %add89 = add i64 %139, %conv88
  store i64 %add89, ptr %rx_under_min, align 8
  %140 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %io_base, align 4
  %add.ptr.i289 = getelementptr i8, ptr %141, i32 232
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i289) #8, !srcloc !29
  %143 = tail call i32 @llvm.bswap.i32(i32 %142) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv92 = zext i32 %143 to i64
  %rx_filter_pkts = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 36
  %144 = ptrtoint ptr %rx_filter_pkts to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %rx_filter_pkts, align 8
  %add93 = add i64 %145, %conv92
  store i64 %add93, ptr %rx_filter_pkts, align 8
  %146 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %io_base, align 4
  %add.ptr.i290 = getelementptr i8, ptr %147, i32 236
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i290) #8, !srcloc !29
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv96 = zext i32 %149 to i64
  %rx_filter_bytes = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 37
  %150 = ptrtoint ptr %rx_filter_bytes to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %rx_filter_bytes, align 8
  %add97 = add i64 %151, %conv96
  store i64 %add97, ptr %rx_filter_bytes, align 8
  %152 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %io_base, align 4
  %add.ptr.i291 = getelementptr i8, ptr %153, i32 492
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i291) #8, !srcloc !29
  %155 = tail call i32 @llvm.bswap.i32(i32 %154) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv100 = zext i32 %155 to i64
  %rx_fifo_overrun_err = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 38
  %156 = ptrtoint ptr %rx_fifo_overrun_err to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %rx_fifo_overrun_err, align 8
  %add101 = add i64 %157, %conv100
  store i64 %add101, ptr %rx_fifo_overrun_err, align 8
  %158 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %io_base, align 4
  %add.ptr.i292 = getelementptr i8, ptr %159, i32 500
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i292) #8, !srcloc !29
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv104 = zext i32 %161 to i64
  %rx_len_err = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 39
  %162 = ptrtoint ptr %rx_len_err to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %rx_len_err, align 8
  %add105 = add i64 %163, %conv104
  store i64 %add105, ptr %rx_len_err, align 8
  %164 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %io_base, align 4
  %add.ptr.i293 = getelementptr i8, ptr %165, i32 504
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i293) #8, !srcloc !29
  %167 = tail call i32 @llvm.bswap.i32(i32 %166) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv108 = zext i32 %167 to i64
  %rx_comma_err = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 40
  %168 = ptrtoint ptr %rx_comma_err to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %rx_comma_err, align 8
  %add109 = add i64 %169, %conv108
  store i64 %add109, ptr %rx_comma_err, align 8
  %170 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %io_base, align 4
  %add.ptr.i294 = getelementptr i8, ptr %171, i32 256
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i294) #8, !srcloc !29
  %173 = tail call i32 @llvm.bswap.i32(i32 %172) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv112 = zext i32 %173 to i64
  %tx_good_bytes = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 45
  %174 = ptrtoint ptr %tx_good_bytes to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %tx_good_bytes, align 8
  %add113 = add i64 %175, %conv112
  store i64 %add113, ptr %tx_good_bytes, align 8
  %176 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %io_base, align 4
  %add.ptr.i295 = getelementptr i8, ptr %177, i32 260
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i295) #8, !srcloc !29
  %179 = tail call i32 @llvm.bswap.i32(i32 %178) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv116 = zext i32 %179 to i64
  %tx_bad_bytes = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 49
  %180 = ptrtoint ptr %tx_bad_bytes to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %tx_bad_bytes, align 8
  %add117 = add i64 %181, %conv116
  store i64 %add117, ptr %tx_bad_bytes, align 8
  %182 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %io_base, align 4
  %add.ptr.i296 = getelementptr i8, ptr %183, i32 264
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i296) #8, !srcloc !29
  %185 = tail call i32 @llvm.bswap.i32(i32 %184) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv120 = zext i32 %185 to i64
  %tx_uc_pkts = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 51
  %186 = ptrtoint ptr %tx_uc_pkts to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %tx_uc_pkts, align 8
  %add121 = add i64 %187, %conv120
  store i64 %add121, ptr %tx_uc_pkts, align 8
  %188 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %io_base, align 4
  %add.ptr.i297 = getelementptr i8, ptr %189, i32 268
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i297) #8, !srcloc !29
  %191 = tail call i32 @llvm.bswap.i32(i32 %190) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv124 = zext i32 %191 to i64
  %tx_mc_pkts = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 52
  %192 = ptrtoint ptr %tx_mc_pkts to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %tx_mc_pkts, align 8
  %add125 = add i64 %193, %conv124
  store i64 %add125, ptr %tx_mc_pkts, align 8
  %194 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %io_base, align 4
  %add.ptr.i298 = getelementptr i8, ptr %195, i32 272
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i298) #8, !srcloc !29
  %197 = tail call i32 @llvm.bswap.i32(i32 %196) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv128 = zext i32 %197 to i64
  %tx_bc_pkts = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 53
  %198 = ptrtoint ptr %tx_bc_pkts to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %tx_bc_pkts, align 8
  %add129 = add i64 %199, %conv128
  store i64 %add129, ptr %tx_bc_pkts, align 8
  %200 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %io_base, align 4
  %add.ptr.i299 = getelementptr i8, ptr %201, i32 276
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i299) #8, !srcloc !29
  %203 = tail call i32 @llvm.bswap.i32(i32 %202) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv132 = zext i32 %203 to i64
  %tx_64bytes = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 57
  %204 = ptrtoint ptr %tx_64bytes to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %tx_64bytes, align 8
  %add133 = add i64 %205, %conv132
  store i64 %add133, ptr %tx_64bytes, align 8
  %206 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %io_base, align 4
  %add.ptr.i300 = getelementptr i8, ptr %207, i32 280
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i300) #8, !srcloc !29
  %209 = tail call i32 @llvm.bswap.i32(i32 %208) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv136 = zext i32 %209 to i64
  %tx_65to127 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 58
  %210 = ptrtoint ptr %tx_65to127 to i32
  call void @__asan_load8_noabort(i32 %210)
  %211 = load i64, ptr %tx_65to127, align 8
  %add137 = add i64 %211, %conv136
  store i64 %add137, ptr %tx_65to127, align 8
  %212 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %io_base, align 4
  %add.ptr.i301 = getelementptr i8, ptr %213, i32 284
  %214 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i301) #8, !srcloc !29
  %215 = tail call i32 @llvm.bswap.i32(i32 %214) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv140 = zext i32 %215 to i64
  %tx_128to255 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 59
  %216 = ptrtoint ptr %tx_128to255 to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %tx_128to255, align 8
  %add141 = add i64 %217, %conv140
  store i64 %add141, ptr %tx_128to255, align 8
  %218 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %io_base, align 4
  %add.ptr.i302 = getelementptr i8, ptr %219, i32 288
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i302) #8, !srcloc !29
  %221 = tail call i32 @llvm.bswap.i32(i32 %220) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv144 = zext i32 %221 to i64
  %tx_256to511 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 60
  %222 = ptrtoint ptr %tx_256to511 to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %tx_256to511, align 8
  %add145 = add i64 %223, %conv144
  store i64 %add145, ptr %tx_256to511, align 8
  %224 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %io_base, align 4
  %add.ptr.i303 = getelementptr i8, ptr %225, i32 292
  %226 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i303) #8, !srcloc !29
  %227 = tail call i32 @llvm.bswap.i32(i32 %226) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv148 = zext i32 %227 to i64
  %tx_512to1023 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 61
  %228 = ptrtoint ptr %tx_512to1023 to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %tx_512to1023, align 8
  %add149 = add i64 %229, %conv148
  store i64 %add149, ptr %tx_512to1023, align 8
  %230 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %io_base, align 4
  %add.ptr.i304 = getelementptr i8, ptr %231, i32 296
  %232 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i304) #8, !srcloc !29
  %233 = tail call i32 @llvm.bswap.i32(i32 %232) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv152 = zext i32 %233 to i64
  %tx_1024to1518 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 62
  %234 = ptrtoint ptr %tx_1024to1518 to i32
  call void @__asan_load8_noabort(i32 %234)
  %235 = load i64, ptr %tx_1024to1518, align 8
  %add153 = add i64 %235, %conv152
  store i64 %add153, ptr %tx_1024to1518, align 8
  %236 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %io_base, align 4
  %add.ptr.i305 = getelementptr i8, ptr %237, i32 300
  %238 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i305) #8, !srcloc !29
  %239 = tail call i32 @llvm.bswap.i32(i32 %238) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv156 = zext i32 %239 to i64
  %tx_1519tomax = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 63
  %240 = ptrtoint ptr %tx_1519tomax to i32
  call void @__asan_load8_noabort(i32 %240)
  %241 = load i64, ptr %tx_1519tomax, align 8
  %add157 = add i64 %241, %conv156
  store i64 %add157, ptr %tx_1519tomax, align 8
  %242 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %io_base, align 4
  %add.ptr.i306 = getelementptr i8, ptr %243, i32 332
  %244 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i306) #8, !srcloc !29
  %245 = tail call i32 @llvm.bswap.i32(i32 %244) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv160 = zext i32 %245 to i64
  %tx_jabber_err = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 66
  %246 = ptrtoint ptr %tx_jabber_err to i32
  call void @__asan_load8_noabort(i32 %246)
  %247 = load i64, ptr %tx_jabber_err, align 8
  %add161 = add i64 %247, %conv160
  store i64 %add161, ptr %tx_jabber_err, align 8
  %248 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %io_base, align 4
  %add.ptr.i307 = getelementptr i8, ptr %249, i32 336
  %250 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i307) #8, !srcloc !29
  %251 = tail call i32 @llvm.bswap.i32(i32 %250) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv164 = zext i32 %251 to i64
  %tx_underrun_err = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 67
  %252 = ptrtoint ptr %tx_underrun_err to i32
  call void @__asan_load8_noabort(i32 %252)
  %253 = load i64, ptr %tx_underrun_err, align 8
  %add165 = add i64 %253, %conv164
  store i64 %add165, ptr %tx_underrun_err, align 8
  %254 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %io_base, align 4
  %add.ptr.i308 = getelementptr i8, ptr %255, i32 340
  %256 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i308) #8, !srcloc !29
  %257 = tail call i32 @llvm.bswap.i32(i32 %256) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv168 = zext i32 %257 to i64
  %tx_vlan = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 68
  %258 = ptrtoint ptr %tx_vlan to i32
  call void @__asan_load8_noabort(i32 %258)
  %259 = load i64, ptr %tx_vlan, align 8
  %add169 = add i64 %259, %conv168
  store i64 %add169, ptr %tx_vlan, align 8
  %260 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %io_base, align 4
  %add.ptr.i309 = getelementptr i8, ptr %261, i32 344
  %262 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i309) #8, !srcloc !29
  %263 = tail call i32 @llvm.bswap.i32(i32 %262) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv172 = zext i32 %263 to i64
  %tx_crc_err = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 69
  %264 = ptrtoint ptr %tx_crc_err to i32
  call void @__asan_load8_noabort(i32 %264)
  %265 = load i64, ptr %tx_crc_err, align 8
  %add173 = add i64 %265, %conv172
  store i64 %add173, ptr %tx_crc_err, align 8
  %266 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %io_base, align 4
  %add.ptr.i310 = getelementptr i8, ptr %267, i32 348
  %268 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i310) #8, !srcloc !29
  %269 = tail call i32 @llvm.bswap.i32(i32 %268) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv176 = zext i32 %269 to i64
  %tx_pfc_tc0 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 31, i32 70
  %270 = ptrtoint ptr %tx_pfc_tc0 to i32
  call void @__asan_load8_noabort(i32 %270)
  %271 = load i64, ptr %tx_pfc_tc0, align 8
  %add177 = add i64 %271, %conv176
  store i64 %add177, ptr %tx_pfc_tc0, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_gmac_set_promisc(ptr nocapture noundef readonly %mac_drv, i8 noundef zeroext %en) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_cb = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 28
  %0 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_cb, align 4
  %mac_type = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %io_base.i = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  %4 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %en)
  %tobool.not.i = icmp eq i8 %en, 0
  %lnot.ext.i = zext i1 %tobool.not.i to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 100
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %7 = and i32 %6, -16777217
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %or.i.i = or i32 %8, %lnot.ext.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %9) #8, !srcloc !32
  %10 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i7.i = getelementptr i8, ptr %11, i32 532
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %13 = and i32 %12, -257
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  %shl.i.i = select i1 %tobool.not.i, i32 65536, i32 0
  %or.i10.i = or i32 %14, %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i10.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 %15) #8, !srcloc !32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_gmac_wait_fifo_clean(ptr nocapture noundef readonly %mac_drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 29
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %inc10 = phi i32 [ 1, %entry ], [ %inc, %if.end.while.body_crit_edge ]
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %3 = and i32 %2, 1056964608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %while.end, label %if.end

if.end:                                           ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %inc = add nuw nsw i32 %inc10, 1
  %exitcond.not = icmp eq i32 %inc, 10001
  br i1 %exitcond.not, label %if.end.do.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %inc10)
  %cmp2 = icmp ugt i32 %inc10, 9999
  br i1 %cmp2, label %while.end.do.end_crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %while.end.do.end_crit_edge, %if.end.do.end_crit_edge
  %dev = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 32
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %mac_id = getelementptr inbounds %struct.mac_driver, ptr %mac_drv, i32 0, i32 27
  %6 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mac_id, align 4
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !18, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_gmac.c", i32 281, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hns_gmac_adjust_link._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hns_gmac_adjust_link._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_gmac.c", i32 481, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @hns_gmac_config_loopback._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @hns_gmac_config_loopback._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @g_gmac_stats_string, !14, !"g_gmac_stats_string", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_gmac.c", i32 12, i32 38}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_gmac.c", i32 324, i32 3}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @hns_gmac_wait_fifo_clean._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @hns_gmac_wait_fifo_clean._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 6679063}
!30 = !{i64 2157116690}
!31 = !{i64 2157115889}
!32 = !{i64 6678645}
